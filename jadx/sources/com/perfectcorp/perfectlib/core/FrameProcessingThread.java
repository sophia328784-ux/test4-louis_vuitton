package com.perfectcorp.perfectlib.core;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import com.cyberlink.clgpuimage.GPUImageRenderer;
import defpackage.et;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes3.dex */
public abstract class FrameProcessingThread extends HandlerThread {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Handler f40077a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final AtomicReference<Frame> f40078b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Runnable f40079c;
    private long d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private long f40080e;

    public static final class Frame {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f40082b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f40083c;
        public byte[] d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public GPUImageRenderer.OnFrameAvailableListener f40084e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public boolean f40085f;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public long f40081a = -1;
        public int g = -1;

        public final String toString() {
            StringBuilder sb = new StringBuilder("Frame data: ");
            sb.append(Integer.toHexString(System.identityHashCode(this.d)));
            sb.append(" data length: ");
            byte[] bArr = this.d;
            sb.append(bArr != null ? bArr.length : 0);
            sb.append(" width: ");
            sb.append(this.f40082b);
            sb.append(" height: ");
            sb.append(this.f40083c);
            return sb.toString();
        }
    }

    public FrameProcessingThread(String str) {
        super(str);
        this.f40078b = new AtomicReference<>();
        this.f40079c = new et(this, 14);
        super.start();
        this.f40077a = new Handler(super.getLooper());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a() {
        processing(this.f40078b.getAndSet(null));
    }

    @Override // android.os.HandlerThread
    public final Looper getLooper() {
        return null;
    }

    public final void post(Runnable runnable) {
        this.f40077a.post(runnable);
    }

    public abstract void processing(Frame frame);

    @Override // android.os.HandlerThread
    public final boolean quit() {
        Looper looper = super.getLooper();
        if (looper == null) {
            return false;
        }
        looper.quit();
        return true;
    }

    public final void sendNewFrame(Frame frame) {
        if (this.f40078b.getAndSet(frame) == null) {
            this.f40077a.post(this.f40079c);
        } else {
            this.f40080e++;
        }
        this.d++;
    }

    @Override // java.lang.Thread
    public final synchronized void start() {
        throw new UnsupportedOperationException();
    }
}
