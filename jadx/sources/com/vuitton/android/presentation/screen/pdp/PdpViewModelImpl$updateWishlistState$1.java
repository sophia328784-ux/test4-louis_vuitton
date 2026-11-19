package com.vuitton.android.presentation.screen.pdp;

import com.vuitton.android.domain.usecase.wishlist.IsProductInWishlistUseCase;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.ProductUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import defpackage.md;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.MutableStateFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.pdp.PdpViewModelImpl$updateWishlistState$1", f = "PdpViewModelImpl.kt", l = {1036}, m = "invokeSuspend", v = 2)
final class PdpViewModelImpl$updateWishlistState$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Object f61267b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f61268c;
    public final /* synthetic */ PdpViewModelImpl d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PdpViewModelImpl$updateWishlistState$1(Continuation continuation, PdpViewModelImpl pdpViewModelImpl) {
        super(2, continuation);
        this.d = pdpViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new PdpViewModelImpl$updateWishlistState$1(continuation, this.d);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((PdpViewModelImpl$updateWishlistState$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        MutableStateFlow mutableStateFlow;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f61268c;
        if (i2 == 0) {
            ResultKt.b(obj);
            PdpViewModelImpl pdpViewModelImpl = this.d;
            ProductUiModel productUiModel = (ProductUiModel) pdpViewModelImpl.W.getValue();
            if (productUiModel != null) {
                String str = productUiModel.f61735b;
                MutableStateFlow mutableStateFlow2 = pdpViewModelImpl.h0;
                IsProductInWishlistUseCase isProductInWishlistUseCase = pdpViewModelImpl.x;
                SkuIdUiModel.f61763c.getClass();
                SkuIdUiModel.Companion.b(str);
                this.f61267b = mutableStateFlow2;
                this.f61268c = 1;
                obj = isProductInWishlistUseCase.a(str, this);
                if (obj == coroutineSingletons) {
                    return coroutineSingletons;
                }
                mutableStateFlow = mutableStateFlow2;
            }
            return Unit.f71739a;
        }
        if (i2 != 1) {
            md.k("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        mutableStateFlow = (MutableStateFlow) this.f61267b;
        ResultKt.b(obj);
        mutableStateFlow.setValue(obj);
        return Unit.f71739a;
    }
}
