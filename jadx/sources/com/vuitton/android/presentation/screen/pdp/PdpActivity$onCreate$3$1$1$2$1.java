package com.vuitton.android.presentation.screen.pdp;

import androidx.compose.runtime.MutableState;
import com.vuitton.android.presentation.screen.pdp.models.PdpViewState;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.ProductUiModel;
import com.vuitton.android.presentation.screen.reinsurance.ReinsuranceViewModel;
import com.vuitton.foundation.model.domain.model.product.ReinsurancePageType;
import com.vuitton.foundation.model.domain.model.product.universal.PackagingVariation;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.pdp.PdpActivity$onCreate$3$1$1$2$1", f = "PdpActivity.kt", l = {}, m = "invokeSuspend", v = 2)
final class PdpActivity$onCreate$3$1$1$2$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ PdpActivity f61066b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ MutableState f61067c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PdpActivity$onCreate$3$1$1$2$1(PdpActivity pdpActivity, MutableState mutableState, Continuation continuation) {
        super(2, continuation);
        this.f61066b = pdpActivity;
        this.f61067c = mutableState;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new PdpActivity$onCreate$3$1$1$2$1(this.f61066b, this.f61067c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((PdpActivity$onCreate$3$1$1$2$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        PdpActivity.Companion companion = PdpActivity.D;
        ReinsuranceViewModel reinsuranceViewModel = (ReinsuranceViewModel) this.f61066b.r.getF71699b();
        ProductUiModel productUiModel = ((PdpViewState) this.f61067c.getF10755b()).f61566b;
        reinsuranceViewModel.w5(Intrinsics.c(productUiModel != null ? productUiModel.f61737e : null, PackagingVariation.BABY.getValue()), ReinsurancePageType.PDP);
        return Unit.f71739a;
    }
}
