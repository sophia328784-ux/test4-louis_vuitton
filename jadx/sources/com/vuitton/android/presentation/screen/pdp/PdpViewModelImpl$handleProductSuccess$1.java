package com.vuitton.android.presentation.screen.pdp;

import com.vuitton.android.presentation.screen.pdp.models.uimodels.CustomizationType;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.ProductUiModel;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.pdp.PdpViewModelImpl", f = "PdpViewModelImpl.kt", l = {581, 600, 613}, m = "handleProductSuccess-yew4Fnc", v = 2)
final class PdpViewModelImpl$handleProductSuccess$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f61204b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public ProductUiModel f61205c;
    public CustomizationType d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f61206e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public /* synthetic */ Object f61207f;
    public final /* synthetic */ PdpViewModelImpl g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f61208h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PdpViewModelImpl$handleProductSuccess$1(PdpViewModelImpl pdpViewModelImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.g = pdpViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f61207f = obj;
        this.f61208h |= Integer.MIN_VALUE;
        return PdpViewModelImpl.Bc(this.g, null, null, null, false, this);
    }
}
