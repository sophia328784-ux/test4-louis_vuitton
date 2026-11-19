package defpackage;

import com.perfectcorp.common.PfCommons;
import com.perfectcorp.common.network.ProgressCallback;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.SkuDataForProtocol;
import com.perfectcorp.perfectlib.internal.DownloadTaskCancelable;
import com.perfectcorp.thirdparty.io.reactivex.Observable;
import com.perfectcorp.thirdparty.io.reactivex.functions.Consumer;
import com.perfectcorp.thirdparty.io.reactivex.functions.Function;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class yx0 implements Function {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f81459b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ DownloadTaskCancelable f81460c;
    public final /* synthetic */ AtomicInteger d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f81461e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ ProgressCallback f81462f;
    public final /* synthetic */ AtomicInteger g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ double f81463h;

    public /* synthetic */ yx0(DownloadTaskCancelable downloadTaskCancelable, int i2, AtomicInteger atomicInteger, ProgressCallback progressCallback, double d, AtomicInteger atomicInteger2) {
        this.f81460c = downloadTaskCancelable;
        this.f81461e = i2;
        this.d = atomicInteger;
        this.f81462f = progressCallback;
        this.f81463h = d;
        this.g = atomicInteger2;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Function
    public final Object apply(Object obj) {
        int i2 = this.f81459b;
        DownloadTaskCancelable downloadTaskCancelable = this.f81460c;
        switch (i2) {
            case 0:
                SkuDataForProtocol skuDataForProtocol = (SkuDataForProtocol) obj;
                downloadTaskCancelable.c();
                ArrayList arrayList = new ArrayList();
                HashSet hashSet = new HashSet();
                for (SkuDataForProtocol.DownloadComponent downloadComponent : skuDataForProtocol.f39919j) {
                    if (hashSet.add(downloadComponent.a())) {
                        arrayList.add(downloadComponent);
                    }
                }
                final int size = arrayList.size();
                final AtomicInteger atomicInteger = new AtomicInteger();
                Observable observableFlatMapSingle = Observable.fromIterable(arrayList).flatMapSingle(new ua0(downloadTaskCancelable, 2));
                final int i3 = this.f81461e;
                final AtomicInteger atomicInteger2 = this.d;
                final ProgressCallback progressCallback = this.f81462f;
                final double d = this.f81463h;
                final AtomicInteger atomicInteger3 = this.g;
                return observableFlatMapSingle.doOnNext(new Consumer() { // from class: jy0
                    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Consumer
                    public final void accept(Object obj2) {
                        final double dIncrementAndGet = ((((double) atomicInteger.incrementAndGet()) * ((double) i3)) / ((double) size)) + ((double) atomicInteger2.get());
                        final ProgressCallback progressCallback2 = progressCallback;
                        final double d2 = d;
                        final AtomicInteger atomicInteger4 = atomicInteger3;
                        PfCommons.c(new Runnable() { // from class: qy0
                            @Override // java.lang.Runnable
                            public final void run() {
                                progressCallback2.a((dIncrementAndGet * d2) / ((double) atomicInteger4.get()));
                            }
                        });
                    }
                }).toList().f(new na0(downloadTaskCancelable, skuDataForProtocol, 7));
            default:
                List list = (List) obj;
                downloadTaskCancelable.c();
                Log.g(3, "SkuHandler", "[syncServerByProtocol] Download success");
                final AtomicInteger atomicInteger4 = this.d;
                atomicInteger4.addAndGet(this.f81461e);
                final ProgressCallback progressCallback2 = this.f81462f;
                final AtomicInteger atomicInteger5 = this.g;
                final double d2 = this.f81463h;
                PfCommons.c(new Runnable() { // from class: my0
                    @Override // java.lang.Runnable
                    public final void run() {
                        progressCallback2.a((((double) atomicInteger4.get()) / ((double) atomicInteger5.get())) * d2);
                    }
                });
                return list;
        }
    }

    public /* synthetic */ yx0(DownloadTaskCancelable downloadTaskCancelable, AtomicInteger atomicInteger, int i2, ProgressCallback progressCallback, AtomicInteger atomicInteger2, double d) {
        this.f81460c = downloadTaskCancelable;
        this.d = atomicInteger;
        this.f81461e = i2;
        this.f81462f = progressCallback;
        this.g = atomicInteger2;
        this.f81463h = d;
    }
}
