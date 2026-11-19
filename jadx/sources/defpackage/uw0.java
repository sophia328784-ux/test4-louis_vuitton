package defpackage;

import com.perfectcorp.common.PfCommons;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.RecommendationHandler;
import com.perfectcorp.perfectlib.hc.YMKDatabase;
import com.perfectcorp.perfectlib.hc.database.ymk.downloadimage.DownloadImageDao;
import com.perfectcorp.perfectlib.p;
import com.perfectcorp.perfectlib.ymk.kernelctrl.networktaskmanager.a;
import com.perfectcorp.thirdparty.io.reactivex.SingleEmitter;
import com.perfectcorp.thirdparty.io.reactivex.exceptions.CompositeException;
import com.perfectcorp.thirdparty.io.reactivex.functions.Consumer;
import java.io.File;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class uw0 implements Consumer {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f80414a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ AtomicInteger f80415b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f80416c;
    public final /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f80417e;

    public /* synthetic */ uw0(Object obj, AtomicInteger atomicInteger, int i2, Object obj2, int i3) {
        this.f80414a = i3;
        this.d = obj;
        this.f80415b = atomicInteger;
        this.f80416c = i2;
        this.f80417e = obj2;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Consumer
    public final void accept(Object obj) {
        int i2 = this.f80414a;
        Object obj2 = this.f80417e;
        int i3 = this.f80416c;
        AtomicInteger atomicInteger = this.f80415b;
        Object obj3 = this.d;
        switch (i2) {
            case 0:
                String str = (String) obj3;
                File file = (File) obj;
                Log.g(3, "SkinCare3RecommendationHandler", "[processProducts] Download success url=" + str);
                DownloadImageDao.d.s(YMKDatabase.c(), str, file.getAbsolutePath(), file.length());
                PfCommons.c(new p((RecommendationHandler.SyncServerCallback) obj2, ((((double) atomicInteger.incrementAndGet()) * 0.19d) / ((double) i3)) + 0.8d, 1));
                break;
            default:
                List list = (List) obj3;
                SingleEmitter singleEmitter = (SingleEmitter) obj2;
                Throwable th = (Throwable) obj;
                Object obj4 = a.f42002c;
                Log.e("SDKInitHandler", "[initParallelly] onError", th);
                list.add(th);
                int iIncrementAndGet = atomicInteger.incrementAndGet();
                Log.d("SDKInitHandler", "[initParallelly] onError. errorCount=" + iIncrementAndGet + ", totalCount=" + i3);
                if (iIncrementAndGet == i3) {
                    Log.d("SDKInitHandler", "[initParallelly] emit error");
                    singleEmitter.onError(new CompositeException(list));
                }
                break;
        }
    }
}
