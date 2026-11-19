package com.perfectcorp.common.guava;

/* JADX INFO: loaded from: classes3.dex */
public abstract class a<V> implements b<V> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final C0119a f39263a = new C0119a();

    /* JADX INFO: renamed from: com.perfectcorp.common.guava.a$a, reason: collision with other inner class name */
    public static class C0119a extends RuntimeException {
    }

    @Override // com.perfectcorp.common.guava.b
    public final void a() {
    }

    @Override // com.perfectcorp.thirdparty.com.google.common.util.concurrent.FutureCallback
    public void onFailure(Throwable th) {
        C0119a c0119a = this.f39263a;
        c0119a.initCause(th);
        throw c0119a;
    }
}
