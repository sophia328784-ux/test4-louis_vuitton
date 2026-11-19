package com.perfectcorp.perfectlib;

import com.perfectcorp.common.concurrent.CallingThread;
import com.perfectcorp.common.rx.Singles;
import com.perfectcorp.thirdparty.io.reactivex.Single;
import com.perfectcorp.thirdparty.io.reactivex.SingleSource;
import com.perfectcorp.thirdparty.io.reactivex.SingleTransformer;
import com.perfectcorp.thirdparty.io.reactivex.functions.Function;
import java.util.concurrent.ThreadPoolExecutor;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class l1 implements SingleTransformer, Function {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ MakeupCamInternal f40455b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f40456c;

    public /* synthetic */ l1(MakeupCamInternal makeupCamInternal, int i2) {
        this.f40455b = makeupCamInternal;
        this.f40456c = i2;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.SingleTransformer
    public SingleSource a(Single single) {
        ThreadPoolExecutor threadPoolExecutor = MakeupCamInternal.n;
        return new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.m(single, new l1(this.f40455b, this.f40456c));
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Function
    public Object apply(Object obj) {
        MakeupCamInternal.ConfigureData configureData = (MakeupCamInternal.ConfigureData) obj;
        ThreadPoolExecutor threadPoolExecutor = MakeupCamInternal.n;
        MakeupCamInternal makeupCamInternal = this.f40455b;
        makeupCamInternal.A(this.f40456c);
        return new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.t(Singles.a(makeupCamInternal.g.b(configureData.f39708b), CallingThread.ANY), new z0(configureData, 1));
    }
}
