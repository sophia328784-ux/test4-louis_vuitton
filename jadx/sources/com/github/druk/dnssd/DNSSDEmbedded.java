package com.github.druk.dnssd;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import com.sightcall.livetranslation.data.LiveTranslationEntity;
import defpackage.e5;

/* JADX INFO: loaded from: classes2.dex */
public class DNSSDEmbedded extends DNSSD {
    public static final int DEFAULT_STOP_TIMER_DELAY = 5000;
    private static final String TAG = "DNSSDEmbedded";
    private final Handler handler;
    private volatile boolean isStarted;
    private final long mStopTimerDelay;
    private Thread mThread;
    private int serviceCount;

    public DNSSDEmbedded(Context context, long j2) {
        super(context, "jdns_sd_embedded");
        this.handler = new Handler(Looper.getMainLooper());
        this.isStarted = false;
        this.serviceCount = 0;
        this.mStopTimerDelay = j2;
    }

    public static native void nativeExit();

    public static native int nativeInit();

    public static native int nativeLoop();

    private void waitUntilStarted() {
        synchronized (DNSSDEmbedded.class) {
            while (!this.isStarted) {
                try {
                    DNSSDEmbedded.class.wait();
                } catch (InterruptedException unused) {
                }
            }
        }
    }

    public void exit() {
        synchronized (DNSSDEmbedded.class) {
            this.handler.postDelayed(new e5(3), this.mStopTimerDelay);
        }
    }

    public void init() {
        this.handler.removeCallbacks(new e5(3));
        Thread thread = this.mThread;
        if (thread != null && thread.isAlive()) {
            waitUntilStarted();
            return;
        }
        this.isStarted = false;
        InternalDNSSD.getInstance();
        Thread thread2 = new Thread() { // from class: com.github.druk.dnssd.DNSSDEmbedded.1
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                int iNativeInit = DNSSDEmbedded.nativeInit();
                synchronized (DNSSDEmbedded.class) {
                    DNSSDEmbedded.this.isStarted = true;
                    DNSSDEmbedded.class.notifyAll();
                }
                if (iNativeInit != 0) {
                    return;
                }
                DNSSDEmbedded.nativeLoop();
                DNSSDEmbedded.this.isStarted = false;
            }
        };
        this.mThread = thread2;
        thread2.setPriority(10);
        this.mThread.setName("DNS-SDEmbedded");
        this.mThread.start();
        waitUntilStarted();
    }

    @Override // com.github.druk.dnssd.DNSSD, com.github.druk.dnssd.InternalDNSSDService.DnssdServiceListener
    public void onServiceStarting() {
        super.onServiceStarting();
        init();
        this.serviceCount++;
    }

    @Override // com.github.druk.dnssd.DNSSD, com.github.druk.dnssd.InternalDNSSDService.DnssdServiceListener
    public void onServiceStopped() {
        super.onServiceStopped();
        int i2 = this.serviceCount - 1;
        this.serviceCount = i2;
        if (i2 == 0) {
            exit();
        }
    }

    public DNSSDEmbedded(Context context) {
        this(context, LiveTranslationEntity.DefaultSentenceTimeOut);
    }
}
