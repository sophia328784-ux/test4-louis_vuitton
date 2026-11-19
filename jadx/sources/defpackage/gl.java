package defpackage;

import androidx.compose.animation.AnimatedVisibilityScope;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Top$1;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.ColumnScope;
import androidx.compose.foundation.layout.ColumnScopeInstance;
import androidx.compose.foundation.layout.FillElement;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.material3.IconKt;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.graphics.RectangleShapeKt$RectangleShape$1;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.res.PainterResources_androidKt;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.text.style.TextAlign;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVButtonKt;
import com.vuitton.android.designkit.ui.theme.atoms.configurations.ConfigurationButton;
import com.vuitton.android.designkit.ui.theme.templates.LVEmptyViewKt;
import com.vuitton.android.presentation.screen.certificates.components.add.CertificateConfirmationScreenKt;
import com.vuitton.android.presentation.screen.options.optoutprivacymenu.components.OptOutMenuScreenKt;
import com.vuitton.android.presentation.screen.spotlight.components.SpotlightOnboardingKt;
import com.vuitton.android.presentation.screen.spotlight.components.SpotlightScreenKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class gl implements Function3 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f69440b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Function0 f69441c;
    public final /* synthetic */ Function0 d;

    public /* synthetic */ gl(Function0 function0, Function0 function1, int i2) {
        this.f69440b = i2;
        this.f69441c = function0;
        this.d = function1;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object A(Object obj, Object obj2, Object obj3) {
        int i2 = this.f69440b;
        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
        RectangleShapeKt$RectangleShape$1 rectangleShapeKt$RectangleShape$1 = RectangleShapeKt.f8913a;
        Function0 function0 = this.d;
        Function0 function1 = this.f69441c;
        switch (i2) {
            case 0:
                PaddingValues paddingValues = (PaddingValues) obj;
                Composer composer = (Composer) obj2;
                int iIntValue = ((Integer) obj3).intValue();
                paddingValues.getClass();
                if ((iIntValue & 6) == 0) {
                    iIntValue |= composer.K(paddingValues) ? 4 : 2;
                }
                if (composer.p(iIntValue & 1, (iIntValue & 19) != 18)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("CertificateConfirmationScreen$lambda$2");
                    FillElement fillElement = SizeKt.f5052c;
                    Modifier modifierH = PaddingKt.h(BackgroundKt.b(dTFunctionNameModifier.o(fillElement), LVAppDesignKitTheme.c(composer).f48361b.f48375b, rectangleShapeKt$RectangleShape$1), paddingValues);
                    Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
                    Alignment.f8582a.getClass();
                    ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, composer, 0);
                    int iHashCode = Long.hashCode(composer.getT());
                    PersistentCompositionLocalMap persistentCompositionLocalMapN = composer.n();
                    Modifier modifierC = ComposedModifierKt.c(composer, modifierH);
                    ComposeUiNode.b0.getClass();
                    Function0 function2 = ComposeUiNode.Companion.f9641b;
                    if (composer.getF7976a() == null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    composer.B();
                    if (composer.getS()) {
                        composer.C(function2);
                    } else {
                        composer.o();
                    }
                    Function2 function3 = ComposeUiNode.Companion.f9644f;
                    Updater.c(composer, columnMeasurePolicyA, function3);
                    Function2 function4 = ComposeUiNode.Companion.f9643e;
                    Updater.c(composer, persistentCompositionLocalMapN, function4);
                    Integer numValueOf = Integer.valueOf(iHashCode);
                    Function2 function5 = ComposeUiNode.Companion.g;
                    Updater.c(composer, numValueOf, function5);
                    Function1 function6 = ComposeUiNode.Companion.f9645h;
                    Updater.b(composer, function6);
                    Function2 function7 = ComposeUiNode.Companion.d;
                    Updater.c(composer, modifierC, function7);
                    Modifier modifierA = ColumnScopeInstance.f4944a.a(new DTFunctionNameModifier("CertificateConfirmationScreen$lambda$2").o(fillElement), 1.0f, true);
                    ColumnMeasurePolicy columnMeasurePolicyA2 = ColumnKt.a(Arrangement.f4921e, Alignment.Companion.o, composer, 54);
                    int iHashCode2 = Long.hashCode(composer.getT());
                    PersistentCompositionLocalMap persistentCompositionLocalMapN2 = composer.n();
                    Modifier modifierC2 = ComposedModifierKt.c(composer, modifierA);
                    if (composer.getF7976a() == null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    composer.B();
                    if (composer.getS()) {
                        composer.C(function2);
                    } else {
                        composer.o();
                    }
                    Updater.c(composer, columnMeasurePolicyA2, function3);
                    Updater.c(composer, persistentCompositionLocalMapN2, function4);
                    cj.s(iHashCode2, composer, function5, composer, function6);
                    Updater.c(composer, modifierC2, function7);
                    IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(composer).D0, composer, 0), null, SizeKt.o(new DTFunctionNameModifier("CertificateConfirmationScreen$lambda$2"), LVAppDesignKitTheme.d(composer).A), 0L, composer, 56, 8);
                    String strC = StringResources_androidKt.c(composer, R.string.certificate_activation_pending_title);
                    Modifier modifierD = SizeKt.d(PaddingKt.m(Modifier.Companion.f8607b, LVAppDesignKitTheme.l(composer).g, LVAppDesignKitTheme.l(composer).f48417f, LVAppDesignKitTheme.l(composer).g, Call.Parameters.DEFAULT_CAMERA_ZOOM, 8), 1.0f);
                    TextAlign.f10959b.getClass();
                    TextKt.c(strC, modifierD, 0L, 0L, null, 0L, null, new TextAlign(TextAlign.f10961e), 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(composer).d, composer, 0, 0, 130044);
                    composer.r();
                    CertificateConfirmationScreenKt.b(composer, 0);
                    ConfigurationButton configurationButton = LVAppDesignKitTheme.b(composer).f48446a;
                    String strC2 = StringResources_androidKt.c(composer, R.string.my_certificate_redirection_mylv);
                    Modifier modifierL = PaddingKt.l(tr.d("CertificateConfirmationScreen$lambda$2", 1.0f), LVAppDesignKitTheme.l(composer).f48416e, LVAppDesignKitTheme.l(composer).f48415c, LVAppDesignKitTheme.l(composer).f48416e, LVAppDesignKitTheme.l(composer).f48417f);
                    boolean zK = composer.K(function1) | composer.K(function0);
                    Object objX = composer.x();
                    if (zK || objX == composer$Companion$Empty$1) {
                        objX = new il(function1, function0, 0);
                        composer.q(objX);
                    }
                    LVButtonKt.b(0, 504, composer, modifierL, configurationButton, null, null, strC2, (Function0) objX, false, false, false);
                    composer.r();
                } else {
                    composer.D();
                }
                return Unit.f71739a;
            case 1:
                Composer composer2 = (Composer) obj2;
                int iIntValue2 = ((Integer) obj3).intValue();
                ((ColumnScope) obj).getClass();
                if (composer2.p(iIntValue2 & 1, (iIntValue2 & 17) != 16)) {
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    DTFunctionNameModifier dTFunctionNameModifier2 = new DTFunctionNameModifier("MultipleCustomizationBottomSheet$lambda$0");
                    Arrangement$Top$1 arrangement$Top$2 = Arrangement.f4920c;
                    Alignment.f8582a.getClass();
                    ColumnMeasurePolicy columnMeasurePolicyA3 = ColumnKt.a(arrangement$Top$2, Alignment.Companion.n, composer2, 0);
                    int iHashCode3 = Long.hashCode(composer2.getT());
                    PersistentCompositionLocalMap persistentCompositionLocalMapN3 = composer2.n();
                    Modifier modifierC3 = ComposedModifierKt.c(composer2, dTFunctionNameModifier2);
                    ComposeUiNode.b0.getClass();
                    Function0 function8 = ComposeUiNode.Companion.f9641b;
                    if (composer2.getF7976a() == null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    composer2.B();
                    if (composer2.getS()) {
                        composer2.C(function8);
                    } else {
                        composer2.o();
                    }
                    Updater.c(composer2, columnMeasurePolicyA3, ComposeUiNode.Companion.f9644f);
                    Updater.c(composer2, persistentCompositionLocalMapN3, ComposeUiNode.Companion.f9643e);
                    Updater.c(composer2, Integer.valueOf(iHashCode3), ComposeUiNode.Companion.g);
                    Updater.b(composer2, ComposeUiNode.Companion.f9645h);
                    TextKt.c(StringResources_androidKt.c(composer2, R.string.multiple_perso_bottomsheet_pdp_text), PaddingKt.m(a.f(composer2, modifierC3, ComposeUiNode.Companion.d, "MultipleCustomizationBottomSheet$lambda$0"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).f48417f, 7), LVAppDesignKitTheme.c(composer2).f48361b.l, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(composer2).g, composer2, 0, 0, 131064);
                    LVButtonKt.b(0, 504, composer2, PaddingKt.m(tr.d("MultipleCustomizationBottomSheet$lambda$0", 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).f48415c, 7), LVAppDesignKitTheme.b(composer2).f48446a, null, null, StringResources_androidKt.c(composer2, R.string.cta_continue), this.f69441c, false, false, false);
                    LVButtonKt.b(0, 504, composer2, PaddingKt.m(tr.d("MultipleCustomizationBottomSheet$lambda$0", 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).g, 7), LVAppDesignKitTheme.b(composer2).f48449e, null, null, StringResources_androidKt.c(composer2, R.string.global_cancel), this.d, false, false, false);
                    composer2.r();
                } else {
                    composer2.D();
                }
                return Unit.f71739a;
            case 2:
                PaddingValues paddingValues2 = (PaddingValues) obj;
                Composer composer3 = (Composer) obj2;
                int iIntValue3 = ((Integer) obj3).intValue();
                paddingValues2.getClass();
                if ((iIntValue3 & 6) == 0) {
                    iIntValue3 |= composer3.K(paddingValues2) ? 4 : 2;
                }
                if (composer3.p(iIntValue3 & 1, (iIntValue3 & 19) != 18)) {
                    OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                    Modifier modifierB = BackgroundKt.b(o60.e("OptOutMenuScreen$lambda$1", paddingValues2).o(SizeKt.f5052c), LVAppDesignKitTheme.c(composer3).f48361b.f48375b, rectangleShapeKt$RectangleShape$1);
                    Arrangement$Top$1 arrangement$Top$3 = Arrangement.f4920c;
                    Alignment.f8582a.getClass();
                    BiasAlignment.Horizontal horizontal = Alignment.Companion.n;
                    ColumnMeasurePolicy columnMeasurePolicyA4 = ColumnKt.a(arrangement$Top$3, horizontal, composer3, 0);
                    int iHashCode4 = Long.hashCode(composer3.getT());
                    PersistentCompositionLocalMap persistentCompositionLocalMapN4 = composer3.n();
                    Modifier modifierC4 = ComposedModifierKt.c(composer3, modifierB);
                    ComposeUiNode.b0.getClass();
                    Function0 function9 = ComposeUiNode.Companion.f9641b;
                    if (composer3.getF7976a() == null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    composer3.B();
                    if (composer3.getS()) {
                        composer3.C(function9);
                    } else {
                        composer3.o();
                    }
                    Function2 function10 = ComposeUiNode.Companion.f9644f;
                    Updater.c(composer3, columnMeasurePolicyA4, function10);
                    Function2 function11 = ComposeUiNode.Companion.f9643e;
                    Updater.c(composer3, persistentCompositionLocalMapN4, function11);
                    Integer numValueOf2 = Integer.valueOf(iHashCode4);
                    Function2 function12 = ComposeUiNode.Companion.g;
                    Updater.c(composer3, numValueOf2, function12);
                    Function1 function13 = ComposeUiNode.Companion.f9645h;
                    Updater.b(composer3, function13);
                    Function2 function14 = ComposeUiNode.Companion.d;
                    Modifier modifierI = PaddingKt.i(BackgroundKt.b(PaddingKt.k(PaddingKt.m(a.f(composer3, modifierC4, function14, "OptOutMenuScreen$lambda$1"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer3).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), LVAppDesignKitTheme.l(composer3).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), LVAppDesignKitTheme.c(composer3).f48361b.f48374a, rectangleShapeKt$RectangleShape$1), LVAppDesignKitTheme.l(composer3).f48416e);
                    ColumnMeasurePolicy columnMeasurePolicyA5 = ColumnKt.a(arrangement$Top$3, horizontal, composer3, 0);
                    int iHashCode5 = Long.hashCode(composer3.getT());
                    PersistentCompositionLocalMap persistentCompositionLocalMapN5 = composer3.n();
                    Modifier modifierC5 = ComposedModifierKt.c(composer3, modifierI);
                    if (composer3.getF7976a() == null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    composer3.B();
                    if (composer3.getS()) {
                        composer3.C(function9);
                    } else {
                        composer3.o();
                    }
                    Updater.c(composer3, columnMeasurePolicyA5, function10);
                    Updater.c(composer3, persistentCompositionLocalMapN5, function11);
                    cj.s(iHashCode5, composer3, function12, composer3, function13);
                    Updater.c(composer3, modifierC5, function14);
                    OptOutMenuScreenKt.a(StringResources_androidKt.c(composer3, R.string.mylv_settings_gcm_lva_optout_cookieschoice), function1, composer3, 0);
                    SpacerKt.a(composer3, SizeKt.o(new DTFunctionNameModifier("OptOutMenuScreen$lambda$1"), LVAppDesignKitTheme.l(composer3).f48417f));
                    OptOutMenuScreenKt.a(StringResources_androidKt.c(composer3, R.string.mylv_settings_gcm_lva_optout_othertypes_choice), function0, composer3, 0);
                    composer3.r();
                    composer3.r();
                } else {
                    composer3.D();
                }
                return Unit.f71739a;
            case 3:
                PaddingValues paddingValues3 = (PaddingValues) obj;
                Composer composer4 = (Composer) obj2;
                int iIntValue4 = ((Integer) obj3).intValue();
                paddingValues3.getClass();
                if ((iIntValue4 & 6) == 0) {
                    iIntValue4 |= composer4.K(paddingValues3) ? 4 : 2;
                }
                if (composer4.p(iIntValue4 & 1, (iIntValue4 & 19) != 18)) {
                    OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                    Modifier modifierB2 = BackgroundKt.b(o60.e("OptOutOthersScreen$lambda$1", paddingValues3).o(SizeKt.f5052c), LVAppDesignKitTheme.c(composer4).f48361b.f48375b, rectangleShapeKt$RectangleShape$1);
                    Arrangement$Top$1 arrangement$Top$4 = Arrangement.f4920c;
                    Alignment.f8582a.getClass();
                    BiasAlignment.Horizontal horizontal2 = Alignment.Companion.n;
                    ColumnMeasurePolicy columnMeasurePolicyA6 = ColumnKt.a(arrangement$Top$4, horizontal2, composer4, 0);
                    int iHashCode6 = Long.hashCode(composer4.getT());
                    PersistentCompositionLocalMap persistentCompositionLocalMapN6 = composer4.n();
                    Modifier modifierC6 = ComposedModifierKt.c(composer4, modifierB2);
                    ComposeUiNode.b0.getClass();
                    Function0 function15 = ComposeUiNode.Companion.f9641b;
                    if (composer4.getF7976a() == null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    composer4.B();
                    if (composer4.getS()) {
                        composer4.C(function15);
                    } else {
                        composer4.o();
                    }
                    Function2 function16 = ComposeUiNode.Companion.f9644f;
                    Updater.c(composer4, columnMeasurePolicyA6, function16);
                    Function2 function17 = ComposeUiNode.Companion.f9643e;
                    Updater.c(composer4, persistentCompositionLocalMapN6, function17);
                    Integer numValueOf3 = Integer.valueOf(iHashCode6);
                    Function2 function18 = ComposeUiNode.Companion.g;
                    Updater.c(composer4, numValueOf3, function18);
                    Function1 function19 = ComposeUiNode.Companion.f9645h;
                    Updater.b(composer4, function19);
                    Function2 function20 = ComposeUiNode.Companion.d;
                    Modifier modifierI2 = PaddingKt.i(BackgroundKt.b(PaddingKt.k(PaddingKt.m(a.f(composer4, modifierC6, function20, "OptOutOthersScreen$lambda$1"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer4).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), LVAppDesignKitTheme.l(composer4).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), LVAppDesignKitTheme.c(composer4).f48361b.f48374a, rectangleShapeKt$RectangleShape$1), LVAppDesignKitTheme.l(composer4).f48416e);
                    ColumnMeasurePolicy columnMeasurePolicyA7 = ColumnKt.a(arrangement$Top$4, horizontal2, composer4, 0);
                    int iHashCode7 = Long.hashCode(composer4.getT());
                    PersistentCompositionLocalMap persistentCompositionLocalMapN7 = composer4.n();
                    Modifier modifierC7 = ComposedModifierKt.c(composer4, modifierI2);
                    if (composer4.getF7976a() == null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    composer4.B();
                    if (composer4.getS()) {
                        composer4.C(function15);
                    } else {
                        composer4.o();
                    }
                    Updater.c(composer4, columnMeasurePolicyA7, function16);
                    Updater.c(composer4, persistentCompositionLocalMapN7, function17);
                    cj.s(iHashCode7, composer4, function18, composer4, function19);
                    Updater.c(composer4, modifierC7, function20);
                    TextKt.c(StringResources_androidKt.c(composer4, R.string.mylv_settings_gcm_lva_optout_othertypes_choice), null, LVAppDesignKitTheme.c(composer4).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(composer4).f48428i, composer4, 0, 0, 131066);
                    TextKt.c(StringResources_androidKt.c(composer4, R.string.mylv_settings_gcm_lva_optout_othertypes_description), PaddingKt.m(new DTFunctionNameModifier("OptOutOthersScreen$lambda$1"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer4).f48414b, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), LVAppDesignKitTheme.c(composer4).f48361b.l, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(composer4).f48427h, composer4, 0, 0, 131064);
                    SpacerKt.a(composer4, SizeKt.f(new DTFunctionNameModifier("OptOutOthersScreen$lambda$1"), LVAppDesignKitTheme.l(composer4).g));
                    LVButtonKt.b(6, 504, composer4, SizeKt.d(new DTFunctionNameModifier("OptOutOthersScreen$lambda$1"), 1.0f), LVAppDesignKitTheme.b(composer4).f48446a, null, null, StringResources_androidKt.c(composer4, R.string.email_us_cta), this.f69441c, false, false, false);
                    SpacerKt.a(composer4, SizeKt.f(new DTFunctionNameModifier("OptOutOthersScreen$lambda$1"), LVAppDesignKitTheme.l(composer4).f48415c));
                    LVButtonKt.b(6, 504, composer4, SizeKt.d(new DTFunctionNameModifier("OptOutOthersScreen$lambda$1"), 1.0f), LVAppDesignKitTheme.b(composer4).f48449e, null, null, StringResources_androidKt.c(composer4, R.string.contact_us_cta), this.d, false, false, false);
                    composer4.r();
                    composer4.r();
                } else {
                    composer4.D();
                }
                return Unit.f71739a;
            case 4:
                PaddingValues paddingValues4 = (PaddingValues) obj;
                Composer composer5 = (Composer) obj2;
                int iIntValue5 = ((Integer) obj3).intValue();
                paddingValues4.getClass();
                if ((iIntValue5 & 6) == 0) {
                    iIntValue5 |= composer5.K(paddingValues4) ? 4 : 2;
                }
                if (composer5.p(iIntValue5 & 1, (iIntValue5 & 19) != 18)) {
                    OpaqueKey opaqueKey5 = ComposerKt.f7940a;
                    Modifier modifierE = o60.e("ShadeFinderEmptyScreen$lambda$1", paddingValues4);
                    String strC3 = StringResources_androidKt.c(composer5, R.string.shade_finder_recommendation_error_page_title);
                    String strC4 = StringResources_androidKt.c(composer5, R.string.shade_finder_recommendation_error_page_text);
                    String strC5 = StringResources_androidKt.c(composer5, R.string.cta_continue);
                    int i3 = LVAppDesignKitTheme.g(composer5).N0;
                    boolean zK2 = composer5.K(function1) | composer5.K(function0);
                    Object objX2 = composer5.x();
                    if (zK2 || objX2 == composer$Companion$Empty$1) {
                        objX2 = new il(function1, function0, 16);
                        composer5.q(objX2);
                    }
                    LVEmptyViewKt.d(modifierE, i3, null, strC3, strC4, null, false, null, strC5, (Function0) objX2, null, null, composer5, 0, 0, 3300);
                } else {
                    composer5.D();
                }
                return Unit.f71739a;
            default:
                ((Integer) obj3).getClass();
                float f2 = SpotlightScreenKt.f64602a;
                ((AnimatedVisibilityScope) obj).getClass();
                OpaqueKey opaqueKey6 = ComposerKt.f7940a;
                SpotlightOnboardingKt.a(new DTFunctionNameModifier("ContentScreen$lambda$1").o(SizeKt.f5052c), function1, function0, (Composer) obj2, 6);
                return Unit.f71739a;
        }
    }
}
