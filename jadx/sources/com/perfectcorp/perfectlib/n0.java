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
public final /* synthetic */ class n0 implements Consumer {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f41062a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f41063b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f41064c;
    public final /* synthetic */ int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ DownloadCacheStrategy f41065e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f41066f;
    public final /* synthetic */ DownloadTaskCancelable g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ Object f41067h;

    public /* synthetic */ n0(HandVtoApplierImpl handVtoApplierImpl, int i2, int i3, DownloadCacheStrategy downloadCacheStrategy, HandVtoApplierImpl.ApplyCallback applyCallback, DownloadTaskCancelable downloadTaskCancelable, List list) {
        this.f41062a = 0;
        this.f41063b = handVtoApplierImpl;
        this.f41064c = i2;
        this.d = i3;
        this.f41065e = downloadCacheStrategy;
        this.f41066f = applyCallback;
        this.g = downloadTaskCancelable;
        this.f41067h = list;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Consumer
    public final void accept(Object obj) {
        int i2 = this.f41062a;
        Object obj2 = this.f41067h;
        Object obj3 = this.f41066f;
        Object obj4 = this.f41063b;
        switch (i2) {
            case 0:
                HandVtoApplierImpl handVtoApplierImpl = (HandVtoApplierImpl) obj4;
                List list = (List) obj;
                Log.g(3, handVtoApplierImpl.f39633a, "[downloadAndApplySkus] product GUIDs are found. mappedVtoSettings=".concat(Iterables.c(list)));
                int i3 = this.f41064c;
                int i4 = this.d;
                DownloadCacheStrategy downloadCacheStrategy = this.f41065e;
                handVtoApplierImpl.l(i3, i4, list, downloadCacheStrategy, (HandVtoApplierImpl.ApplyCallback) obj3, this.g, false, (List) obj2);
                break;
            case 1:
                HandVtoApplierImpl handVtoApplierImpl2 = (HandVtoApplierImpl) obj4;
                ArrayList arrayList = (ArrayList) obj2;
                HandVtoApplierImpl.ApplyCallback applyCallback = (HandVtoApplierImpl.ApplyCallback) obj3;
                List list2 = (List) obj;
                String str = handVtoApplierImpl2.f39633a;
                Log.g(3, str, "[downloadAndApplySkus] vtoSettings are mapped. mappedVtoSettings=".concat(Iterables.c(list2)));
                ArrayList arrayList2 = new ArrayList(list2);
                arrayList2.removeAll(arrayList);
                boolean zA = MoreCollections.a(arrayList2);
                int i5 = this.f41064c;
                int i6 = this.d;
                DownloadCacheStrategy downloadCacheStrategy2 = this.f41065e;
                DownloadTaskCancelable downloadTaskCancelable = this.g;
                if (!zA) {
                    Log.g(3, str, "[downloadAndApplySkus] existingMapping = ".concat(Iterables.c(arrayList2)));
                    handVtoApplierImpl2.k(i5, i6, arrayList2, downloadCacheStrategy2, applyCallback, downloadTaskCancelable, false);
                }
                if (!MoreCollections.a(arrayList)) {
                    Log.g(3, str, "[downloadAndApplySkus] shadeIdVtoSettings = ".concat(Iterables.c(arrayList)));
                    handVtoApplierImpl2.k(i5, i6, arrayList, downloadCacheStrategy2, applyCallback, downloadTaskCancelable, true);
                }
                break;
            case 2:
                MakeupCamInternal makeupCamInternal = (MakeupCamInternal) obj4;
                List list3 = (List) obj;
                ThreadPoolExecutor threadPoolExecutor = MakeupCamInternal.n;
                makeupCamInternal.getClass();
                Log.g(3, "MakeupCamInternal", "[downloadAndApplySkus] product GUIDs are found. mappedVtoSettings=".concat(Iterables.c(list3)));
                makeupCamInternal.x(this.f41064c, this.d, list3, (EffectConfig) obj3, this.f41065e, (VtoApplier.ApplyCallback) obj2, this.g, false);
                break;
            default:
                PhotoMakeupInternal photoMakeupInternal = (PhotoMakeupInternal) obj4;
                List list4 = (List) obj;
                int i7 = PhotoMakeupInternal.n;
                photoMakeupInternal.getClass();
                Log.g(3, "PhotoMakeupInternal", "[downloadAndApplySkus] product GUIDs are found. mappedVtoSettings=".concat(Iterables.c(list4)));
                photoMakeupInternal.f(this.f41064c, this.d, list4, (EffectConfig) obj3, this.f41065e, (VtoApplier.ApplyCallback) obj2, this.g, false);
                break;
        }
    }

    public /* synthetic */ n0(HandVtoApplierImpl handVtoApplierImpl, ArrayList arrayList, int i2, int i3, DownloadCacheStrategy downloadCacheStrategy, HandVtoApplierImpl.ApplyCallback applyCallback, DownloadTaskCancelable downloadTaskCancelable) {
        this.f41062a = 1;
        this.f41063b = handVtoApplierImpl;
        this.f41067h = arrayList;
        this.f41064c = i2;
        this.d = i3;
        this.f41065e = downloadCacheStrategy;
        this.f41066f = applyCallback;
        this.g = downloadTaskCancelable;
    }

    public /* synthetic */ n0(Object obj, int i2, int i3, EffectConfig effectConfig, DownloadCacheStrategy downloadCacheStrategy, VtoApplier.ApplyCallback applyCallback, DownloadTaskCancelable downloadTaskCancelable, int i4) {
        this.f41062a = i4;
        this.f41063b = obj;
        this.f41064c = i2;
        this.d = i3;
        this.f41066f = effectConfig;
        this.f41065e = downloadCacheStrategy;
        this.f41067h = applyCallback;
        this.g = downloadTaskCancelable;
    }
}
