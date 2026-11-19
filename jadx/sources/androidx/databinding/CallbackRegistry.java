package androidx.databinding;

import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class CallbackRegistry<C, T, A> implements Cloneable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public ArrayList f12577b = new ArrayList();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public long f12578c = 0;
    public long[] d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f12579e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final NotifierCallback f12580f;

    public static abstract class NotifierCallback<C, T, A> {
        public abstract void a(Object obj, Object obj2, int i2);
    }

    public CallbackRegistry(NotifierCallback<C, T, A> notifierCallback) {
        this.f12580f = notifierCallback;
    }

    public final boolean a(int i2) {
        int i3;
        if (i2 < 64) {
            return (this.f12578c & (1 << i2)) != 0;
        }
        long[] jArr = this.d;
        if (jArr != null && (i3 = (i2 / 64) - 1) < jArr.length) {
            return ((1 << (i2 % 64)) & jArr[i3]) != 0;
        }
        return false;
    }

    public final void b(int i2, int i3, int i4, long j2, Object obj) {
        long j3 = 1;
        while (i3 < i4) {
            if ((j2 & j3) == 0) {
                this.f12580f.a(this.f12577b.get(i3), obj, i2);
            }
            j3 <<= 1;
            i3++;
        }
    }

    public final synchronized void c(BaseObservable baseObservable, int i2) {
        try {
            try {
                this.f12579e++;
                int size = this.f12577b.size();
                long[] jArr = this.d;
                int length = jArr == null ? -1 : jArr.length - 1;
                d(i2, length, baseObservable);
                b(i2, (length + 2) * 64, size, 0L, baseObservable);
                int i3 = this.f12579e - 1;
                this.f12579e = i3;
                if (i3 == 0) {
                    long[] jArr2 = this.d;
                    if (jArr2 != null) {
                        for (int length2 = jArr2.length - 1; length2 >= 0; length2--) {
                            long j2 = this.d[length2];
                            if (j2 != 0) {
                                e((length2 + 1) * 64, j2);
                                this.d[length2] = 0;
                            }
                        }
                    }
                    long j3 = this.f12578c;
                    if (j3 != 0) {
                        e(0, j3);
                        this.f12578c = 0L;
                    }
                }
            } catch (Throwable th) {
                th = th;
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public final Object clone() {
        CallbackRegistry callbackRegistry;
        CloneNotSupportedException e2;
        synchronized (this) {
            try {
                callbackRegistry = (CallbackRegistry) super.clone();
                try {
                    callbackRegistry.f12578c = 0L;
                    callbackRegistry.d = null;
                    callbackRegistry.f12579e = 0;
                    callbackRegistry.f12577b = new ArrayList();
                    int size = this.f12577b.size();
                    for (int i2 = 0; i2 < size; i2++) {
                        if (!a(i2)) {
                            callbackRegistry.f12577b.add(this.f12577b.get(i2));
                        }
                    }
                } catch (CloneNotSupportedException e3) {
                    e2 = e3;
                    e2.printStackTrace();
                }
            } catch (CloneNotSupportedException e4) {
                callbackRegistry = null;
                e2 = e4;
            }
        }
        return callbackRegistry;
    }

    public final void d(int i2, int i3, Object obj) {
        if (i3 < 0) {
            b(i2, 0, Math.min(64, this.f12577b.size()), this.f12578c, obj);
            return;
        }
        long j2 = this.d[i3];
        int i4 = (i3 + 1) * 64;
        int iMin = Math.min(this.f12577b.size(), i4 + 64);
        d(i2, i3 - 1, obj);
        b(i2, i4, iMin, j2, obj);
    }

    public final void e(int i2, long j2) {
        long j3 = Long.MIN_VALUE;
        for (int i3 = i2 + 63; i3 >= i2; i3--) {
            if ((j2 & j3) != 0) {
                this.f12577b.remove(i3);
            }
            j3 >>>= 1;
        }
    }
}
