package com.vuitton.android.presentation.screen.pdp.vto.beauty;

import com.vuitton.android.domain.usecase.products.GetProductAvailabilityUseCase;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import com.vuitton.foundation.model.domain.model.product.availability.SkuAvailability;
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
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "Lcom/vuitton/foundation/model/domain/model/product/availability/SkuAvailability;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.pdp.vto.beauty.BeautyVtoViewModelImpl$checkAvailabilityForSkus$1$availabilityRequests$1$1", f = "BeautyVtoViewModelImpl.kt", l = {1232}, m = "invokeSuspend", v = 2)
final class BeautyVtoViewModelImpl$checkAvailabilityForSkus$1$availabilityRequests$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super SkuAvailability>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f61878b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ BeautyVtoViewModelImpl f61879c;
    public final /* synthetic */ String d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BeautyVtoViewModelImpl$checkAvailabilityForSkus$1$availabilityRequests$1$1(BeautyVtoViewModelImpl beautyVtoViewModelImpl, String str, Continuation continuation) {
        super(2, continuation);
        this.f61879c = beautyVtoViewModelImpl;
        this.d = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new BeautyVtoViewModelImpl$checkAvailabilityForSkus$1$availabilityRequests$1$1(this.f61879c, this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((BeautyVtoViewModelImpl$checkAvailabilityForSkus$1$availabilityRequests$1$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object objA;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f61878b;
        if (i2 == 0) {
            ResultKt.b(obj);
            GetProductAvailabilityUseCase getProductAvailabilityUseCase = this.f61879c.q;
            SkuIdUiModel.f61763c.getClass();
            String str = this.d;
            SkuIdUiModel.Companion.b(str);
            this.f61878b = 1;
            objA = getProductAvailabilityUseCase.a(str, this);
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
        Result.Companion companion = Result.INSTANCE;
        if (objA instanceof Result.Failure) {
            return null;
        }
        return objA;
    }
}
