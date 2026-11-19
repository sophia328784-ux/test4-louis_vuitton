package com.perfectcorp.perfectlib;

import com.perfectcorp.perfectlib.hc.database.ymk.idusage.IdUsageDao;
import com.perfectcorp.thirdparty.com.google.gson.reflect.TypeToken;
import com.perfectcorp.thirdparty.io.reactivex.Completable;
import com.perfectcorp.thirdparty.io.reactivex.disposables.CompositeDisposable;
import defpackage.d20;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes3.dex */
final class JewelryLookHandler {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Configuration.ImageSource f39643b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final CompositeDisposable f39642a = new CompositeDisposable();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ConcurrentHashMap f39644c = new ConcurrentHashMap();
    public final AtomicReference d = new AtomicReference();

    /* JADX INFO: renamed from: com.perfectcorp.perfectlib.JewelryLookHandler$1, reason: invalid class name */
    class AnonymousClass1 extends TypeToken<List<com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.jewelryLook.a.C0167a>> {
    }

    /* JADX INFO: renamed from: com.perfectcorp.perfectlib.JewelryLookHandler$2, reason: invalid class name */
    class AnonymousClass2 extends TypeToken<List<com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.jewelryLook.a.C0167a>> {
    }

    public JewelryLookHandler(Configuration.ImageSource imageSource) {
        this.f39643b = imageSource;
    }

    public static Completable clearAllCompletable() {
        return new com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.a(new com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.o(CacheCleaner.e(IdUsageDao.Type.JEWELRY_LOOK), new d20(5)), new com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.j(new t(1)));
    }
}
