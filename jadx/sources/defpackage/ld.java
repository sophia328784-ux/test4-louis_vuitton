package defpackage;

import com.batch.android.Batch;
import com.batch.android.j1.e;
import com.batch.android.j1.g;
import com.batch.android.j1.h;
import com.perfectcorp.perfectlib.RecommendationHandler;
import com.perfectcorp.perfectlib.SkuHandler;
import com.perfectcorp.perfectlib.hc.YMKDatabase;
import com.perfectcorp.perfectlib.internal.DownloadTaskCancelable;
import com.perfectcorp.perfectlib.ph.database.ymk.sku.Sku;
import com.perfectcorp.perfectlib.ph.database.ymk.sku.SkuDao;
import com.perfectcorp.perfectlib.ph.template.SkuTemplateUtils;
import com.perfectcorp.perfectlib.ymk.model.BeautyMode;
import com.perfectcorp.perfectlib.z;
import com.perfectcorp.thirdparty.com.google.common.collect.ArrayListMultimap;
import com.perfectcorp.thirdparty.com.google.common.collect.ImmutableSet;
import com.perfectcorp.thirdparty.com.google.common.collect.Multimap;
import com.perfectcorp.thirdparty.com.google.common.collect.Multimaps;
import com.perfectcorp.thirdparty.io.reactivex.functions.Function;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.c;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.m;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.n;
import java.io.Serializable;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class ld implements h, Function {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f75994b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ boolean f75995c;
    public final /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f75996e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Serializable f75997f;

    public /* synthetic */ ld(DownloadTaskCancelable downloadTaskCancelable, RecommendationHandler.SyncServerCallback syncServerCallback, boolean z, AtomicReference atomicReference) {
        this.f75994b = 1;
        this.d = downloadTaskCancelable;
        this.f75996e = syncServerCallback;
        this.f75995c = z;
        this.f75997f = atomicReference;
    }

    @Override // com.batch.android.j1.h
    public void a(g gVar) {
        Batch.a((e) this.d, (AtomicBoolean) this.f75996e, (StringBuilder) this.f75997f, this.f75995c, gVar);
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Function
    public Object apply(Object obj) {
        int i2 = this.f75994b;
        Serializable serializable = this.f75997f;
        Object obj2 = this.f75996e;
        Object obj3 = this.d;
        switch (i2) {
            case 1:
                DownloadTaskCancelable downloadTaskCancelable = (DownloadTaskCancelable) obj3;
                RecommendationHandler.SyncServerCallback syncServerCallback = (RecommendationHandler.SyncServerCallback) obj2;
                AtomicReference atomicReference = (AtomicReference) serializable;
                ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
                List listV = pq0.v();
                Multimap multimapB = Multimaps.b(new ArrayListMultimap());
                return new n(new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.h(new m(new c(new z(downloadTaskCancelable, (List) obj, 12)).f(new tw0(listV, concurrentHashMap, syncServerCallback, 0)), new uc0(2, downloadTaskCancelable, multimapB, concurrentHashMap, syncServerCallback, this.f75995c)).f(new dq0(atomicReference, concurrentHashMap, listV, multimapB)), new pv0(8)), new rh(atomicReference, 6));
            default:
                SkuHandler skuHandler = (SkuHandler) obj3;
                ConcurrentHashMap concurrentHashMap2 = (ConcurrentHashMap) obj2;
                ConcurrentHashMap concurrentHashMap3 = (ConcurrentHashMap) serializable;
                List<Sku> listD = SkuDao.d(YMKDatabase.b(), (List) obj);
                int i3 = ImmutableSet.d;
                ImmutableSet.Builder builder = new ImmutableSet.Builder();
                for (Sku sku : listD) {
                    String str = sku.f41263b;
                    String str2 = sku.f41266f;
                    BeautyMode beautyModeC = SkuTemplateUtils.c(str);
                    String str3 = (String) concurrentHashMap2.get(str2);
                    Objects.requireNonNull(str3);
                    concurrentHashMap3.put(str3, skuHandler.l(beautyModeC, str3, sku, this.f75995c));
                    builder.h(str2);
                }
                return builder.j();
        }
    }

    public /* synthetic */ ld(Object obj, Serializable serializable, Serializable serializable2, boolean z, int i2) {
        this.f75994b = i2;
        this.d = obj;
        this.f75996e = serializable;
        this.f75997f = serializable2;
        this.f75995c = z;
    }
}
