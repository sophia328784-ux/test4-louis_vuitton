package com.vuitton.android.presentation.screen.pdp;

import com.vuitton.android.presentation.screen.pdp.models.uimodels.ConfigurationUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.CustomizationConfigurationUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.ProductCustomizationUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.ProductUiModel;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function4;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u00012\b\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001H\n"}, d2 = {"<anonymous>", "", "product", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;", "hasUserCustomizedProduct", "isAddedToCart"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.pdp.PdpViewModelImpl$shouldShowCancelProductCustomizationBottomSheet$1", f = "PdpViewModelImpl.kt", l = {}, m = "invokeSuspend", v = 2)
public final class PdpViewModelImpl$shouldShowCancelProductCustomizationBottomSheet$1 extends SuspendLambda implements Function4<ProductUiModel, Boolean, Boolean, Continuation<? super Boolean>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ ProductUiModel f61257b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ boolean f61258c;
    public /* synthetic */ boolean d;

    @Override // kotlin.jvm.functions.Function4
    public final Object g(Object obj, Object obj2, Object obj3, Object obj4) {
        boolean zBooleanValue = ((Boolean) obj2).booleanValue();
        boolean zBooleanValue2 = ((Boolean) obj3).booleanValue();
        PdpViewModelImpl$shouldShowCancelProductCustomizationBottomSheet$1 pdpViewModelImpl$shouldShowCancelProductCustomizationBottomSheet$1 = new PdpViewModelImpl$shouldShowCancelProductCustomizationBottomSheet$1(4, (Continuation) obj4);
        pdpViewModelImpl$shouldShowCancelProductCustomizationBottomSheet$1.f61257b = (ProductUiModel) obj;
        pdpViewModelImpl$shouldShowCancelProductCustomizationBottomSheet$1.f61258c = zBooleanValue;
        pdpViewModelImpl$shouldShowCancelProductCustomizationBottomSheet$1.d = zBooleanValue2;
        return pdpViewModelImpl$shouldShowCancelProductCustomizationBottomSheet$1.invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code duplicated, block: B:18:0x002a  */
    /* JADX WARN: Code duplicated, block: B:21:0x0030  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        boolean z;
        ProductCustomizationUiModel productCustomizationUiModel;
        ConfigurationUiModel configurationUiModel;
        ProductCustomizationUiModel productCustomizationUiModel2;
        ConfigurationUiModel configurationUiModel2;
        ProductUiModel productUiModel = this.f61257b;
        boolean z2 = this.f61258c;
        boolean z3 = this.d;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        CustomizationConfigurationUiModel customizationConfigurationUiModel = null;
        if (((productUiModel == null || (productCustomizationUiModel2 = productUiModel.V) == null || (configurationUiModel2 = productCustomizationUiModel2.f61727e) == null) ? null : configurationUiModel2.f61665c) == null) {
            if (productUiModel != null && (productCustomizationUiModel = productUiModel.V) != null && (configurationUiModel = productCustomizationUiModel.d) != null) {
                customizationConfigurationUiModel = configurationUiModel.f61665c;
            }
            if (customizationConfigurationUiModel == null) {
                z = false;
            } else if (z2) {
                z = false;
            } else {
                z = false;
            }
        } else if (z2 || z3) {
            z = false;
        } else {
            z = true;
        }
        return Boolean.valueOf(z);
    }
}
