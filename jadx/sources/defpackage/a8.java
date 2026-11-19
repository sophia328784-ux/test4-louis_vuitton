package defpackage;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.text.TextUtils;
import com.linkplay.medialib.ContentTree;
import com.perfectcorp.common.PfCommons;
import com.perfectcorp.common.cache.CacheProviders$StringPreferenceCacheProvider;
import com.perfectcorp.common.cache.PreferencesCache;
import com.perfectcorp.common.concurrent.Threads;
import com.perfectcorp.common.io.IO;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.LookHandler;
import com.perfectcorp.perfectlib.PerfectLib;
import com.perfectcorp.perfectlib.SkuHandler;
import com.perfectcorp.perfectlib.core.ApplyEffectParams;
import com.perfectcorp.perfectlib.hc.YMKDatabase;
import com.perfectcorp.perfectlib.hc.database.Contract;
import com.perfectcorp.perfectlib.hc.preferences.JewelryLookHandlerPreferences;
import com.perfectcorp.perfectlib.hc.preferences.LookHandlerPreferences;
import com.perfectcorp.perfectlib.hc.preferences.NailLookHandlerPreferences;
import com.perfectcorp.perfectlib.internal.ModuleConfig;
import com.perfectcorp.perfectlib.ph.database.ymk.background.b;
import com.perfectcorp.perfectlib.ph.database.ymk.look.d;
import com.perfectcorp.perfectlib.ph.database.ymk.look.e;
import com.perfectcorp.perfectlib.ph.database.ymk.sku.SkuItemDao;
import com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.look.a;
import com.perfectcorp.perfectlib.ph.utility.networkcache.c$e;
import com.perfectcorp.perfectlib.ph.utility.networkcache.c$f;
import com.perfectcorp.perfectlib.ph.utility.networkcache.c$h;
import com.perfectcorp.perfectlib.rh.utility.networkcache.a$a;
import com.perfectcorp.perfectlib.y;
import com.perfectcorp.perfectlib.ymk.kernelctrl.networktaskmanager.shadefinder.c;
import com.perfectcorp.perfectlib.ymk.kernelctrl.preference.QuickLaunchPreferenceHelper;
import com.perfectcorp.perfectlib.ymk.utility.SettingHelper;
import com.perfectcorp.thirdparty.com.google.common.collect.FluentIterable;
import com.perfectcorp.thirdparty.com.google.common.collect.Sets;
import com.perfectcorp.thirdparty.com.google.common.util.concurrent.Futures;
import com.perfectcorp.thirdparty.com.google.common.util.concurrent.ListenableFuture;
import com.perfectcorp.thirdparty.io.reactivex.Completable;
import com.perfectcorp.thirdparty.io.reactivex.Flowable;
import com.perfectcorp.thirdparty.io.reactivex.Single;
import com.perfectcorp.thirdparty.io.reactivex.internal.observers.ConsumerSingleObserver;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.g;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.flowable.f;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.flowable.i;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.h;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.m;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.t;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.MissingResourceException;
import java.util.Objects;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class a8 implements Callable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f438b;

    public /* synthetic */ a8(int i2) {
        this.f438b = i2;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        ListenableFuture listenableFutureG;
        List listM;
        Cursor cursorQuery = null;
        switch (this.f438b) {
            case 0:
                return Sets.e();
            case 1:
                return null;
            case 2:
                return Long.valueOf(System.nanoTime());
            case 3:
                return new HashMap();
            case 4:
                return SettingHelper.b() ? Single.h(Boolean.TRUE) : new m(new c$e(JewelryLookHandlerPreferences.f40324a.getString("LOOK_LIST_MESSAGE_DIGEST", "")).c(), new d20(10));
            case 5:
                a aVarA = com.perfectcorp.perfectlib.ph.utility.networkcache.a.C0186a.f41754b.a();
                return aVarA != null ? FluentIterable.n(aVarA.b()).r(new g7(23)).p() : e.b(YMKDatabase.b(), d.b.MAKEUP.d);
            case 6:
                return SettingHelper.c() ? Single.h(Boolean.TRUE) : new m(new c$f(LookHandlerPreferences.f40326a.getString("LOOK_LIST_MESSAGE_DIGEST", ""), true).c(), new v40(13));
            case 7:
                return SettingHelper.d() ? Single.h(Boolean.TRUE) : new m(new c$h(NailLookHandlerPreferences.f40328a.getString("LOOK_LIST_MESSAGE_DIGEST", "")).c(), new lc0(14));
            case 8:
                ApplyEffectParams applyEffectParams = PerfectLib.f39738a;
                return !ModuleConfig.t ? g.f42660b : (Completable) SkuHandler.class.getDeclaredMethod("clearAllCompletable", null).invoke(null, null);
            case 9:
                ApplyEffectParams applyEffectParams2 = PerfectLib.f39738a;
                Log.g(3, "PerfectLib", "clear sku finish");
                return !ModuleConfig.t ? g.f42660b : (Completable) LookHandler.class.getDeclaredMethod("clearAllCompletable", null).invoke(null, null);
            case 10:
                ApplyEffectParams applyEffectParams3 = PerfectLib.f39738a;
                Log.g(3, "PerfectLib", "clear jewelry look finish");
                return !ModuleConfig.w ? g.f42660b : (Completable) Class.forName("com.perfectcorp.perfectlib.TutorialHandler").getDeclaredMethod("clearAllCompletable", null).invoke(null, null);
            case 11:
                Log.g(3, "ShadeFinder", "[queryDetectionMode] start");
                t tVar = new t(c.a(), new ct0(19));
                String string = QuickLaunchPreferenceHelper.f42021a.getString("KEY_SHADE_FINDER_DETECT_MODE", null);
                if (string == null) {
                    Log.g(3, "ShadeFinder", "[queryDetectionMode] wait for request");
                    return tVar;
                }
                tVar.a(new ConsumerSingleObserver(new d8(26), new d8(27)));
                Log.g(3, "ShadeFinder", "[queryDetectionMode] use the cache");
                return Single.h(string);
            case 12:
                Log.g(3, "ShadeFinder", "[queryCustomFeatures] start");
                int i2 = 24;
                return new h(new t(c.b(), new y(i2)).f(new d8(i2)), new d8(25));
            case 13:
                SQLiteDatabase sQLiteDatabaseB = YMKDatabase.b();
                Threads.b();
                return SkuItemDao.c(sQLiteDatabaseB, Contract.SkuItem.f40243a, "isDeleted=?", new String[]{ContentTree.ROOT_ID}, "_id ASC", null);
            case 14:
                a$a a_a = new a$a();
                CacheProviders$StringPreferenceCacheProvider cacheProviders$StringPreferenceCacheProvider = a_a.f41834b;
                if (cacheProviders$StringPreferenceCacheProvider.f39160a == null) {
                    cacheProviders$StringPreferenceCacheProvider.f39160a = cacheProviders$StringPreferenceCacheProvider.a();
                }
                PreferencesCache preferencesCache = cacheProviders$StringPreferenceCacheProvider.f39160a;
                String string2 = preferencesCache.f39161a.getString(preferencesCache.f39162b, "");
                if (!TextUtils.isEmpty(string2)) {
                    try {
                        com.perfectcorp.perfectlib.rh.kernelctrl.networktaskmanager.shadefinder.a aVar = (com.perfectcorp.perfectlib.rh.kernelctrl.networktaskmanager.shadefinder.a) a_a.f41833a.j(string2, a_a.f41835c);
                        Objects.requireNonNull(aVar);
                        listenableFutureG = Futures.g(aVar);
                        break;
                    } catch (Throwable th) {
                        th = th;
                        listenableFutureG = Futures.f(th);
                    }
                    int i3 = Flowable.f42583a;
                    return new i(new f(listenableFutureG, 0L, null), null);
                }
                th = new MissingResourceException(null, null, null);
                listenableFutureG = Futures.f(th);
                int i4 = Flowable.f42583a;
                return new i(new f(listenableFutureG, 0L, null), null);
            case 15:
                Threads.b();
                Log.g(3, "SkuHandler", "[checkNeedToUpdate] checking language");
                if (SettingHelper.e()) {
                    Log.g(3, "SkuHandler", "[checkNeedToUpdate] language changed");
                    return Single.h(Boolean.TRUE);
                }
                Log.g(3, "SkuHandler", "[checkNeedToUpdate] language no change");
                return SkuHandler.d(com.perfectcorp.perfectlib.ph.kernelctrl.sku.h.f41570b);
            case 16:
                b bVar = b.d;
                SQLiteDatabase sQLiteDatabaseB2 = YMKDatabase.b();
                bVar.getClass();
                Threads.b();
                try {
                    cursorQuery = sQLiteDatabaseB2.query(true, bVar.f40266b, bVar.f40267c, "isDeleted=0", null, null, null, "guid", null);
                    listM = bVar.m(cursorQuery);
                    break;
                } catch (Throwable th2) {
                    try {
                        Log.e("BackgroundInfoDao", "[getBackgrounds] failed. queryNotDeletedRecordsOnly=true", th2);
                        listM = Collections.EMPTY_LIST;
                    } finally {
                        IO.b(cursorQuery);
                    }
                    break;
                }
                return listM;
            case 17:
                AtomicBoolean atomicBoolean = com.perfectcorp.perfectlib.ymk.clflurry.a.f41965a;
                return null;
            default:
                return PfCommons.b().getAssets().open("perfectlib/config.json");
        }
    }
}
