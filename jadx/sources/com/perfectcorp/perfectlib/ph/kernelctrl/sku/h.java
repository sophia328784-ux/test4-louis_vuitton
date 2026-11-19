package com.perfectcorp.perfectlib.ph.kernelctrl.sku;

import com.perfectcorp.common.concurrent.ThreadFactoryBuilder;
import com.perfectcorp.common.network.NetworkTaskManager;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.common.utility.MoreCollections;
import com.perfectcorp.perfectlib.hc.YMKDatabase;
import com.perfectcorp.perfectlib.hc.database.ymk.idusage.IdUsageDao;
import com.perfectcorp.perfectlib.internal.ModuleConfig;
import com.perfectcorp.perfectlib.ymk.kernelctrl.networkmanager.DownloadFolderHelper;
import com.perfectcorp.perfectlib.ymk.model.BeautyMode;
import com.perfectcorp.thirdparty.com.google.common.base.Joiner;
import com.perfectcorp.thirdparty.com.google.common.collect.Collections2;
import com.perfectcorp.thirdparty.com.google.common.collect.ImmutableList;
import com.perfectcorp.thirdparty.com.google.common.collect.bz;
import com.perfectcorp.thirdparty.io.reactivex.Single;
import com.perfectcorp.thirdparty.io.reactivex.schedulers.Schedulers;
import defpackage.z81;
import defpackage.zp;
import java.util.Collection;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Executors;

/* JADX INFO: loaded from: classes3.dex */
public abstract class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final com.perfectcorp.thirdparty.io.reactivex.internal.schedulers.d f41569a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final List f41570b;

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final boolean f41571a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final boolean f41572b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final boolean f41573c;
        public final NetworkTaskManager.TaskPriority d;

        /* JADX INFO: renamed from: com.perfectcorp.perfectlib.ph.kernelctrl.sku.h$a$a, reason: collision with other inner class name */
        public static final class C0179a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public boolean f41574a = true;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public boolean f41575b = true;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public boolean f41576c = true;
            public NetworkTaskManager.TaskPriority d = NetworkTaskManager.TaskPriority.NORMAL;
        }

        public a(C0179a c0179a) {
            this.f41571a = c0179a.f41574a;
            this.f41572b = c0179a.f41575b;
            this.f41573c = c0179a.f41576c;
            this.d = c0179a.d;
        }
    }

    static {
        ThreadFactoryBuilder threadFactoryBuilder = new ThreadFactoryBuilder();
        threadFactoryBuilder.f39170a = "SkuManagerThread";
        threadFactoryBuilder.d = 10;
        threadFactoryBuilder.f39172c = true;
        f41569a = Schedulers.a(Executors.newSingleThreadExecutor(threadFactoryBuilder.a()));
        bz bzVar = ImmutableList.f42200c;
        ImmutableList.Builder builder = new ImmutableList.Builder();
        if (ModuleConfig.q) {
            z81.i(BeautyMode.EYE_SHADOW, builder);
            z81.i(BeautyMode.EYE_LINES, builder);
            z81.i(BeautyMode.EYE_LASHES, builder);
            z81.i(BeautyMode.LIP_STICK, builder);
            z81.i(BeautyMode.BLUSH, builder);
            z81.i(BeautyMode.SKIN_TONER, builder);
            z81.i(BeautyMode.EYE_CONTACT, builder);
            z81.i(BeautyMode.EYE_BROW, builder);
            z81.i(BeautyMode.FACE_CONTOUR, builder);
            z81.i(BeautyMode.LIP_LINER, builder);
            z81.i(BeautyMode.BACKGROUND, builder);
            z81.i(BeautyMode.BRONZER, builder);
            z81.i(BeautyMode.CONCEALER, builder);
            z81.i(BeautyMode.EYE_WEAR, builder);
            z81.i(BeautyMode.EARRINGS, builder);
            z81.i(BeautyMode.HAIR_DYE, builder);
        }
        if (ModuleConfig.v) {
            z81.i(BeautyMode.NAIL, builder);
            z81.i(BeautyMode.RING, builder);
            z81.i(BeautyMode.BRACELET, builder);
            z81.i(BeautyMode.WATCH, builder);
        }
        if (ModuleConfig.y) {
            z81.i(BeautyMode.NECKLACE, builder);
        }
        f41570b = builder.i();
    }

    public static Single a(Collection collection, int i2, a aVar) {
        if (MoreCollections.a(collection)) {
            IllegalArgumentException illegalArgumentException = new IllegalArgumentException("guid is null or empty");
            Log.j("SkuManager", "requestSkuMetadataByGuids error", illegalArgumentException);
            return Single.h(new e((Throwable) illegalArgumentException));
        }
        Collection collectionA = Collections2.a(collection, new zp(1));
        if (collectionA.size() != collection.size()) {
            Log.j("SkuManager", "guids validate failed!", new Throwable(new Joiner(",").c().b(collection)));
        }
        if (MoreCollections.a(collectionA)) {
            return Single.g(new IllegalArgumentException("empty guid collection"));
        }
        b.a.C0178a c0178a = new b.a.C0178a();
        c0178a.f41549a = collectionA;
        c0178a.f41550b = i2;
        c0178a.f41553f = aVar.d;
        c0178a.f41551c = aVar.f41571a;
        c0178a.d = aVar.f41572b;
        c0178a.f41552e = aVar.f41573c;
        return new b(new b.a(c0178a)).a();
    }

    public static void b(com.perfectcorp.perfectlib.ph.database.ymk.sku.h hVar) {
        IdUsageDao.b(YMKDatabase.c(), new IdUsageDao.Row(hVar.skuGUID, IdUsageDao.Type.SKU, DownloadFolderHelper.c(new f.d(hVar, hVar.skuGUID)), 0L));
    }

    public static boolean c(BeautyMode beautyMode) {
        return com.perfectcorp.perfectlib.ph.unit.sku.a.e(beautyMode) || com.perfectcorp.perfectlib.ph.unit.sku.a.h(beautyMode) || com.perfectcorp.perfectlib.ph.unit.sku.a.j(beautyMode);
    }

    public static Single d(Set set, a aVar) {
        if (MoreCollections.a(set)) {
            IllegalArgumentException illegalArgumentException = new IllegalArgumentException("guid is null or empty");
            Log.j("SkuManager", "requestSkuMetadataByShadeIds error", illegalArgumentException);
            return Single.h(new e((Throwable) illegalArgumentException));
        }
        Collection collectionA = Collections2.a(set, new zp(2));
        if (collectionA.size() != set.size()) {
            Log.j("SkuManager", "guids validate failed!", new Throwable(new Joiner(",").c().b(set)));
        }
        if (MoreCollections.a(collectionA)) {
            return Single.g(new IllegalArgumentException("empty guid collection"));
        }
        b.a.C0178a c0178a = new b.a.C0178a();
        c0178a.f41549a = collectionA;
        c0178a.f41550b = 0;
        c0178a.f41553f = aVar.d;
        c0178a.f41551c = aVar.f41571a;
        c0178a.d = aVar.f41572b;
        c0178a.f41552e = aVar.f41573c;
        return new com.perfectcorp.perfectlib.ph.kernelctrl.sku.a(new b.a(c0178a)).a();
    }

    public static boolean e() {
        return ModuleConfig.q || ModuleConfig.v;
    }
}
