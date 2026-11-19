package com.vuitton.android.presentation.screen.pdp;

import com.vuitton.android.domain.usecase.pdp.customization.SaveCustomizationUseCase;
import com.vuitton.android.presentation.screen.pdp.mappers.ProductCustomizationMapperKt;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.CustomizationIdUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import com.vuitton.foundation.model.domain.model.product.universal.CustomizationId;
import defpackage.md;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.pdp.PdpViewModelImpl$getProductDetailsForCustomization$1", f = "PdpViewModelImpl.kt", l = {1226}, m = "invokeSuspend", v = 2)
final class PdpViewModelImpl$getProductDetailsForCustomization$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f61191b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ PdpViewModelImpl f61192c;
    public final /* synthetic */ String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ CustomizationIdUiModel f61193e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PdpViewModelImpl$getProductDetailsForCustomization$1(PdpViewModelImpl pdpViewModelImpl, String str, CustomizationIdUiModel customizationIdUiModel, Continuation continuation) {
        super(2, continuation);
        this.f61192c = pdpViewModelImpl;
        this.d = str;
        this.f61193e = customizationIdUiModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new PdpViewModelImpl$getProductDetailsForCustomization$1(this.f61192c, this.d, this.f61193e, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((PdpViewModelImpl$getProductDetailsForCustomization$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f61191b;
        CustomizationIdUiModel customizationIdUiModel = this.f61193e;
        String str = this.d;
        PdpViewModelImpl pdpViewModelImpl = this.f61192c;
        if (i2 == 0) {
            ResultKt.b(obj);
            SaveCustomizationUseCase saveCustomizationUseCase = pdpViewModelImpl.s;
            SkuIdUiModel.f61763c.getClass();
            SkuIdUiModel.Companion.b(str);
            CustomizationId customizationIdA = ProductCustomizationMapperKt.a(customizationIdUiModel);
            this.f61191b = 1;
            if (saveCustomizationUseCase.a(str, customizationIdA, this) == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
            ((Result) obj).getClass();
        }
        pdpViewModelImpl.l6(str, customizationIdUiModel, true);
        return Unit.f71739a;
    }
}
