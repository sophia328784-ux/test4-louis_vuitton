package defpackage;

import com.perfectcorp.common.network.ProgressCallback;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.ApplyEffectUtility;
import com.perfectcorp.perfectlib.Configuration;
import com.perfectcorp.perfectlib.DownloadCacheStrategy;
import com.perfectcorp.perfectlib.LookHandler;
import com.perfectcorp.perfectlib.hc.database.DBUtility;
import com.perfectcorp.perfectlib.internal.DownloadTaskCancelable;
import com.perfectcorp.perfectlib.makeupcam.camera.YMKPrimitiveData;
import com.perfectcorp.perfectlib.ph.database.ymk.cachestrategy.a;
import com.perfectcorp.perfectlib.ph.utility.networkcache.c$g;
import com.perfectcorp.thirdparty.com.google.common.base.Optional;
import com.perfectcorp.thirdparty.com.google.common.collect.ImmutableSet;
import com.perfectcorp.thirdparty.io.reactivex.Single;
import com.perfectcorp.thirdparty.io.reactivex.functions.Function;
import com.perfectcorp.thirdparty.io.reactivex.internal.observers.ConsumerSingleObserver;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.m;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.t;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.v;
import java.util.Collections;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class l7 implements Callable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f75959b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f75960c;
    public final /* synthetic */ ProgressCallback d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Configuration.ImageSource f75961e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ DownloadTaskCancelable f75962f;

    public /* synthetic */ l7(String str, Configuration.ImageSource imageSource, DownloadTaskCancelable downloadTaskCancelable, ProgressCallback progressCallback) {
        this.f75959b = 2;
        this.f75960c = str;
        this.f75961e = imageSource;
        this.f75962f = downloadTaskCancelable;
        this.d = progressCallback;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        int i2 = this.f75959b;
        ProgressCallback progressCallback = this.d;
        DownloadTaskCancelable downloadTaskCancelable = this.f75962f;
        Configuration.ImageSource imageSource = this.f75961e;
        String str = this.f75960c;
        switch (i2) {
            case 0:
                final String str2 = this.f75960c;
                final Optional optionalF = ApplyEffectUtility.F(str2);
                boolean zD = optionalF.d();
                final ProgressCallback progressCallback2 = this.d;
                final Configuration.ImageSource imageSource2 = this.f75961e;
                final DownloadTaskCancelable downloadTaskCancelable2 = this.f75962f;
                if (!zD) {
                    a.v(3, "[newLookUpdateFirstStrategySingle] Start downloading. lookGuid=", str2, "ApplyEffectUtility");
                    return ApplyEffectUtility.A(progressCallback2, imageSource2, DownloadCacheStrategy.UPDATE_FIRST, downloadTaskCancelable2, str2);
                }
                Log.g(3, "ApplyEffectUtility", "[newLookUpdateFirstStrategySingle] Look status checking. lookGuid=" + str2);
                Single singleA = LookHandler.a(Collections.singletonList(str2));
                x1 x1Var = new x1(29);
                singleA.getClass();
                return new m(new v(new t(singleA, x1Var), new t7(str2, 0), null), new Function() { // from class: com.perfectcorp.perfectlib.o
                    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Function
                    public final Object apply(Object obj) {
                        Optional optional = (Optional) obj;
                        ImmutableSet immutableSet = ApplyEffectUtility.f39471a;
                        if (optional.d()) {
                            com.perfectcorp.perfectlib.ph.database.ymk.makeup.b bVar = (com.perfectcorp.perfectlib.ph.database.ymk.makeup.b) optional.c();
                            if (bVar.m > LookHandler.e(bVar)) {
                                defpackage.a.v(3, "[newLookUpdateFirstStrategySingle] Updating outdated look. lookGuid=", str2, "ApplyEffectUtility");
                                CacheCleaner.d(bVar.d, true);
                                return ApplyEffectUtility.m(bVar, progressCallback2, DownloadCacheStrategy.UPDATE_FIRST, imageSource2, downloadTaskCancelable2);
                            }
                        }
                        return Single.h((YMKPrimitiveData.Look) optionalF.c());
                    }
                });
            case 1:
                Optional optionalF2 = ApplyEffectUtility.F(str);
                if (!optionalF2.d()) {
                    a.v(3, "[newLookCacheFirstStrategySingle] Start downloading. lookGuid=", str, "ApplyEffectUtility");
                    return ApplyEffectUtility.A(progressCallback, imageSource, DownloadCacheStrategy.CACHE_FIRST, downloadTaskCancelable, str);
                }
                Log.g(3, "ApplyEffectUtility", "[newLookCacheFirstStrategySingle] Look downloaded. lookGuid=" + str);
                return Single.h((YMKPrimitiveData.Look) optionalF2.c());
            default:
                Optional optionalF3 = ApplyEffectUtility.F(str);
                if (!optionalF3.d()) {
                    a.v(3, "[newSingle] Start downloading. lookGuid=", str, "LookCacheFirstThenUpdateStrategy");
                    return ApplyEffectUtility.A(progressCallback, imageSource, DownloadCacheStrategy.CACHE_FIRST_THEN_UPDATE, downloadTaskCancelable, str);
                }
                Log.g(3, "LookCacheFirstThenUpdateStrategy", "[newSingle] Look status checking. lookGuid=" + str);
                if (!((Boolean) DBUtility.h(a.a(), new g8(str, 0))).booleanValue()) {
                    LookHandler lookHandler = LookHandler.getInstance();
                    if (lookHandler == null) {
                        md.k("LookHandler is null. SDK might be released.");
                        return null;
                    }
                    m mVar = new m(new t(new c$g(Collections.singletonList(str), true).c(), new v7(15)), new y81(str, imageSource, downloadTaskCancelable, 3));
                    ConsumerSingleObserver consumerSingleObserver = new ConsumerSingleObserver(new h8(str, 0), new h8(str, 1));
                    mVar.a(consumerSingleObserver);
                    lookHandler.f39664a.b(consumerSingleObserver);
                }
                return Single.h((YMKPrimitiveData.Look) optionalF3.c());
        }
    }

    public /* synthetic */ l7(String str, ProgressCallback progressCallback, Configuration.ImageSource imageSource, DownloadTaskCancelable downloadTaskCancelable, int i2) {
        this.f75959b = i2;
        this.f75960c = str;
        this.d = progressCallback;
        this.f75961e = imageSource;
        this.f75962f = downloadTaskCancelable;
    }
}
