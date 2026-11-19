package com.perfectcorp.perfectlib;

import com.perfectcorp.common.utility.Log;
import com.perfectcorp.common.utility.MoreCollections;
import com.perfectcorp.perfectlib.internal.DownloadTaskCancelable;
import com.perfectcorp.thirdparty.com.google.common.collect.Iterables;
import com.perfectcorp.thirdparty.io.reactivex.functions.Consumer;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ThreadPoolExecutor;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class l0 implements Consumer {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f40448a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ArrayList f40449b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f40450c;
    public final /* synthetic */ int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ DownloadCacheStrategy f40451e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ DownloadTaskCancelable f40452f;
    public final /* synthetic */ Object g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ Object f40453h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ Object f40454i;

    public /* synthetic */ l0(HandVtoApplierImpl handVtoApplierImpl, ArrayList arrayList, int i2, int i3, DownloadCacheStrategy downloadCacheStrategy, HandVtoApplierImpl.ApplyCallback applyCallback, DownloadTaskCancelable downloadTaskCancelable, List list) {
        this.f40448a = 0;
        this.g = handVtoApplierImpl;
        this.f40449b = arrayList;
        this.f40450c = i2;
        this.d = i3;
        this.f40451e = downloadCacheStrategy;
        this.f40453h = applyCallback;
        this.f40452f = downloadTaskCancelable;
        this.f40454i = list;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Consumer
    public final void accept(Object obj) {
        DownloadTaskCancelable downloadTaskCancelable;
        DownloadTaskCancelable downloadTaskCancelable2;
        int i2;
        int i3;
        DownloadCacheStrategy downloadCacheStrategy;
        DownloadTaskCancelable downloadTaskCancelable3;
        int i4 = this.f40448a;
        Object obj2 = this.f40454i;
        Object obj3 = this.f40453h;
        Object obj4 = this.g;
        switch (i4) {
            case 0:
                HandVtoApplierImpl handVtoApplierImpl = (HandVtoApplierImpl) obj4;
                HandVtoApplierImpl.ApplyCallback applyCallback = (HandVtoApplierImpl.ApplyCallback) obj3;
                List list = (List) obj2;
                List list2 = (List) obj;
                String str = handVtoApplierImpl.f39633a;
                Log.g(3, str, "[downloadAndApplySkus] vtoSettings are mapped. mappedVtoSettings=".concat(Iterables.c(list2)));
                ArrayList arrayList = new ArrayList(list2);
                List list3 = this.f40449b;
                arrayList.removeAll(list3);
                boolean zA = MoreCollections.a(arrayList);
                int i5 = this.f40450c;
                int i6 = this.d;
                DownloadCacheStrategy downloadCacheStrategy2 = this.f40451e;
                DownloadTaskCancelable downloadTaskCancelable4 = this.f40452f;
                if (zA) {
                    downloadTaskCancelable = downloadTaskCancelable4;
                } else {
                    Log.g(3, str, "[downloadAndApplySkus] existingMapping = ".concat(Iterables.c(arrayList)));
                    handVtoApplierImpl.l(i5, i6, arrayList, downloadCacheStrategy2, applyCallback, downloadTaskCancelable4, false, list);
                    downloadTaskCancelable = downloadTaskCancelable4;
                }
                if (!MoreCollections.a(list3)) {
                    Log.g(3, str, "[downloadAndApplySkus] shadeIdVtoSettings = ".concat(Iterables.c(list3)));
                    handVtoApplierImpl.l(i5, i6, list3, downloadCacheStrategy2, applyCallback, downloadTaskCancelable, true, list);
                }
                break;
            case 1:
                MakeupCamInternal makeupCamInternal = (MakeupCamInternal) obj4;
                EffectConfig effectConfig = (EffectConfig) obj3;
                VtoApplier.ApplyCallback applyCallback2 = (VtoApplier.ApplyCallback) obj2;
                List list4 = (List) obj;
                ThreadPoolExecutor threadPoolExecutor = MakeupCamInternal.n;
                makeupCamInternal.getClass();
                Log.g(3, "MakeupCamInternal", "[downloadAndApplySkus] vtoSettings are mapped. mappedVtoSettings=".concat(Iterables.c(list4)));
                ArrayList arrayList2 = new ArrayList(list4);
                List list5 = this.f40449b;
                arrayList2.removeAll(list5);
                boolean zA2 = MoreCollections.a(arrayList2);
                int i7 = this.f40450c;
                int i8 = this.d;
                DownloadCacheStrategy downloadCacheStrategy3 = this.f40451e;
                DownloadTaskCancelable downloadTaskCancelable5 = this.f40452f;
                if (zA2) {
                    downloadTaskCancelable2 = downloadTaskCancelable5;
                    i2 = i7;
                    i3 = i8;
                    downloadCacheStrategy = downloadCacheStrategy3;
                } else {
                    Log.g(3, "MakeupCamInternal", "[downloadAndApplySkus] existingMapping = ".concat(Iterables.c(arrayList2)));
                    downloadTaskCancelable2 = downloadTaskCancelable5;
                    i2 = i7;
                    i3 = i8;
                    downloadCacheStrategy = downloadCacheStrategy3;
                    makeupCamInternal.x(i2, i3, arrayList2, effectConfig, downloadCacheStrategy, applyCallback2, downloadTaskCancelable2, false);
                }
                if (!MoreCollections.a(list5)) {
                    Log.g(3, "MakeupCamInternal", "[downloadAndApplySkus] shadeIdVtoSettings = ".concat(Iterables.c(list5)));
                    makeupCamInternal.x(i2, i3, list5, effectConfig, downloadCacheStrategy, applyCallback2, downloadTaskCancelable2, true);
                }
                break;
            default:
                PhotoMakeupInternal photoMakeupInternal = (PhotoMakeupInternal) obj4;
                EffectConfig effectConfig2 = (EffectConfig) obj3;
                VtoApplier.ApplyCallback applyCallback3 = (VtoApplier.ApplyCallback) obj2;
                List list6 = (List) obj;
                int i9 = PhotoMakeupInternal.n;
                photoMakeupInternal.getClass();
                Log.g(3, "PhotoMakeupInternal", "[downloadAndApplySkus] vtoSettings are mapped. mappedVtoSettings=".concat(Iterables.c(list6)));
                ArrayList arrayList3 = new ArrayList(list6);
                List list7 = this.f40449b;
                arrayList3.removeAll(list7);
                boolean zA3 = MoreCollections.a(arrayList3);
                int i10 = this.f40450c;
                int i11 = this.d;
                DownloadCacheStrategy downloadCacheStrategy4 = this.f40451e;
                DownloadTaskCancelable downloadTaskCancelable6 = this.f40452f;
                if (zA3) {
                    downloadTaskCancelable3 = downloadTaskCancelable6;
                } else {
                    Log.g(3, "PhotoMakeupInternal", "[downloadAndApplySkus] existingMapping = ".concat(Iterables.c(arrayList3)));
                    downloadTaskCancelable3 = downloadTaskCancelable6;
                    photoMakeupInternal.f(i10, i11, arrayList3, effectConfig2, downloadCacheStrategy4, applyCallback3, downloadTaskCancelable3, false);
                }
                if (!MoreCollections.a(list7)) {
                    Log.g(3, "PhotoMakeupInternal", "[downloadAndApplySkus] shadeIdVtoSettings = ".concat(Iterables.c(list7)));
                    photoMakeupInternal.f(i10, i11, list7, effectConfig2, downloadCacheStrategy4, applyCallback3, downloadTaskCancelable3, true);
                }
                break;
        }
    }

    public /* synthetic */ l0(Object obj, ArrayList arrayList, int i2, int i3, EffectConfig effectConfig, DownloadCacheStrategy downloadCacheStrategy, VtoApplier.ApplyCallback applyCallback, DownloadTaskCancelable downloadTaskCancelable, int i4) {
        this.f40448a = i4;
        this.g = obj;
        this.f40449b = arrayList;
        this.f40450c = i2;
        this.d = i3;
        this.f40453h = effectConfig;
        this.f40451e = downloadCacheStrategy;
        this.f40454i = applyCallback;
        this.f40452f = downloadTaskCancelable;
    }
}
