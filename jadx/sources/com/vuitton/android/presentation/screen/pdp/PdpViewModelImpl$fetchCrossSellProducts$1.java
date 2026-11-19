package com.vuitton.android.presentation.screen.pdp;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.pdp.PdpViewModelImpl", f = "PdpViewModelImpl.kt", l = {1021}, m = "fetchCrossSellProducts-C1oCpJM", v = 2)
final class PdpViewModelImpl$fetchCrossSellProducts$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f61177b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ PdpViewModelImpl f61178c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PdpViewModelImpl$fetchCrossSellProducts$1(PdpViewModelImpl pdpViewModelImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f61178c = pdpViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f61177b = obj;
        this.d |= Integer.MIN_VALUE;
        return PdpViewModelImpl.zc(this.f61178c, null, this);
    }
}
