package defpackage;

import android.database.sqlite.SQLiteDatabase;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.ph.database.ymk.sku.b;
import com.perfectcorp.perfectlib.ph.database.ymk.sku.d;
import com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.sku.e;
import com.perfectcorp.thirdparty.com.google.common.collect.Multimap;
import com.perfectcorp.thirdparty.io.reactivex.Observable;
import com.perfectcorp.thirdparty.io.reactivex.functions.Consumer;
import java.io.Serializable;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class dq0 implements Consumer {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f68639a = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ List f68640b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Serializable f68641c;
    public final /* synthetic */ Serializable d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f68642e;

    public /* synthetic */ dq0(String str, ConcurrentLinkedQueue concurrentLinkedQueue, e eVar, List list) {
        this.f68641c = str;
        this.d = concurrentLinkedQueue;
        this.f68642e = eVar;
        this.f68640b = list;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Consumer
    public final void accept(Object obj) {
        int i2 = this.f68639a;
        Object obj2 = this.f68642e;
        Serializable serializable = this.d;
        Serializable serializable2 = this.f68641c;
        switch (i2) {
            case 0:
                String str = (String) serializable2;
                ConcurrentLinkedQueue concurrentLinkedQueue = (ConcurrentLinkedQueue) serializable;
                e eVar = (e) obj2;
                SQLiteDatabase sQLiteDatabase = (SQLiteDatabase) obj;
                Log.g(3, "ProductMaskHelper", "[syncServer] update product list for featureType=" + str);
                Iterator it = concurrentLinkedQueue.iterator();
                while (it.hasNext()) {
                    d.d.d(sQLiteDatabase, "productGuid", (String) it.next());
                }
                d.d.k(sQLiteDatabase, (List) Observable.fromIterable(eVar.a()).map(new t7(str, 22)).toList().c());
                Log.g(3, "ProductMaskHelper", "[syncServer] update product mask for featureType=" + str);
                Iterator it2 = concurrentLinkedQueue.iterator();
                while (it2.hasNext()) {
                    b.d.d(sQLiteDatabase, "productGuid", (String) it2.next());
                }
                b.d.k(sQLiteDatabase, (List) Observable.fromIterable(this.f68640b).flatMap(new t7(str, 20)).toList().c());
                Log.g(3, "ProductMaskHelper", "[syncServer] DB updated for featureType=" + str);
                break;
            default:
                ((AtomicReference) serializable2).set(new ww0((Map) obj, (ConcurrentHashMap) serializable, this.f68640b, (Multimap) obj2, 0));
                Log.g(3, "SkinCare3RecommendationHandler", "[downloadProducts] end");
                break;
        }
    }

    public /* synthetic */ dq0(AtomicReference atomicReference, ConcurrentHashMap concurrentHashMap, List list, Multimap multimap) {
        this.f68641c = atomicReference;
        this.d = concurrentHashMap;
        this.f68640b = list;
        this.f68642e = multimap;
    }
}
