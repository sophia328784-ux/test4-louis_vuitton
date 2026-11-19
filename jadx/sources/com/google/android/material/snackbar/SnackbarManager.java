package com.google.android.material.snackbar;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes2.dex */
class SnackbarManager {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static SnackbarManager f33100e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f33101a = new Object();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Handler f33102b = new Handler(Looper.getMainLooper(), new Handler.Callback() { // from class: com.google.android.material.snackbar.SnackbarManager.1
        @Override // android.os.Handler.Callback
        public final boolean handleMessage(Message message) {
            if (message.what != 0) {
                return false;
            }
            SnackbarManager snackbarManager = SnackbarManager.this;
            SnackbarRecord snackbarRecord = (SnackbarRecord) message.obj;
            synchronized (snackbarManager.f33101a) {
                try {
                    if (snackbarManager.f33103c == snackbarRecord || snackbarManager.d == snackbarRecord) {
                        snackbarManager.a(snackbarRecord, 2);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            return true;
        }
    });

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public SnackbarRecord f33103c;
    public SnackbarRecord d;

    public interface Callback {
        void a();

        void b(int i2);
    }

    public static class SnackbarRecord {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final WeakReference f33105a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f33106b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public boolean f33107c;

        public SnackbarRecord(int i2, BaseTransientBottomBar.AnonymousClass5 anonymousClass5) {
            this.f33105a = new WeakReference(anonymousClass5);
            this.f33106b = i2;
        }
    }

    public static SnackbarManager b() {
        if (f33100e == null) {
            f33100e = new SnackbarManager();
        }
        return f33100e;
    }

    public final boolean a(SnackbarRecord snackbarRecord, int i2) {
        Callback callback = (Callback) snackbarRecord.f33105a.get();
        if (callback == null) {
            return false;
        }
        this.f33102b.removeCallbacksAndMessages(snackbarRecord);
        callback.b(i2);
        return true;
    }

    public final boolean c(Callback callback) {
        SnackbarRecord snackbarRecord = this.f33103c;
        return (snackbarRecord == null || callback == null || snackbarRecord.f33105a.get() != callback) ? false : true;
    }

    public final void d(Callback callback) {
        synchronized (this.f33101a) {
            try {
                if (c(callback)) {
                    SnackbarRecord snackbarRecord = this.f33103c;
                    if (!snackbarRecord.f33107c) {
                        snackbarRecord.f33107c = true;
                        this.f33102b.removeCallbacksAndMessages(snackbarRecord);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void e(Callback callback) {
        synchronized (this.f33101a) {
            try {
                if (c(callback)) {
                    SnackbarRecord snackbarRecord = this.f33103c;
                    if (snackbarRecord.f33107c) {
                        snackbarRecord.f33107c = false;
                        f(snackbarRecord);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void f(SnackbarRecord snackbarRecord) {
        int i2 = snackbarRecord.f33106b;
        if (i2 == -2) {
            return;
        }
        if (i2 <= 0) {
            i2 = i2 == -1 ? 1500 : 2750;
        }
        Handler handler = this.f33102b;
        handler.removeCallbacksAndMessages(snackbarRecord);
        handler.sendMessageDelayed(Message.obtain(handler, 0, snackbarRecord), i2);
    }
}
