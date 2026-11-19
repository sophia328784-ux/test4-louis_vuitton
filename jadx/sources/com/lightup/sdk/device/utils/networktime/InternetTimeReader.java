package com.lightup.sdk.device.utils.networktime;

import com.lightup.sdk.device.utils.communication.Scheduling;
import java.net.DatagramPacket;
import java.net.DatagramSocket;
import java.net.InetAddress;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

/* JADX INFO: loaded from: classes2.dex */
public class InternetTimeReader extends Thread {
    private final NTP_UTC_Time client;
    private final Condition forceTimeSync;
    private InternetTimeReaderListener internetTimeReaderListener;
    private final Lock lock;

    /* JADX INFO: renamed from: com.lightup.sdk.device.utils.networktime.InternetTimeReader$1, reason: invalid class name */
    public class AnonymousClass1 implements InternetTimeReaderListener {
        @Override // com.lightup.sdk.device.utils.networktime.InternetTimeReaderListener
        public final void onInternetTimeAvailable() {
        }
    }

    public InternetTimeReader() {
        ReentrantLock reentrantLock = new ReentrantLock();
        this.lock = reentrantLock;
        this.forceTimeSync = reentrantLock.newCondition();
        this.client = new NTP_UTC_Time();
        this.internetTimeReaderListener = new AnonymousClass1();
    }

    public boolean forceTimeSyncAttempt() {
        if (!isAlive()) {
            return false;
        }
        this.lock.lock();
        this.forceTimeSync.signal();
        this.lock.unlock();
        return true;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        this.lock.lock();
        while (true) {
            this.lock.unlock();
            NTP_UTC_Time nTP_UTC_Time = this.client;
            nTP_UTC_Time.getClass();
            try {
                DatagramSocket datagramSocket = new DatagramSocket();
                try {
                    datagramSocket.setSoTimeout(5000);
                    byte[] bArr = new byte[48];
                    DatagramPacket datagramPacket = new DatagramPacket(bArr, 48, InetAddress.getByName("pool.ntp.org"), 123);
                    bArr[0] = 27;
                    for (int i2 = 40; i2 < 48; i2++) {
                        bArr[i2] = 0;
                    }
                    datagramSocket.send(datagramPacket);
                    datagramSocket.receive(new DatagramPacket(bArr, 48));
                    datagramSocket.close();
                    long jA = NTP_UTC_Time.a(32, bArr);
                    nTP_UTC_Time.f36051a = ((NTP_UTC_Time.a(36, bArr) * 1000) / 4294967296L) + ((jA - 2208988800L) * 1000);
                    datagramSocket.close();
                    long j2 = this.client.f36051a;
                    boolean z = Scheduling.f36037b;
                    synchronized (Scheduling.class) {
                        Scheduling.f36037b = true;
                        Scheduling.f36038c = System.currentTimeMillis() - j2;
                    }
                    this.internetTimeReaderListener.onInternetTimeAvailable();
                    return;
                } catch (Throwable th) {
                    try {
                        datagramSocket.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                    throw th;
                }
            } catch (Exception unused) {
                this.lock.lock();
                try {
                    this.forceTimeSync.await(10000L, TimeUnit.MILLISECONDS);
                } catch (InterruptedException e2) {
                    e2.getMessage();
                    Thread.currentThread().interrupt();
                    this.lock.unlock();
                    return;
                }
            }
        }
    }

    public void setInternetTimeReaderListener(InternetTimeReaderListener internetTimeReaderListener) {
        this.lock.lock();
        this.internetTimeReaderListener = internetTimeReaderListener;
        this.lock.unlock();
    }
}
