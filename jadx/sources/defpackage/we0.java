package defpackage;

import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Start$1;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.lazy.LazyItemScope;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.MutableFloatState;
import androidx.compose.runtime.MutableIntState;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.OnRemeasuredModifierKt;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.unit.Dp;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.presentation.compose.components.LVCardKt;
import com.vuitton.android.presentation.screen.cart.components.giftmessage.GiftCardKt;
import com.vuitton.android.presentation.screen.cart.components.packaging.SignatureBoxCardKt;
import com.vuitton.android.presentation.screen.cart.models.AutomationTagsCart$CardType;
import com.vuitton.android.presentation.screen.cart.models.CartContributionUiModel;
import com.vuitton.android.presentation.screen.cart.models.CartUiModel;
import com.vuitton.android.presentation.screen.cart.models.ContributionGiftingUiModel;
import com.vuitton.android.presentation.screen.cart.models.ContributionPackagingUiModel;
import com.vuitton.android.presentation.screen.cart.models.ContributionShoppingBagUiModel;
import com.vuitton.android.presentation.screen.cart.models.NativeCartViewState;
import com.vuitton.android.presentation.screen.orders.components.detail.OrderDetailScreenKt;
import com.vuitton.android.presentation.screen.orders.models.OrderStatusUiModel;
import com.vuitton.android.presentation.screen.orders.models.OrderViewState;
import com.vuitton.android.presentation.screen.reinsurance.models.ReinsuranceUiModel;
import com.vuitton.foundation.model.domain.model.cart.GiftOption;
import com.vuitton.foundation.model.domain.model.cart.ShoppingBag;
import kotlin.Function;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function4;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class we0 implements Function3 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f80846b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ float f80847c;
    public final /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f80848e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Function f80849f;
    public final /* synthetic */ Object g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ Object f80850h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ Object f80851i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ Object f80852j;

    public /* synthetic */ we0(float f2, NativeCartViewState nativeCartViewState, Function0 function0, Function0 function1, ReinsuranceUiModel reinsuranceUiModel, Function1 function2, Function0 function3, Function0 function4) {
        this.f80847c = f2;
        this.d = nativeCartViewState;
        this.f80848e = function0;
        this.f80849f = function1;
        this.f80851i = reinsuranceUiModel;
        this.f80852j = function2;
        this.g = function3;
        this.f80850h = function4;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object A(Object obj, Object obj2, Object obj3) {
        GiftOption giftOption;
        ContributionPackagingUiModel contributionPackagingUiModel;
        ContributionPackagingUiModel contributionPackagingUiModel2;
        ContributionPackagingUiModel contributionPackagingUiModel3;
        ContributionPackagingUiModel contributionPackagingUiModel4;
        ShoppingBag shoppingBag;
        ContributionGiftingUiModel contributionGiftingUiModel;
        int i2 = this.f80846b;
        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
        Object obj4 = this.f80852j;
        Object obj5 = this.f80851i;
        Object obj6 = this.f80850h;
        Object obj7 = this.g;
        Function function = this.f80849f;
        Object obj8 = this.f80848e;
        Object obj9 = this.d;
        switch (i2) {
            case 0:
                String str = null;
                NativeCartViewState nativeCartViewState = (NativeCartViewState) obj9;
                Function0 function0 = (Function0) obj8;
                Function0 function1 = (Function0) function;
                ReinsuranceUiModel reinsuranceUiModel = (ReinsuranceUiModel) obj5;
                Function1 function2 = (Function1) obj4;
                Function0 function3 = (Function0) obj7;
                Function0 function4 = (Function0) obj6;
                Composer composer = (Composer) obj2;
                int iIntValue = ((Integer) obj3).intValue();
                ((LazyItemScope) obj).getClass();
                if (composer.p(iIntValue & 1, (iIntValue & 17) != 16)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    Modifier modifierK = PaddingKt.k(new DTFunctionNameModifier("NativeCartMainView$lambda$2$0$6"), this.f80847c, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2);
                    Arrangement$Start$1 arrangement$Start$1 = Arrangement.f4918a;
                    Arrangement.SpacedAligned spacedAlignedF = Arrangement.f(LVAppDesignKitTheme.l(composer).f48416e);
                    Alignment.f8582a.getClass();
                    ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(spacedAlignedF, Alignment.Companion.n, composer, 0);
                    int iHashCode = Long.hashCode(composer.getT());
                    PersistentCompositionLocalMap persistentCompositionLocalMapN = composer.n();
                    Modifier modifierC = ComposedModifierKt.c(composer, modifierK);
                    ComposeUiNode.b0.getClass();
                    Function0 function5 = ComposeUiNode.Companion.f9641b;
                    if (composer.getF7976a() == null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    composer.B();
                    if (composer.getS()) {
                        composer.C(function5);
                    } else {
                        composer.o();
                    }
                    Updater.c(composer, columnMeasurePolicyA, ComposeUiNode.Companion.f9644f);
                    Updater.c(composer, persistentCompositionLocalMapN, ComposeUiNode.Companion.f9643e);
                    Updater.c(composer, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                    Updater.b(composer, ComposeUiNode.Companion.f9645h);
                    Modifier modifierC2 = n00.c(composer, modifierC, ComposeUiNode.Companion.d, "NativeCartMainView$lambda$2$0$6", 1.0f);
                    CartUiModel cartUiModel = nativeCartViewState.f55204a;
                    CartContributionUiModel cartContributionUiModel = nativeCartViewState.o;
                    if (cartUiModel == null || (giftOption = cartUiModel.f55184e) == null) {
                        giftOption = GiftOption.None.f66980a;
                    }
                    GiftCardKt.a(modifierC2, giftOption, (cartContributionUiModel == null || (contributionGiftingUiModel = cartContributionUiModel.f55136a) == null) ? null : contributionGiftingUiModel.f55188a, nativeCartViewState.p, function0, function1, composer, 6);
                    if (cartUiModel == null || (shoppingBag = cartUiModel.g) == null || !shoppingBag.f66999a) {
                        composer.L(-1768522385);
                        composer.F();
                    } else {
                        composer.L(-1769317132);
                        ContributionShoppingBagUiModel contributionShoppingBagUiModel = cartContributionUiModel != null ? cartContributionUiModel.f55137b : null;
                        Modifier modifierD = tr.d("NativeCartMainView$lambda$2$0$6", 1.0f);
                        String strK = contributionShoppingBagUiModel != null ? contributionShoppingBagUiModel.f55194a : null;
                        if (strK == null) {
                            strK = o60.k(composer, -114112172, R.string.cart_gift_panel_add_bag_title, composer);
                        } else {
                            composer.L(-114112637);
                            composer.F();
                        }
                        String str2 = strK;
                        String str3 = contributionShoppingBagUiModel != null ? contributionShoppingBagUiModel.f55196c : null;
                        String strK2 = contributionShoppingBagUiModel != null ? contributionShoppingBagUiModel.f55195b : null;
                        if (strK2 == null) {
                            strK2 = o60.k(composer, -114104262, R.string.cart_gift_panel_add_bag_description, composer);
                        } else {
                            composer.L(-114104913);
                            composer.F();
                        }
                        LVCardKt.b(modifierD, str2, strK2, str3, false, shoppingBag.f67000b, AutomationTagsCart$CardType.SHOPPING_BAG, function4, composer, 12582918);
                        composer.F();
                    }
                    if (reinsuranceUiModel != null) {
                        Modifier modifierH = pq0.h(1.0f, -1768452790, composer, "NativeCartMainView$lambda$2$0$6");
                        boolean zY = composer.y(nativeCartViewState) | composer.K(function2) | composer.K(function3);
                        Object objX = composer.x();
                        if (zY || objX == composer$Companion$Empty$1) {
                            objX = new pp((Object) nativeCartViewState, function2, (Object) function3, 27);
                            composer.q(objX);
                        }
                        Modifier modifierC3 = ModifierExtKt.c(modifierH, false, null, null, (Function0) objX, 31);
                        String str4 = (cartContributionUiModel == null || (contributionPackagingUiModel4 = cartContributionUiModel.f55138c) == null) ? null : contributionPackagingUiModel4.f55191a;
                        String str5 = (cartContributionUiModel == null || (contributionPackagingUiModel3 = cartContributionUiModel.f55138c) == null) ? null : contributionPackagingUiModel3.f55192b;
                        String str6 = (cartContributionUiModel == null || (contributionPackagingUiModel2 = cartContributionUiModel.f55138c) == null) ? null : contributionPackagingUiModel2.f55193c;
                        if (cartContributionUiModel != null && (contributionPackagingUiModel = cartContributionUiModel.f55138c) != null) {
                            str = contributionPackagingUiModel.d;
                        }
                        SignatureBoxCardKt.a(modifierC3, str4, str5, str6, Boolean.valueOf(str != null), composer, 0);
                        composer.F();
                    } else {
                        composer.L(-1767556177);
                        composer.F();
                    }
                    composer.r();
                } else {
                    composer.D();
                }
                return Unit.f71739a;
            default:
                OrderViewState orderViewState = (OrderViewState) obj9;
                OrderStatusUiModel orderStatusUiModel = (OrderStatusUiModel) obj8;
                Function4 function6 = (Function4) function;
                MutableIntState mutableIntState = (MutableIntState) obj7;
                MutableIntState mutableIntState2 = (MutableIntState) obj6;
                MutableState mutableState = (MutableState) obj5;
                MutableFloatState mutableFloatState = (MutableFloatState) obj4;
                Composer composer2 = (Composer) obj2;
                int iIntValue2 = ((Integer) obj3).intValue();
                ((PaddingValues) obj).getClass();
                if (composer2.p(iIntValue2 & 1, (iIntValue2 & 17) != 16)) {
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    Modifier modifierB = BackgroundKt.b(new DTFunctionNameModifier("OrderDetailScreen$lambda$19").o(SizeKt.f5052c), LVAppDesignKitTheme.c(composer2).f48361b.u, RectangleShapeKt.f8913a);
                    Alignment.f8582a.getClass();
                    MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                    int iHashCode2 = Long.hashCode(composer2.getT());
                    PersistentCompositionLocalMap persistentCompositionLocalMapN2 = composer2.n();
                    Modifier modifierC4 = ComposedModifierKt.c(composer2, modifierB);
                    ComposeUiNode.b0.getClass();
                    Function0 function7 = ComposeUiNode.Companion.f9641b;
                    if (composer2.getF7976a() == null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    composer2.B();
                    if (composer2.getS()) {
                        composer2.C(function7);
                    } else {
                        composer2.o();
                    }
                    Updater.c(composer2, measurePolicyD, ComposeUiNode.Companion.f9644f);
                    Updater.c(composer2, persistentCompositionLocalMapN2, ComposeUiNode.Companion.f9643e);
                    Updater.c(composer2, Integer.valueOf(iHashCode2), ComposeUiNode.Companion.g);
                    Updater.b(composer2, ComposeUiNode.Companion.f9645h);
                    DTFunctionNameModifier dTFunctionNameModifierF = a.f(composer2, modifierC4, ComposeUiNode.Companion.d, "OrderDetailScreen$lambda$19");
                    Object objX2 = composer2.x();
                    if (objX2 == composer$Companion$Empty$1) {
                        objX2 = new q1(mutableIntState, 10);
                        composer2.q(objX2);
                    }
                    Modifier modifierA = OnRemeasuredModifierKt.a(dTFunctionNameModifierF, (Function1) objX2);
                    DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("OrderDetailScreen$lambda$19");
                    Object objX3 = composer2.x();
                    if (objX3 == composer$Companion$Empty$1) {
                        objX3 = new q1(mutableIntState2, 11);
                        composer2.q(objX3);
                    }
                    Modifier modifierA2 = OnRemeasuredModifierKt.a(dTFunctionNameModifier, (Function1) objX3);
                    float f2 = ((Dp) mutableState.getF10755b()).f11006b;
                    float fA = mutableFloatState.a();
                    boolean zK = composer2.K(function6) | composer2.y(orderViewState) | composer2.y(orderStatusUiModel);
                    Object objX4 = composer2.x();
                    if (zK || objX4 == composer$Companion$Empty$1) {
                        objX4 = new jx(function6, orderViewState, orderStatusUiModel, 24);
                        composer2.q(objX4);
                    }
                    OrderDetailScreenKt.f(modifierA, modifierA2, this.f80847c, f2, fA, orderViewState, orderStatusUiModel, (Function1) objX4, composer2, 54);
                    composer2.r();
                } else {
                    composer2.D();
                }
                return Unit.f71739a;
        }
    }

    public /* synthetic */ we0(float f2, OrderViewState orderViewState, OrderStatusUiModel orderStatusUiModel, Function4 function4, MutableIntState mutableIntState, MutableIntState mutableIntState2, MutableState mutableState, MutableFloatState mutableFloatState) {
        this.f80847c = f2;
        this.d = orderViewState;
        this.f80848e = orderStatusUiModel;
        this.f80849f = function4;
        this.g = mutableIntState;
        this.f80850h = mutableIntState2;
        this.f80851i = mutableState;
        this.f80852j = mutableFloatState;
    }
}
