package com.google.android.play.integrity.internal;

/* JADX INFO: loaded from: classes2.dex */
public final class aj implements an {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Object f33325c = new Object();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public volatile an f33326a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public volatile Object f33327b;

    public static aj b(an anVar) {
        if (anVar instanceof aj) {
            return (aj) anVar;
        }
        aj ajVar = new aj();
        ajVar.f33327b = f33325c;
        ajVar.f33326a = anVar;
        return ajVar;
    }

    @Override // com.google.android.play.integrity.internal.an
    public final Object a() {
        Object objA;
        Object obj = this.f33327b;
        Object obj2 = f33325c;
        if (obj != obj2) {
            return obj;
        }
        synchronized (this) {
            try {
                objA = this.f33327b;
                if (objA == obj2) {
                    objA = this.f33326a.a();
                    Object obj3 = this.f33327b;
                    if (obj3 != obj2 && obj3 != objA) {
                        throw new IllegalStateException("Scoped provider was invoked recursively returning different results: " + obj3 + " & " + objA + ". This is likely due to a circular dependency.");
                    }
                    this.f33327b = objA;
                    this.f33326a = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return objA;
    }
}
