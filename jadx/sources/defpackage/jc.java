package defpackage;

import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.ImageKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Top$1;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.ColumnScope;
import androidx.compose.foundation.layout.FillElement;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.foundation.lazy.LazyDslKt;
import androidx.compose.material3.IconKt;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.State;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.res.PainterResources_androidKt;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.unit.Dp;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.R;
import com.vuitton.android.designkit.components.ModifierExtKt;
import com.vuitton.android.designkit.components.components.LVCheckboxBlockKt;
import com.vuitton.android.designkit.ui.theme.GradientKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.LVColorScheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVButtonKt;
import com.vuitton.android.designkit.ui.theme.atoms.LVLinkKt;
import com.vuitton.android.designkit.ui.theme.atoms.configurations.ConfigurationButton;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetKt;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetState;
import com.vuitton.android.presentation.screen.authentication.welcome.components.WelcomeScreenKt;
import com.vuitton.android.presentation.screen.authentication.welcome.model.LoginContext;
import com.vuitton.android.presentation.screen.authentication.welcome.model.LoginContextKt$WhenMappings;
import com.vuitton.android.presentation.screen.authentication.welcome.model.WelcomeLoginAdvantages;
import com.vuitton.android.presentation.screen.authentication.welcome.model.WelcomeViewState;
import com.vuitton.android.presentation.screen.pdp.components.PdpReferencesRowKt;
import com.vuitton.android.presentation.screen.privacy.PrivacyViewModel;
import com.vuitton.android.presentation.screen.privacy.components.precompliance.PrivacyPreComplianceScreenKt;
import com.vuitton.android.presentation.screen.privacy.models.PrivacyViewState;
import com.vuitton.android.presentation.screen.wishlist.model.WishlistViewState;
import com.vuitton.foundation.model.domain.model.privacy.PrivacyType;
import java.util.List;
import kotlin.Function;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class jc implements Function3 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f71356b = 3;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ boolean f71357c;
    public final /* synthetic */ Function d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f71358e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f71359f;
    public final /* synthetic */ Object g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ Object f71360h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ Object f71361i;

    public /* synthetic */ jc(Modifier modifier, WishlistViewState wishlistViewState, boolean z, Function2 function2, Function1 function1, Function1 function3, Function1 function4) {
        this.f71359f = modifier;
        this.g = wishlistViewState;
        this.f71357c = z;
        this.f71360h = function2;
        this.f71361i = function1;
        this.d = function3;
        this.f71358e = function4;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object A(Object obj, Object obj2, Object obj3) {
        final boolean z;
        List listP;
        int i2 = this.f71356b;
        boolean z2 = this.f71357c;
        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
        Object obj4 = this.f71358e;
        Function function = this.d;
        Object obj5 = this.f71361i;
        Object obj6 = this.f71360h;
        Object obj7 = this.g;
        Object obj8 = this.f71359f;
        switch (i2) {
            case 0:
                String str = (String) obj8;
                String str2 = (String) obj7;
                String str3 = (String) obj6;
                String str4 = (String) obj5;
                Function0 function0 = (Function0) function;
                MutableState mutableState = (MutableState) obj4;
                Composer composer = (Composer) obj2;
                int iIntValue = ((Integer) obj3).intValue();
                ((ColumnScope) obj).getClass();
                if (composer.p(iIntValue & 1, (iIntValue & 17) != 16)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    PdpReferencesRowKt.a(null, str2, null, str3, str4, CollectionsKt.Q(str), null, composer, KyberEngine.KyberPolyBytes, 65);
                    TextKt.c(StringResources_androidKt.c(composer, R.string.menu_privacy_policy_entry), PaddingKt.m(new DTFunctionNameModifier("BackInStockBottomSheet_icvEI7I$lambda$4"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer).g, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), 0L, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(composer).f48428i, composer, 0, 0, 131068);
                    TextKt.c(StringResources_androidKt.c(composer, R.string.back_in_stock_privacy_policy), PaddingKt.m(tr.d("BackInStockBottomSheet_icvEI7I$lambda$4", 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), LVAppDesignKitTheme.c(composer).f48361b.l, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(composer).f48427h, composer, 0, 0, 131064);
                    if (z2) {
                        composer.L(984666814);
                        String strC = StringResources_androidKt.c(composer, R.string.kr_back_in_stock_checkbox_confirmation);
                        boolean zBooleanValue = ((Boolean) mutableState.getF10755b()).booleanValue();
                        Object objX = composer.x();
                        if (objX == composer$Companion$Empty$1) {
                            objX = new j6(3, mutableState);
                            composer.q(objX);
                        }
                        LVCheckboxBlockKt.a(null, strC, false, zBooleanValue, (Function1) objX, composer, 24576);
                        composer.F();
                    } else {
                        composer.L(984970490);
                        composer.F();
                    }
                    LVButtonKt.b(0, 376, composer, PaddingKt.m(tr.d("BackInStockBottomSheet_icvEI7I$lambda$4", 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer).f48417f, 5), LVAppDesignKitTheme.b(composer).f48446a, null, null, StringResources_androidKt.c(composer, R.string.back_in_stock_cta_notify_me), function0, false, (z2 && ((Boolean) mutableState.getF10755b()).booleanValue()) || !z2, false);
                } else {
                    composer.D();
                }
                return Unit.f71739a;
            case 1:
                final PrivacyViewModel privacyViewModel = (PrivacyViewModel) obj8;
                final LVModalBottomSheetState lVModalBottomSheetState = (LVModalBottomSheetState) obj7;
                Function0 function1 = (Function0) function;
                Function0 function2 = (Function0) obj6;
                State state = (State) obj5;
                final MutableState mutableState2 = (MutableState) obj4;
                PaddingValues paddingValues = (PaddingValues) obj;
                Composer composer2 = (Composer) obj2;
                int iIntValue2 = ((Integer) obj3).intValue();
                paddingValues.getClass();
                if ((iIntValue2 & 6) == 0) {
                    iIntValue2 |= composer2.K(paddingValues) ? 4 : 2;
                }
                if (composer2.p(iIntValue2 & 1, (iIntValue2 & 19) != 18)) {
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    PrivacyType privacyType = ((PrivacyViewState) state.getF10755b()).f63410a;
                    final boolean z3 = this.f71357c;
                    boolean zB = composer2.b(z3) | composer2.y(privacyViewModel) | composer2.y(lVModalBottomSheetState);
                    Object objX2 = composer2.x();
                    if (zB || objX2 == composer$Companion$Empty$1) {
                        final int i3 = 0;
                        objX2 = new Function0() { // from class: pp0
                            @Override // kotlin.jvm.functions.Function0
                            /* JADX INFO: renamed from: invoke */
                            public final Object mo47invoke() {
                                switch (i3) {
                                    case 0:
                                        boolean z4 = z3;
                                        PrivacyViewModel privacyViewModel2 = privacyViewModel;
                                        if (z4) {
                                            privacyViewModel2.xc(true);
                                        } else {
                                            mutableState2.setValue(new mp0(privacyViewModel2, 2));
                                            lVModalBottomSheetState.e();
                                        }
                                        break;
                                    default:
                                        boolean z5 = z3;
                                        PrivacyViewModel privacyViewModel3 = privacyViewModel;
                                        if (z5) {
                                            privacyViewModel3.za(true);
                                        } else {
                                            mutableState2.setValue(new mp0(privacyViewModel3, 3));
                                            lVModalBottomSheetState.e();
                                        }
                                        break;
                                }
                                return Unit.f71739a;
                            }
                        };
                        composer2.q(objX2);
                    }
                    Function0 function3 = (Function0) objX2;
                    boolean zB2 = composer2.b(z3) | composer2.y(privacyViewModel) | composer2.y(lVModalBottomSheetState);
                    Object objX3 = composer2.x();
                    if (zB2 || objX3 == composer$Companion$Empty$1) {
                        final int i4 = 1;
                        z = z3;
                        objX3 = new Function0() { // from class: pp0
                            @Override // kotlin.jvm.functions.Function0
                            /* JADX INFO: renamed from: invoke */
                            public final Object mo47invoke() {
                                switch (i4) {
                                    case 0:
                                        boolean z4 = z;
                                        PrivacyViewModel privacyViewModel2 = privacyViewModel;
                                        if (z4) {
                                            privacyViewModel2.xc(true);
                                        } else {
                                            mutableState2.setValue(new mp0(privacyViewModel2, 2));
                                            lVModalBottomSheetState.e();
                                        }
                                        break;
                                    default:
                                        boolean z5 = z;
                                        PrivacyViewModel privacyViewModel3 = privacyViewModel;
                                        if (z5) {
                                            privacyViewModel3.za(true);
                                        } else {
                                            mutableState2.setValue(new mp0(privacyViewModel3, 3));
                                            lVModalBottomSheetState.e();
                                        }
                                        break;
                                }
                                return Unit.f71739a;
                            }
                        };
                        composer2.q(objX3);
                    } else {
                        z = z3;
                    }
                    PrivacyPreComplianceScreenKt.a(paddingValues, privacyType, z, function3, (Function0) objX3, function1, function2, composer2, iIntValue2 & 14);
                    if (lVModalBottomSheetState.a()) {
                        composer2.L(420228178);
                        String strC2 = StringResources_androidKt.c(composer2, R.string.alt_close);
                        boolean zY = composer2.y(lVModalBottomSheetState);
                        Object objX4 = composer2.x();
                        if (zY || objX4 == composer$Companion$Empty$1) {
                            objX4 = new m8(lVModalBottomSheetState, mutableState2, 8);
                            composer2.q(objX4);
                        }
                        LVModalBottomSheetKt.b(null, strC2, (Function0) objX4, lVModalBottomSheetState, null, 0L, false, null, ComposableLambdaKt.b(492546535, new qp0(lVModalBottomSheetState, mutableState2, 0), composer2), composer2, (LVModalBottomSheetState.f48797e << 9) | 100663296, 241);
                        composer2.F();
                    } else {
                        composer2.L(420908876);
                        composer2.F();
                    }
                } else {
                    composer2.D();
                }
                return Unit.f71739a;
            case 2:
                Modifier modifierE = (Modifier) obj8;
                WelcomeViewState welcomeViewState = (WelcomeViewState) obj7;
                Function0 function4 = (Function0) function;
                Function0 function5 = (Function0) obj6;
                Function0 function6 = (Function0) obj5;
                Function0 function7 = (Function0) obj4;
                PaddingValues paddingValues2 = (PaddingValues) obj;
                Composer composer3 = (Composer) obj2;
                int iIntValue3 = ((Integer) obj3).intValue();
                float f2 = WelcomeScreenKt.f54272a;
                if (modifierE != null) {
                    modifierE = a.e(modifierE, "WelcomeScreen$lambda$3");
                }
                paddingValues2.getClass();
                if ((iIntValue3 & 6) == 0) {
                    iIntValue3 |= composer3.K(paddingValues2) ? 4 : 2;
                }
                if (composer3.p(iIntValue3 & 1, (iIntValue3 & 19) != 18)) {
                    OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                    FillElement fillElement = SizeKt.f5052c;
                    Modifier modifierB = ClipKt.b(modifierE.o(fillElement));
                    Alignment.f8582a.getClass();
                    MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                    int iHashCode = Long.hashCode(composer3.getT());
                    PersistentCompositionLocalMap persistentCompositionLocalMapN = composer3.n();
                    Modifier modifierC = ComposedModifierKt.c(composer3, modifierB);
                    ComposeUiNode.b0.getClass();
                    Function0 function8 = ComposeUiNode.Companion.f9641b;
                    if (composer3.getF7976a() == null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    composer3.B();
                    if (composer3.getS()) {
                        composer3.C(function8);
                    } else {
                        composer3.o();
                    }
                    Function2 function9 = ComposeUiNode.Companion.f9644f;
                    Updater.c(composer3, measurePolicyD, function9);
                    Function2 function10 = ComposeUiNode.Companion.f9643e;
                    Updater.c(composer3, persistentCompositionLocalMapN, function10);
                    Integer numValueOf = Integer.valueOf(iHashCode);
                    Function2 function11 = ComposeUiNode.Companion.g;
                    Updater.c(composer3, numValueOf, function11);
                    Function1 function12 = ComposeUiNode.Companion.f9645h;
                    Updater.b(composer3, function12);
                    Function2 function13 = ComposeUiNode.Companion.d;
                    Updater.c(composer3, modifierC, function13);
                    Modifier modifierA = GradientKt.a(pq0.i("WelcomeScreen$lambda$3", fillElement), GradientKt.f48345e);
                    Painter painterA = PainterResources_androidKt.a(R.drawable.login_background, composer3, 0);
                    ContentScale.f9447a.getClass();
                    ImageKt.a(painterA, null, modifierA, null, ContentScale.Companion.f9449b, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, composer3, 24632, 104);
                    Modifier modifierB2 = ModifierExtKt.b(BoxScopeInstance.f4938a.g(tr.d("WelcomeScreen$lambda$3", 1.0f), Alignment.Companion.f8589i), z2, new e31(15), composer3, 0);
                    BiasAlignment.Horizontal horizontal = Alignment.Companion.o;
                    Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
                    ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, horizontal, composer3, 48);
                    int iHashCode2 = Long.hashCode(composer3.getT());
                    Modifier modifier = modifierE;
                    PersistentCompositionLocalMap persistentCompositionLocalMapN2 = composer3.n();
                    Modifier modifierC2 = ComposedModifierKt.c(composer3, modifierB2);
                    if (composer3.getF7976a() == null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    composer3.B();
                    if (composer3.getS()) {
                        composer3.C(function8);
                    } else {
                        composer3.o();
                    }
                    Updater.c(composer3, columnMeasurePolicyA, function9);
                    Updater.c(composer3, persistentCompositionLocalMapN2, function10);
                    cj.s(iHashCode2, composer3, function11, composer3, function12);
                    IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(composer3).f48398i, composer3, 0), null, com.vuitton.android.designkit.ui.common.ModifierExtKt.e(SizeKt.o(a.f(composer3, modifierC2, function13, "WelcomeScreen$lambda$3"), LVAppDesignKitTheme.d(composer3).w), "mylvAuthentication_lvLogo_image"), LVAppDesignKitTheme.c(composer3).f48361b.m, composer3, 56, 0);
                    SpacerKt.a(composer3, SizeKt.f(new DTFunctionNameModifier("WelcomeScreen$lambda$3"), LVAppDesignKitTheme.l(composer3).g));
                    Modifier modifierH = SizeKt.h(new DTFunctionNameModifier("WelcomeScreen$lambda$3"), LVAppDesignKitTheme.d(composer3).E, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2);
                    LoginContext loginContext = welcomeViewState.f54278a;
                    boolean z4 = welcomeViewState.d;
                    boolean z5 = welcomeViewState.f54281e;
                    loginContext.getClass();
                    int i5 = LoginContextKt$WhenMappings.f54277a[loginContext.ordinal()];
                    if (i5 == 1) {
                        listP = CollectionsKt.P(WelcomeLoginAdvantages.ExclusiveService, WelcomeLoginAdvantages.MyLVAccount, WelcomeLoginAdvantages.Default, WelcomeLoginAdvantages.ContentCuration, WelcomeLoginAdvantages.PersonalWishList);
                    } else if (i5 == 2) {
                        listP = CollectionsKt.P(WelcomeLoginAdvantages.PersonalWishList, WelcomeLoginAdvantages.ExclusiveService, WelcomeLoginAdvantages.MyLVAccount, WelcomeLoginAdvantages.Default, WelcomeLoginAdvantages.ContentCuration);
                    } else {
                        if (i5 != 3 && i5 != 4 && i5 != 5) {
                            v40.g();
                            return null;
                        }
                        listP = CollectionsKt.P(WelcomeLoginAdvantages.Default, WelcomeLoginAdvantages.ContentCuration, WelcomeLoginAdvantages.PersonalWishList, WelcomeLoginAdvantages.ExclusiveService, WelcomeLoginAdvantages.MyLVAccount);
                    }
                    WelcomeScreenKt.a(modifierH, listP, composer3, 0);
                    SpacerKt.a(composer3, SizeKt.f(new DTFunctionNameModifier("WelcomeScreen$lambda$3"), LVAppDesignKitTheme.l(composer3).f48418h));
                    Modifier modifierK = PaddingKt.k(new DTFunctionNameModifier("WelcomeScreen$lambda$3"), LVAppDesignKitTheme.l(composer3).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2);
                    ColumnMeasurePolicy columnMeasurePolicyA2 = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, composer3, 0);
                    int iHashCode3 = Long.hashCode(composer3.getT());
                    PersistentCompositionLocalMap persistentCompositionLocalMapN3 = composer3.n();
                    Modifier modifierC3 = ComposedModifierKt.c(composer3, modifierK);
                    if (composer3.getF7976a() == null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    composer3.B();
                    if (composer3.getS()) {
                        composer3.C(function8);
                    } else {
                        composer3.o();
                    }
                    Updater.c(composer3, columnMeasurePolicyA2, function9);
                    Updater.c(composer3, persistentCompositionLocalMapN3, function10);
                    cj.s(iHashCode3, composer3, function11, composer3, function12);
                    Updater.c(composer3, modifierC3, function13);
                    ConfigurationButton configurationButton = LVAppDesignKitTheme.b(composer3).f48447b;
                    Modifier modifierE2 = com.vuitton.android.designkit.ui.common.ModifierExtKt.e(SizeKt.d(new DTFunctionNameModifier("WelcomeScreen$lambda$3"), 1.0f), "mylvAuthentication_signIn_button");
                    String strC3 = StringResources_androidKt.c(composer3, R.string.onboarding_connexion_login_cta);
                    boolean zK = composer3.K(function6);
                    Object objX5 = composer3.x();
                    if (zK || objX5 == composer$Companion$Empty$1) {
                        objX5 = new w11(function6, 9);
                        composer3.q(objX5);
                    }
                    LVButtonKt.b(0, 504, composer3, modifierE2, configurationButton, null, null, strC3, (Function0) objX5, false, false, false);
                    SpacerKt.a(composer3, SizeKt.f(modifier, LVAppDesignKitTheme.l(composer3).f48415c));
                    ConfigurationButton configurationButton2 = LVAppDesignKitTheme.b(composer3).f48450f;
                    Modifier modifierE3 = com.vuitton.android.designkit.ui.common.ModifierExtKt.e(SizeKt.d(new DTFunctionNameModifier("WelcomeScreen$lambda$3"), 1.0f), "mylvAuthentication_createAccount_button");
                    String strC4 = StringResources_androidKt.c(composer3, R.string.onboarding_connexion_signin_cta);
                    boolean zK2 = composer3.K(function7);
                    Object objX6 = composer3.x();
                    if (zK2 || objX6 == composer$Companion$Empty$1) {
                        objX6 = new w11(function7, 10);
                        composer3.q(objX6);
                    }
                    LVButtonKt.b(0, 504, composer3, modifierE3, configurationButton2, null, null, strC4, (Function0) objX6, false, false, false);
                    composer3.r();
                    if (z5) {
                        LVLinkKt.a(com.vuitton.android.designkit.ui.common.ModifierExtKt.e(PaddingKt.m(pq0.j(75787717, composer3, "WelcomeScreen$lambda$3"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer3).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer3).f48418h, 5), "mylvAuthentication_connectedObject_button"), StringResources_androidKt.c(composer3, R.string.connectivity_discover_title), false, LVColorScheme.INVERT, false, function4, composer3, 3072, 20);
                        composer3.F();
                    } else {
                        composer3.L(76423899);
                        composer3.F();
                    }
                    if (z4 != 0) {
                        composer3.L(76521022);
                        String strC5 = StringResources_androidKt.c(composer3, R.string.onboarding_connexion_guest_cta);
                        DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("WelcomeScreen$lambda$3");
                        float f3 = LVAppDesignKitTheme.l(composer3).f48420j;
                        float d = paddingValues2.getD() + LVAppDesignKitTheme.l(composer3).f48418h;
                        Dp.Companion companion = Dp.f11004c;
                        LVLinkKt.a(com.vuitton.android.designkit.ui.common.ModifierExtKt.e(PaddingKt.m(dTFunctionNameModifier, Call.Parameters.DEFAULT_CAMERA_ZOOM, f3, Call.Parameters.DEFAULT_CAMERA_ZOOM, d, 5), "authentificationSelection_continueAsGuest_button"), strC5, false, LVColorScheme.INVERT, false, function5, composer3, 3072, 20);
                        composer3.F();
                    } else {
                        composer3.L(77151035);
                        composer3.F();
                    }
                    if (z4 || z5) {
                        composer3.L(77451611);
                        composer3.F();
                    } else {
                        SpacerKt.a(composer3, SizeKt.f(pq0.j(77353589, composer3, "WelcomeScreen$lambda$3"), WelcomeScreenKt.f54272a));
                        composer3.F();
                    }
                    composer3.r();
                    composer3.r();
                } else {
                    composer3.D();
                }
                return Unit.f71739a;
            default:
                Modifier modifierE4 = (Modifier) obj8;
                WishlistViewState wishlistViewState = (WishlistViewState) obj7;
                Function2 function14 = (Function2) obj6;
                Function1 function15 = (Function1) obj5;
                Function1 function16 = (Function1) function;
                Function1 function17 = (Function1) obj4;
                PaddingValues paddingValues3 = (PaddingValues) obj;
                Composer composer4 = (Composer) obj2;
                int iIntValue4 = ((Integer) obj3).intValue();
                if (modifierE4 != null) {
                    modifierE4 = a.e(modifierE4, "WishlistScreen$lambda$2");
                }
                paddingValues3.getClass();
                if ((iIntValue4 & 6) == 0) {
                    iIntValue4 |= composer4.K(paddingValues3) ? 4 : 2;
                }
                if (composer4.p(iIntValue4 & 1, (iIntValue4 & 19) != 18)) {
                    OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                    Modifier modifierH2 = PaddingKt.h(BackgroundKt.b(new DTFunctionNameModifier("WishlistScreen$lambda$2"), LVAppDesignKitTheme.c(composer4).f48361b.f48375b, RectangleShapeKt.f8913a), paddingValues3);
                    FillElement fillElement2 = SizeKt.f5052c;
                    Modifier modifierO = modifierH2.o(fillElement2);
                    Alignment.f8582a.getClass();
                    BiasAlignment biasAlignment = Alignment.Companion.f8584b;
                    MeasurePolicy measurePolicyD2 = BoxKt.d(biasAlignment, false);
                    int iHashCode4 = Long.hashCode(composer4.getT());
                    PersistentCompositionLocalMap persistentCompositionLocalMapN4 = composer4.n();
                    Modifier modifierC4 = ComposedModifierKt.c(composer4, modifierO);
                    ComposeUiNode.b0.getClass();
                    Function0 function18 = ComposeUiNode.Companion.f9641b;
                    if (composer4.getF7976a() == null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    composer4.B();
                    if (composer4.getS()) {
                        composer4.C(function18);
                    } else {
                        composer4.o();
                    }
                    Function2 function19 = ComposeUiNode.Companion.f9644f;
                    Updater.c(composer4, measurePolicyD2, function19);
                    Function2 function20 = ComposeUiNode.Companion.f9643e;
                    Updater.c(composer4, persistentCompositionLocalMapN4, function20);
                    Integer numValueOf2 = Integer.valueOf(iHashCode4);
                    Function2 function21 = ComposeUiNode.Companion.g;
                    Updater.c(composer4, numValueOf2, function21);
                    Function1 function22 = ComposeUiNode.Companion.f9645h;
                    Updater.b(composer4, function22);
                    Function2 function23 = ComposeUiNode.Companion.d;
                    Updater.c(composer4, modifierC4, function23);
                    Modifier modifierO2 = modifierE4.o(fillElement2);
                    MeasurePolicy measurePolicyD3 = BoxKt.d(biasAlignment, false);
                    int iHashCode5 = Long.hashCode(composer4.getT());
                    PersistentCompositionLocalMap persistentCompositionLocalMapN5 = composer4.n();
                    Modifier modifierC5 = ComposedModifierKt.c(composer4, modifierO2);
                    if (composer4.getF7976a() == null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    composer4.B();
                    if (composer4.getS()) {
                        composer4.C(function18);
                    } else {
                        composer4.o();
                    }
                    Updater.c(composer4, measurePolicyD3, function19);
                    Updater.c(composer4, persistentCompositionLocalMapN5, function20);
                    cj.s(iHashCode5, composer4, function21, composer4, function22);
                    Updater.c(composer4, modifierC5, function23);
                    Modifier modifierK2 = PaddingKt.k(new DTFunctionNameModifier("WishlistScreen$lambda$2").o(fillElement2), LVAppDesignKitTheme.l(composer4).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2);
                    boolean zY2 = composer4.y(wishlistViewState);
                    boolean z6 = this.f71357c;
                    boolean zB3 = zY2 | composer4.b(z6) | composer4.K(function14) | composer4.K(function15) | composer4.K(function16) | composer4.K(function17);
                    Object objX7 = composer4.x();
                    if (zB3 || objX7 == composer$Companion$Empty$1) {
                        objX7 = new nh(2, wishlistViewState, function14, function15, function16, function17, z6);
                        composer4.q(objX7);
                    }
                    LazyDslKt.a(modifierK2, null, null, null, null, null, false, null, (Function1) objX7, composer4, 0, 510);
                    composer4.r();
                    composer4.r();
                } else {
                    composer4.D();
                }
                return Unit.f71739a;
        }
    }

    public /* synthetic */ jc(Modifier modifier, boolean z, WelcomeViewState welcomeViewState, Function0 function0, Function0 function1, Function0 function2, Function0 function3) {
        this.f71359f = modifier;
        this.f71357c = z;
        this.g = welcomeViewState;
        this.d = function0;
        this.f71360h = function1;
        this.f71361i = function2;
        this.f71358e = function3;
    }

    public /* synthetic */ jc(String str, String str2, String str3, String str4, boolean z, Function0 function0, MutableState mutableState) {
        this.f71359f = str;
        this.g = str2;
        this.f71360h = str3;
        this.f71361i = str4;
        this.f71357c = z;
        this.d = function0;
        this.f71358e = mutableState;
    }

    public /* synthetic */ jc(boolean z, PrivacyViewModel privacyViewModel, LVModalBottomSheetState lVModalBottomSheetState, Function0 function0, Function0 function1, MutableState mutableState, MutableState mutableState2) {
        this.f71357c = z;
        this.f71359f = privacyViewModel;
        this.g = lVModalBottomSheetState;
        this.d = function0;
        this.f71360h = function1;
        this.f71361i = mutableState;
        this.f71358e = mutableState2;
    }
}
