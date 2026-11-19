package defpackage;

import android.content.Context;
import androidx.work.impl.Processor;
import androidx.work.impl.WorkDatabase;
import com.airbnb.lottie.LottieCompositionFactory;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.ApplyEffectUtility;
import com.perfectcorp.perfectlib.Configuration;
import com.perfectcorp.perfectlib.c;
import com.perfectcorp.perfectlib.c0;
import com.perfectcorp.perfectlib.hc.YMKDatabase;
import com.perfectcorp.perfectlib.hc.database.DBUtility;
import com.perfectcorp.perfectlib.internal.DownloadTaskCancelable;
import com.perfectcorp.perfectlib.makeupcam.camera.ApplyEffectCtrl;
import com.perfectcorp.perfectlib.ph.database.ymk.cachestrategy.a;
import com.perfectcorp.perfectlib.ph.database.ymk.sku.Sku;
import com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.j;
import com.perfectcorp.thirdparty.com.google.common.collect.ImmutableSet;
import com.perfectcorp.thirdparty.io.reactivex.Single;
import com.perfectcorp.thirdparty.io.reactivex.SingleSource;
import com.perfectcorp.thirdparty.io.reactivex.functions.Consumer;
import com.perfectcorp.thirdparty.io.reactivex.internal.observers.ConsumerSingleObserver;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.f;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.h;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.m;
import com.perfectcorp.thirdparty.io.reactivex.schedulers.Schedulers;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.LinkedBlockingDeque;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class h7 implements Callable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f69626b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f69627c;
    public final /* synthetic */ Serializable d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f69628e;

    public /* synthetic */ h7(LinkedBlockingDeque linkedBlockingDeque, Map.Entry entry, LinkedBlockingDeque linkedBlockingDeque2) {
        this.f69626b = 0;
        this.f69627c = linkedBlockingDeque;
        this.f69628e = entry;
        this.d = linkedBlockingDeque2;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        SingleSource fVar;
        int i2 = this.f69626b;
        Object obj = this.f69628e;
        Serializable serializable = this.d;
        Object obj2 = this.f69627c;
        switch (i2) {
            case 0:
                LinkedBlockingDeque linkedBlockingDeque = (LinkedBlockingDeque) obj2;
                Map.Entry entry = (Map.Entry) obj;
                LinkedBlockingDeque linkedBlockingDeque2 = (LinkedBlockingDeque) serializable;
                List list = ApplyEffectCtrl.G;
                try {
                    linkedBlockingDeque.add(((ApplyEffectCtrl.ConfigurationBuilder) entry.getValue()).c());
                    linkedBlockingDeque2.remove(entry.getKey());
                    break;
                } catch (Throwable th) {
                    Log.i("ApplyEffectCtrl", "generateConfigurations", th);
                }
                return entry;
            case 1:
                final Sku sku = (Sku) obj2;
                Configuration.ImageSource imageSource = (Configuration.ImageSource) serializable;
                DownloadTaskCancelable downloadTaskCancelable = (DownloadTaskCancelable) obj;
                ImmutableSet immutableSet = ApplyEffectUtility.f39471a;
                StringBuilder sb = new StringBuilder("[downloadThenUpdateOnNextSdkInit] start id=");
                String str = sku.f41266f;
                sb.append(str);
                Log.g(3, "SkuCacheStrategyHelper", sb.toString());
                if (((Boolean) DBUtility.h(a.a(), new n2(sku, 12))).booleanValue()) {
                    Log.g(3, "SkuCacheStrategyHelper", "download then update already in progress, doesn't need send task again, guid=" + str);
                    fVar = Single.h(sku);
                } else {
                    fVar = new f(new h(new m(new m(j.d(downloadTaskCancelable, sku.f41263b, new ArrayList(com.perfectcorp.perfectlib.ph.database.ymk.idsystem.a.e(YMKDatabase.b(), str))), new ln0(sku, 13)).i(Schedulers.f43170c), new c0(sku, imageSource, downloadTaskCancelable, 5)), new c(sku, 8)), new xw(sku, 7));
                }
                final int i3 = 0;
                final int i4 = 1;
                ConsumerSingleObserver consumerSingleObserver = new ConsumerSingleObserver(new Consumer() { // from class: r7
                    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Consumer
                    public final void accept(Object obj3) {
                        int i5 = i3;
                        Sku sku2 = sku;
                        switch (i5) {
                            case 0:
                                ImmutableSet immutableSet2 = ApplyEffectUtility.f39471a;
                                a.A(new StringBuilder("downloadThenUpdateOnNextSdkInit task done, guid="), sku2.f41266f, 3, "ApplyEffectUtility");
                                break;
                            default:
                                ImmutableSet immutableSet3 = ApplyEffectUtility.f39471a;
                                Log.d("ApplyEffectUtility", "downloadThenUpdateOnNextSdkInit failed, guid=" + sku2.f41266f);
                                break;
                        }
                    }
                }, new Consumer() { // from class: r7
                    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Consumer
                    public final void accept(Object obj3) {
                        int i5 = i4;
                        Sku sku2 = sku;
                        switch (i5) {
                            case 0:
                                ImmutableSet immutableSet2 = ApplyEffectUtility.f39471a;
                                a.A(new StringBuilder("downloadThenUpdateOnNextSdkInit task done, guid="), sku2.f41266f, 3, "ApplyEffectUtility");
                                break;
                            default:
                                ImmutableSet immutableSet3 = ApplyEffectUtility.f39471a;
                                Log.d("ApplyEffectUtility", "downloadThenUpdateOnNextSdkInit failed, guid=" + sku2.f41266f);
                                break;
                        }
                    }
                });
                fVar.a(consumerSingleObserver);
                return consumerSingleObserver;
            case 2:
                return LottieCompositionFactory.b((Context) obj2, (String) serializable, (String) obj);
            default:
                String str2 = (String) obj;
                WorkDatabase workDatabase = ((Processor) obj2).f20312e;
                ((ArrayList) serializable).addAll(workDatabase.E().a(str2));
                return workDatabase.D().k(str2);
        }
    }

    public /* synthetic */ h7(Object obj, Serializable serializable, Object obj2, int i2) {
        this.f69626b = i2;
        this.f69627c = obj;
        this.d = serializable;
        this.f69628e = obj2;
    }
}
