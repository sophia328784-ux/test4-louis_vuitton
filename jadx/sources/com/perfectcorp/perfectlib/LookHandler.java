package com.perfectcorp.perfectlib;

import android.content.SharedPreferences;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.perfectcorp.common.PfCommons;
import com.perfectcorp.common.concurrent.Threads;
import com.perfectcorp.common.gson.GsonHelper;
import com.perfectcorp.common.io.IO;
import com.perfectcorp.common.reflect.Proxies;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.ApplyEffectUtility;
import com.perfectcorp.perfectlib.LookHandler;
import com.perfectcorp.perfectlib.LookInfo;
import com.perfectcorp.perfectlib.hc.YMKDatabase;
import com.perfectcorp.perfectlib.hc.database.DBUtility;
import com.perfectcorp.perfectlib.hc.database.ymk.DatabaseOpenHelper;
import com.perfectcorp.perfectlib.hc.database.ymk.idusage.IdUsageDao;
import com.perfectcorp.perfectlib.hc.preferences.JewelryLookHandlerPreferences;
import com.perfectcorp.perfectlib.hc.preferences.LookHandlerPreferences;
import com.perfectcorp.perfectlib.hc.preferences.NailLookHandlerPreferences;
import com.perfectcorp.perfectlib.internal.DownloadTaskCancelable;
import com.perfectcorp.perfectlib.internal.InternalErrorRetriever;
import com.perfectcorp.perfectlib.internal.SkipCallbackException;
import com.perfectcorp.perfectlib.makeupcam.camera.YMKPrimitiveData;
import com.perfectcorp.perfectlib.ph.database.ymk.makeup.b;
import com.perfectcorp.perfectlib.ymk.utility.FileDownloader;
import com.perfectcorp.perfectlib.ymk.utility.SettingHelper;
import com.perfectcorp.thirdparty.com.google.common.base.Optional;
import com.perfectcorp.thirdparty.com.google.common.base.Predicate;
import com.perfectcorp.thirdparty.com.google.common.collect.FluentIterable;
import com.perfectcorp.thirdparty.com.google.common.collect.ImmutableList;
import com.perfectcorp.thirdparty.com.google.gson.Gson;
import com.perfectcorp.thirdparty.io.reactivex.Completable;
import com.perfectcorp.thirdparty.io.reactivex.Observable;
import com.perfectcorp.thirdparty.io.reactivex.Scheduler;
import com.perfectcorp.thirdparty.io.reactivex.Single;
import com.perfectcorp.thirdparty.io.reactivex.android.schedulers.AndroidSchedulers;
import com.perfectcorp.thirdparty.io.reactivex.disposables.CompositeDisposable;
import com.perfectcorp.thirdparty.io.reactivex.disposables.Disposables;
import com.perfectcorp.thirdparty.io.reactivex.functions.Consumer;
import com.perfectcorp.thirdparty.io.reactivex.functions.Function;
import com.perfectcorp.thirdparty.io.reactivex.internal.functions.Functions;
import com.perfectcorp.thirdparty.io.reactivex.internal.observers.CallbackCompletableObserver;
import com.perfectcorp.thirdparty.io.reactivex.internal.observers.ConsumerSingleObserver;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.p;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.t;
import com.perfectcorp.thirdparty.io.reactivex.schedulers.Schedulers;
import defpackage.a8;
import defpackage.d20;
import defpackage.d8;
import defpackage.e5;
import defpackage.et;
import defpackage.f8;
import defpackage.fw;
import defpackage.g7;
import defpackage.la0;
import defpackage.lc0;
import defpackage.ma0;
import defpackage.n7;
import defpackage.na0;
import defpackage.p7;
import defpackage.pa0;
import defpackage.q6;
import defpackage.ra0;
import defpackage.sa0;
import defpackage.v40;
import defpackage.va0;
import defpackage.xw;
import defpackage.y81;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.Callable;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes3.dex */
public final class LookHandler {
    public static final Object g = new Object();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static volatile LookHandler f39663h;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Configuration.ImageSource f39665b;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final NailLookHandler f39667e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final JewelryLookHandler f39668f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final CompositeDisposable f39664a = new CompositeDisposable();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ConcurrentHashMap f39666c = new ConcurrentHashMap();
    public final AtomicReference d = new AtomicReference();

    public interface CheckNeedToUpdateCallback {
        void onFailure(Throwable th);

        void onSuccess(boolean z);
    }

    public interface CheckNeedToUpdateWithGuidsCallback {
        void onFailure(Throwable th);

        void onSuccess(Map<String, MakeupItemStatus> map);
    }

    @FunctionalInterface
    public interface ClearCallback {
        void onCleared();
    }

    public interface DeleteLooksCallback {
        void onComplete();
    }

    public interface DownloadCallback {
        void onFailure(Throwable th);

        void onSuccess();

        void progress(double d);
    }

    /* JADX INFO: loaded from: classes.dex */
    public interface DownloadLooksCallback {
        void onComplete(Map<String, LookInfo> map, Map<String, Throwable> map2);

        void progress(int i2, int i3);
    }

    public interface GetListCallback {
        void onFailure(Throwable th);

        void onSuccess(List<LookInfo> list);
    }

    public interface GetLookInfosWithGuidsCallback {
        void onComplete(List<LookInfo> list);
    }

    public interface SyncServerCallback {
        void onFailure(Throwable th);

        void onSuccess();
    }

    public LookHandler(Configuration.ImageSource imageSource) {
        this.f39665b = imageSource;
        this.f39667e = new NailLookHandler(imageSource);
        this.f39668f = new JewelryLookHandler(imageSource);
    }

    public static Single a(List list) {
        com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.p pVar = new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.p(new sa0(list, 0));
        Function function = Functions.f42605a;
        return new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.o(pVar, function).concatMap(new v40(14)).flatMapIterable(function).toList();
    }

    public static void b(DownloadLooksCallback downloadLooksCallback, AtomicInteger atomicInteger, int i2) {
        PfCommons.c(new q6(atomicInteger, downloadLooksCallback, i2, 8));
    }

    public static void c(DownloadTaskCancelable downloadTaskCancelable) {
        LookHandler lookHandler = getInstance();
        if (lookHandler != null) {
            Log.g(3, "LookHandler", "[cancelOnReleased] add cancelable \"" + downloadTaskCancelable + "\" to taskDisposables");
            lookHandler.f39664a.b(Disposables.b(new et(downloadTaskCancelable, 17)));
            return;
        }
        Log.g(3, "LookHandler", "[cancelOnReleased] cancelable \"" + downloadTaskCancelable + "\" cancel directly");
        downloadTaskCancelable.cancel();
    }

    public static Completable clearAllCompletable() {
        return new com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.a(new com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.o(CacheCleaner.e(IdUsageDao.Type.MAKEUP_LOOK), new v40(10)), new com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.j(new e5(4)));
    }

    public static void d(com.perfectcorp.perfectlib.ph.database.ymk.makeup.b bVar) {
        Threads.b();
        com.perfectcorp.perfectlib.ph.database.ymk.look.d.b bVarE = bVar.e();
        long j2 = bVar.m;
        String str = bVar.d;
        if (bVarE == com.perfectcorp.perfectlib.ph.database.ymk.look.d.b.NAIL) {
            Threads.b();
            NailLookHandlerPreferences.f40329b.edit().putLong(str, j2).commit();
        } else if (bVar.e() != com.perfectcorp.perfectlib.ph.database.ymk.look.d.b.JEWELRY) {
            LookHandlerPreferences.f40327b.edit().putLong(str, j2).commit();
        } else {
            Threads.b();
            JewelryLookHandlerPreferences.f40325b.edit().putLong(str, j2).commit();
        }
    }

    public static void deleteLooksByServerResponse() {
        Log.g(3, "LookHandler", "[deleteLooksByServerResponse] start");
        com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.look.a aVarA = com.perfectcorp.perfectlib.ph.utility.networkcache.a.C0186a.f41754b.a();
        if (aVarA != null) {
            final ImmutableList immutableListP = FluentIterable.n(aVarA.b()).r(new g7(22)).p();
            final int i2 = 1;
            final ImmutableList immutableListP2 = FluentIterable.n(com.perfectcorp.perfectlib.ph.database.ymk.look.e.b(YMKDatabase.b(), com.perfectcorp.perfectlib.ph.database.ymk.look.d.b.MAKEUP.d)).i(new Predicate() { // from class: n40
                @Override // com.perfectcorp.thirdparty.com.google.common.base.Predicate
                public final boolean apply(Object obj) {
                    boolean zContains;
                    int i3 = i2;
                    List list = immutableListP;
                    String str = (String) obj;
                    switch (i3) {
                        case 0:
                            zContains = list.contains(str);
                            break;
                        case 1:
                            zContains = list.contains(str);
                            break;
                        default:
                            zContains = list.contains(str);
                            break;
                    }
                    return !zContains;
                }
            }).p();
            final SQLiteDatabase writableDatabase = DatabaseOpenHelper.Union.f40272j.f40274i.getWritableDatabase();
            DBUtility.i(writableDatabase, new Runnable() { // from class: com.perfectcorp.perfectlib.y0
                @Override // java.lang.Runnable
                public final void run() {
                    int i3 = i2;
                    SQLiteDatabase sQLiteDatabase = writableDatabase;
                    List<String> list = immutableListP2;
                    switch (i3) {
                        case 0:
                            SharedPreferences.Editor editorEdit = JewelryLookHandlerPreferences.f40325b.edit();
                            for (String str : list) {
                                CacheCleaner.d(str, true);
                                com.perfectcorp.perfectlib.ph.database.ymk.makeup.a.c(sQLiteDatabase, str);
                                editorEdit.remove(str);
                            }
                            editorEdit.commit();
                            break;
                        case 1:
                            SharedPreferences.Editor editorEdit2 = LookHandlerPreferences.f40327b.edit();
                            for (String str2 : list) {
                                CacheCleaner.d(str2, true);
                                com.perfectcorp.perfectlib.ph.database.ymk.makeup.a.c(sQLiteDatabase, str2);
                                editorEdit2.remove(str2);
                            }
                            editorEdit2.commit();
                            break;
                        default:
                            SharedPreferences.Editor editorEdit3 = NailLookHandlerPreferences.f40329b.edit();
                            for (String str3 : list) {
                                CacheCleaner.d(str3, true);
                                com.perfectcorp.perfectlib.ph.database.ymk.makeup.a.c(sQLiteDatabase, str3);
                                editorEdit3.remove(str3);
                            }
                            editorEdit3.commit();
                            break;
                    }
                }
            });
        }
        Log.g(3, "LookHandler", "[deleteLooksByServerResponse] end");
        Log.g(3, "NailLookHandler", "[deleteLooksByServerResponse] start");
        Gson gson = GsonHelper.f39261b;
        List list = (List) gson.j(NailLookHandlerPreferences.f40328a.getString("LOOK_LIST_ITEMS", null), new NailLookHandler.AnonymousClass2().f42556b);
        if (list != null) {
            final ImmutableList immutableListP3 = FluentIterable.n(list).r(new g7(25)).p();
            final int i3 = 2;
            final ImmutableList immutableListP4 = FluentIterable.n(com.perfectcorp.perfectlib.ph.database.ymk.look.e.b(YMKDatabase.b(), com.perfectcorp.perfectlib.ph.database.ymk.look.d.b.NAIL.d)).i(new Predicate() { // from class: n40
                @Override // com.perfectcorp.thirdparty.com.google.common.base.Predicate
                public final boolean apply(Object obj) {
                    boolean zContains;
                    int i4 = i3;
                    List list2 = immutableListP3;
                    String str = (String) obj;
                    switch (i4) {
                        case 0:
                            zContains = list2.contains(str);
                            break;
                        case 1:
                            zContains = list2.contains(str);
                            break;
                        default:
                            zContains = list2.contains(str);
                            break;
                    }
                    return !zContains;
                }
            }).p();
            final SQLiteDatabase writableDatabase2 = DatabaseOpenHelper.Union.f40272j.f40274i.getWritableDatabase();
            DBUtility.i(writableDatabase2, new Runnable() { // from class: com.perfectcorp.perfectlib.y0
                @Override // java.lang.Runnable
                public final void run() {
                    int i4 = i3;
                    SQLiteDatabase sQLiteDatabase = writableDatabase2;
                    List<String> list2 = immutableListP4;
                    switch (i4) {
                        case 0:
                            SharedPreferences.Editor editorEdit = JewelryLookHandlerPreferences.f40325b.edit();
                            for (String str : list2) {
                                CacheCleaner.d(str, true);
                                com.perfectcorp.perfectlib.ph.database.ymk.makeup.a.c(sQLiteDatabase, str);
                                editorEdit.remove(str);
                            }
                            editorEdit.commit();
                            break;
                        case 1:
                            SharedPreferences.Editor editorEdit2 = LookHandlerPreferences.f40327b.edit();
                            for (String str2 : list2) {
                                CacheCleaner.d(str2, true);
                                com.perfectcorp.perfectlib.ph.database.ymk.makeup.a.c(sQLiteDatabase, str2);
                                editorEdit2.remove(str2);
                            }
                            editorEdit2.commit();
                            break;
                        default:
                            SharedPreferences.Editor editorEdit3 = NailLookHandlerPreferences.f40329b.edit();
                            for (String str3 : list2) {
                                CacheCleaner.d(str3, true);
                                com.perfectcorp.perfectlib.ph.database.ymk.makeup.a.c(sQLiteDatabase, str3);
                                editorEdit3.remove(str3);
                            }
                            editorEdit3.commit();
                            break;
                    }
                }
            });
        }
        Log.g(3, "NailLookHandler", "[deleteLooksByServerResponse] end");
        Log.g(3, "JewelryLookHandler", "[deleteLooksByServerResponse] start");
        List list2 = (List) gson.j(JewelryLookHandlerPreferences.f40324a.getString("LOOK_LIST_ITEMS", null), new JewelryLookHandler.AnonymousClass2().f42556b);
        if (list2 != null) {
            final ImmutableList immutableListP5 = FluentIterable.n(list2).r(new g7(19)).p();
            final int i4 = 0;
            final ImmutableList immutableListP6 = FluentIterable.n(com.perfectcorp.perfectlib.ph.database.ymk.look.e.b(YMKDatabase.b(), com.perfectcorp.perfectlib.ph.database.ymk.look.d.b.JEWELRY.d)).i(new Predicate() { // from class: n40
                @Override // com.perfectcorp.thirdparty.com.google.common.base.Predicate
                public final boolean apply(Object obj) {
                    boolean zContains;
                    int i5 = i4;
                    List list3 = immutableListP5;
                    String str = (String) obj;
                    switch (i5) {
                        case 0:
                            zContains = list3.contains(str);
                            break;
                        case 1:
                            zContains = list3.contains(str);
                            break;
                        default:
                            zContains = list3.contains(str);
                            break;
                    }
                    return !zContains;
                }
            }).p();
            final SQLiteDatabase writableDatabase3 = DatabaseOpenHelper.Union.f40272j.f40274i.getWritableDatabase();
            DBUtility.i(writableDatabase3, new Runnable() { // from class: com.perfectcorp.perfectlib.y0
                @Override // java.lang.Runnable
                public final void run() {
                    int i5 = i4;
                    SQLiteDatabase sQLiteDatabase = writableDatabase3;
                    List<String> list3 = immutableListP6;
                    switch (i5) {
                        case 0:
                            SharedPreferences.Editor editorEdit = JewelryLookHandlerPreferences.f40325b.edit();
                            for (String str : list3) {
                                CacheCleaner.d(str, true);
                                com.perfectcorp.perfectlib.ph.database.ymk.makeup.a.c(sQLiteDatabase, str);
                                editorEdit.remove(str);
                            }
                            editorEdit.commit();
                            break;
                        case 1:
                            SharedPreferences.Editor editorEdit2 = LookHandlerPreferences.f40327b.edit();
                            for (String str2 : list3) {
                                CacheCleaner.d(str2, true);
                                com.perfectcorp.perfectlib.ph.database.ymk.makeup.a.c(sQLiteDatabase, str2);
                                editorEdit2.remove(str2);
                            }
                            editorEdit2.commit();
                            break;
                        default:
                            SharedPreferences.Editor editorEdit3 = NailLookHandlerPreferences.f40329b.edit();
                            for (String str3 : list3) {
                                CacheCleaner.d(str3, true);
                                com.perfectcorp.perfectlib.ph.database.ymk.makeup.a.c(sQLiteDatabase, str3);
                                editorEdit3.remove(str3);
                            }
                            editorEdit3.commit();
                            break;
                    }
                }
            });
        }
        Log.g(3, "JewelryLookHandler", "[deleteLooksByServerResponse] end");
    }

    public static void deleteLooksForFunStickerQualityChanged() {
        List list;
        Log.g(3, "LookHandler", "[deleteLooksForFunStickerQualityChanged] start");
        try {
            Cursor cursorQuery = YMKDatabase.c().query("LookInfo", new String[]{"GUID"}, "ExtStr3 IS NOT NULL AND ExtStr3 != ''", null, null, null, null, null);
            if (DBUtility.f(cursorQuery)) {
                ArrayList arrayList = new ArrayList();
                do {
                    arrayList.add(cursorQuery.getString(cursorQuery.getColumnIndex("GUID")));
                } while (cursorQuery.moveToNext());
                IO.b(cursorQuery);
                list = arrayList;
            } else {
                list = Collections.EMPTY_LIST;
                IO.b(cursorQuery);
            }
            Log.g(3, "LookHandler", "[deleteLooksForFunStickerQualityChanged] funStickerLookIds=" + list);
            DBUtility.i(DatabaseOpenHelper.Union.f40272j.f40274i.getWritableDatabase(), new s(list, 2));
            Log.g(3, "LookHandler", "[deleteLooksForFunStickerQualityChanged] end");
        } catch (Throwable th) {
            try {
                Log.e("LookInfoDao", "getFunStickerLookIds", th);
                throw th;
            } catch (Throwable th2) {
                IO.b(null);
                throw th2;
            }
        }
    }

    public static long e(com.perfectcorp.perfectlib.ph.database.ymk.makeup.b bVar) {
        Threads.b();
        com.perfectcorp.perfectlib.ph.database.ymk.look.d.b bVarE = bVar.e();
        String str = bVar.d;
        if (bVarE == com.perfectcorp.perfectlib.ph.database.ymk.look.d.b.NAIL) {
            Threads.b();
            return NailLookHandlerPreferences.f40329b.getLong(str, Long.MIN_VALUE);
        }
        if (bVar.e() != com.perfectcorp.perfectlib.ph.database.ymk.look.d.b.JEWELRY) {
            return LookHandlerPreferences.f40327b.getLong(str, Long.MIN_VALUE);
        }
        Threads.b();
        return JewelryLookHandlerPreferences.f40325b.getLong(str, Long.MIN_VALUE);
    }

    public static LookHandler getInstance() {
        LookHandler lookHandler;
        synchronized (g) {
            lookHandler = f39663h;
        }
        return lookHandler;
    }

    public static void init(Configuration.ImageSource imageSource) {
        Log.g(3, "LookHandler", "[init] start");
        if (f39663h == null) {
            synchronized (g) {
                try {
                    if (f39663h == null) {
                        f39663h = new LookHandler(imageSource);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        Log.g(3, "LookHandler", "[init] end");
    }

    public static void release() {
        Log.g(3, "LookHandler", "[release] start");
        if (f39663h != null) {
            synchronized (g) {
                try {
                    if (f39663h != null) {
                        f39663h.f39664a.dispose();
                        f39663h.f39666c.clear();
                        NailLookHandler nailLookHandler = f39663h.f39667e;
                        nailLookHandler.getClass();
                        Log.g(3, "NailLookHandler", "[release] start");
                        nailLookHandler.f39716a.dispose();
                        nailLookHandler.f39718c.clear();
                        Log.g(3, "NailLookHandler", "[release] end");
                        JewelryLookHandler jewelryLookHandler = f39663h.f39668f;
                        jewelryLookHandler.getClass();
                        Log.g(3, "JewelryLookHandler", "[release] start");
                        jewelryLookHandler.f39642a.dispose();
                        jewelryLookHandler.f39644c.clear();
                        Log.g(3, "JewelryLookHandler", "[release] end");
                        f39663h = null;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        Log.g(3, "LookHandler", "[release] end");
    }

    public final void checkNeedToUpdate(LookType lookType, CheckNeedToUpdateCallback checkNeedToUpdateCallback) {
        Objects.requireNonNull(checkNeedToUpdateCallback, "callback can't be null");
        final CheckNeedToUpdateCallback checkNeedToUpdateCallback2 = (CheckNeedToUpdateCallback) Proxies.a(CheckNeedToUpdateCallback.class, checkNeedToUpdateCallback);
        final int i2 = 3;
        Log.g(3, "LookHandler", "[checkNeedToUpdate] start");
        final int i3 = 4;
        if (LookType.NAIL == lookType) {
            NailLookHandler nailLookHandler = this.f39667e;
            nailLookHandler.getClass();
            Objects.requireNonNull(checkNeedToUpdateCallback2, "callback can't be null");
            Log.g(3, "NailLookHandler", "[checkNeedToUpdate] start");
            com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.u uVarI = new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.c(new a8(7)).j(Schedulers.f43170c).i(AndroidSchedulers.a());
            final int i4 = 5;
            ConsumerSingleObserver consumerSingleObserver = new ConsumerSingleObserver(new Consumer() { // from class: o40
                @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Consumer
                public final void accept(Object obj) {
                    int i5 = i4;
                    LookHandler.CheckNeedToUpdateCallback checkNeedToUpdateCallback3 = checkNeedToUpdateCallback2;
                    switch (i5) {
                        case 0:
                            Boolean bool = (Boolean) obj;
                            Log.g(3, "JewelryLookHandler", "[checkNeedToUpdate] success. needToUpdate=" + bool);
                            checkNeedToUpdateCallback3.onSuccess(bool.booleanValue());
                            break;
                        case 1:
                            Throwable th = (Throwable) obj;
                            Log.e("JewelryLookHandler", "[checkNeedToUpdate] query failed", th);
                            checkNeedToUpdateCallback3.onFailure(InternalErrorRetriever.a(th));
                            break;
                        case 2:
                            Boolean bool2 = (Boolean) obj;
                            Log.g(3, "LookHandler", "[checkNeedToUpdate] success. needToUpdate=" + bool2);
                            checkNeedToUpdateCallback3.onSuccess(bool2.booleanValue());
                            break;
                        case 3:
                            Throwable th2 = (Throwable) obj;
                            Log.e("LookHandler", "[checkNeedToUpdate] query failed", th2);
                            checkNeedToUpdateCallback3.onFailure(InternalErrorRetriever.a(th2));
                            break;
                        case 4:
                            Throwable th3 = (Throwable) obj;
                            Log.e("NailLookHandler", "[checkNeedToUpdate] query failed", th3);
                            checkNeedToUpdateCallback3.onFailure(InternalErrorRetriever.a(th3));
                            break;
                        default:
                            Boolean bool3 = (Boolean) obj;
                            Log.g(3, "NailLookHandler", "[checkNeedToUpdate] success. needToUpdate=" + bool3);
                            checkNeedToUpdateCallback3.onSuccess(bool3.booleanValue());
                            break;
                    }
                }
            }, new Consumer() { // from class: o40
                @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Consumer
                public final void accept(Object obj) {
                    int i5 = i3;
                    LookHandler.CheckNeedToUpdateCallback checkNeedToUpdateCallback3 = checkNeedToUpdateCallback2;
                    switch (i5) {
                        case 0:
                            Boolean bool = (Boolean) obj;
                            Log.g(3, "JewelryLookHandler", "[checkNeedToUpdate] success. needToUpdate=" + bool);
                            checkNeedToUpdateCallback3.onSuccess(bool.booleanValue());
                            break;
                        case 1:
                            Throwable th = (Throwable) obj;
                            Log.e("JewelryLookHandler", "[checkNeedToUpdate] query failed", th);
                            checkNeedToUpdateCallback3.onFailure(InternalErrorRetriever.a(th));
                            break;
                        case 2:
                            Boolean bool2 = (Boolean) obj;
                            Log.g(3, "LookHandler", "[checkNeedToUpdate] success. needToUpdate=" + bool2);
                            checkNeedToUpdateCallback3.onSuccess(bool2.booleanValue());
                            break;
                        case 3:
                            Throwable th2 = (Throwable) obj;
                            Log.e("LookHandler", "[checkNeedToUpdate] query failed", th2);
                            checkNeedToUpdateCallback3.onFailure(InternalErrorRetriever.a(th2));
                            break;
                        case 4:
                            Throwable th3 = (Throwable) obj;
                            Log.e("NailLookHandler", "[checkNeedToUpdate] query failed", th3);
                            checkNeedToUpdateCallback3.onFailure(InternalErrorRetriever.a(th3));
                            break;
                        default:
                            Boolean bool3 = (Boolean) obj;
                            Log.g(3, "NailLookHandler", "[checkNeedToUpdate] success. needToUpdate=" + bool3);
                            checkNeedToUpdateCallback3.onSuccess(bool3.booleanValue());
                            break;
                    }
                }
            });
            uVarI.a(consumerSingleObserver);
            nailLookHandler.f39716a.b(consumerSingleObserver);
            return;
        }
        if (LookType.JEWELRY != lookType) {
            com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.u uVarI2 = new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.c(new a8(6)).j(Schedulers.f43170c).i(AndroidSchedulers.a());
            final int i5 = 2;
            ConsumerSingleObserver consumerSingleObserver2 = new ConsumerSingleObserver(new Consumer() { // from class: o40
                @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Consumer
                public final void accept(Object obj) {
                    int i6 = i5;
                    LookHandler.CheckNeedToUpdateCallback checkNeedToUpdateCallback3 = checkNeedToUpdateCallback2;
                    switch (i6) {
                        case 0:
                            Boolean bool = (Boolean) obj;
                            Log.g(3, "JewelryLookHandler", "[checkNeedToUpdate] success. needToUpdate=" + bool);
                            checkNeedToUpdateCallback3.onSuccess(bool.booleanValue());
                            break;
                        case 1:
                            Throwable th = (Throwable) obj;
                            Log.e("JewelryLookHandler", "[checkNeedToUpdate] query failed", th);
                            checkNeedToUpdateCallback3.onFailure(InternalErrorRetriever.a(th));
                            break;
                        case 2:
                            Boolean bool2 = (Boolean) obj;
                            Log.g(3, "LookHandler", "[checkNeedToUpdate] success. needToUpdate=" + bool2);
                            checkNeedToUpdateCallback3.onSuccess(bool2.booleanValue());
                            break;
                        case 3:
                            Throwable th2 = (Throwable) obj;
                            Log.e("LookHandler", "[checkNeedToUpdate] query failed", th2);
                            checkNeedToUpdateCallback3.onFailure(InternalErrorRetriever.a(th2));
                            break;
                        case 4:
                            Throwable th3 = (Throwable) obj;
                            Log.e("NailLookHandler", "[checkNeedToUpdate] query failed", th3);
                            checkNeedToUpdateCallback3.onFailure(InternalErrorRetriever.a(th3));
                            break;
                        default:
                            Boolean bool3 = (Boolean) obj;
                            Log.g(3, "NailLookHandler", "[checkNeedToUpdate] success. needToUpdate=" + bool3);
                            checkNeedToUpdateCallback3.onSuccess(bool3.booleanValue());
                            break;
                    }
                }
            }, new Consumer() { // from class: o40
                @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Consumer
                public final void accept(Object obj) {
                    int i6 = i2;
                    LookHandler.CheckNeedToUpdateCallback checkNeedToUpdateCallback3 = checkNeedToUpdateCallback2;
                    switch (i6) {
                        case 0:
                            Boolean bool = (Boolean) obj;
                            Log.g(3, "JewelryLookHandler", "[checkNeedToUpdate] success. needToUpdate=" + bool);
                            checkNeedToUpdateCallback3.onSuccess(bool.booleanValue());
                            break;
                        case 1:
                            Throwable th = (Throwable) obj;
                            Log.e("JewelryLookHandler", "[checkNeedToUpdate] query failed", th);
                            checkNeedToUpdateCallback3.onFailure(InternalErrorRetriever.a(th));
                            break;
                        case 2:
                            Boolean bool2 = (Boolean) obj;
                            Log.g(3, "LookHandler", "[checkNeedToUpdate] success. needToUpdate=" + bool2);
                            checkNeedToUpdateCallback3.onSuccess(bool2.booleanValue());
                            break;
                        case 3:
                            Throwable th2 = (Throwable) obj;
                            Log.e("LookHandler", "[checkNeedToUpdate] query failed", th2);
                            checkNeedToUpdateCallback3.onFailure(InternalErrorRetriever.a(th2));
                            break;
                        case 4:
                            Throwable th3 = (Throwable) obj;
                            Log.e("NailLookHandler", "[checkNeedToUpdate] query failed", th3);
                            checkNeedToUpdateCallback3.onFailure(InternalErrorRetriever.a(th3));
                            break;
                        default:
                            Boolean bool3 = (Boolean) obj;
                            Log.g(3, "NailLookHandler", "[checkNeedToUpdate] success. needToUpdate=" + bool3);
                            checkNeedToUpdateCallback3.onSuccess(bool3.booleanValue());
                            break;
                    }
                }
            });
            uVarI2.a(consumerSingleObserver2);
            this.f39664a.b(consumerSingleObserver2);
            return;
        }
        JewelryLookHandler jewelryLookHandler = this.f39668f;
        jewelryLookHandler.getClass();
        Objects.requireNonNull(checkNeedToUpdateCallback2, "callback can't be null");
        Log.g(3, "JewelryLookHandler", "[checkNeedToUpdate] start");
        com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.u uVarI3 = new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.c(new a8(i3)).j(Schedulers.f43170c).i(AndroidSchedulers.a());
        final int i6 = 0;
        final int i7 = 1;
        ConsumerSingleObserver consumerSingleObserver3 = new ConsumerSingleObserver(new Consumer() { // from class: o40
            @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                int i8 = i6;
                LookHandler.CheckNeedToUpdateCallback checkNeedToUpdateCallback3 = checkNeedToUpdateCallback2;
                switch (i8) {
                    case 0:
                        Boolean bool = (Boolean) obj;
                        Log.g(3, "JewelryLookHandler", "[checkNeedToUpdate] success. needToUpdate=" + bool);
                        checkNeedToUpdateCallback3.onSuccess(bool.booleanValue());
                        break;
                    case 1:
                        Throwable th = (Throwable) obj;
                        Log.e("JewelryLookHandler", "[checkNeedToUpdate] query failed", th);
                        checkNeedToUpdateCallback3.onFailure(InternalErrorRetriever.a(th));
                        break;
                    case 2:
                        Boolean bool2 = (Boolean) obj;
                        Log.g(3, "LookHandler", "[checkNeedToUpdate] success. needToUpdate=" + bool2);
                        checkNeedToUpdateCallback3.onSuccess(bool2.booleanValue());
                        break;
                    case 3:
                        Throwable th2 = (Throwable) obj;
                        Log.e("LookHandler", "[checkNeedToUpdate] query failed", th2);
                        checkNeedToUpdateCallback3.onFailure(InternalErrorRetriever.a(th2));
                        break;
                    case 4:
                        Throwable th3 = (Throwable) obj;
                        Log.e("NailLookHandler", "[checkNeedToUpdate] query failed", th3);
                        checkNeedToUpdateCallback3.onFailure(InternalErrorRetriever.a(th3));
                        break;
                    default:
                        Boolean bool3 = (Boolean) obj;
                        Log.g(3, "NailLookHandler", "[checkNeedToUpdate] success. needToUpdate=" + bool3);
                        checkNeedToUpdateCallback3.onSuccess(bool3.booleanValue());
                        break;
                }
            }
        }, new Consumer() { // from class: o40
            @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                int i8 = i7;
                LookHandler.CheckNeedToUpdateCallback checkNeedToUpdateCallback3 = checkNeedToUpdateCallback2;
                switch (i8) {
                    case 0:
                        Boolean bool = (Boolean) obj;
                        Log.g(3, "JewelryLookHandler", "[checkNeedToUpdate] success. needToUpdate=" + bool);
                        checkNeedToUpdateCallback3.onSuccess(bool.booleanValue());
                        break;
                    case 1:
                        Throwable th = (Throwable) obj;
                        Log.e("JewelryLookHandler", "[checkNeedToUpdate] query failed", th);
                        checkNeedToUpdateCallback3.onFailure(InternalErrorRetriever.a(th));
                        break;
                    case 2:
                        Boolean bool2 = (Boolean) obj;
                        Log.g(3, "LookHandler", "[checkNeedToUpdate] success. needToUpdate=" + bool2);
                        checkNeedToUpdateCallback3.onSuccess(bool2.booleanValue());
                        break;
                    case 3:
                        Throwable th2 = (Throwable) obj;
                        Log.e("LookHandler", "[checkNeedToUpdate] query failed", th2);
                        checkNeedToUpdateCallback3.onFailure(InternalErrorRetriever.a(th2));
                        break;
                    case 4:
                        Throwable th3 = (Throwable) obj;
                        Log.e("NailLookHandler", "[checkNeedToUpdate] query failed", th3);
                        checkNeedToUpdateCallback3.onFailure(InternalErrorRetriever.a(th3));
                        break;
                    default:
                        Boolean bool3 = (Boolean) obj;
                        Log.g(3, "NailLookHandler", "[checkNeedToUpdate] success. needToUpdate=" + bool3);
                        checkNeedToUpdateCallback3.onSuccess(bool3.booleanValue());
                        break;
                }
            }
        });
        uVarI3.a(consumerSingleObserver3);
        jewelryLookHandler.f39642a.b(consumerSingleObserver3);
    }

    public final void checkNeedToUpdateWithGuids(List<String> list, CheckNeedToUpdateWithGuidsCallback checkNeedToUpdateWithGuidsCallback) {
        Objects.requireNonNull(list, "lookGuids can't be null");
        Objects.requireNonNull(checkNeedToUpdateWithGuidsCallback, "callback can't be null");
        CheckNeedToUpdateWithGuidsCallback checkNeedToUpdateWithGuidsCallback2 = (CheckNeedToUpdateWithGuidsCallback) Proxies.a(CheckNeedToUpdateWithGuidsCallback.class, checkNeedToUpdateWithGuidsCallback);
        Log.g(3, "LookHandler", "[checkNeedToUpdateWithGuids] start, lookGuids.size=" + list.size());
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
        com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.u uVarI = new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.o(a(list).j(Schedulers.f43170c), Functions.f42605a).map(new f8(concurrentHashMap, 2)).toList().i(AndroidSchedulers.a());
        ConsumerSingleObserver consumerSingleObserver = new ConsumerSingleObserver(new na0(concurrentHashMap, checkNeedToUpdateWithGuidsCallback2, 1), new defpackage.o2(checkNeedToUpdateWithGuidsCallback2, 7));
        uVarI.a(consumerSingleObserver);
        this.f39664a.b(consumerSingleObserver);
    }

    public final void clearAll(LookType lookType, ClearCallback clearCallback) {
        Objects.requireNonNull(clearCallback, "callback can't be null");
        ClearCallback clearCallback2 = (ClearCallback) Proxies.a(ClearCallback.class, clearCallback);
        Log.g(3, "LookHandler", "[clearAll] start");
        int i2 = 1;
        if (LookType.NAIL == lookType) {
            NailLookHandler nailLookHandler = this.f39667e;
            nailLookHandler.getClass();
            Log.g(3, "NailLookHandler", "[clearAll] start");
            Completable completableClearAllCompletable = NailLookHandler.clearAllCompletable();
            Scheduler schedulerA = AndroidSchedulers.a();
            completableClearAllCompletable.getClass();
            com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.n nVarH = new com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.m(completableClearAllCompletable, schedulerA).h(new xw(clearCallback, i2));
            CallbackCompletableObserver callbackCompletableObserver = new CallbackCompletableObserver(new d8(12), new n7(16));
            nVarH.a(callbackCompletableObserver);
            nailLookHandler.f39716a.b(callbackCompletableObserver);
            return;
        }
        if (LookType.JEWELRY != lookType) {
            Completable completableClearAllCompletable2 = clearAllCompletable();
            Scheduler schedulerA2 = AndroidSchedulers.a();
            completableClearAllCompletable2.getClass();
            com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.m mVar = new com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.m(completableClearAllCompletable2, schedulerA2);
            Objects.requireNonNull(clearCallback2);
            com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.n nVarH2 = mVar.h(new xw(clearCallback2, i2));
            CallbackCompletableObserver callbackCompletableObserver2 = new CallbackCompletableObserver(new d8(6), new n7(13));
            nVarH2.a(callbackCompletableObserver2);
            this.f39664a.b(callbackCompletableObserver2);
            return;
        }
        JewelryLookHandler jewelryLookHandler = this.f39668f;
        jewelryLookHandler.getClass();
        Log.g(3, "JewelryLookHandler", "[clearAll] start");
        Completable completableClearAllCompletable3 = JewelryLookHandler.clearAllCompletable();
        Scheduler schedulerA3 = AndroidSchedulers.a();
        completableClearAllCompletable3.getClass();
        com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.n nVarH3 = new com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.m(completableClearAllCompletable3, schedulerA3).h(new xw(clearCallback, i2));
        CallbackCompletableObserver callbackCompletableObserver3 = new CallbackCompletableObserver(new d8(5), new n7(11));
        nVarH3.a(callbackCompletableObserver3);
        jewelryLookHandler.f39642a.b(callbackCompletableObserver3);
    }

    public final void deleteLooks(List<String> list, DeleteLooksCallback deleteLooksCallback) {
        Objects.requireNonNull(list, "lookGuids can't be null");
        Objects.requireNonNull(deleteLooksCallback, "callback can't be null");
        DeleteLooksCallback deleteLooksCallback2 = (DeleteLooksCallback) Proxies.a(DeleteLooksCallback.class, deleteLooksCallback);
        Log.g(3, "LookHandler", "[deleteLooks] start, lookGuids.size=" + list.size());
        com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.p pVarI = new com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.j(new g1(this, list, 0)).i(Schedulers.f43170c);
        Objects.requireNonNull(deleteLooksCallback2);
        com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.n nVarH = pVarI.h(new xw(deleteLooksCallback2, 2));
        CallbackCompletableObserver callbackCompletableObserver = new CallbackCompletableObserver(new d8(7), new n7(14));
        nVarH.a(callbackCompletableObserver);
        this.f39664a.b(callbackCompletableObserver);
    }

    public final Cancelable download(LookInfo lookInfo, DownloadCallback downloadCallback) {
        Objects.requireNonNull(lookInfo, "lookInfo can't be null");
        Objects.requireNonNull(downloadCallback, "callback can't be null");
        DownloadCallback downloadCallback2 = (DownloadCallback) Proxies.a(DownloadCallback.class, downloadCallback);
        Log.g(3, "LookHandler", "[download] start, lookInfo.getGuid=" + lookInfo.getGuid());
        DownloadTaskCancelable downloadTaskCancelable = new DownloadTaskCancelable("download");
        c(downloadTaskCancelable);
        com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.u uVarI = new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.t(new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.m(Single.h(lookInfo.f39670b).j(Schedulers.f43170c), new y81(this, downloadTaskCancelable, downloadCallback, 10)), new a0(this, lookInfo, 3)).i(AndroidSchedulers.a());
        int i2 = 0;
        ConsumerSingleObserver consumerSingleObserver = new ConsumerSingleObserver(new ma0(downloadCallback2, i2), new na0(lookInfo, downloadCallback2, i2));
        uVarI.a(consumerSingleObserver);
        this.f39664a.b(consumerSingleObserver);
        return downloadTaskCancelable;
    }

    public final Cancelable downloadLooks(List<String> list, final DownloadLooksCallback downloadLooksCallback) {
        Objects.requireNonNull(list, "lookGuids can't be null");
        Objects.requireNonNull(downloadLooksCallback, "callback can't be null");
        DownloadLooksCallback downloadLooksCallback2 = (DownloadLooksCallback) Proxies.a(DownloadLooksCallback.class, downloadLooksCallback);
        Log.g(3, "LookHandler", "[downloadLooks] start, lookGuids.size=" + list.size());
        if (list.isEmpty()) {
            Log.g(3, "LookHandler", "Look GUID list is empty.");
            PfCommons.c(new et(downloadLooksCallback2, 20));
            return DownloadTaskCancelable.f40351e;
        }
        final int size = list.size();
        final AtomicInteger atomicInteger = new AtomicInteger();
        final DownloadTaskCancelable downloadTaskCancelable = new DownloadTaskCancelable("downloadLooks");
        c(downloadTaskCancelable);
        final ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
        final ConcurrentHashMap concurrentHashMap2 = new ConcurrentHashMap();
        com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.u uVarI = Observable.defer(new pa0(this, downloadLooksCallback, size, list, concurrentHashMap, atomicInteger, downloadTaskCancelable, concurrentHashMap2)).flatMapSingle(new Function() { // from class: qa0
            @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Function
            public final Object apply(Object obj) {
                ConcurrentHashMap concurrentHashMap3 = concurrentHashMap2;
                LookHandler.DownloadLooksCallback downloadLooksCallback3 = downloadLooksCallback;
                AtomicInteger atomicInteger2 = atomicInteger;
                int i2 = size;
                b bVar = (b) obj;
                DownloadTaskCancelable downloadTaskCancelable2 = downloadTaskCancelable;
                downloadTaskCancelable2.c();
                String str = bVar.d;
                try {
                    ApplyEffectUtility.v(bVar);
                    return new t(new p(new pa0(this.f79060b, bVar, downloadTaskCancelable2, str, concurrentHashMap3, downloadLooksCallback3, atomicInteger2, i2)), new v40(16)).j(FileDownloader.d).i(Schedulers.f43170c);
                } catch (Throwable th) {
                    Log.e("LookHandler", "Invalid look metadata. guid=" + str, th);
                    concurrentHashMap3.put(str, th);
                    LookHandler.b(downloadLooksCallback3, atomicInteger2, i2);
                    return Single.h(Optional.a());
                }
            }
        }).filter(new d20(7)).map(new d20(8)).map(new Function() { // from class: com.perfectcorp.perfectlib.f1
            @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Function
            public final Object apply(Object obj) {
                LookInfo lookInfo;
                LookHandler.DownloadLooksCallback downloadLooksCallback3 = downloadLooksCallback;
                AtomicInteger atomicInteger2 = atomicInteger;
                int i2 = size;
                com.perfectcorp.perfectlib.ph.database.ymk.makeup.b bVar = (com.perfectcorp.perfectlib.ph.database.ymk.makeup.b) obj;
                LookHandler lookHandler = this.f40142b;
                NailLookHandler nailLookHandler = lookHandler.f39667e;
                JewelryLookHandler jewelryLookHandler = lookHandler.f39668f;
                ConcurrentHashMap concurrentHashMap3 = lookHandler.f39666c;
                Configuration.ImageSource imageSource = lookHandler.f39665b;
                String str = bVar.d;
                try {
                    Optional optionalF = ApplyEffectUtility.F(str);
                    if (optionalF.d()) {
                        boolean zEquals = ((YMKPrimitiveData.Look) optionalF.c()).g.equals(com.perfectcorp.perfectlib.ph.database.ymk.look.d.b.MAKEUP.d);
                        ConcurrentHashMap concurrentHashMap4 = concurrentHashMap;
                        if (zEquals) {
                            concurrentHashMap3.put(str, (YMKPrimitiveData.Look) optionalF.c());
                            lookInfo = new LookInfo(concurrentHashMap3, bVar, (YMKPrimitiveData.Look) optionalF.g(), imageSource);
                        } else if (((YMKPrimitiveData.Look) optionalF.c()).g.equals(com.perfectcorp.perfectlib.ph.database.ymk.look.d.b.JEWELRY.d)) {
                            jewelryLookHandler.f39644c.put(str, (YMKPrimitiveData.Look) optionalF.c());
                            lookInfo = new LookInfo(jewelryLookHandler.f39644c, bVar, (YMKPrimitiveData.Look) optionalF.g(), imageSource);
                        } else {
                            nailLookHandler.f39718c.put(str, (YMKPrimitiveData.Look) optionalF.c());
                            concurrentHashMap4.put(str, new LookInfo(nailLookHandler.f39718c, bVar, (YMKPrimitiveData.Look) optionalF.g(), imageSource));
                        }
                        concurrentHashMap4.put(str, lookInfo);
                    }
                    LookHandler.b(downloadLooksCallback3, atomicInteger2, i2);
                    return bVar;
                } catch (Throwable th) {
                    Log.e("LookHandler", "Create LookInfo failed. guid=" + str, th);
                    concurrentHashMap2.put(str, th);
                    LookHandler.b(downloadLooksCallback3, atomicInteger2, i2);
                    return bVar;
                }
            }
        }).subscribeOn(Schedulers.f43170c).toList().i(AndroidSchedulers.a());
        ConsumerSingleObserver consumerSingleObserver = new ConsumerSingleObserver(new ra0(concurrentHashMap, downloadLooksCallback2, concurrentHashMap2), new ra0(downloadLooksCallback2, concurrentHashMap, concurrentHashMap2));
        uVarI.a(consumerSingleObserver);
        this.f39664a.b(consumerSingleObserver);
        return downloadTaskCancelable;
    }

    public final Optional f(String str) {
        LookInfo lookInfo;
        Optional optionalF = ApplyEffectUtility.F(str);
        if (optionalF.d()) {
            boolean zEquals = ((YMKPrimitiveData.Look) optionalF.c()).g.equals(com.perfectcorp.perfectlib.ph.database.ymk.look.d.b.MAKEUP.d);
            Configuration.ImageSource imageSource = this.f39665b;
            if (zEquals) {
                YMKPrimitiveData.Look look = (YMKPrimitiveData.Look) optionalF.c();
                ConcurrentHashMap concurrentHashMap = this.f39666c;
                concurrentHashMap.put(str, look);
                com.perfectcorp.perfectlib.ph.database.ymk.makeup.b bVarA = com.perfectcorp.perfectlib.ph.database.ymk.makeup.a.a(YMKDatabase.b(), str);
                if (bVarA != null) {
                    lookInfo = new LookInfo(concurrentHashMap, bVarA, (YMKPrimitiveData.Look) optionalF.g(), imageSource);
                    return Optional.e(lookInfo);
                }
            } else if (((YMKPrimitiveData.Look) optionalF.c()).g.equals(com.perfectcorp.perfectlib.ph.database.ymk.look.d.b.JEWELRY.d)) {
                JewelryLookHandler jewelryLookHandler = this.f39668f;
                jewelryLookHandler.f39644c.put(str, (YMKPrimitiveData.Look) optionalF.c());
                com.perfectcorp.perfectlib.ph.database.ymk.makeup.b bVarA2 = com.perfectcorp.perfectlib.ph.database.ymk.makeup.a.a(YMKDatabase.b(), str);
                if (bVarA2 != null) {
                    lookInfo = new LookInfo(jewelryLookHandler.f39644c, bVarA2, (YMKPrimitiveData.Look) optionalF.g(), imageSource);
                    return Optional.e(lookInfo);
                }
            } else {
                NailLookHandler nailLookHandler = this.f39667e;
                nailLookHandler.f39718c.put(str, (YMKPrimitiveData.Look) optionalF.c());
                com.perfectcorp.perfectlib.ph.database.ymk.makeup.b bVarA3 = com.perfectcorp.perfectlib.ph.database.ymk.makeup.a.a(YMKDatabase.b(), str);
                if (bVarA3 != null) {
                    lookInfo = new LookInfo(nailLookHandler.f39718c, bVarA3, (YMKPrimitiveData.Look) optionalF.g(), imageSource);
                    return Optional.e(lookInfo);
                }
            }
        }
        return Optional.a();
    }

    public final void getList(LookType lookType, GetListCallback getListCallback) {
        Objects.requireNonNull(getListCallback, "callback can't be null");
        boolean z = PerfectLib.g.f39519h;
        final GetListCallback getListCallback2 = (GetListCallback) Proxies.a(GetListCallback.class, getListCallback);
        final int i2 = 3;
        Log.g(3, "LookHandler", "[getList] start");
        final int i3 = 5;
        final int i4 = 2;
        if (LookType.NAIL == lookType) {
            NailLookHandler nailLookHandler = this.f39667e;
            nailLookHandler.getClass();
            Objects.requireNonNull(getListCallback2, "callback can't be null");
            Log.g(3, "NailLookHandler", "[getList] start");
            if (nailLookHandler.d.get() != null) {
                PfCommons.c(new Runnable() { // from class: p40
                    @Override // java.lang.Runnable
                    public final void run() {
                        int i5 = i4;
                        LookHandler.GetListCallback getListCallback3 = getListCallback2;
                        switch (i5) {
                            case 0:
                                Log.d("JewelryLookHandler", "[getList] failed. Data is synchronizing.");
                                getListCallback3.onFailure(new IllegalStateException("Data is synchronizing."));
                                break;
                            case 1:
                                Log.d("LookHandler", "[getList] failed. Data is synchronizing.");
                                getListCallback3.onFailure(new IllegalStateException("Data is synchronizing."));
                                break;
                            default:
                                Log.d("NailLookHandler", "[getList] failed. Data is synchronizing.");
                                getListCallback3.onFailure(new IllegalStateException("Data is synchronizing."));
                                break;
                        }
                    }
                });
                return;
            }
            final int i5 = 4;
            com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.u uVarI = new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.o(new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.p(new i(nailLookHandler, i5)).j(Schedulers.f43170c), Functions.f42605a).map(new lc0(17)).filter(new d20(7)).map(new d20(8)).map(new z0(nailLookHandler, i4)).toList().i(AndroidSchedulers.a());
            ConsumerSingleObserver consumerSingleObserver = new ConsumerSingleObserver(new Consumer() { // from class: q40
                @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Consumer
                public final void accept(Object obj) {
                    int i6 = i5;
                    LookHandler.GetListCallback getListCallback3 = getListCallback2;
                    switch (i6) {
                        case 0:
                            List<LookInfo> list = (List) obj;
                            fc.z(list, new StringBuilder("[getList] success, result.size="), 3, "JewelryLookHandler");
                            getListCallback3.onSuccess(list);
                            break;
                        case 1:
                            Throwable th = (Throwable) obj;
                            Log.e("JewelryLookHandler", "[getList] failed", th);
                            getListCallback3.onFailure(th);
                            break;
                        case 2:
                            List<LookInfo> list2 = (List) obj;
                            fc.z(list2, new StringBuilder("[getList] success, result.size="), 3, "LookHandler");
                            getListCallback3.onSuccess(list2);
                            break;
                        case 3:
                            Throwable th2 = (Throwable) obj;
                            Log.e("LookHandler", "[getList] failed", th2);
                            getListCallback3.onFailure(th2);
                            break;
                        case 4:
                            List<LookInfo> list3 = (List) obj;
                            fc.z(list3, new StringBuilder("[getList] success, result.size="), 3, "NailLookHandler");
                            getListCallback3.onSuccess(list3);
                            break;
                        default:
                            Throwable th3 = (Throwable) obj;
                            Log.e("NailLookHandler", "[getList] failed", th3);
                            getListCallback3.onFailure(th3);
                            break;
                    }
                }
            }, new Consumer() { // from class: q40
                @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Consumer
                public final void accept(Object obj) {
                    int i6 = i3;
                    LookHandler.GetListCallback getListCallback3 = getListCallback2;
                    switch (i6) {
                        case 0:
                            List<LookInfo> list = (List) obj;
                            fc.z(list, new StringBuilder("[getList] success, result.size="), 3, "JewelryLookHandler");
                            getListCallback3.onSuccess(list);
                            break;
                        case 1:
                            Throwable th = (Throwable) obj;
                            Log.e("JewelryLookHandler", "[getList] failed", th);
                            getListCallback3.onFailure(th);
                            break;
                        case 2:
                            List<LookInfo> list2 = (List) obj;
                            fc.z(list2, new StringBuilder("[getList] success, result.size="), 3, "LookHandler");
                            getListCallback3.onSuccess(list2);
                            break;
                        case 3:
                            Throwable th2 = (Throwable) obj;
                            Log.e("LookHandler", "[getList] failed", th2);
                            getListCallback3.onFailure(th2);
                            break;
                        case 4:
                            List<LookInfo> list3 = (List) obj;
                            fc.z(list3, new StringBuilder("[getList] success, result.size="), 3, "NailLookHandler");
                            getListCallback3.onSuccess(list3);
                            break;
                        default:
                            Throwable th3 = (Throwable) obj;
                            Log.e("NailLookHandler", "[getList] failed", th3);
                            getListCallback3.onFailure(th3);
                            break;
                    }
                }
            });
            uVarI.a(consumerSingleObserver);
            nailLookHandler.f39716a.b(consumerSingleObserver);
            return;
        }
        final int i6 = 1;
        if (LookType.JEWELRY != lookType) {
            if (this.d.get() != null) {
                PfCommons.c(new Runnable() { // from class: p40
                    @Override // java.lang.Runnable
                    public final void run() {
                        int i7 = i6;
                        LookHandler.GetListCallback getListCallback3 = getListCallback2;
                        switch (i7) {
                            case 0:
                                Log.d("JewelryLookHandler", "[getList] failed. Data is synchronizing.");
                                getListCallback3.onFailure(new IllegalStateException("Data is synchronizing."));
                                break;
                            case 1:
                                Log.d("LookHandler", "[getList] failed. Data is synchronizing.");
                                getListCallback3.onFailure(new IllegalStateException("Data is synchronizing."));
                                break;
                            default:
                                Log.d("NailLookHandler", "[getList] failed. Data is synchronizing.");
                                getListCallback3.onFailure(new IllegalStateException("Data is synchronizing."));
                                break;
                        }
                    }
                });
                return;
            }
            com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.u uVarI2 = new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.o(new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.p(new a8(i3)).j(Schedulers.f43170c), Functions.f42605a).map(new v40(11)).filter(new d20(7)).map(new d20(8)).map(new p7(this, z, i6)).toList().i(AndroidSchedulers.a());
            ConsumerSingleObserver consumerSingleObserver2 = new ConsumerSingleObserver(new Consumer() { // from class: q40
                @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Consumer
                public final void accept(Object obj) {
                    int i7 = i4;
                    LookHandler.GetListCallback getListCallback3 = getListCallback2;
                    switch (i7) {
                        case 0:
                            List<LookInfo> list = (List) obj;
                            fc.z(list, new StringBuilder("[getList] success, result.size="), 3, "JewelryLookHandler");
                            getListCallback3.onSuccess(list);
                            break;
                        case 1:
                            Throwable th = (Throwable) obj;
                            Log.e("JewelryLookHandler", "[getList] failed", th);
                            getListCallback3.onFailure(th);
                            break;
                        case 2:
                            List<LookInfo> list2 = (List) obj;
                            fc.z(list2, new StringBuilder("[getList] success, result.size="), 3, "LookHandler");
                            getListCallback3.onSuccess(list2);
                            break;
                        case 3:
                            Throwable th2 = (Throwable) obj;
                            Log.e("LookHandler", "[getList] failed", th2);
                            getListCallback3.onFailure(th2);
                            break;
                        case 4:
                            List<LookInfo> list3 = (List) obj;
                            fc.z(list3, new StringBuilder("[getList] success, result.size="), 3, "NailLookHandler");
                            getListCallback3.onSuccess(list3);
                            break;
                        default:
                            Throwable th3 = (Throwable) obj;
                            Log.e("NailLookHandler", "[getList] failed", th3);
                            getListCallback3.onFailure(th3);
                            break;
                    }
                }
            }, new Consumer() { // from class: q40
                @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Consumer
                public final void accept(Object obj) {
                    int i7 = i2;
                    LookHandler.GetListCallback getListCallback3 = getListCallback2;
                    switch (i7) {
                        case 0:
                            List<LookInfo> list = (List) obj;
                            fc.z(list, new StringBuilder("[getList] success, result.size="), 3, "JewelryLookHandler");
                            getListCallback3.onSuccess(list);
                            break;
                        case 1:
                            Throwable th = (Throwable) obj;
                            Log.e("JewelryLookHandler", "[getList] failed", th);
                            getListCallback3.onFailure(th);
                            break;
                        case 2:
                            List<LookInfo> list2 = (List) obj;
                            fc.z(list2, new StringBuilder("[getList] success, result.size="), 3, "LookHandler");
                            getListCallback3.onSuccess(list2);
                            break;
                        case 3:
                            Throwable th2 = (Throwable) obj;
                            Log.e("LookHandler", "[getList] failed", th2);
                            getListCallback3.onFailure(th2);
                            break;
                        case 4:
                            List<LookInfo> list3 = (List) obj;
                            fc.z(list3, new StringBuilder("[getList] success, result.size="), 3, "NailLookHandler");
                            getListCallback3.onSuccess(list3);
                            break;
                        default:
                            Throwable th3 = (Throwable) obj;
                            Log.e("NailLookHandler", "[getList] failed", th3);
                            getListCallback3.onFailure(th3);
                            break;
                    }
                }
            });
            uVarI2.a(consumerSingleObserver2);
            this.f39664a.b(consumerSingleObserver2);
            return;
        }
        JewelryLookHandler jewelryLookHandler = this.f39668f;
        jewelryLookHandler.getClass();
        Objects.requireNonNull(getListCallback2, "callback can't be null");
        Log.g(3, "JewelryLookHandler", "[getList] start");
        final int i7 = 0;
        if (jewelryLookHandler.d.get() != null) {
            PfCommons.c(new Runnable() { // from class: p40
                @Override // java.lang.Runnable
                public final void run() {
                    int i8 = i7;
                    LookHandler.GetListCallback getListCallback3 = getListCallback2;
                    switch (i8) {
                        case 0:
                            Log.d("JewelryLookHandler", "[getList] failed. Data is synchronizing.");
                            getListCallback3.onFailure(new IllegalStateException("Data is synchronizing."));
                            break;
                        case 1:
                            Log.d("LookHandler", "[getList] failed. Data is synchronizing.");
                            getListCallback3.onFailure(new IllegalStateException("Data is synchronizing."));
                            break;
                        default:
                            Log.d("NailLookHandler", "[getList] failed. Data is synchronizing.");
                            getListCallback3.onFailure(new IllegalStateException("Data is synchronizing."));
                            break;
                    }
                }
            });
            return;
        }
        com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.u uVarI3 = new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.o(new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.p(new i(jewelryLookHandler, i6)).j(Schedulers.f43170c), Functions.f42605a).map(new d20(6)).filter(new d20(7)).map(new d20(8)).map(new z0(jewelryLookHandler, i7)).toList().i(AndroidSchedulers.a());
        ConsumerSingleObserver consumerSingleObserver3 = new ConsumerSingleObserver(new Consumer() { // from class: q40
            @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                int i8 = i7;
                LookHandler.GetListCallback getListCallback3 = getListCallback2;
                switch (i8) {
                    case 0:
                        List<LookInfo> list = (List) obj;
                        fc.z(list, new StringBuilder("[getList] success, result.size="), 3, "JewelryLookHandler");
                        getListCallback3.onSuccess(list);
                        break;
                    case 1:
                        Throwable th = (Throwable) obj;
                        Log.e("JewelryLookHandler", "[getList] failed", th);
                        getListCallback3.onFailure(th);
                        break;
                    case 2:
                        List<LookInfo> list2 = (List) obj;
                        fc.z(list2, new StringBuilder("[getList] success, result.size="), 3, "LookHandler");
                        getListCallback3.onSuccess(list2);
                        break;
                    case 3:
                        Throwable th2 = (Throwable) obj;
                        Log.e("LookHandler", "[getList] failed", th2);
                        getListCallback3.onFailure(th2);
                        break;
                    case 4:
                        List<LookInfo> list3 = (List) obj;
                        fc.z(list3, new StringBuilder("[getList] success, result.size="), 3, "NailLookHandler");
                        getListCallback3.onSuccess(list3);
                        break;
                    default:
                        Throwable th3 = (Throwable) obj;
                        Log.e("NailLookHandler", "[getList] failed", th3);
                        getListCallback3.onFailure(th3);
                        break;
                }
            }
        }, new Consumer() { // from class: q40
            @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                int i8 = i6;
                LookHandler.GetListCallback getListCallback3 = getListCallback2;
                switch (i8) {
                    case 0:
                        List<LookInfo> list = (List) obj;
                        fc.z(list, new StringBuilder("[getList] success, result.size="), 3, "JewelryLookHandler");
                        getListCallback3.onSuccess(list);
                        break;
                    case 1:
                        Throwable th = (Throwable) obj;
                        Log.e("JewelryLookHandler", "[getList] failed", th);
                        getListCallback3.onFailure(th);
                        break;
                    case 2:
                        List<LookInfo> list2 = (List) obj;
                        fc.z(list2, new StringBuilder("[getList] success, result.size="), 3, "LookHandler");
                        getListCallback3.onSuccess(list2);
                        break;
                    case 3:
                        Throwable th2 = (Throwable) obj;
                        Log.e("LookHandler", "[getList] failed", th2);
                        getListCallback3.onFailure(th2);
                        break;
                    case 4:
                        List<LookInfo> list3 = (List) obj;
                        fc.z(list3, new StringBuilder("[getList] success, result.size="), 3, "NailLookHandler");
                        getListCallback3.onSuccess(list3);
                        break;
                    default:
                        Throwable th3 = (Throwable) obj;
                        Log.e("NailLookHandler", "[getList] failed", th3);
                        getListCallback3.onFailure(th3);
                        break;
                }
            }
        });
        uVarI3.a(consumerSingleObserver3);
        jewelryLookHandler.f39642a.b(consumerSingleObserver3);
    }

    public final void getLookInfosWithGuids(List<String> list, GetLookInfosWithGuidsCallback getLookInfosWithGuidsCallback) {
        Objects.requireNonNull(list, "lookGuids can't be null");
        Objects.requireNonNull(getLookInfosWithGuidsCallback, "callback can't be null");
        final GetLookInfosWithGuidsCallback getLookInfosWithGuidsCallback2 = (GetLookInfosWithGuidsCallback) Proxies.a(GetLookInfosWithGuidsCallback.class, getLookInfosWithGuidsCallback);
        Log.g(3, "LookHandler", "[getLookInfosWithGuids] start, lookGuids.size=" + list.size());
        com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.u uVarI = Observable.fromIterable(list).subscribeOn(Schedulers.f43170c).map(new fw(this, 16)).onErrorReturn(new v40(8)).filter(new d20(7)).map(new v40(9)).toList().i(AndroidSchedulers.a());
        final int i2 = 0;
        final int i3 = 1;
        ConsumerSingleObserver consumerSingleObserver = new ConsumerSingleObserver(new Consumer() { // from class: oa0
            @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                int i4 = i2;
                LookHandler.GetLookInfosWithGuidsCallback getLookInfosWithGuidsCallback3 = getLookInfosWithGuidsCallback2;
                switch (i4) {
                    case 0:
                        List<LookInfo> list2 = (List) obj;
                        fc.z(list2, new StringBuilder("[getLookInfosWithGuids] success, result.size="), 3, "LookHandler");
                        getLookInfosWithGuidsCallback3.onComplete(list2);
                        break;
                    default:
                        Log.e("LookHandler", "[getLookInfosWithGuids] shouldn't failed!!!", (Throwable) obj);
                        getLookInfosWithGuidsCallback3.onComplete(Collections.EMPTY_LIST);
                        break;
                }
            }
        }, new Consumer() { // from class: oa0
            @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                int i4 = i3;
                LookHandler.GetLookInfosWithGuidsCallback getLookInfosWithGuidsCallback3 = getLookInfosWithGuidsCallback2;
                switch (i4) {
                    case 0:
                        List<LookInfo> list2 = (List) obj;
                        fc.z(list2, new StringBuilder("[getLookInfosWithGuids] success, result.size="), 3, "LookHandler");
                        getLookInfosWithGuidsCallback3.onComplete(list2);
                        break;
                    default:
                        Log.e("LookHandler", "[getLookInfosWithGuids] shouldn't failed!!!", (Throwable) obj);
                        getLookInfosWithGuidsCallback3.onComplete(Collections.EMPTY_LIST);
                        break;
                }
            }
        });
        uVarI.a(consumerSingleObserver);
        this.f39664a.b(consumerSingleObserver);
    }

    public final Cancelable syncServer(LookType lookType, SyncServerCallback syncServerCallback) {
        Objects.requireNonNull(syncServerCallback, "callback can't be null");
        final SyncServerCallback syncServerCallback2 = (SyncServerCallback) Proxies.a(SyncServerCallback.class, syncServerCallback);
        final int i2 = 3;
        Log.g(3, "LookHandler", "[syncServer] start");
        final int i3 = 4;
        final int i4 = 2;
        int i5 = 17;
        final int i6 = 0;
        final int i7 = 1;
        if (LookType.NAIL == lookType) {
            final NailLookHandler nailLookHandler = this.f39667e;
            nailLookHandler.getClass();
            Objects.requireNonNull(syncServerCallback2, "callback can't be null");
            Log.g(3, "NailLookHandler", "[syncServer] start");
            final DownloadTaskCancelable downloadTaskCancelable = new DownloadTaskCancelable("syncServer");
            Log.g(3, "NailLookHandler", "[cancelOnReleased] add cancelable \"" + downloadTaskCancelable + "\" to taskDisposables");
            CompositeDisposable compositeDisposable = nailLookHandler.f39716a;
            compositeDisposable.b(Disposables.b(new et(downloadTaskCancelable, 17)));
            Cancelable cancelable = (Cancelable) nailLookHandler.d.getAndSet(downloadTaskCancelable);
            if (cancelable != null) {
                cancelable.cancel();
            }
            com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.u uVarI = new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.g(new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.h(new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.d(new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.c(new z(nailLookHandler, downloadTaskCancelable, 7)), new com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.e(new Callable() { // from class: com.perfectcorp.perfectlib.a1
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    int i8 = i7;
                    DownloadTaskCancelable downloadTaskCancelable2 = downloadTaskCancelable;
                    switch (i8) {
                        case 0:
                            downloadTaskCancelable2.c();
                            return SettingHelper.b() ? JewelryLookHandler.clearAllCompletable() : com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.g.f42660b;
                        default:
                            downloadTaskCancelable2.c();
                            return SettingHelper.d() ? NailLookHandler.clearAllCompletable() : com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.g.f42660b;
                    }
                }
            }).i(Schedulers.f43170c).e(new n7(i5))).f(new Consumer() { // from class: com.perfectcorp.perfectlib.c3
                @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Consumer
                public final void accept(Object obj) {
                    int i8 = i6;
                    DownloadTaskCancelable downloadTaskCancelable2 = downloadTaskCancelable;
                    NailLookHandler nailLookHandler2 = nailLookHandler;
                    switch (i8) {
                        case 0:
                            AtomicReference atomicReference = nailLookHandler2.d;
                            while (!atomicReference.compareAndSet(downloadTaskCancelable2, null) && atomicReference.get() == downloadTaskCancelable2) {
                            }
                            break;
                        default:
                            AtomicReference atomicReference2 = nailLookHandler2.d;
                            while (!atomicReference2.compareAndSet(downloadTaskCancelable2, null) && atomicReference2.get() == downloadTaskCancelable2) {
                            }
                            break;
                    }
                }
            }), new Consumer() { // from class: com.perfectcorp.perfectlib.c3
                @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Consumer
                public final void accept(Object obj) {
                    int i8 = i7;
                    DownloadTaskCancelable downloadTaskCancelable2 = downloadTaskCancelable;
                    NailLookHandler nailLookHandler2 = nailLookHandler;
                    switch (i8) {
                        case 0:
                            AtomicReference atomicReference = nailLookHandler2.d;
                            while (!atomicReference.compareAndSet(downloadTaskCancelable2, null) && atomicReference.get() == downloadTaskCancelable2) {
                            }
                            break;
                        default:
                            AtomicReference atomicReference2 = nailLookHandler2.d;
                            while (!atomicReference2.compareAndSet(downloadTaskCancelable2, null) && atomicReference2.get() == downloadTaskCancelable2) {
                            }
                            break;
                    }
                }
            }), new e0(nailLookHandler, downloadTaskCancelable, i4)).i(AndroidSchedulers.a());
            final int i8 = 5;
            ConsumerSingleObserver consumerSingleObserver = new ConsumerSingleObserver(new Consumer() { // from class: m40
                @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Consumer
                public final void accept(Object obj) {
                    int i9 = i3;
                    LookHandler.SyncServerCallback syncServerCallback3 = syncServerCallback2;
                    switch (i9) {
                        case 0:
                            Throwable th = (Throwable) obj;
                            if (!(th instanceof SkipCallbackException)) {
                                Log.e("JewelryLookHandler", "[syncServer] failed", th);
                                syncServerCallback3.onFailure(InternalErrorRetriever.a(th));
                            } else {
                                Log.c("JewelryLookHandler", "[syncServer] canceled.", th);
                            }
                            break;
                        case 1:
                            Log.g(3, "JewelryLookHandler", "[syncServer] success");
                            syncServerCallback3.onSuccess();
                            break;
                        case 2:
                            Log.g(3, "LookHandler", "[syncServer] success");
                            syncServerCallback3.onSuccess();
                            break;
                        case 3:
                            Throwable th2 = (Throwable) obj;
                            if (!(th2 instanceof SkipCallbackException)) {
                                Log.e("LookHandler", "[syncServer] failed", th2);
                                syncServerCallback3.onFailure(InternalErrorRetriever.a(th2));
                            } else {
                                Log.c("LookHandler", "[syncServer] canceled.", th2);
                            }
                            break;
                        case 4:
                            Log.g(3, "NailLookHandler", "[syncServer] success");
                            syncServerCallback3.onSuccess();
                            break;
                        default:
                            Throwable th3 = (Throwable) obj;
                            if (!(th3 instanceof SkipCallbackException)) {
                                Log.e("NailLookHandler", "[syncServer] failed", th3);
                                syncServerCallback3.onFailure(InternalErrorRetriever.a(th3));
                            } else {
                                Log.c("NailLookHandler", "[syncServer] canceled.", th3);
                            }
                            break;
                    }
                }
            }, new Consumer() { // from class: m40
                @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Consumer
                public final void accept(Object obj) {
                    int i9 = i8;
                    LookHandler.SyncServerCallback syncServerCallback3 = syncServerCallback2;
                    switch (i9) {
                        case 0:
                            Throwable th = (Throwable) obj;
                            if (!(th instanceof SkipCallbackException)) {
                                Log.e("JewelryLookHandler", "[syncServer] failed", th);
                                syncServerCallback3.onFailure(InternalErrorRetriever.a(th));
                            } else {
                                Log.c("JewelryLookHandler", "[syncServer] canceled.", th);
                            }
                            break;
                        case 1:
                            Log.g(3, "JewelryLookHandler", "[syncServer] success");
                            syncServerCallback3.onSuccess();
                            break;
                        case 2:
                            Log.g(3, "LookHandler", "[syncServer] success");
                            syncServerCallback3.onSuccess();
                            break;
                        case 3:
                            Throwable th2 = (Throwable) obj;
                            if (!(th2 instanceof SkipCallbackException)) {
                                Log.e("LookHandler", "[syncServer] failed", th2);
                                syncServerCallback3.onFailure(InternalErrorRetriever.a(th2));
                            } else {
                                Log.c("LookHandler", "[syncServer] canceled.", th2);
                            }
                            break;
                        case 4:
                            Log.g(3, "NailLookHandler", "[syncServer] success");
                            syncServerCallback3.onSuccess();
                            break;
                        default:
                            Throwable th3 = (Throwable) obj;
                            if (!(th3 instanceof SkipCallbackException)) {
                                Log.e("NailLookHandler", "[syncServer] failed", th3);
                                syncServerCallback3.onFailure(InternalErrorRetriever.a(th3));
                            } else {
                                Log.c("NailLookHandler", "[syncServer] canceled.", th3);
                            }
                            break;
                    }
                }
            });
            uVarI.a(consumerSingleObserver);
            compositeDisposable.b(consumerSingleObserver);
            return downloadTaskCancelable;
        }
        if (LookType.JEWELRY != lookType) {
            final DownloadTaskCancelable downloadTaskCancelable2 = new DownloadTaskCancelable("syncServer");
            c(downloadTaskCancelable2);
            Cancelable cancelable2 = (Cancelable) this.d.getAndSet(downloadTaskCancelable2);
            if (cancelable2 != null) {
                cancelable2.cancel();
            }
            com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.u uVarI2 = new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.g(new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.h(new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.d(new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.c(new va0(downloadTaskCancelable2, i7)), new com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.e(new va0(downloadTaskCancelable2, i6)).i(Schedulers.f43170c).e(new n7(15))).f(new Consumer(this) { // from class: ka0

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public final /* synthetic */ LookHandler f71606b;

                {
                    this.f71606b = this;
                }

                @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Consumer
                public final void accept(Object obj) {
                    int i9 = i7;
                    DownloadTaskCancelable downloadTaskCancelable3 = downloadTaskCancelable2;
                    LookHandler lookHandler = this.f71606b;
                    switch (i9) {
                        case 0:
                            AtomicReference atomicReference = lookHandler.d;
                            while (!atomicReference.compareAndSet(downloadTaskCancelable3, null) && atomicReference.get() == downloadTaskCancelable3) {
                            }
                            break;
                        default:
                            AtomicReference atomicReference2 = lookHandler.d;
                            while (!atomicReference2.compareAndSet(downloadTaskCancelable3, null) && atomicReference2.get() == downloadTaskCancelable3) {
                            }
                            break;
                    }
                }
            }), new Consumer(this) { // from class: ka0

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public final /* synthetic */ LookHandler f71606b;

                {
                    this.f71606b = this;
                }

                @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Consumer
                public final void accept(Object obj) {
                    int i9 = i6;
                    DownloadTaskCancelable downloadTaskCancelable3 = downloadTaskCancelable2;
                    LookHandler lookHandler = this.f71606b;
                    switch (i9) {
                        case 0:
                            AtomicReference atomicReference = lookHandler.d;
                            while (!atomicReference.compareAndSet(downloadTaskCancelable3, null) && atomicReference.get() == downloadTaskCancelable3) {
                            }
                            break;
                        default:
                            AtomicReference atomicReference2 = lookHandler.d;
                            while (!atomicReference2.compareAndSet(downloadTaskCancelable3, null) && atomicReference2.get() == downloadTaskCancelable3) {
                            }
                            break;
                    }
                }
            }), new la0(this, downloadTaskCancelable2, 0)).i(AndroidSchedulers.a());
            ConsumerSingleObserver consumerSingleObserver2 = new ConsumerSingleObserver(new Consumer() { // from class: m40
                @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Consumer
                public final void accept(Object obj) {
                    int i9 = i4;
                    LookHandler.SyncServerCallback syncServerCallback3 = syncServerCallback2;
                    switch (i9) {
                        case 0:
                            Throwable th = (Throwable) obj;
                            if (!(th instanceof SkipCallbackException)) {
                                Log.e("JewelryLookHandler", "[syncServer] failed", th);
                                syncServerCallback3.onFailure(InternalErrorRetriever.a(th));
                            } else {
                                Log.c("JewelryLookHandler", "[syncServer] canceled.", th);
                            }
                            break;
                        case 1:
                            Log.g(3, "JewelryLookHandler", "[syncServer] success");
                            syncServerCallback3.onSuccess();
                            break;
                        case 2:
                            Log.g(3, "LookHandler", "[syncServer] success");
                            syncServerCallback3.onSuccess();
                            break;
                        case 3:
                            Throwable th2 = (Throwable) obj;
                            if (!(th2 instanceof SkipCallbackException)) {
                                Log.e("LookHandler", "[syncServer] failed", th2);
                                syncServerCallback3.onFailure(InternalErrorRetriever.a(th2));
                            } else {
                                Log.c("LookHandler", "[syncServer] canceled.", th2);
                            }
                            break;
                        case 4:
                            Log.g(3, "NailLookHandler", "[syncServer] success");
                            syncServerCallback3.onSuccess();
                            break;
                        default:
                            Throwable th3 = (Throwable) obj;
                            if (!(th3 instanceof SkipCallbackException)) {
                                Log.e("NailLookHandler", "[syncServer] failed", th3);
                                syncServerCallback3.onFailure(InternalErrorRetriever.a(th3));
                            } else {
                                Log.c("NailLookHandler", "[syncServer] canceled.", th3);
                            }
                            break;
                    }
                }
            }, new Consumer() { // from class: m40
                @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Consumer
                public final void accept(Object obj) {
                    int i9 = i2;
                    LookHandler.SyncServerCallback syncServerCallback3 = syncServerCallback2;
                    switch (i9) {
                        case 0:
                            Throwable th = (Throwable) obj;
                            if (!(th instanceof SkipCallbackException)) {
                                Log.e("JewelryLookHandler", "[syncServer] failed", th);
                                syncServerCallback3.onFailure(InternalErrorRetriever.a(th));
                            } else {
                                Log.c("JewelryLookHandler", "[syncServer] canceled.", th);
                            }
                            break;
                        case 1:
                            Log.g(3, "JewelryLookHandler", "[syncServer] success");
                            syncServerCallback3.onSuccess();
                            break;
                        case 2:
                            Log.g(3, "LookHandler", "[syncServer] success");
                            syncServerCallback3.onSuccess();
                            break;
                        case 3:
                            Throwable th2 = (Throwable) obj;
                            if (!(th2 instanceof SkipCallbackException)) {
                                Log.e("LookHandler", "[syncServer] failed", th2);
                                syncServerCallback3.onFailure(InternalErrorRetriever.a(th2));
                            } else {
                                Log.c("LookHandler", "[syncServer] canceled.", th2);
                            }
                            break;
                        case 4:
                            Log.g(3, "NailLookHandler", "[syncServer] success");
                            syncServerCallback3.onSuccess();
                            break;
                        default:
                            Throwable th3 = (Throwable) obj;
                            if (!(th3 instanceof SkipCallbackException)) {
                                Log.e("NailLookHandler", "[syncServer] failed", th3);
                                syncServerCallback3.onFailure(InternalErrorRetriever.a(th3));
                            } else {
                                Log.c("NailLookHandler", "[syncServer] canceled.", th3);
                            }
                            break;
                    }
                }
            });
            uVarI2.a(consumerSingleObserver2);
            this.f39664a.b(consumerSingleObserver2);
            return downloadTaskCancelable2;
        }
        final JewelryLookHandler jewelryLookHandler = this.f39668f;
        jewelryLookHandler.getClass();
        Objects.requireNonNull(syncServerCallback2, "callback can't be null");
        Log.g(3, "JewelryLookHandler", "[syncServer] start");
        final DownloadTaskCancelable downloadTaskCancelable3 = new DownloadTaskCancelable("syncServer");
        Log.g(3, "JewelryLookHandler", "[cancelOnReleased] add cancelable \"" + downloadTaskCancelable3 + "\" to taskDisposables");
        CompositeDisposable compositeDisposable2 = jewelryLookHandler.f39642a;
        compositeDisposable2.b(Disposables.b(new et(downloadTaskCancelable3, 17)));
        Cancelable cancelable3 = (Cancelable) jewelryLookHandler.d.getAndSet(downloadTaskCancelable3);
        if (cancelable3 != null) {
            cancelable3.cancel();
        }
        com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.u uVarI3 = new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.g(new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.h(new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.d(new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.c(new z(jewelryLookHandler, downloadTaskCancelable3, i3)), new com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.e(new Callable() { // from class: com.perfectcorp.perfectlib.a1
            @Override // java.util.concurrent.Callable
            public final Object call() {
                int i9 = i6;
                DownloadTaskCancelable downloadTaskCancelable4 = downloadTaskCancelable3;
                switch (i9) {
                    case 0:
                        downloadTaskCancelable4.c();
                        return SettingHelper.b() ? JewelryLookHandler.clearAllCompletable() : com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.g.f42660b;
                    default:
                        downloadTaskCancelable4.c();
                        return SettingHelper.d() ? NailLookHandler.clearAllCompletable() : com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.g.f42660b;
                }
            }
        }).i(Schedulers.f43170c).e(new n7(12))).f(new Consumer() { // from class: com.perfectcorp.perfectlib.b1
            @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                int i9 = i6;
                DownloadTaskCancelable downloadTaskCancelable4 = downloadTaskCancelable3;
                JewelryLookHandler jewelryLookHandler2 = jewelryLookHandler;
                switch (i9) {
                    case 0:
                        AtomicReference atomicReference = jewelryLookHandler2.d;
                        while (!atomicReference.compareAndSet(downloadTaskCancelable4, null) && atomicReference.get() == downloadTaskCancelable4) {
                        }
                        break;
                    default:
                        AtomicReference atomicReference2 = jewelryLookHandler2.d;
                        while (!atomicReference2.compareAndSet(downloadTaskCancelable4, null) && atomicReference2.get() == downloadTaskCancelable4) {
                        }
                        break;
                }
            }
        }), new Consumer() { // from class: com.perfectcorp.perfectlib.b1
            @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                int i9 = i7;
                DownloadTaskCancelable downloadTaskCancelable4 = downloadTaskCancelable3;
                JewelryLookHandler jewelryLookHandler2 = jewelryLookHandler;
                switch (i9) {
                    case 0:
                        AtomicReference atomicReference = jewelryLookHandler2.d;
                        while (!atomicReference.compareAndSet(downloadTaskCancelable4, null) && atomicReference.get() == downloadTaskCancelable4) {
                        }
                        break;
                    default:
                        AtomicReference atomicReference2 = jewelryLookHandler2.d;
                        while (!atomicReference2.compareAndSet(downloadTaskCancelable4, null) && atomicReference2.get() == downloadTaskCancelable4) {
                        }
                        break;
                }
            }
        }), new e0(jewelryLookHandler, downloadTaskCancelable3, i7)).i(AndroidSchedulers.a());
        ConsumerSingleObserver consumerSingleObserver3 = new ConsumerSingleObserver(new Consumer() { // from class: m40
            @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                int i9 = i7;
                LookHandler.SyncServerCallback syncServerCallback3 = syncServerCallback2;
                switch (i9) {
                    case 0:
                        Throwable th = (Throwable) obj;
                        if (!(th instanceof SkipCallbackException)) {
                            Log.e("JewelryLookHandler", "[syncServer] failed", th);
                            syncServerCallback3.onFailure(InternalErrorRetriever.a(th));
                        } else {
                            Log.c("JewelryLookHandler", "[syncServer] canceled.", th);
                        }
                        break;
                    case 1:
                        Log.g(3, "JewelryLookHandler", "[syncServer] success");
                        syncServerCallback3.onSuccess();
                        break;
                    case 2:
                        Log.g(3, "LookHandler", "[syncServer] success");
                        syncServerCallback3.onSuccess();
                        break;
                    case 3:
                        Throwable th2 = (Throwable) obj;
                        if (!(th2 instanceof SkipCallbackException)) {
                            Log.e("LookHandler", "[syncServer] failed", th2);
                            syncServerCallback3.onFailure(InternalErrorRetriever.a(th2));
                        } else {
                            Log.c("LookHandler", "[syncServer] canceled.", th2);
                        }
                        break;
                    case 4:
                        Log.g(3, "NailLookHandler", "[syncServer] success");
                        syncServerCallback3.onSuccess();
                        break;
                    default:
                        Throwable th3 = (Throwable) obj;
                        if (!(th3 instanceof SkipCallbackException)) {
                            Log.e("NailLookHandler", "[syncServer] failed", th3);
                            syncServerCallback3.onFailure(InternalErrorRetriever.a(th3));
                        } else {
                            Log.c("NailLookHandler", "[syncServer] canceled.", th3);
                        }
                        break;
                }
            }
        }, new Consumer() { // from class: m40
            @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                int i9 = i6;
                LookHandler.SyncServerCallback syncServerCallback3 = syncServerCallback2;
                switch (i9) {
                    case 0:
                        Throwable th = (Throwable) obj;
                        if (!(th instanceof SkipCallbackException)) {
                            Log.e("JewelryLookHandler", "[syncServer] failed", th);
                            syncServerCallback3.onFailure(InternalErrorRetriever.a(th));
                        } else {
                            Log.c("JewelryLookHandler", "[syncServer] canceled.", th);
                        }
                        break;
                    case 1:
                        Log.g(3, "JewelryLookHandler", "[syncServer] success");
                        syncServerCallback3.onSuccess();
                        break;
                    case 2:
                        Log.g(3, "LookHandler", "[syncServer] success");
                        syncServerCallback3.onSuccess();
                        break;
                    case 3:
                        Throwable th2 = (Throwable) obj;
                        if (!(th2 instanceof SkipCallbackException)) {
                            Log.e("LookHandler", "[syncServer] failed", th2);
                            syncServerCallback3.onFailure(InternalErrorRetriever.a(th2));
                        } else {
                            Log.c("LookHandler", "[syncServer] canceled.", th2);
                        }
                        break;
                    case 4:
                        Log.g(3, "NailLookHandler", "[syncServer] success");
                        syncServerCallback3.onSuccess();
                        break;
                    default:
                        Throwable th3 = (Throwable) obj;
                        if (!(th3 instanceof SkipCallbackException)) {
                            Log.e("NailLookHandler", "[syncServer] failed", th3);
                            syncServerCallback3.onFailure(InternalErrorRetriever.a(th3));
                        } else {
                            Log.c("NailLookHandler", "[syncServer] canceled.", th3);
                        }
                        break;
                }
            }
        });
        uVarI3.a(consumerSingleObserver3);
        compositeDisposable2.b(consumerSingleObserver3);
        return downloadTaskCancelable3;
    }
}
