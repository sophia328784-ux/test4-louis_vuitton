package com.vuitton.android.presentation.screen.connectivity.lightup.common.detail;

import com.vuitton.android.domain.usecase.connectivity.lightup.UpdateLightUpProductUseCase;
import com.vuitton.android.presentation.screen.connectivity.LightUpProductUiModel;
import com.vuitton.foundation.model.domain.model.connectivity.LightUpProduct;
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

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "it", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.connectivity.lightup.common.detail.LightUpDetailViewModel$updateLightUpProduct$1", f = "LightUpDetailViewModel.kt", l = {37}, m = "invokeSuspend", v = 2)
final class LightUpDetailViewModel$updateLightUpProduct$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f56138b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ LightUpDetailViewModel f56139c;
    public final /* synthetic */ LightUpProductUiModel d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LightUpDetailViewModel$updateLightUpProduct$1(LightUpDetailViewModel lightUpDetailViewModel, LightUpProductUiModel lightUpProductUiModel, Continuation continuation) {
        super(2, continuation);
        this.f56139c = lightUpDetailViewModel;
        this.d = lightUpProductUiModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new LightUpDetailViewModel$updateLightUpProduct$1(this.f56139c, this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((LightUpDetailViewModel$updateLightUpProduct$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f56138b;
        if (i2 == 0) {
            ResultKt.b(obj);
            UpdateLightUpProductUseCase updateLightUpProductUseCase = this.f56139c.d;
            LightUpProductUiModel lightUpProductUiModel = this.d;
            lightUpProductUiModel.getClass();
            LightUpProduct lightUpProduct = new LightUpProduct(lightUpProductUiModel.f55960b, lightUpProductUiModel.f55961c, lightUpProductUiModel.d, lightUpProductUiModel.f55962e, lightUpProductUiModel.f55963f, lightUpProductUiModel.g, lightUpProductUiModel.f55964h, lightUpProductUiModel.f55965i);
            this.f56138b = 1;
            Object objA = updateLightUpProductUseCase.f49811a.a(lightUpProduct, this);
            if (objA != coroutineSingletons) {
                objA = Unit.f71739a;
            }
            if (objA == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
        }
        return Unit.f71739a;
    }
}
