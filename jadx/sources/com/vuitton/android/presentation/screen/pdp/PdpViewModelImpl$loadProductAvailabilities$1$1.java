package com.vuitton.android.presentation.screen.pdp;

import com.vuitton.android.domain.monitoring.MonitorAction;
import com.vuitton.android.domain.monitoring.pdp.PDPMonitoring;
import com.vuitton.android.domain.usecase.products.GetAvailabilityException;
import com.vuitton.android.domain.usecase.products.GetProductAvailabilityUseCase;
import com.vuitton.android.presentation.screen.pdp.mappers.SkuAvailabilityMapperKt;
import com.vuitton.android.presentation.screen.pdp.models.PdpFeatureFlags;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.ProductAvailabilityUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.ProductUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuAvailabilityUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import com.vuitton.foundation.model.domain.model.product.SkuId;
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
import kotlinx.coroutines.flow.MutableStateFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.pdp.PdpViewModelImpl$loadProductAvailabilities$1$1", f = "PdpViewModelImpl.kt", l = {877, 887}, m = "invokeSuspend", v = 2)
final class PdpViewModelImpl$loadProductAvailabilities$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public MonitorAction f61229b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Object f61230c;
    public ProductUiModel d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Object f61231e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Object f61232f;
    public int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ PdpViewModelImpl f61233h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ String f61234i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PdpViewModelImpl$loadProductAvailabilities$1$1(PdpViewModelImpl pdpViewModelImpl, String str, Continuation continuation) {
        super(2, continuation);
        this.f61233h = pdpViewModelImpl;
        this.f61234i = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new PdpViewModelImpl$loadProductAvailabilities$1$1(this.f61233h, this.f61234i, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((PdpViewModelImpl$loadProductAvailabilities$1$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code duplicated, block: B:40:0x00eb  */
    /* JADX WARN: Code duplicated, block: B:42:0x00ef  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        MonitorAction monitorActionA;
        Object objA;
        Object obj2;
        MutableStateFlow mutableStateFlow;
        MonitorAction monitorAction;
        MutableStateFlow mutableStateFlow2;
        MutableStateFlow mutableStateFlow3;
        Throwable thA;
        PdpViewModelImpl pdpViewModelImpl = this.f61233h;
        MutableStateFlow mutableStateFlow4 = pdpViewModelImpl.m0;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.g;
        ProductUiModel productUiModelB = null;
        if (i2 == 0) {
            ResultKt.b(obj);
            monitorActionA = pdpViewModelImpl.f61137c.a(pdpViewModelImpl.N, PDPMonitoring.Action.GetAvailability.f48972a);
            String str = this.f61234i;
            monitorActionA.c(str, "sku");
            String str2 = pdpViewModelImpl.Q;
            if (str2 != null) {
                monitorActionA.c("true", "isStoreMode");
                monitorActionA.c(str2, "rmsCode");
            }
            GetProductAvailabilityUseCase getProductAvailabilityUseCase = pdpViewModelImpl.C;
            SkuIdUiModel.f61763c.getClass();
            SkuId.Companion companion = SkuId.INSTANCE;
            this.f61229b = monitorActionA;
            this.g = 1;
            objA = getProductAvailabilityUseCase.a(str, this);
            if (objA != coroutineSingletons) {
            }
            return coroutineSingletons;
        }
        if (i2 == 1) {
            MonitorAction monitorAction2 = this.f61229b;
            ResultKt.b(obj);
            objA = ((Result) obj).f71708b;
            monitorActionA = monitorAction2;
        } else {
            if (i2 != 2) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            mutableStateFlow3 = (MutableStateFlow) this.f61232f;
            mutableStateFlow2 = (MutableStateFlow) this.f61231e;
            ProductUiModel productUiModel = this.d;
            obj2 = this.f61230c;
            monitorAction = this.f61229b;
            ResultKt.b(obj);
            productUiModelB = productUiModel;
        }
        mutableStateFlow3.setValue(obj);
        monitorActionA = monitorAction;
        mutableStateFlow = mutableStateFlow2;
        mutableStateFlow.setValue(productUiModelB);
        thA = Result.a(obj2);
        if (thA != null) {
            if (!(thA instanceof GetAvailabilityException.NotECommerce)) {
                monitorActionA.d(new PDPMonitoring.Error.GetAvailabilityError(thA));
            }
            mutableStateFlow4.setValue(ProductAvailabilityUiModel.CallForAvailability);
        }
        pdpViewModelImpl.a0.setValue(Boolean.FALSE);
        monitorActionA.b();
        return Unit.f71739a;
        Result.Companion companion2 = Result.INSTANCE;
        if (!(objA instanceof Result.Failure)) {
            try {
                SkuAvailability skuAvailability = (SkuAvailability) objA;
                if (skuAvailability != null) {
                    MutableStateFlow mutableStateFlow5 = pdpViewModelImpl.e0;
                    objA = SkuAvailabilityMapperKt.a(skuAvailability, ((PdpFeatureFlags) mutableStateFlow5.getValue()).f61554a, ((PdpFeatureFlags) mutableStateFlow5.getValue()).f61560i, ((PdpFeatureFlags) mutableStateFlow5.getValue()).f61561j);
                } else {
                    objA = null;
                }
            } catch (Throwable th) {
                Result.Companion companion3 = Result.INSTANCE;
                objA = new Result.Failure(th);
            }
        }
        obj2 = objA;
        if (!(obj2 instanceof Result.Failure)) {
            SkuAvailabilityUiModel skuAvailabilityUiModel = (SkuAvailabilityUiModel) obj2;
            mutableStateFlow = pdpViewModelImpl.W;
            ProductUiModel productUiModel2 = (ProductUiModel) mutableStateFlow.getValue();
            if (productUiModel2 != null) {
                productUiModelB = ProductUiModel.b(productUiModel2, null, skuAvailabilityUiModel, skuAvailabilityUiModel != null ? skuAvailabilityUiModel.f61762f : null, -1, 2094079);
                this.f61229b = monitorActionA;
                this.f61230c = obj2;
                this.d = productUiModelB;
                this.f61231e = mutableStateFlow;
                this.f61232f = mutableStateFlow4;
                this.g = 2;
                Enum enumAc = PdpViewModelImpl.Ac(pdpViewModelImpl, productUiModelB, this);
                if (enumAc != coroutineSingletons) {
                    MonitorAction monitorAction3 = monitorActionA;
                    obj = enumAc;
                    monitorAction = monitorAction3;
                    mutableStateFlow2 = mutableStateFlow;
                    mutableStateFlow3 = mutableStateFlow4;
                    mutableStateFlow3.setValue(obj);
                    monitorActionA = monitorAction;
                    mutableStateFlow = mutableStateFlow2;
                }
                return coroutineSingletons;
            }
            mutableStateFlow.setValue(productUiModelB);
        }
        thA = Result.a(obj2);
        if (thA != null) {
            if (!(thA instanceof GetAvailabilityException.NotECommerce)) {
                monitorActionA.d(new PDPMonitoring.Error.GetAvailabilityError(thA));
            }
            mutableStateFlow4.setValue(ProductAvailabilityUiModel.CallForAvailability);
        }
        pdpViewModelImpl.a0.setValue(Boolean.FALSE);
        monitorActionA.b();
        return Unit.f71739a;
    }
}
