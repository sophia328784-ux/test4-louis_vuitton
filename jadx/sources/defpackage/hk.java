package defpackage;

import android.content.Context;
import androidx.compose.animation.AnimatedContentScope;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.navigation.NavBackStackEntry;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.LVColorScheme;
import com.vuitton.android.designkit.ui.theme.molecules.topbar.TopBarActionScope;
import com.vuitton.android.presentation.compose.components.compositionlocalprovider.LVCatalogLocalProviderKt;
import com.vuitton.android.presentation.contact.ContactUsTracker;
import com.vuitton.android.presentation.contact.compose.ContactUsIconKt;
import com.vuitton.android.presentation.contact.models.ContactUsUiModel;
import com.vuitton.android.presentation.link.builder.PassAppLinkBuilder;
import com.vuitton.android.presentation.link.navigation.ContributionLinkNavigator;
import com.vuitton.android.presentation.screen.filter.quickaccess.QuickAccessFiltersViewModel;
import com.vuitton.android.presentation.screen.main.MainNavigationState;
import com.vuitton.android.presentation.screen.pdp.components.subcomponents.PdpWishListTopBarButtonKt;
import com.vuitton.android.presentation.screen.pdp.models.PdpViewState;
import com.vuitton.android.presentation.screen.pdp.models.tracking.PdpTracker;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.ProductAvailabilityUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.ProductUiModel;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function4;
import org.bouncycastle.asn1.BERTags;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class hk implements Function4 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f69726b = 1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Function0 f69727c;
    public final /* synthetic */ Function0 d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f69728e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f69729f;
    public final /* synthetic */ Object g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ Object f69730h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ Object f69731i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ Object f69732j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final /* synthetic */ Object f69733k;

    public /* synthetic */ hk(ContactUsUiModel contactUsUiModel, PdpViewState pdpViewState, ContactUsTracker contactUsTracker, Function1 function1, Function1 function2, PdpTracker pdpTracker, Function0 function0, String str, Function0 function3) {
        this.f69728e = contactUsUiModel;
        this.f69729f = pdpViewState;
        this.g = contactUsTracker;
        this.f69730h = function1;
        this.f69731i = function2;
        this.f69732j = pdpTracker;
        this.f69727c = function0;
        this.f69733k = str;
        this.d = function3;
    }

    @Override // kotlin.jvm.functions.Function4
    public final Object g(Object obj, Object obj2, Object obj3, Object obj4) {
        String str;
        ProductUiModel productUiModel;
        String strB;
        int i2;
        ProductAvailabilityUiModel productAvailabilityUiModel;
        int i3 = this.f69726b;
        Object obj5 = this.f69733k;
        Object obj6 = this.f69732j;
        Object obj7 = this.f69731i;
        Object obj8 = this.f69730h;
        Object obj9 = this.g;
        Object obj10 = this.f69729f;
        Object obj11 = this.f69728e;
        switch (i3) {
            case 0:
                Function0 function0 = (Function0) obj5;
                NavBackStackEntry navBackStackEntry = (NavBackStackEntry) obj2;
                Composer composer = (Composer) obj3;
                a.x((Integer) obj4, (AnimatedContentScope) obj, navBackStackEntry);
                OpaqueKey opaqueKey = ComposerKt.f7940a;
                LVCatalogLocalProviderKt.a(ComposableLambdaKt.b(1768096666, new ik((MainNavigationState) obj11, (Context) obj10, navBackStackEntry, (QuickAccessFiltersViewModel) obj9, (PassAppLinkBuilder) obj8, (ContributionLinkNavigator) obj7, (Function3) obj6, this.f69727c, this.d, function0), composer), composer, 6);
                break;
            default:
                ContactUsUiModel contactUsUiModel = (ContactUsUiModel) obj11;
                PdpViewState pdpViewState = (PdpViewState) obj10;
                ContactUsTracker contactUsTracker = (ContactUsTracker) obj9;
                Function1 function1 = (Function1) obj8;
                Function1 function2 = (Function1) obj7;
                PdpTracker pdpTracker = (PdpTracker) obj6;
                String str2 = (String) obj5;
                TopBarActionScope topBarActionScope = (TopBarActionScope) obj;
                LVColorScheme lVColorScheme = (LVColorScheme) obj2;
                Composer composer2 = (Composer) obj3;
                int iIntValue = ((Integer) obj4).intValue();
                topBarActionScope.getClass();
                lVColorScheme.getClass();
                OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                boolean z = contactUsUiModel.f51154a;
                Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
                if (z && ((productAvailabilityUiModel = pdpViewState.l) == ProductAvailabilityUiModel.AddToCart || productAvailabilityUiModel == ProductAvailabilityUiModel.DisplayBackInStock || productAvailabilityUiModel == ProductAvailabilityUiModel.GoToWebsiteProductPage)) {
                    composer2.L(-1985404980);
                    Modifier modifierE = ModifierExtKt.e(new DTFunctionNameModifier("PdpScreen$lambda$7$0$0"), "pdp_ContactUs_button");
                    boolean zY = composer2.y(contactUsTracker) | composer2.y(contactUsUiModel) | composer2.K(function1);
                    Object objX = composer2.x();
                    if (zY || objX == composer$Companion$Empty$1) {
                        objX = new qp(contactUsTracker, contactUsUiModel, function1, 9);
                        composer2.q(objX);
                    }
                    Function0 function3 = (Function0) objX;
                    boolean zK = composer2.K(function2);
                    Object objX2 = composer2.x();
                    if (zK || objX2 == composer$Companion$Empty$1) {
                        objX2 = new tf0(function2, 6);
                        composer2.q(objX2);
                    }
                    str = "PdpScreen$lambda$7$0$0";
                    ContactUsIconKt.a(modifierE, contactUsUiModel, function3, (Function0) objX2, false, null, composer2, 0, 48);
                    composer2 = composer2;
                    composer2.F();
                } else {
                    str = "PdpScreen$lambda$7$0$0";
                    composer2.L(-1984623687);
                    composer2.F();
                }
                boolean z2 = pdpViewState.f61570h;
                boolean z3 = pdpViewState.s;
                if (z2) {
                    composer2.L(-1984547706);
                    Modifier modifierE2 = ModifierExtKt.e(new DTFunctionNameModifier(str), "pdp_nativeShare_button");
                    int i4 = LVAppDesignKitTheme.g(composer2).u;
                    String strC = StringResources_androidKt.c(composer2, R.string.alt_share);
                    boolean zY2 = composer2.y(pdpTracker);
                    Function0 function4 = this.f69727c;
                    boolean zK2 = zY2 | composer2.K(function4);
                    Object objX3 = composer2.x();
                    if (zK2 || objX3 == composer$Companion$Empty$1) {
                        objX3 = new dm0(pdpTracker, function4, 2);
                        composer2.q(objX3);
                    }
                    Composer composer3 = composer2;
                    TopBarActionScope.ComposeDefaultImpls.a(modifierE2, i4, strC, (Function0) objX3, lVColorScheme, null, null, false, topBarActionScope, composer3, ((iIntValue << 9) & 57344) | ((iIntValue << 24) & 234881024), BERTags.FLAGS);
                    composer2 = composer3;
                    composer2.F();
                } else {
                    composer2.L(-1983945159);
                    composer2.F();
                }
                if (pdpViewState.C || (productUiModel = pdpViewState.f61566b) == null || !productUiModel.J) {
                    composer2.L(-1982499815);
                    composer2.F();
                } else {
                    composer2.L(-1983801970);
                    if (z3) {
                        composer2.L(-1983749704);
                        strB = StringResources_androidKt.b(R.string.alt_remove_from_wishlist, new Object[]{str2}, composer2);
                        composer2.F();
                    } else {
                        composer2.L(-1983615939);
                        strB = StringResources_androidKt.b(R.string.alt_add_to_wishlist, new Object[]{str2}, composer2);
                        composer2.F();
                    }
                    DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier(str);
                    boolean zK3 = composer2.K(strB);
                    Object objX4 = composer2.x();
                    if (zK3 || objX4 == composer$Companion$Empty$1) {
                        objX4 = new nj0(strB, 8);
                        composer2.q(objX4);
                    }
                    Modifier modifierE3 = ModifierExtKt.e(SemanticsModifierKt.b(dTFunctionNameModifier, false, (Function1) objX4), "pdp_wishlist_button");
                    boolean z4 = pdpViewState.g;
                    if (z3) {
                        composer2.L(-1982980439);
                        i2 = LVAppDesignKitTheme.g(composer2).V;
                        composer2.F();
                    } else {
                        composer2.L(-1982863569);
                        i2 = LVAppDesignKitTheme.g(composer2).U;
                        composer2.F();
                    }
                    int i5 = i2;
                    boolean zY3 = composer2.y(pdpTracker);
                    Function0 function5 = this.d;
                    boolean zK4 = zY3 | composer2.K(function5);
                    Object objX5 = composer2.x();
                    if (zK4 || objX5 == composer$Companion$Empty$1) {
                        objX5 = new dm0(pdpTracker, function5, 3);
                        composer2.q(objX5);
                    }
                    PdpWishListTopBarButtonKt.a(i5, 0, composer2, modifierE3, (Function0) objX5, z4);
                    composer2.F();
                }
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ hk(MainNavigationState mainNavigationState, Context context, QuickAccessFiltersViewModel quickAccessFiltersViewModel, PassAppLinkBuilder passAppLinkBuilder, ContributionLinkNavigator contributionLinkNavigator, Function3 function3, Function0 function0, Function0 function1, Function0 function2) {
        this.f69728e = mainNavigationState;
        this.f69729f = context;
        this.g = quickAccessFiltersViewModel;
        this.f69730h = passAppLinkBuilder;
        this.f69731i = contributionLinkNavigator;
        this.f69732j = function3;
        this.f69727c = function0;
        this.d = function1;
        this.f69733k = function2;
    }
}
