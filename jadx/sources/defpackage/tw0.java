package defpackage;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.perfectcorp.common.PfCommons;
import com.perfectcorp.common.concurrent.Threads;
import com.perfectcorp.common.io.IO;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.PerfectEffect;
import com.perfectcorp.perfectlib.RecommendationHandler;
import com.perfectcorp.perfectlib.SkuDataForProtocol;
import com.perfectcorp.perfectlib.SkuHandler;
import com.perfectcorp.perfectlib.hc.YMKDatabase;
import com.perfectcorp.perfectlib.internal.DownloadTaskCancelable;
import com.perfectcorp.perfectlib.rh.database.ymk.skincare.a;
import com.perfectcorp.perfectlib.rh.database.ymk.skincare.c;
import com.perfectcorp.perfectlib.rh.kernelctrl.networktaskmanager.skincare.e;
import com.perfectcorp.perfectlib.y3;
import com.perfectcorp.thirdparty.com.google.common.collect.ImmutableMap;
import com.perfectcorp.thirdparty.io.reactivex.functions.Consumer;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class tw0 implements Consumer {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f80161a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f80162b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f80163c;
    public final /* synthetic */ Object d;

    public /* synthetic */ tw0(Object obj, Object obj2, Object obj3, int i2) {
        this.f80161a = i2;
        this.f80162b = obj;
        this.f80163c = obj2;
        this.d = obj3;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Consumer
    public final void accept(Object obj) throws Exception {
        int i2 = this.f80161a;
        Object obj2 = this.d;
        Object obj3 = this.f80163c;
        Object obj4 = this.f80162b;
        switch (i2) {
            case 0:
                List list = (List) obj4;
                ConcurrentHashMap concurrentHashMap = (ConcurrentHashMap) obj3;
                RecommendationHandler.SyncServerCallback syncServerCallback = (RecommendationHandler.SyncServerCallback) obj2;
                Map map = (Map) obj;
                Log.g(3, "SkinCare3RecommendationHandler", map.size() + " product metadata queried");
                a aVar = a.d;
                Cursor cursorA = null;
                list.addAll(aVar.h(YMKDatabase.b(), "ProductId", null, null));
                SQLiteDatabase sQLiteDatabaseB = YMKDatabase.b();
                Threads.b();
                try {
                    cursorA = aVar.a(sQLiteDatabaseB, null, null, aVar.f40267c);
                    List listM = aVar.m(cursorA);
                    IO.b(cursorA);
                    ImmutableMap.Builder builder = new ImmutableMap.Builder();
                    for (Object obj5 : listM) {
                        c cVar = (c) obj5;
                        Objects.requireNonNull(cVar);
                        builder.b(cVar.f41822a, obj5);
                    }
                    try {
                        ImmutableMap immutableMapA = builder.a();
                        for (Map.Entry entry : map.entrySet()) {
                            String str = (String) entry.getKey();
                            e.a aVar2 = (e.a) entry.getValue();
                            list.remove(str);
                            c cVar2 = (c) immutableMapA.get(str);
                            if (cVar2 == null || cVar2.f41824c < aVar2.lastModified) {
                                concurrentHashMap.put(str, aVar2);
                            }
                        }
                        Log.g(3, "SkinCare3RecommendationHandler", concurrentHashMap.size() + " new products; " + list.size() + " removed products");
                        PfCommons.c(new y3(syncServerCallback, 6));
                        return;
                    } catch (IllegalArgumentException e2) {
                        a61.l(e2.getMessage(), ". To index multiple values under a key, use Multimaps.index.");
                        return;
                    }
                } catch (Throwable th) {
                    try {
                        Log.e(aVar.f40265a, "[getAll] failed", th);
                        throw th;
                    } catch (Throwable th2) {
                        IO.b(cursorA);
                        throw th2;
                    }
                }
            case 1:
                ConcurrentLinkedQueue concurrentLinkedQueue = (ConcurrentLinkedQueue) obj2;
                ((DownloadTaskCancelable) obj4).c();
                ((SkuDataForProtocol) obj3).k();
                while (true) {
                    Runnable runnable = (Runnable) concurrentLinkedQueue.poll();
                    if (runnable == null) {
                        return;
                    } else {
                        runnable.run();
                    }
                }
                break;
            default:
                ((SkuHandler) obj4).d.put((PerfectEffect) obj3, (SkuHandler.ListStatus) ((AtomicReference) obj2).get());
                return;
        }
    }
}
