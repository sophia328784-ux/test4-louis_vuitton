package defpackage;

import android.text.TextUtils;
import android.util.Pair;
import androidx.media3.common.util.Consumer;
import androidx.media3.exoplayer.source.LoadEventInfo;
import androidx.media3.exoplayer.source.MediaLoadData;
import androidx.media3.exoplayer.source.MediaSourceEventListener;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.PerfectEffect;
import com.perfectcorp.perfectlib.RecommendationHandler;
import com.perfectcorp.perfectlib.ShadeFinderData;
import com.perfectcorp.perfectlib.ShadeFinderDeltaE;
import com.perfectcorp.perfectlib.SkuHandler;
import com.perfectcorp.perfectlib.exceptions.NoShadeFinderProductException;
import com.perfectcorp.perfectlib.hc.database.ymk.downloadimage.DownloadImageDao;
import com.perfectcorp.perfectlib.hc.database.ymk.downloadimage.DownloadImageInfo;
import com.perfectcorp.perfectlib.internal.DownloadTaskCancelable;
import com.perfectcorp.perfectlib.k1;
import com.perfectcorp.perfectlib.rh.kernelctrl.networktaskmanager.shadefinder.a;
import com.perfectcorp.perfectlib.rh.kernelctrl.networktaskmanager.skincare.e;
import com.perfectcorp.perfectlib.u1;
import com.perfectcorp.perfectlib.y;
import com.perfectcorp.perfectlib.ymk.utility.FileDownloader;
import com.perfectcorp.perfectlib.z0;
import com.perfectcorp.thirdparty.com.google.common.collect.ImmutableSet;
import com.perfectcorp.thirdparty.com.google.common.collect.Multimap;
import com.perfectcorp.thirdparty.io.reactivex.Observable;
import com.perfectcorp.thirdparty.io.reactivex.Single;
import com.perfectcorp.thirdparty.io.reactivex.functions.Function;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.p;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.t;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.u;
import com.perfectcorp.thirdparty.io.reactivex.schedulers.Schedulers;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class uc0 implements Consumer, Function {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f80285b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ boolean f80286c;
    public final /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f80287e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f80288f;
    public final /* synthetic */ Object g;

    public /* synthetic */ uc0(MediaSourceEventListener.EventDispatcher eventDispatcher, LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData, IOException iOException, boolean z) {
        this.f80285b = 0;
        this.d = eventDispatcher;
        this.f80287e = loadEventInfo;
        this.f80288f = mediaLoadData;
        this.g = iOException;
        this.f80286c = z;
    }

    @Override // androidx.media3.common.util.Consumer
    public void accept(Object obj) {
        MediaSourceEventListener.EventDispatcher eventDispatcher = (MediaSourceEventListener.EventDispatcher) this.d;
        ((MediaSourceEventListener) obj).W(eventDispatcher.f15520a, eventDispatcher.f15521b, (LoadEventInfo) this.f80287e, (MediaLoadData) this.f80288f, (IOException) this.g, this.f80286c);
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Function
    public Object apply(Object obj) {
        int i2 = this.f80285b;
        Object obj2 = this.g;
        Object obj3 = this.f80288f;
        Object obj4 = this.f80287e;
        boolean z = this.f80286c;
        Object obj5 = this.d;
        switch (i2) {
            case 1:
                PerfectEffect perfectEffect = (PerfectEffect) obj5;
                AtomicReference atomicReference = (AtomicReference) obj4;
                ShadeFinderData shadeFinderData = (ShadeFinderData) obj3;
                ShadeFinderDeltaE shadeFinderDeltaE = (ShadeFinderDeltaE) obj2;
                ImmutableSet immutableSetT = ImmutableSet.t(((a) obj).a().a());
                Log.g(3, "ShadeFinderRecommendationHandler", "[getRecommendedResult] enabled SKU items = " + immutableSetT);
                if (immutableSetT.isEmpty()) {
                    return Single.g(new NoShadeFinderProductException("V4ItemGuids is empty."));
                }
                u uVarI = new p(new a8(13)).j(Schedulers.f43170c).i(Schedulers.f43169b);
                SkuHandler.getInstance().getClass();
                return new t(new t(new t(new t(uVarI, new u1(z, perfectEffect, atomicReference, immutableSetT)), new y(25)), new z0(shadeFinderData, 5)), new k1(z, shadeFinderDeltaE));
            default:
                DownloadTaskCancelable downloadTaskCancelable = (DownloadTaskCancelable) obj5;
                Multimap multimap = (Multimap) obj4;
                RecommendationHandler.SyncServerCallback syncServerCallback = (RecommendationHandler.SyncServerCallback) obj2;
                Map map = (Map) obj;
                HashMap map2 = new HashMap();
                Iterator it = ((ConcurrentHashMap) obj3).entrySet().iterator();
                while (true) {
                    int i3 = 2;
                    if (!it.hasNext()) {
                        Pair pairCreate = Pair.create(Integer.valueOf(map2.size()), Observable.fromIterable(map2.entrySet()).flatMapSingle(new vw0(multimap, 0)));
                        return ((Observable) pairCreate.second).doOnNext(new hy0(new AtomicInteger(), ((Integer) pairCreate.first).intValue(), syncServerCallback, i3)).ignoreElements().j(map);
                    }
                    Map.Entry entry = (Map.Entry) it.next();
                    String str = (String) entry.getKey();
                    String strA = ((e.a) entry.getValue()).a();
                    if (!TextUtils.isEmpty(strA)) {
                        DownloadImageInfo.Builder builder = new DownloadImageInfo.Builder();
                        builder.f40310a = strA;
                        builder.f40312c = str;
                        builder.d = DownloadImageDao.Type.SKIN_CARE_3;
                        multimap.put(strA, builder);
                        if (z && !map2.containsKey(strA)) {
                            map2.put(strA, new p(new sw0(strA, downloadTaskCancelable, i3)).j(FileDownloader.d));
                        }
                    }
                }
                break;
        }
    }

    public /* synthetic */ uc0(int i2, Object obj, Object obj2, Object obj3, Object obj4, boolean z) {
        this.f80285b = i2;
        this.d = obj;
        this.f80286c = z;
        this.f80287e = obj2;
        this.f80288f = obj3;
        this.g = obj4;
    }
}
