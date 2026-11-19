package com.vuitton.android.presentation.screen.pdp;

import androidx.lifecycle.ViewModelKt;
import com.appsflyer.share.AFInAppEventParameterName;
import com.vuitton.android.domain.monitoring.MonitorAction;
import com.vuitton.android.domain.monitoring.pdp.PDPMonitoring;
import com.vuitton.android.domain.usecase.config.IsFeatureAvailableUseCase;
import com.vuitton.android.domain.usecase.pdp.GetProductDetailUseCase;
import com.vuitton.android.presentation.screen.appsflyer.AppsFlyerEvent;
import com.vuitton.android.presentation.screen.pdp.mappers.ProductCustomizationMapperKt;
import com.vuitton.android.presentation.screen.pdp.mappers.ProductMapperKt;
import com.vuitton.android.presentation.screen.pdp.models.PdpFeatureFlags;
import com.vuitton.android.presentation.screen.pdp.models.PdpViewState;
import com.vuitton.android.presentation.screen.pdp.models.tracking.PdpTrackingUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.ConfigurationUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.CustomizationIdUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.CustomizationType;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.PriceSpecificationUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.ProductCustomizationUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.ProductUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.ProductUiModelKt;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SellableStatusUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import com.vuitton.android.presentation.screen.plp.models.CatalogMode;
import com.vuitton.foundation.model.domain.extensions.StringKtExtKt;
import com.vuitton.foundation.model.domain.model.product.universal.CustomizationId;
import com.vuitton.foundation.model.domain.model.product.universal.Product;
import com.vuitton.foundation.model.domain.model.sync.Feature;
import defpackage.md;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.MutableStateFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.pdp.PdpViewModelImpl$getProductDetails$1", f = "PdpViewModelImpl.kt", l = {494, 501, 514}, m = "invokeSuspend", v = 2)
final class PdpViewModelImpl$getProductDetails$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Object f61184b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Object f61185c;
    public ProductUiModel d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f61186e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ PdpViewModelImpl f61187f;
    public final /* synthetic */ String g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ CustomizationIdUiModel f61188h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ boolean f61189i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ MonitorAction f61190j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PdpViewModelImpl$getProductDetails$1(PdpViewModelImpl pdpViewModelImpl, String str, CustomizationIdUiModel customizationIdUiModel, boolean z, MonitorAction monitorAction, Continuation continuation) {
        super(2, continuation);
        this.f61187f = pdpViewModelImpl;
        this.g = str;
        this.f61188h = customizationIdUiModel;
        this.f61189i = z;
        this.f61190j = monitorAction;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new PdpViewModelImpl$getProductDetails$1(this.f61187f, this.g, this.f61188h, this.f61189i, this.f61190j, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((PdpViewModelImpl$getProductDetails$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code duplicated, block: B:41:0x00d6  */
    /* JADX WARN: Code duplicated, block: B:43:0x00dd  */
    /* JADX WARN: Code duplicated, block: B:44:0x00e0  */
    /* JADX WARN: Code duplicated, block: B:46:0x00e3  */
    /* JADX WARN: Code duplicated, block: B:48:0x00e7 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:49:0x00e9  */
    /* JADX WARN: Code duplicated, block: B:50:0x00ec  */
    /* JADX WARN: Code duplicated, block: B:52:0x00ef  */
    /* JADX WARN: Code duplicated, block: B:53:0x00f2 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:54:0x00f4  */
    /* JADX WARN: Code duplicated, block: B:55:0x00f7  */
    /* JADX WARN: Code duplicated, block: B:57:0x00fa  */
    /* JADX WARN: Code duplicated, block: B:58:0x00fd A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:59:0x00ff  */
    /* JADX WARN: Code duplicated, block: B:60:0x0102  */
    /* JADX WARN: Code duplicated, block: B:62:0x0105  */
    /* JADX WARN: Code duplicated, block: B:63:0x0108  */
    /* JADX WARN: Code duplicated, block: B:67:0x0131  */
    /* JADX WARN: Code duplicated, block: B:70:0x013b  */
    /* JADX WARN: Code duplicated, block: B:73:0x0180  */
    /* JADX WARN: Code duplicated, block: B:75:0x019e  */
    /* JADX WARN: Code duplicated, block: B:78:0x01a8  */
    /* JADX WARN: Code duplicated, block: B:83:0x01e2  */
    /* JADX WARN: Code duplicated, block: B:85:0x01e6  */
    /* JADX WARN: Code duplicated, block: B:86:0x01f7  */
    /* JADX WARN: Code duplicated, block: B:87:0x01fe  */
    /* JADX WARN: Code duplicated, block: B:90:0x0207  */
    /* JADX WARN: Code duplicated, block: B:91:0x0217  */
    /* JADX WARN: Code duplicated, block: B:94:0x0222  */
    /* JADX WARN: Type inference failed for: r4v6 */
    /* JADX WARN: Type inference failed for: r4v7, types: [kotlin.coroutines.Continuation, kotlin.coroutines.CoroutineContext, kotlinx.coroutines.CoroutineStart] */
    /* JADX WARN: Type inference failed for: r4v8 */
    /* JADX WARN: Type inference failed for: r4v9 */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object value;
        Boolean bool;
        Object objA;
        String str;
        Product product;
        Object objC;
        Throwable th;
        ProductUiModel productUiModel;
        ProductCustomizationUiModel productCustomizationUiModel;
        ConfigurationUiModel configurationUiModel;
        ConfigurationUiModel configurationUiModel2;
        ConfigurationUiModel configurationUiModel3;
        ConfigurationUiModel configurationUiModel4;
        CustomizationType customizationType;
        Object objBc;
        Object obj2;
        ProductUiModel productUiModel2;
        PdpViewModelImpl pdpViewModelImpl;
        Throwable thA;
        MonitorAction monitorAction;
        Object value2;
        ProductUiModel productUiModel3;
        ?? r4;
        String str2;
        int i2;
        ProductUiModel productUiModel4;
        PriceSpecificationUiModel priceSpecificationUiModelB;
        PdpViewModelImpl$getProductDetails$1 pdpViewModelImpl$getProductDetails$1 = this;
        PdpViewModelImpl pdpViewModelImpl2 = pdpViewModelImpl$getProductDetails$1.f61187f;
        MutableStateFlow mutableStateFlow = pdpViewModelImpl2.W;
        MutableStateFlow mutableStateFlow2 = pdpViewModelImpl2.X;
        MutableStateFlow mutableStateFlow3 = pdpViewModelImpl2.Y;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = pdpViewModelImpl$getProductDetails$1.f61186e;
        String str3 = pdpViewModelImpl$getProductDetails$1.g;
        if (i3 == 0) {
            ResultKt.b(obj);
            do {
                value = mutableStateFlow3.getValue();
                ((Boolean) value).getClass();
                bool = Boolean.TRUE;
            } while (!mutableStateFlow3.i(value, bool));
            mutableStateFlow2.setValue(Boolean.FALSE);
            pdpViewModelImpl2.a0.setValue(bool);
            GetProductDetailUseCase getProductDetailUseCase = pdpViewModelImpl2.q;
            SkuIdUiModel.f61763c.getClass();
            SkuIdUiModel.Companion.b(str3);
            boolean z = pdpViewModelImpl2.U;
            CustomizationIdUiModel customizationIdUiModel = pdpViewModelImpl$getProductDetails$1.f61188h;
            CustomizationId customizationIdA = customizationIdUiModel != null ? ProductCustomizationMapperKt.a(customizationIdUiModel) : null;
            String str4 = pdpViewModelImpl2.P == CatalogMode.IN_STORE ? pdpViewModelImpl2.Q : null;
            pdpViewModelImpl$getProductDetails$1.f61186e = 1;
            objA = getProductDetailUseCase.a(str3, z, customizationIdA, str4, pdpViewModelImpl$getProductDetails$1);
            str = str3;
            if (objA != coroutineSingletons) {
            }
            return coroutineSingletons;
        }
        if (i3 == 1) {
            ResultKt.b(obj);
            objA = ((Result) obj).f71708b;
            str = str3;
        } else {
            if (i3 == 2) {
                product = (Product) pdpViewModelImpl$getProductDetails$1.f61185c;
                try {
                    ResultKt.b(obj);
                    objC = obj;
                    str = str3;
                    objA = ProductMapperKt.b(product, ((Boolean) objC).booleanValue());
                    Result.Companion companion = Result.INSTANCE;
                } catch (Throwable th2) {
                    th = th2;
                    str = str3;
                    Result.Companion companion2 = Result.INSTANCE;
                    objA = new Result.Failure(th);
                }
                if (!(objA instanceof Result.Failure)) {
                    productUiModel = (ProductUiModel) objA;
                    productCustomizationUiModel = productUiModel.V;
                    if (productCustomizationUiModel != null) {
                        configurationUiModel = productCustomizationUiModel.f61727e;
                    } else {
                        configurationUiModel = null;
                    }
                    if (configurationUiModel != null) {
                        customizationType = CustomizationType.MONOGRAM;
                    } else {
                        if (productCustomizationUiModel != null) {
                            configurationUiModel2 = productCustomizationUiModel.d;
                        } else {
                            configurationUiModel2 = null;
                        }
                        if (configurationUiModel2 != null) {
                            customizationType = CustomizationType.BEAUTY_ENGRAVING;
                        } else {
                            if (productCustomizationUiModel != null) {
                                configurationUiModel3 = productCustomizationUiModel.f61725b;
                            } else {
                                configurationUiModel3 = null;
                            }
                            if (configurationUiModel3 != null) {
                                customizationType = CustomizationType.HOTSTAMPING;
                            } else {
                                if (productCustomizationUiModel != null) {
                                    configurationUiModel4 = productCustomizationUiModel.f61726c;
                                } else {
                                    configurationUiModel4 = null;
                                }
                                if (configurationUiModel4 != null) {
                                    customizationType = CustomizationType.PERFUME_ENGRAVING;
                                } else {
                                    customizationType = CustomizationType.NO_CUSTOMIZATION;
                                }
                            }
                        }
                    }
                    CustomizationType customizationType2 = customizationType;
                    pdpViewModelImpl2.c0.setValue(Boolean.valueOf(StringKtExtKt.g(productUiModel.t0)));
                    pdpViewModelImpl$getProductDetails$1.f61184b = objA;
                    pdpViewModelImpl$getProductDetails$1.f61185c = pdpViewModelImpl2;
                    pdpViewModelImpl$getProductDetails$1.d = productUiModel;
                    pdpViewModelImpl$getProductDetails$1.f61186e = 3;
                    objBc = PdpViewModelImpl.Bc(pdpViewModelImpl2, pdpViewModelImpl$getProductDetails$1.g, productUiModel, customizationType2, pdpViewModelImpl$getProductDetails$1.f61189i, pdpViewModelImpl$getProductDetails$1);
                    pdpViewModelImpl$getProductDetails$1 = pdpViewModelImpl$getProductDetails$1;
                    pdpViewModelImpl2 = pdpViewModelImpl2;
                    if (objBc != coroutineSingletons) {
                        obj2 = objA;
                        productUiModel2 = productUiModel;
                        pdpViewModelImpl = pdpViewModelImpl2;
                    }
                    return coroutineSingletons;
                }
                str = str;
                thA = Result.a(objA);
                monitorAction = pdpViewModelImpl$getProductDetails$1.f61190j;
                if (thA != null) {
                    monitorAction.d(new PDPMonitoring.Error.LoadProductScreenError(thA));
                    pdpViewModelImpl2.f61136b.c("PDP details loading error", thA.toString(), null);
                    mutableStateFlow2.setValue(Boolean.TRUE);
                }
                do {
                    value2 = mutableStateFlow3.getValue();
                    ((Boolean) value2).getClass();
                } while (!mutableStateFlow3.i(value2, Boolean.FALSE));
                monitorAction.b();
                productUiModel3 = ((PdpViewState) pdpViewModelImpl2.y0.getValue()).f61566b;
                if (productUiModel3 != null) {
                    r4 = 0;
                } else if (productUiModel3.G) {
                    r4 = 0;
                    BuildersKt.c(ViewModelKt.a(pdpViewModelImpl2), null, null, new PdpViewModelImpl$getSizeGuide$1(pdpViewModelImpl2, productUiModel3.g, null), 3);
                } else {
                    r4 = 0;
                    pdpViewModelImpl2.n0.setValue(null);
                }
                if (((ProductUiModel) mutableStateFlow.getValue()) != null) {
                    str2 = str;
                    i2 = 3;
                    BuildersKt.c(ViewModelKt.a(pdpViewModelImpl2), r4, r4, new PdpViewModelImpl$loadProductAvailabilities$1$1(pdpViewModelImpl2, str2, r4), 3);
                } else {
                    str2 = str;
                    i2 = 3;
                }
                productUiModel4 = (ProductUiModel) mutableStateFlow.getValue();
                if (productUiModel4 != null) {
                    BuildersKt.c(ViewModelKt.a(pdpViewModelImpl2), r4, r4, new PdpViewModelImpl$loadProductVariationsAvailabilities$1$1(pdpViewModelImpl2, str2, productUiModel4, r4), i2);
                }
                return Unit.f71739a;
            }
            if (i3 != 3) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            productUiModel2 = pdpViewModelImpl$getProductDetails$1.d;
            pdpViewModelImpl = (PdpViewModelImpl) pdpViewModelImpl$getProductDetails$1.f61185c;
            obj2 = pdpViewModelImpl$getProductDetails$1.f61184b;
            ResultKt.b(obj);
            str = str3;
        }
        if (!(productUiModel2.T instanceof SellableStatusUiModel.SellableUiModel) && (priceSpecificationUiModelB = ProductUiModelKt.b(productUiModel2)) != null) {
            pdpViewModelImpl.f61140h.a("ProductViewModel", new AppsFlyerEvent.ContentView(MapsKt.i(new Pair(AFInAppEventParameterName.CONTENT_ID, productUiModel2.f61735b), new Pair(AFInAppEventParameterName.CONTENT, productUiModel2.f61736c), new Pair(AFInAppEventParameterName.PRICE, String.valueOf(priceSpecificationUiModelB.f61721c)), new Pair(AFInAppEventParameterName.CURRENCY, priceSpecificationUiModelB.f61720b))));
        }
        pdpViewModelImpl.Gc(new PdpTrackingUiModel.PdpScreen(Boolean.valueOf(pdpViewModelImpl.U), ((PdpFeatureFlags) pdpViewModelImpl.e0.getValue()).f61562k, pdpViewModelImpl.V));
        objA = obj2;
        thA = Result.a(objA);
        monitorAction = pdpViewModelImpl$getProductDetails$1.f61190j;
        if (thA != null) {
            monitorAction.d(new PDPMonitoring.Error.LoadProductScreenError(thA));
            pdpViewModelImpl2.f61136b.c("PDP details loading error", thA.toString(), null);
            mutableStateFlow2.setValue(Boolean.TRUE);
        }
        do {
            value2 = mutableStateFlow3.getValue();
            ((Boolean) value2).getClass();
        } while (!mutableStateFlow3.i(value2, Boolean.FALSE));
        monitorAction.b();
        productUiModel3 = ((PdpViewState) pdpViewModelImpl2.y0.getValue()).f61566b;
        if (productUiModel3 != null) {
            r4 = 0;
        } else if (productUiModel3.G) {
            r4 = 0;
            BuildersKt.c(ViewModelKt.a(pdpViewModelImpl2), null, null, new PdpViewModelImpl$getSizeGuide$1(pdpViewModelImpl2, productUiModel3.g, null), 3);
        } else {
            r4 = 0;
            pdpViewModelImpl2.n0.setValue(null);
        }
        if (((ProductUiModel) mutableStateFlow.getValue()) != null) {
            str2 = str;
            i2 = 3;
            BuildersKt.c(ViewModelKt.a(pdpViewModelImpl2), r4, r4, new PdpViewModelImpl$loadProductAvailabilities$1$1(pdpViewModelImpl2, str2, r4), 3);
        } else {
            str2 = str;
            i2 = 3;
        }
        productUiModel4 = (ProductUiModel) mutableStateFlow.getValue();
        if (productUiModel4 != null) {
            BuildersKt.c(ViewModelKt.a(pdpViewModelImpl2), r4, r4, new PdpViewModelImpl$loadProductVariationsAvailabilities$1$1(pdpViewModelImpl2, str2, productUiModel4, r4), i2);
        }
        return Unit.f71739a;
        Result.Companion companion3 = Result.INSTANCE;
        if (objA instanceof Result.Failure) {
            if (!(objA instanceof Result.Failure)) {
                productUiModel = (ProductUiModel) objA;
                productCustomizationUiModel = productUiModel.V;
                if (productCustomizationUiModel != null) {
                    configurationUiModel = productCustomizationUiModel.f61727e;
                } else {
                    configurationUiModel = null;
                }
                if (configurationUiModel != null) {
                    customizationType = CustomizationType.MONOGRAM;
                } else {
                    if (productCustomizationUiModel != null) {
                        configurationUiModel2 = productCustomizationUiModel.d;
                    } else {
                        configurationUiModel2 = null;
                    }
                    if (configurationUiModel2 != null) {
                        customizationType = CustomizationType.BEAUTY_ENGRAVING;
                    } else {
                        if (productCustomizationUiModel != null) {
                            configurationUiModel3 = productCustomizationUiModel.f61725b;
                        } else {
                            configurationUiModel3 = null;
                        }
                        if (configurationUiModel3 != null) {
                            customizationType = CustomizationType.HOTSTAMPING;
                        } else {
                            if (productCustomizationUiModel != null) {
                                configurationUiModel4 = productCustomizationUiModel.f61726c;
                            } else {
                                configurationUiModel4 = null;
                            }
                            if (configurationUiModel4 != null) {
                                customizationType = CustomizationType.PERFUME_ENGRAVING;
                            } else {
                                customizationType = CustomizationType.NO_CUSTOMIZATION;
                            }
                        }
                    }
                }
                CustomizationType customizationType3 = customizationType;
                pdpViewModelImpl2.c0.setValue(Boolean.valueOf(StringKtExtKt.g(productUiModel.t0)));
                pdpViewModelImpl$getProductDetails$1.f61184b = objA;
                pdpViewModelImpl$getProductDetails$1.f61185c = pdpViewModelImpl2;
                pdpViewModelImpl$getProductDetails$1.d = productUiModel;
                pdpViewModelImpl$getProductDetails$1.f61186e = 3;
                objBc = PdpViewModelImpl.Bc(pdpViewModelImpl2, pdpViewModelImpl$getProductDetails$1.g, productUiModel, customizationType3, pdpViewModelImpl$getProductDetails$1.f61189i, pdpViewModelImpl$getProductDetails$1);
                pdpViewModelImpl$getProductDetails$1 = pdpViewModelImpl$getProductDetails$1;
                pdpViewModelImpl2 = pdpViewModelImpl2;
                if (objBc != coroutineSingletons) {
                    obj2 = objA;
                    productUiModel2 = productUiModel;
                    pdpViewModelImpl = pdpViewModelImpl2;
                    if (!(productUiModel2.T instanceof SellableStatusUiModel.SellableUiModel)) {
                    }
                    pdpViewModelImpl.Gc(new PdpTrackingUiModel.PdpScreen(Boolean.valueOf(pdpViewModelImpl.U), ((PdpFeatureFlags) pdpViewModelImpl.e0.getValue()).f61562k, pdpViewModelImpl.V));
                    objA = obj2;
                }
            } else {
                str = str;
            }
            thA = Result.a(objA);
            monitorAction = pdpViewModelImpl$getProductDetails$1.f61190j;
            if (thA != null) {
                monitorAction.d(new PDPMonitoring.Error.LoadProductScreenError(thA));
                pdpViewModelImpl2.f61136b.c("PDP details loading error", thA.toString(), null);
                mutableStateFlow2.setValue(Boolean.TRUE);
            }
            do {
                value2 = mutableStateFlow3.getValue();
                ((Boolean) value2).getClass();
            } while (!mutableStateFlow3.i(value2, Boolean.FALSE));
            monitorAction.b();
            productUiModel3 = ((PdpViewState) pdpViewModelImpl2.y0.getValue()).f61566b;
            if (productUiModel3 != null) {
                r4 = 0;
            } else if (productUiModel3.G) {
                r4 = 0;
                BuildersKt.c(ViewModelKt.a(pdpViewModelImpl2), null, null, new PdpViewModelImpl$getSizeGuide$1(pdpViewModelImpl2, productUiModel3.g, null), 3);
            } else {
                r4 = 0;
                pdpViewModelImpl2.n0.setValue(null);
            }
            if (((ProductUiModel) mutableStateFlow.getValue()) != null) {
                str2 = str;
                i2 = 3;
                BuildersKt.c(ViewModelKt.a(pdpViewModelImpl2), r4, r4, new PdpViewModelImpl$loadProductAvailabilities$1$1(pdpViewModelImpl2, str2, r4), 3);
            } else {
                str2 = str;
                i2 = 3;
            }
            productUiModel4 = (ProductUiModel) mutableStateFlow.getValue();
            if (productUiModel4 != null) {
                BuildersKt.c(ViewModelKt.a(pdpViewModelImpl2), r4, r4, new PdpViewModelImpl$loadProductVariationsAvailabilities$1$1(pdpViewModelImpl2, str2, productUiModel4, r4), i2);
            }
            return Unit.f71739a;
        }
        try {
            product = (Product) objA;
            IsFeatureAvailableUseCase isFeatureAvailableUseCase = pdpViewModelImpl2.t;
            Feature[] featureArr = {Feature.DIAMONDS_PDP};
            pdpViewModelImpl$getProductDetails$1.f61184b = null;
            pdpViewModelImpl$getProductDetails$1.f61185c = product;
            pdpViewModelImpl$getProductDetails$1.f61186e = 2;
            objC = isFeatureAvailableUseCase.c(featureArr, false, pdpViewModelImpl$getProductDetails$1);
            if (objC != coroutineSingletons) {
                objA = ProductMapperKt.b(product, ((Boolean) objC).booleanValue());
                Result.Companion companion4 = Result.INSTANCE;
                if (!(objA instanceof Result.Failure)) {
                    productUiModel = (ProductUiModel) objA;
                    productCustomizationUiModel = productUiModel.V;
                    if (productCustomizationUiModel != null) {
                        configurationUiModel = productCustomizationUiModel.f61727e;
                    } else {
                        configurationUiModel = null;
                    }
                    if (configurationUiModel != null) {
                        customizationType = CustomizationType.MONOGRAM;
                    } else {
                        if (productCustomizationUiModel != null) {
                            configurationUiModel2 = productCustomizationUiModel.d;
                        } else {
                            configurationUiModel2 = null;
                        }
                        if (configurationUiModel2 != null) {
                            customizationType = CustomizationType.BEAUTY_ENGRAVING;
                        } else {
                            if (productCustomizationUiModel != null) {
                                configurationUiModel3 = productCustomizationUiModel.f61725b;
                            } else {
                                configurationUiModel3 = null;
                            }
                            if (configurationUiModel3 != null) {
                                customizationType = CustomizationType.HOTSTAMPING;
                            } else {
                                if (productCustomizationUiModel != null) {
                                    configurationUiModel4 = productCustomizationUiModel.f61726c;
                                } else {
                                    configurationUiModel4 = null;
                                }
                                if (configurationUiModel4 != null) {
                                    customizationType = CustomizationType.PERFUME_ENGRAVING;
                                } else {
                                    customizationType = CustomizationType.NO_CUSTOMIZATION;
                                }
                            }
                        }
                    }
                    CustomizationType customizationType4 = customizationType;
                    pdpViewModelImpl2.c0.setValue(Boolean.valueOf(StringKtExtKt.g(productUiModel.t0)));
                    pdpViewModelImpl$getProductDetails$1.f61184b = objA;
                    pdpViewModelImpl$getProductDetails$1.f61185c = pdpViewModelImpl2;
                    pdpViewModelImpl$getProductDetails$1.d = productUiModel;
                    pdpViewModelImpl$getProductDetails$1.f61186e = 3;
                    objBc = PdpViewModelImpl.Bc(pdpViewModelImpl2, pdpViewModelImpl$getProductDetails$1.g, productUiModel, customizationType4, pdpViewModelImpl$getProductDetails$1.f61189i, pdpViewModelImpl$getProductDetails$1);
                    pdpViewModelImpl$getProductDetails$1 = pdpViewModelImpl$getProductDetails$1;
                    pdpViewModelImpl2 = pdpViewModelImpl2;
                    if (objBc != coroutineSingletons) {
                        obj2 = objA;
                        productUiModel2 = productUiModel;
                        pdpViewModelImpl = pdpViewModelImpl2;
                        if (!(productUiModel2.T instanceof SellableStatusUiModel.SellableUiModel)) {
                        }
                        pdpViewModelImpl.Gc(new PdpTrackingUiModel.PdpScreen(Boolean.valueOf(pdpViewModelImpl.U), ((PdpFeatureFlags) pdpViewModelImpl.e0.getValue()).f61562k, pdpViewModelImpl.V));
                        objA = obj2;
                    }
                } else {
                    str = str;
                }
                thA = Result.a(objA);
                monitorAction = pdpViewModelImpl$getProductDetails$1.f61190j;
                if (thA != null) {
                    monitorAction.d(new PDPMonitoring.Error.LoadProductScreenError(thA));
                    pdpViewModelImpl2.f61136b.c("PDP details loading error", thA.toString(), null);
                    mutableStateFlow2.setValue(Boolean.TRUE);
                }
                do {
                    value2 = mutableStateFlow3.getValue();
                    ((Boolean) value2).getClass();
                } while (!mutableStateFlow3.i(value2, Boolean.FALSE));
                monitorAction.b();
                productUiModel3 = ((PdpViewState) pdpViewModelImpl2.y0.getValue()).f61566b;
                if (productUiModel3 != null) {
                    r4 = 0;
                } else if (productUiModel3.G) {
                    r4 = 0;
                    BuildersKt.c(ViewModelKt.a(pdpViewModelImpl2), null, null, new PdpViewModelImpl$getSizeGuide$1(pdpViewModelImpl2, productUiModel3.g, null), 3);
                } else {
                    r4 = 0;
                    pdpViewModelImpl2.n0.setValue(null);
                }
                if (((ProductUiModel) mutableStateFlow.getValue()) != null) {
                    str2 = str;
                    i2 = 3;
                    BuildersKt.c(ViewModelKt.a(pdpViewModelImpl2), r4, r4, new PdpViewModelImpl$loadProductAvailabilities$1$1(pdpViewModelImpl2, str2, r4), 3);
                } else {
                    str2 = str;
                    i2 = 3;
                }
                productUiModel4 = (ProductUiModel) mutableStateFlow.getValue();
                if (productUiModel4 != null) {
                    BuildersKt.c(ViewModelKt.a(pdpViewModelImpl2), r4, r4, new PdpViewModelImpl$loadProductVariationsAvailabilities$1$1(pdpViewModelImpl2, str2, productUiModel4, r4), i2);
                }
                return Unit.f71739a;
            }
        } catch (Throwable th3) {
            th = th3;
            Result.Companion companion5 = Result.INSTANCE;
            objA = new Result.Failure(th);
        }
        return coroutineSingletons;
    }
}
