package com.perfectcorp.perfectlib;

import com.perfectcorp.perfectlib.hc.database.ymk.idusage.IdUsageDao;
import com.perfectcorp.thirdparty.com.google.gson.reflect.TypeToken;
import com.perfectcorp.thirdparty.io.reactivex.Completable;
import com.perfectcorp.thirdparty.io.reactivex.disposables.CompositeDisposable;
import defpackage.lc0;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes3.dex */
final class NailLookHandler {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Configuration.ImageSource f39717b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final CompositeDisposable f39716a = new CompositeDisposable();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ConcurrentHashMap f39718c = new ConcurrentHashMap();
    public final AtomicReference d = new AtomicReference();

    /* JADX INFO: renamed from: com.perfectcorp.perfectlib.NailLookHandler$1, reason: invalid class name */
    class AnonymousClass1 extends TypeToken<List<com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.nailLook.a.C0169a>> {
    }

    /* JADX INFO: renamed from: com.perfectcorp.perfectlib.NailLookHandler$2, reason: invalid class name */
    class AnonymousClass2 extends TypeToken<List<com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.nailLook.a.C0169a>> {
    }

    public NailLookHandler(Configuration.ImageSource imageSource) {
        this.f39717b = imageSource;
    }

    public static Completable clearAllCompletable() {
        return new com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.a(new com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.o(CacheCleaner.e(IdUsageDao.Type.NAIL_LOOK), new lc0(13)), new com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.j(new t(2)));
    }
}
