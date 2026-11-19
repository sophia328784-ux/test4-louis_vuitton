package com.vuitton.android.presentation.screen.pdp;

import com.vuitton.android.domain.usecase.products.GetSizeGuideUseCase;
import com.vuitton.android.presentation.screen.pdp.mappers.ProductMapperKt;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.ProductIdUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.ProductUiModel;
import com.vuitton.foundation.model.domain.model.product.ProductId;
import com.vuitton.foundation.model.domain.model.sizeguide.SizeGuide;
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
@DebugMetadata(c = "com.vuitton.android.presentation.screen.pdp.PdpViewModelImpl$getSizeGuide$1", f = "PdpViewModelImpl.kt", l = {1013}, m = "invokeSuspend", v = 2)
final class PdpViewModelImpl$getSizeGuide$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f61194b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ PdpViewModelImpl f61195c;
    public final /* synthetic */ String d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PdpViewModelImpl$getSizeGuide$1(PdpViewModelImpl pdpViewModelImpl, String str, Continuation continuation) {
        super(2, continuation);
        this.f61195c = pdpViewModelImpl;
        this.d = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new PdpViewModelImpl$getSizeGuide$1(this.f61195c, this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((PdpViewModelImpl$getSizeGuide$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object objA;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f61194b;
        PdpViewModelImpl pdpViewModelImpl = this.f61195c;
        if (i2 == 0) {
            ResultKt.b(obj);
            GetSizeGuideUseCase getSizeGuideUseCase = pdpViewModelImpl.l;
            ProductIdUiModel.f61731c.getClass();
            String str = this.d;
            str.getClass();
            ProductId.Companion companion = ProductId.INSTANCE;
            ProductUiModel productUiModel = (ProductUiModel) pdpViewModelImpl.W.getValue();
            String str2 = productUiModel != null ? productUiModel.H : null;
            this.f61194b = 1;
            objA = getSizeGuideUseCase.a(str, str2, this);
            if (objA == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
            objA = ((Result) obj).f71708b;
        }
        Result.Companion companion2 = Result.INSTANCE;
        if (!(objA instanceof Result.Failure)) {
            SizeGuide sizeGuide = (SizeGuide) objA;
            pdpViewModelImpl.n0.setValue(sizeGuide != null ? ProductMapperKt.c(sizeGuide, pdpViewModelImpl.O.f67233e) : null);
        }
        return Unit.f71739a;
    }
}
