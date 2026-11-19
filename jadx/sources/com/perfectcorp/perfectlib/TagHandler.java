package com.perfectcorp.perfectlib;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.text.TextUtils;
import com.linkplay.medialib.ContentTree;
import com.perfectcorp.common.PfCommons;
import com.perfectcorp.common.io.IO;
import com.perfectcorp.common.network.ProgressCallback;
import com.perfectcorp.common.utility.BasicPreferences;
import com.perfectcorp.common.utility.DatabaseSharedPreferences;
import com.perfectcorp.common.utility.EventPublisher;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.TagHandler;
import com.perfectcorp.perfectlib.hc.YMKDatabase;
import com.perfectcorp.perfectlib.hc.database.DBUtility;
import com.perfectcorp.perfectlib.hc.database.ymk.BaseDao;
import com.perfectcorp.perfectlib.hc.database.ymk.downloadimage.DownloadImageDao;
import com.perfectcorp.perfectlib.internal.DownloadTaskCancelable;
import com.perfectcorp.perfectlib.ph.database.mcsdk.IdRow;
import com.perfectcorp.perfectlib.ph.database.mcsdk.ProductMappingDatabase;
import com.perfectcorp.perfectlib.ph.utility.networkcache.c$c;
import com.perfectcorp.perfectlib.ymk.model.SkuBeautyMode$FeatureType;
import com.perfectcorp.thirdparty.com.google.common.collect.ImmutableList;
import com.perfectcorp.thirdparty.com.google.common.collect.bz;
import com.perfectcorp.thirdparty.io.reactivex.Completable;
import com.perfectcorp.thirdparty.io.reactivex.android.schedulers.AndroidSchedulers;
import com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable;
import com.perfectcorp.thirdparty.io.reactivex.disposables.Disposables;
import com.perfectcorp.thirdparty.io.reactivex.functions.Consumer;
import com.perfectcorp.thirdparty.io.reactivex.internal.functions.Functions;
import com.perfectcorp.thirdparty.io.reactivex.internal.observers.CallbackCompletableObserver;
import com.perfectcorp.thirdparty.io.reactivex.internal.observers.ConsumerSingleObserver;
import com.perfectcorp.thirdparty.io.reactivex.schedulers.Schedulers;
import defpackage.aa0;
import defpackage.er0;
import defpackage.hn0;
import defpackage.o7;
import defpackage.p21;
import defpackage.r21;
import defpackage.xw;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes3.dex */
public final class TagHandler {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AtomicReference f39982a = new AtomicReference();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AtomicReference f39983b = new AtomicReference();

    public interface ClearAllCallback {
        void onFailure(Throwable th);

        void onSuccess();
    }

    public interface ListGroupsCallback {
        void onFailure(Throwable th);

        void onSuccess(List<TagGroup> list);
    }

    public interface ListGuidsCallback {
        void onFailure(Throwable th);

        void onSuccess(List<String> list);
    }

    public interface ListTagsCallback {
        void onFailure(Throwable th);

        void onSuccess(List<Tag> list);
    }

    public static final class Preferences {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final BasicPreferences f39984a = new BasicPreferences(DatabaseSharedPreferences.a("TagHandlerPreferences"));
    }

    public static final class Singleton {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final TagHandler f39985a = new TagHandler();
    }

    public interface SyncServerCallback extends EventPublisher.Subscriber {
        void onFailure(Throwable th);

        void onSuccess();

        void progress(double d);
    }

    public static class SyncingTask {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final DownloadTaskCancelable f39986a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.b f39987b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final EventPublisher f39988c;
        public final Disposable d;

        public SyncingTask(DownloadTaskCancelable downloadTaskCancelable, EventPublisher eventPublisher, com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.b bVar) {
            this.f39986a = downloadTaskCancelable;
            this.f39987b = bVar;
            this.f39988c = eventPublisher;
            this.d = Disposables.a(new er0(downloadTaskCancelable, 1));
        }
    }

    /* JADX WARN: $VALUES field not found */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    public static final class Type {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final Type f39989a = new Type("SKU", 0, "sku", com.perfectcorp.perfectlib.ph.kernelctrl.sku.h.f41570b, DownloadImageDao.Type.TAG_SKU);

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final Type f39990b = new Type("LOOK", 1, "look", Collections.singletonList("look"), DownloadImageDao.Type.TAG_LOOK);

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final String f39991c;
        final List<String> d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final DownloadImageDao.Type f39992e;

        public Type(String str, int i2, String str2, List list, DownloadImageDao.Type type) {
            super(str, i2);
            this.f39991c = str2;
            this.d = list;
            this.f39992e = type;
        }
    }

    public static com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.n b(final Type type, DownloadTaskCancelable downloadTaskCancelable, ProgressCallback progressCallback) {
        Objects.requireNonNull(type);
        Log.g(3, "TagHandler", "[syncServerByType] start. type=" + type);
        final int i2 = 0;
        final int i3 = 1;
        return new com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.a(new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.n(new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.d(new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.c(new Callable() { // from class: com.perfectcorp.perfectlib.k4
            @Override // java.util.concurrent.Callable
            public final Object call() {
                int i4 = i2;
                TagHandler.Type type2 = type;
                switch (i4) {
                    case 0:
                        BasicPreferences basicPreferences = TagHandler.Preferences.f39984a;
                        Objects.requireNonNull(type2);
                        return new c$c(type2.f39991c, TagHandler.Preferences.f39984a.getString(type2 == TagHandler.Type.f39989a ? "SKU_MESSAGE_DIGEST" : "LOOK_MESSAGE_DIGEST", "")).c();
                    default:
                        return type2 == TagHandler.Type.f39989a ? ProductMappingUtility.a(type2.d) : com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.g.f42660b;
                }
            }
        }), new com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.e(new z(progressCallback, type, 15))), new u1(type, progressCallback, downloadTaskCancelable, PerfectLib.g.d == Configuration.ImageSource.FILE, 3)), new com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.e(new Callable() { // from class: com.perfectcorp.perfectlib.k4
            @Override // java.util.concurrent.Callable
            public final Object call() {
                int i4 = i3;
                TagHandler.Type type2 = type;
                switch (i4) {
                    case 0:
                        BasicPreferences basicPreferences = TagHandler.Preferences.f39984a;
                        Objects.requireNonNull(type2);
                        return new c$c(type2.f39991c, TagHandler.Preferences.f39984a.getString(type2 == TagHandler.Type.f39989a ? "SKU_MESSAGE_DIGEST" : "LOOK_MESSAGE_DIGEST", "")).c();
                    default:
                        return type2 == TagHandler.Type.f39989a ? ProductMappingUtility.a(type2.d) : com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.g.f42660b;
                }
            }
        })).e(new v(type, 5)).g(new c(type, 9));
    }

    public static List c(TagType tagType, String str) {
        SQLiteDatabase sQLiteDatabaseB = YMKDatabase.b();
        boolean zEquals = SkuBeautyMode$FeatureType.EYE_BROW.toString().equals(tagType.f39993a);
        com.perfectcorp.perfectlib.ph.database.ymk.generictag.d dVar = com.perfectcorp.perfectlib.ph.database.ymk.generictag.d.d;
        String str2 = tagType.f39993a;
        String str3 = tagType.f39994b;
        dVar.getClass();
        Objects.requireNonNull(str2);
        Objects.requireNonNull(str3);
        Objects.requireNonNull(str);
        Cursor cursorF = null;
        try {
            String[] strArr = dVar.f40267c;
            String[] strArr2 = {"Type", "SubType", "TagId", "Is3d"};
            String[] strArr3 = {str2, str3, str, zEquals ? "1" : ContentTree.ROOT_ID};
            Objects.requireNonNull(strArr);
            cursorF = BaseDao.f(sQLiteDatabaseB, dVar.f40266b, strArr, strArr2, strArr3);
            List<com.perfectcorp.perfectlib.ph.database.ymk.generictag.e> listM = dVar.m(cursorF);
            IO.b(cursorF);
            bz bzVar = ImmutableList.f42200c;
            ImmutableList.Builder builder = new ImmutableList.Builder();
            for (com.perfectcorp.perfectlib.ph.database.ymk.generictag.e eVar : listM) {
                if (tagType.f39995c) {
                    com.perfectcorp.perfectlib.ph.database.ymk.sku.b bVar = com.perfectcorp.perfectlib.ph.database.ymk.sku.b.d;
                    SQLiteDatabase sQLiteDatabaseB2 = YMKDatabase.b();
                    String str4 = eVar.f41184e;
                    Objects.requireNonNull(str4);
                    try {
                        if (!DBUtility.e(sQLiteDatabaseB2, "ProductMaskDetail", "skuGuid", str4)) {
                            defpackage.a.A(new StringBuilder("[getGenericTagGuids] Filter out SKU by product mask. skuGuid="), eVar.f41184e, 3, "TagHandler");
                        }
                    } catch (Throwable th) {
                        Log.e("ProductMaskDetailDao", "[hasSkuGuid] failed", th);
                        throw th;
                    }
                }
                builder.f(eVar.f41184e);
            }
            return builder.i();
        } catch (Throwable th2) {
            try {
                Log.e("GenericTagGuidDao", "[getByTypeAndId] failed", th2);
                throw th2;
            } catch (Throwable th3) {
                IO.b(cursorF);
                throw th3;
            }
        }
    }

    public static List d(List list) {
        bz bzVar = ImmutableList.f42200c;
        ImmutableList.Builder builder = new ImmutableList.Builder();
        Iterator it = ProductMappingDatabase.h().k("skuItemGuid", list).iterator();
        while (it.hasNext()) {
            String str = ((IdRow) it.next()).f41150e;
            if (!TextUtils.isEmpty(str)) {
                builder.f(str);
            }
        }
        return builder.i();
    }

    public static TagHandler getInstance() {
        return Singleton.f39985a;
    }

    public final SyncingTask a() {
        DownloadTaskCancelable downloadTaskCancelable = new DownloadTaskCancelable("TagHandler#syncServer");
        EventPublisher eventPublisher = new EventPublisher();
        com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.b bVar = new com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.b(new com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.e(new d4(eventPublisher, downloadTaskCancelable)).i(Schedulers.f43170c).h(new r21(this, 1)).f(new r21(this, 2)));
        while (true) {
            AtomicReference atomicReference = this.f39982a;
            SyncingTask syncingTask = (SyncingTask) atomicReference.get();
            if (syncingTask != null) {
                return syncingTask;
            }
            SyncingTask syncingTask2 = new SyncingTask(downloadTaskCancelable, eventPublisher, bVar);
            while (!atomicReference.compareAndSet(null, syncingTask2)) {
                if (atomicReference.get() != null) {
                }
            }
            return syncingTask2;
        }
    }

    public final void clearAll(ClearAllCallback clearAllCallback) {
        Objects.requireNonNull(clearAllCallback, "callback can't be null");
        if (this.f39982a.get() != null) {
            clearAllCallback.onFailure(new IllegalStateException("syncServer() is running"));
            return;
        }
        Log.g(3, "TagHandler", "[clearAll] start");
        Completable bVar = new com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.b(new com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.f(new com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.j(new t(3)).i(Schedulers.f43170c), new r21(this, 0)));
        loop0: while (true) {
            AtomicReference atomicReference = this.f39983b;
            Completable completable = (Completable) atomicReference.get();
            if (completable != null) {
                bVar = completable;
                break;
            } else {
                do {
                    if (atomicReference.compareAndSet(null, bVar)) {
                        break loop0;
                    }
                } while (atomicReference.get() == null);
            }
        }
        new com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.m(bVar, AndroidSchedulers.a()).a(new CallbackCompletableObserver(new defpackage.o2(clearAllCallback, 23), new xw(clearAllCallback, 12)));
    }

    public final void listGroups(TagType tagType, final ListGroupsCallback listGroupsCallback) {
        Objects.requireNonNull(tagType, "tagType can't be null");
        Objects.requireNonNull(listGroupsCallback, "callback can't be null");
        if (tagType.a()) {
            PfCommons.c(new hn0(listGroupsCallback, 27));
            return;
        }
        Log.g(3, "TagHandler", "[listGroups] start");
        final int i2 = 1;
        com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.u uVarI = new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.o(new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.p(new i(tagType, 9)).j(Schedulers.f43170c), Functions.f42605a).filter(new k1(tagType, PerfectLib.g.f39519h, 3)).map(new s4(i2)).toList().i(AndroidSchedulers.a());
        final int i3 = 0;
        ConsumerSingleObserver consumerSingleObserver = new ConsumerSingleObserver(new Consumer() { // from class: o21
            @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                int i4 = i3;
                TagHandler.ListGroupsCallback listGroupsCallback2 = listGroupsCallback;
                switch (i4) {
                    case 0:
                        Log.g(3, "TagHandler", "[listGroups] succeeded");
                        listGroupsCallback2.onSuccess((List) obj);
                        break;
                    default:
                        Log.g(3, "TagHandler", "[listGroups] failed");
                        listGroupsCallback2.onFailure((Throwable) obj);
                        break;
                }
            }
        }, new Consumer() { // from class: o21
            @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                int i4 = i2;
                TagHandler.ListGroupsCallback listGroupsCallback2 = listGroupsCallback;
                switch (i4) {
                    case 0:
                        Log.g(3, "TagHandler", "[listGroups] succeeded");
                        listGroupsCallback2.onSuccess((List) obj);
                        break;
                    default:
                        Log.g(3, "TagHandler", "[listGroups] failed");
                        listGroupsCallback2.onFailure((Throwable) obj);
                        break;
                }
            }
        });
        uVarI.a(consumerSingleObserver);
        PerfectLib.f39744i.b(consumerSingleObserver);
    }

    public final void listGuids(TagType tagType, String str, final ListGuidsCallback listGuidsCallback) {
        Objects.requireNonNull(tagType, "tagType can't be null");
        Objects.requireNonNull(str, "tagId can't be null");
        Objects.requireNonNull(listGuidsCallback, "callback can't be null");
        if (tagType.a()) {
            PfCommons.c(new hn0(listGuidsCallback, 26));
            return;
        }
        Log.g(3, "TagHandler", "[listGuids] start");
        com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.u uVarI = new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.t(new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.p(new o7(tagType, str, 10)), new p21(tagType, PerfectLib.g.f39519h)).j(Schedulers.f43170c).i(AndroidSchedulers.a());
        final int i2 = 0;
        final int i3 = 1;
        ConsumerSingleObserver consumerSingleObserver = new ConsumerSingleObserver(new Consumer() { // from class: q21
            @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                int i4 = i2;
                TagHandler.ListGuidsCallback listGuidsCallback2 = listGuidsCallback;
                switch (i4) {
                    case 0:
                        Log.g(3, "TagHandler", "[listGuids] succeeded");
                        listGuidsCallback2.onSuccess((List) obj);
                        break;
                    default:
                        Log.g(3, "TagHandler", "[listGuids] failed");
                        listGuidsCallback2.onFailure((Throwable) obj);
                        break;
                }
            }
        }, new Consumer() { // from class: q21
            @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                int i4 = i3;
                TagHandler.ListGuidsCallback listGuidsCallback2 = listGuidsCallback;
                switch (i4) {
                    case 0:
                        Log.g(3, "TagHandler", "[listGuids] succeeded");
                        listGuidsCallback2.onSuccess((List) obj);
                        break;
                    default:
                        Log.g(3, "TagHandler", "[listGuids] failed");
                        listGuidsCallback2.onFailure((Throwable) obj);
                        break;
                }
            }
        });
        uVarI.a(consumerSingleObserver);
        PerfectLib.f39744i.b(consumerSingleObserver);
    }

    public final void listTags(TagType tagType, String str, final ListTagsCallback listTagsCallback) {
        Objects.requireNonNull(tagType, "tagType can't be null");
        Objects.requireNonNull(str, "groupId can't be null");
        Objects.requireNonNull(listTagsCallback, "callback can't be null");
        if (tagType.a()) {
            PfCommons.c(new hn0(listTagsCallback, 24));
            return;
        }
        Log.g(3, "TagHandler", "[listTags] start");
        com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.u uVarI = new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.o(new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.p(new z(tagType, str, 14)).j(Schedulers.f43170c), Functions.f42605a).filter(new p21(tagType, PerfectLib.g.f39519h)).map(new z0(PerfectLib.g.d, 8)).toList().i(AndroidSchedulers.a());
        final int i2 = 0;
        final int i3 = 1;
        ConsumerSingleObserver consumerSingleObserver = new ConsumerSingleObserver(new Consumer() { // from class: u21
            @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                int i4 = i2;
                TagHandler.ListTagsCallback listTagsCallback2 = listTagsCallback;
                switch (i4) {
                    case 0:
                        Log.g(3, "TagHandler", "[listTags] succeeded");
                        listTagsCallback2.onSuccess((List) obj);
                        break;
                    default:
                        Log.g(3, "TagHandler", "[listTags] failed");
                        listTagsCallback2.onFailure((Throwable) obj);
                        break;
                }
            }
        }, new Consumer() { // from class: u21
            @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                int i4 = i3;
                TagHandler.ListTagsCallback listTagsCallback2 = listTagsCallback;
                switch (i4) {
                    case 0:
                        Log.g(3, "TagHandler", "[listTags] succeeded");
                        listTagsCallback2.onSuccess((List) obj);
                        break;
                    default:
                        Log.g(3, "TagHandler", "[listTags] failed");
                        listTagsCallback2.onFailure((Throwable) obj);
                        break;
                }
            }
        });
        uVarI.a(consumerSingleObserver);
        PerfectLib.f39744i.b(consumerSingleObserver);
    }

    public final Cancelable syncServer(SyncServerCallback syncServerCallback) {
        Objects.requireNonNull(syncServerCallback, "callback can't be null");
        if (!PerfectLib.d.contains(Functionality.MAKEUP) && !PerfectLib.d.contains(Functionality.HAIR_COLOR)) {
            PfCommons.c(new hn0(syncServerCallback, 25));
            return DownloadTaskCancelable.f40351e;
        }
        Log.g(3, "TagHandler", "[syncServer] start");
        try {
            if (this.f39983b.get() != null) {
                throw new IllegalStateException("clearAll() is running");
            }
            SyncingTask syncingTaskA = a();
            syncingTaskA.f39988c.b(SyncServerCallback.class, syncServerCallback);
            syncingTaskA.f39986a.b(Disposables.a(new v(syncingTaskA, 4)));
            PerfectLib.f39744i.b(syncingTaskA.d);
            com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.m mVar = new com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.m(syncingTaskA.f39987b, AndroidSchedulers.a());
            CallbackCompletableObserver callbackCompletableObserver = new CallbackCompletableObserver(new defpackage.o2(syncServerCallback, 22), new xw(syncServerCallback, 11));
            mVar.a(callbackCompletableObserver);
            syncingTaskA.f39986a.b(callbackCompletableObserver);
            return syncingTaskA.f39986a;
        } catch (Throwable th) {
            PfCommons.c(new aa0(syncServerCallback, th, 28));
            return DownloadTaskCancelable.f40351e;
        }
    }
}
