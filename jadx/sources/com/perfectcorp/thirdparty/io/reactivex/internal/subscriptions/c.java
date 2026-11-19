package com.perfectcorp.thirdparty.io.reactivex.internal.subscriptions;

import com.perfectcorp.thirdparty.org.reactivestreams.b;

/* JADX INFO: loaded from: classes3.dex */
public class c<T> extends a<T> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final b f43144b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Object f43145c;

    public c(b<? super T> bVar) {
        this.f43144b = bVar;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.internal.fuseable.i
    public final Object a() {
        if (get() != 16) {
            return null;
        }
        lazySet(32);
        Object obj = this.f43145c;
        this.f43145c = null;
        return obj;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.internal.fuseable.i
    public final boolean b() {
        return get() != 16;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.internal.fuseable.i
    public final void c() {
        lazySet(32);
        this.f43145c = null;
    }

    @Override // com.perfectcorp.thirdparty.org.reactivestreams.c
    public final void e() {
        set(4);
        this.f43145c = null;
    }
}
