package com.vuitton.android.presentation.screen.pdp;

import com.vuitton.android.presentation.screen.pdp.models.uimodels.ProductUiModel;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.pdp.PdpViewModelImpl", f = "PdpViewModelImpl.kt", l = {911}, m = "getAvailability", v = 2)
final class PdpViewModelImpl$getAvailability$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public ProductUiModel f61179b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ Object f61180c;
    public final /* synthetic */ PdpViewModelImpl d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f61181e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PdpViewModelImpl$getAvailability$1(PdpViewModelImpl pdpViewModelImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.d = pdpViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f61180c = obj;
        this.f61181e |= Integer.MIN_VALUE;
        return PdpViewModelImpl.Ac(this.d, null, this);
    }
}
