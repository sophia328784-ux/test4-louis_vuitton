package com.perfectcorp.thirdparty.io.reactivex;

/* JADX INFO: loaded from: classes3.dex */
public abstract class Flowable<T> implements com.perfectcorp.thirdparty.org.reactivestreams.a<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final int f42583a = Math.max(1, Integer.getInteger("rx2.buffer-size", 128).intValue());

    public abstract void a(com.perfectcorp.thirdparty.org.reactivestreams.b bVar);
}
