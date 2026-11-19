package com.vuitton.android.presentation.screen.pdp;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.pdp.PdpViewModelImpl", f = "PdpViewModelImpl.kt", l = {454}, m = "initProductDetails", v = 2)
final class PdpViewModelImpl$initProductDetails$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f61220b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ PdpViewModelImpl f61221c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PdpViewModelImpl$initProductDetails$1(PdpViewModelImpl pdpViewModelImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f61221c = pdpViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f61220b = obj;
        this.d |= Integer.MIN_VALUE;
        return PdpViewModelImpl.Dc(this.f61221c, this);
    }
}
