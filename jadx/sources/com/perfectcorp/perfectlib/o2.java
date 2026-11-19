package com.perfectcorp.perfectlib;

import com.perfectcorp.perfectlib.internal.DownloadTaskCancelable;
import com.perfectcorp.thirdparty.io.reactivex.functions.Function;
import com.perfectcorp.thirdparty.io.reactivex.schedulers.Schedulers;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class o2 implements Function {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f41090b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f41091c;
    public final /* synthetic */ DownloadCacheStrategy d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ VtoApplier.DownloadAndApplyCallback f41092e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ DownloadTaskCancelable f41093f;
    public final /* synthetic */ int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ VtoApplier.FunStickerActionHintCallback f41094h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ Object f41095i;

    public /* synthetic */ o2(Object obj, int i2, DownloadCacheStrategy downloadCacheStrategy, VtoApplier.DownloadAndApplyCallback downloadAndApplyCallback, DownloadTaskCancelable downloadTaskCancelable, int i3, VtoApplier.FunStickerActionHintCallback funStickerActionHintCallback, int i4) {
        this.f41090b = i4;
        this.f41095i = obj;
        this.f41091c = i2;
        this.d = downloadCacheStrategy;
        this.f41092e = downloadAndApplyCallback;
        this.f41093f = downloadTaskCancelable;
        this.g = i3;
        this.f41094h = funStickerActionHintCallback;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Function
    public final Object apply(Object obj) {
        int i2 = this.f41090b;
        int i3 = 4;
        int i4 = this.g;
        Object obj2 = this.f41095i;
        switch (i2) {
            case 0:
                MakeupCamInternal makeupCamInternal = (MakeupCamInternal) obj2;
                com.perfectcorp.perfectlib.ph.database.ymk.makeup.b bVar = (com.perfectcorp.perfectlib.ph.database.ymk.makeup.b) obj;
                ThreadPoolExecutor threadPoolExecutor = MakeupCamInternal.n;
                makeupCamInternal.getClass();
                com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.u uVarI = new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.p(new e1(makeupCamInternal, this.f41091c, bVar, this.d, this.f41092e, this.f41093f, 1)).j(makeupCamInternal.f39694a).i(makeupCamInternal.f39696c);
                String str = bVar.d;
                ThreadPoolExecutor threadPoolExecutor2 = MakeupCamInternal.n;
                return new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.t(new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.m(uVarI, new w1(makeupCamInternal, i4, str, this.f41094h)).i(Schedulers.f43170c), new a0(makeupCamInternal, str, i3));
            default:
                PhotoMakeupInternal photoMakeupInternal = (PhotoMakeupInternal) obj2;
                com.perfectcorp.perfectlib.ph.database.ymk.makeup.b bVar2 = (com.perfectcorp.perfectlib.ph.database.ymk.makeup.b) obj;
                int i5 = PhotoMakeupInternal.n;
                photoMakeupInternal.getClass();
                com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.u uVarI2 = new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.p(new e1(photoMakeupInternal, this.f41091c, bVar2, this.d, this.f41092e, this.f41093f, 4)).j(photoMakeupInternal.f39782a).i(photoMakeupInternal.f39784c);
                String str2 = bVar2.d;
                AtomicReference atomicReference = new AtomicReference();
                int i6 = PhotoMakeupInternal.n;
                return new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.t(new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.m(uVarI2, new s0(photoMakeupInternal, i4, str2, i3)).i(Schedulers.f43170c), new z0(atomicReference, 3)).f(new u2(photoMakeupInternal, str2, atomicReference, 1));
        }
    }
}
