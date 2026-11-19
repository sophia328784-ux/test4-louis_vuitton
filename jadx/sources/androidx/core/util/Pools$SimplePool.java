package androidx.core.util;

import defpackage.md;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0004\b\u0016\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u00012\b\u0012\u0004\u0012\u00028\u00000\u0003B\u0011\u0012\b\b\u0001\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"androidx/core/util/Pools$SimplePool", "", "T", "Landroidx/core/util/Pools$Pool;", "", "maxPoolSize", "<init>", "(I)V", "core"}, k = 1, mv = {2, 1, 0}, xi = 48)
public class Pools$SimplePool<T> implements Pools$Pool<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object[] f12140a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f12141b;

    public Pools$SimplePool(int i2) {
        if (i2 > 0) {
            this.f12140a = new Object[i2];
        } else {
            md.n("The max pool size must be > 0");
            throw null;
        }
    }

    @Override // androidx.core.util.Pools$Pool
    public Object acquire() {
        int i2 = this.f12141b;
        if (i2 <= 0) {
            return null;
        }
        int i3 = i2 - 1;
        Object[] objArr = this.f12140a;
        Object obj = objArr[i3];
        obj.getClass();
        objArr[i3] = null;
        this.f12141b--;
        return obj;
    }

    @Override // androidx.core.util.Pools$Pool
    public boolean release(Object obj) {
        obj.getClass();
        int i2 = this.f12141b;
        int i3 = 0;
        while (true) {
            Object[] objArr = this.f12140a;
            if (i3 >= i2) {
                int i4 = this.f12141b;
                if (i4 >= objArr.length) {
                    return false;
                }
                objArr[i4] = obj;
                this.f12141b = i4 + 1;
                return true;
            }
            if (objArr[i3] == obj) {
                md.k("Already in the pool!");
                return false;
            }
            i3++;
        }
    }
}
