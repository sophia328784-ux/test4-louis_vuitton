package androidx.core.util;

import kotlin.Metadata;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0004\b\u0016\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u00012\b\u0012\u0004\u0012\u00028\u00000\u0003B\u000f\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"androidx/core/util/Pools$SynchronizedPool", "", "T", "Landroidx/core/util/Pools$SimplePool;", "", "maxPoolSize", "<init>", "(I)V", "core"}, k = 1, mv = {2, 1, 0}, xi = 48)
public class Pools$SynchronizedPool<T> extends Pools$SimplePool<T> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object f12142c;

    public Pools$SynchronizedPool(int i2) {
        super(i2);
        this.f12142c = new Object();
    }

    @Override // androidx.core.util.Pools$SimplePool, androidx.core.util.Pools$Pool
    public final Object acquire() {
        Object objAcquire;
        synchronized (this.f12142c) {
            objAcquire = super.acquire();
        }
        return objAcquire;
    }

    @Override // androidx.core.util.Pools$SimplePool, androidx.core.util.Pools$Pool
    public final boolean release(Object obj) {
        boolean zRelease;
        obj.getClass();
        synchronized (this.f12142c) {
            zRelease = super.release(obj);
        }
        return zRelease;
    }
}
