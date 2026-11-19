package com.vuitton.android.presentation.screen.pdp;

import com.vuitton.android.domain.usecase.cart.AddProductToCartUseCase;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.ConfigurationUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.CustomizationConfigurationUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.ProductCustomizationUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.ProductUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import com.vuitton.foundation.model.domain.model.cart.Cart;
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
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0003H\n"}, d2 = {"<anonymous>", "Lkotlin/Result;", "Lcom/vuitton/foundation/model/domain/model/cart/Cart;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.pdp.PdpViewModelImpl$addToCart$1$1$addToCartDeferred$1", f = "PdpViewModelImpl.kt", l = {699}, m = "invokeSuspend", v = 2)
final class PdpViewModelImpl$addToCart$1$1$addToCartDeferred$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Result<? extends Cart>>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f61160b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ PdpViewModelImpl f61161c;
    public final /* synthetic */ ProductUiModel d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PdpViewModelImpl$addToCart$1$1$addToCartDeferred$1(PdpViewModelImpl pdpViewModelImpl, ProductUiModel productUiModel, Continuation continuation) {
        super(2, continuation);
        this.f61161c = pdpViewModelImpl;
        this.d = productUiModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new PdpViewModelImpl$addToCart$1$1$addToCartDeferred$1(this.f61161c, this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((PdpViewModelImpl$addToCart$1$1$addToCartDeferred$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code duplicated, block: B:17:0x003f A[PHI: r4
      0x003f: PHI (r4v16 java.lang.String) = (r4v5 java.lang.String), (r4v8 java.lang.String), (r4v19 java.lang.String) binds: [B:29:0x005c, B:36:0x006c, B:15:0x003c] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object objA;
        String str;
        CustomizationConfigurationUiModel customizationConfigurationUiModel;
        CustomizationConfigurationUiModel customizationConfigurationUiModel2;
        CustomizationConfigurationUiModel customizationConfigurationUiModel3;
        CustomizationConfigurationUiModel customizationConfigurationUiModel4;
        CustomizationConfigurationUiModel customizationConfigurationUiModel5;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f61160b;
        String str2 = null;
        if (i2 == 0) {
            ResultKt.b(obj);
            AddProductToCartUseCase addProductToCartUseCase = this.f61161c.o;
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            ProductUiModel productUiModel = this.d;
            String str3 = productUiModel.f61735b;
            companion.getClass();
            SkuIdUiModel.Companion.b(str3);
            ProductCustomizationUiModel productCustomizationUiModel = productUiModel.V;
            if (productCustomizationUiModel != null) {
                ConfigurationUiModel configurationUiModel = productCustomizationUiModel.f61727e;
                if (configurationUiModel == null || (customizationConfigurationUiModel5 = configurationUiModel.f61665c) == null || (str = customizationConfigurationUiModel5.f61669c.f61671b) == null) {
                    ConfigurationUiModel configurationUiModel2 = productCustomizationUiModel.d;
                    if (configurationUiModel2 == null || (customizationConfigurationUiModel4 = configurationUiModel2.f61665c) == null) {
                        ConfigurationUiModel configurationUiModel3 = productCustomizationUiModel.f61725b;
                        str = (configurationUiModel3 == null || (customizationConfigurationUiModel3 = configurationUiModel3.f61665c) == null) ? null : customizationConfigurationUiModel3.f61669c.f61671b;
                        if (str != null) {
                            str2 = str;
                        } else {
                            ConfigurationUiModel configurationUiModel4 = productCustomizationUiModel.f61726c;
                            str = (configurationUiModel4 == null || (customizationConfigurationUiModel2 = configurationUiModel4.f61665c) == null) ? null : customizationConfigurationUiModel2.f61669c.f61671b;
                            if (str == null) {
                                ConfigurationUiModel configurationUiModel5 = productCustomizationUiModel.f61728f;
                                if (configurationUiModel5 != null && (customizationConfigurationUiModel = configurationUiModel5.f61665c) != null) {
                                    str2 = customizationConfigurationUiModel.f61669c.f61671b;
                                }
                            } else {
                                str2 = str;
                            }
                        }
                    } else {
                        str2 = customizationConfigurationUiModel4.f61669c.f61671b;
                    }
                } else {
                    str2 = str;
                }
            }
            this.f61160b = 1;
            objA = addProductToCartUseCase.a(str3, str2, this);
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
        return new Result(objA);
    }
}
