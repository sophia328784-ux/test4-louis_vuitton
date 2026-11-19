package androidx.constraintlayout.core;

/* JADX INFO: loaded from: classes.dex */
class Pools$SimplePool<T> implements Pools$Pool<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object[] f11306a = new Object[256];

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f11307b;

    public final boolean a(ArrayRow arrayRow) {
        int i2 = this.f11307b;
        Object[] objArr = this.f11306a;
        if (i2 >= objArr.length) {
            return false;
        }
        objArr[i2] = arrayRow;
        this.f11307b = i2 + 1;
        return true;
    }
}
