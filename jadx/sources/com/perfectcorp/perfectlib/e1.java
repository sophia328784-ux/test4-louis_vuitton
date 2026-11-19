package com.perfectcorp.perfectlib;

import com.perfectcorp.common.guava.MoreFutures;
import com.perfectcorp.perfectlib.internal.DownloadTaskCancelable;
import com.perfectcorp.perfectlib.internal.SkipCallbackException;
import com.perfectcorp.perfectlib.makeupcam.camera.YMKPrimitiveData;
import com.perfectcorp.thirdparty.com.google.common.base.Preconditions;
import defpackage.fc;
import defpackage.s40;
import java.util.Objects;
import java.util.concurrent.Callable;
import java.util.concurrent.ThreadPoolExecutor;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class e1 implements Callable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f40123b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f40124c;
    public final /* synthetic */ DownloadCacheStrategy d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ DownloadTaskCancelable f40125e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f40126f;
    public final /* synthetic */ Object g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ Object f40127h;

    public /* synthetic */ e1(Object obj, int i2, Object obj2, DownloadCacheStrategy downloadCacheStrategy, Object obj3, DownloadTaskCancelable downloadTaskCancelable, int i3) {
        this.f40123b = i3;
        this.f40126f = obj;
        this.f40124c = i2;
        this.g = obj2;
        this.d = downloadCacheStrategy;
        this.f40127h = obj3;
        this.f40125e = downloadTaskCancelable;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        int i2 = this.f40123b;
        boolean z = false;
        int i3 = 1;
        DownloadTaskCancelable downloadTaskCancelable = this.f40125e;
        Object obj = this.f40127h;
        DownloadCacheStrategy downloadCacheStrategy = this.d;
        Object obj2 = this.g;
        int i4 = this.f40124c;
        Object obj3 = this.f40126f;
        switch (i2) {
            case 0:
                JewelryVtoApplierImpl jewelryVtoApplierImpl = (JewelryVtoApplierImpl) obj3;
                String str = (String) obj2;
                JewelryVtoApplier.DownloadAndApplyCallback downloadAndApplyCallback = (JewelryVtoApplier.DownloadAndApplyCallback) obj;
                int i5 = jewelryVtoApplierImpl.f39651f.get();
                if (i5 != i4) {
                    throw new SkipCallbackException(fc.f(i5, i4, "currentDownloadTaskSN(", ") != expectedDownloadTaskSN(", ")"));
                }
                Configuration.ImageSource imageSource = jewelryVtoApplierImpl.f39654j;
                Objects.requireNonNull(downloadAndApplyCallback);
                YMKPrimitiveData.Look look = (YMKPrimitiveData.Look) MoreFutures.b(ApplyEffectUtility.l(new s40(downloadAndApplyCallback, z ? 1 : 0), imageSource, downloadCacheStrategy, downloadTaskCancelable, str).k());
                Preconditions.g(com.perfectcorp.perfectlib.ph.database.ymk.look.d.b.a(look.g) == com.perfectcorp.perfectlib.ph.database.ymk.look.d.b.JEWELRY, "This is not a nail look.");
                return look;
            case 1:
                MakeupCamInternal makeupCamInternal = (MakeupCamInternal) obj3;
                ThreadPoolExecutor threadPoolExecutor = MakeupCamInternal.n;
                makeupCamInternal.w(i4);
                return (YMKPrimitiveData.Look) MoreFutures.b(ApplyEffectUtility.l(new s40((VtoApplier.DownloadAndApplyCallback) obj, i3), makeupCamInternal.f39700i, downloadCacheStrategy, downloadTaskCancelable, ((com.perfectcorp.perfectlib.ph.database.ymk.makeup.b) obj2).d).k());
            case 2:
                MakeupCamInternal makeupCamInternal2 = (MakeupCamInternal) obj3;
                ThreadPoolExecutor threadPoolExecutor2 = MakeupCamInternal.n;
                makeupCamInternal2.w(i4);
                return (YMKPrimitiveData.Look) MoreFutures.b(ApplyEffectUtility.l(new s40((VtoApplier.DownloadAndApplyCallback) obj, i3), makeupCamInternal2.f39700i, downloadCacheStrategy, downloadTaskCancelable, (String) obj2).k());
            case 3:
                NailVtoApplierImpl nailVtoApplierImpl = (NailVtoApplierImpl) obj3;
                NailVtoApplier.DownloadAndApplyCallback downloadAndApplyCallback2 = (NailVtoApplier.DownloadAndApplyCallback) obj;
                nailVtoApplierImpl.s(i4);
                Configuration.ImageSource imageSource2 = nailVtoApplierImpl.f39730i;
                Objects.requireNonNull(downloadAndApplyCallback2);
                YMKPrimitiveData.Look look2 = (YMKPrimitiveData.Look) MoreFutures.b(ApplyEffectUtility.l(new s40(downloadAndApplyCallback2, 2), imageSource2, downloadCacheStrategy, downloadTaskCancelable, (String) obj2).k());
                Preconditions.g(com.perfectcorp.perfectlib.ph.database.ymk.look.d.b.a(look2.g) == com.perfectcorp.perfectlib.ph.database.ymk.look.d.b.NAIL, "This is not a nail look.");
                return look2;
            case 4:
                PhotoMakeupInternal photoMakeupInternal = (PhotoMakeupInternal) obj3;
                int i6 = PhotoMakeupInternal.n;
                photoMakeupInternal.e(i4);
                return (YMKPrimitiveData.Look) MoreFutures.b(ApplyEffectUtility.l(new s40((VtoApplier.DownloadAndApplyCallback) obj, i3), photoMakeupInternal.f39790k, downloadCacheStrategy, downloadTaskCancelable, ((com.perfectcorp.perfectlib.ph.database.ymk.makeup.b) obj2).d).k());
            default:
                PhotoMakeupInternal photoMakeupInternal2 = (PhotoMakeupInternal) obj3;
                int i7 = PhotoMakeupInternal.n;
                photoMakeupInternal2.e(i4);
                return (YMKPrimitiveData.Look) MoreFutures.b(ApplyEffectUtility.l(new s40((VtoApplier.DownloadAndApplyCallback) obj, i3), photoMakeupInternal2.f39790k, downloadCacheStrategy, downloadTaskCancelable, (String) obj2).k());
        }
    }
}
