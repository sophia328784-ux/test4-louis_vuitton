package com.perfectcorp.thirdparty.io.reactivex.internal.disposables;

/* JADX WARN: $VALUES field not found */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX INFO: loaded from: classes3.dex */
public final class c implements com.perfectcorp.thirdparty.io.reactivex.internal.fuseable.d<Object> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final c f42601a = new c("INSTANCE", 0);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static c f42602b = new c("NEVER", 1);

    public static void b(com.perfectcorp.thirdparty.io.reactivex.e eVar) {
        eVar.onSubscribe(f42601a);
        eVar.onComplete();
    }

    public static void c(Throwable th, com.perfectcorp.thirdparty.io.reactivex.e eVar) {
        eVar.onSubscribe(f42601a);
        eVar.onError(th);
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.internal.fuseable.i
    public final boolean a(Object obj) {
        throw new UnsupportedOperationException("Should not be called!");
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable
    public final void dispose() {
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable
    public final boolean isDisposed() {
        return this == f42601a;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.internal.fuseable.i
    public final Object a() {
        return null;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.internal.fuseable.e
    public final int a(int i2) {
        return 2;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.internal.fuseable.i
    public final boolean b() {
        return true;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.internal.fuseable.i
    public final void c() {
    }
}
