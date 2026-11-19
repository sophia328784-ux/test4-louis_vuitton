package com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager;

import com.perfectcorp.perfectlib.ApplyEffectUtility;
import com.perfectcorp.perfectlib.Configuration;
import com.perfectcorp.perfectlib.LookHandler;
import com.perfectcorp.perfectlib.ph.template.TemplateUtils;
import com.perfectcorp.thirdparty.com.google.common.collect.ImmutableSet;
import com.perfectcorp.thirdparty.com.google.common.util.concurrent.SettableFuture;
import com.perfectcorp.thirdparty.io.reactivex.Observable;
import com.perfectcorp.thirdparty.io.reactivex.Single;
import com.perfectcorp.thirdparty.io.reactivex.internal.observers.ConsumerSingleObserver;
import defpackage.md;
import java.util.Collection;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class b0 implements Callable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ c.b f41410b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Collection f41411c;
    public final /* synthetic */ Configuration.ImageSource d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ SettableFuture f41412e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ TemplateUtils.c f41413f;

    public /* synthetic */ b0(c.b bVar, Collection collection, Configuration.ImageSource imageSource, SettableFuture settableFuture, TemplateUtils.c cVar) {
        this.f41410b = bVar;
        this.f41411c = collection;
        this.d = imageSource;
        this.f41412e = settableFuture;
        this.f41413f = cVar;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        ExecutorService executorService = c.b.z;
        Single list = Observable.fromIterable(this.f41411c).flatMapSingle(new c0(this.f41410b, this.d, 0)).toList();
        SettableFuture settableFuture = this.f41412e;
        q qVar = new q(settableFuture, this.f41413f);
        r rVar = new r(settableFuture, 5);
        list.getClass();
        ConsumerSingleObserver consumerSingleObserver = new ConsumerSingleObserver(qVar, rVar);
        list.a(consumerSingleObserver);
        ImmutableSet immutableSet = ApplyEffectUtility.f39471a;
        LookHandler lookHandler = LookHandler.getInstance();
        if (lookHandler != null) {
            lookHandler.f39664a.b(consumerSingleObserver);
            return settableFuture;
        }
        md.k("LookHandler is null. SDK might be released.");
        return null;
    }
}
