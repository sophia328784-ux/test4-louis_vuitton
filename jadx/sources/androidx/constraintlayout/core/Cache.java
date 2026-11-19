package androidx.constraintlayout.core;

/* JADX INFO: loaded from: classes.dex */
public class Cache {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Pools$SimplePool f11294a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Pools$SimplePool f11295b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public SolverVariable[] f11296c;

    public Cache() {
        new Pools$SimplePool();
        this.f11294a = new Pools$SimplePool();
        this.f11295b = new Pools$SimplePool();
        this.f11296c = new SolverVariable[32];
    }
}
