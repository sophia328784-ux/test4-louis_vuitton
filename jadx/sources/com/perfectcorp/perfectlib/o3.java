package com.perfectcorp.perfectlib;

import com.perfectcorp.common.concurrent.CallingThread;
import com.perfectcorp.common.rx.Singles;
import com.perfectcorp.thirdparty.io.reactivex.Single;
import com.perfectcorp.thirdparty.io.reactivex.SingleSource;
import com.perfectcorp.thirdparty.io.reactivex.SingleTransformer;
import com.perfectcorp.thirdparty.io.reactivex.functions.Function;
import com.perfectcorp.thirdparty.io.reactivex.schedulers.Schedulers;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class o3 implements SingleTransformer, Function {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ PhotoMakeupInternal f41096b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f41097c;

    public /* synthetic */ o3(PhotoMakeupInternal photoMakeupInternal, int i2) {
        this.f41096b = photoMakeupInternal;
        this.f41097c = i2;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.SingleTransformer
    public SingleSource a(Single single) {
        int i2 = PhotoMakeupInternal.n;
        return new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.m(single, new o3(this.f41096b, this.f41097c));
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Function
    public Object apply(Object obj) {
        MakeupCamInternal.ConfigureData configureData = (MakeupCamInternal.ConfigureData) obj;
        int i2 = PhotoMakeupInternal.n;
        PhotoMakeupInternal photoMakeupInternal = this.f41096b;
        photoMakeupInternal.g(this.f41097c);
        return new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.m(Singles.a(photoMakeupInternal.f39788i.applyConfiguration(configureData.f39708b), CallingThread.ANY).i(Schedulers.f43170c), new a0(photoMakeupInternal, configureData, 5));
    }
}
