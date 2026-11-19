package defpackage;

import android.content.Context;
import androidx.compose.animation.AnimatedContentKt;
import androidx.compose.animation.AnimatedVisibilityKt;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.ScrollKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Start$1;
import androidx.compose.foundation.layout.Arrangement$Top$1;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.ColumnScopeInstance;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.foundation.layout.WindowInsetsKt;
import androidx.compose.foundation.layout.WindowInsetsPaddingKt;
import androidx.compose.foundation.layout.WindowInsetsPadding_androidKt;
import androidx.compose.foundation.layout.WindowInsets_androidKt;
import androidx.compose.foundation.lazy.LazyDslKt;
import androidx.compose.foundation.lazy.LazyItemScope;
import androidx.compose.foundation.lazy.LazyListScope;
import androidx.compose.foundation.lazy.LazyListState;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.graphics.RectangleShapeKt$RectangleShape$1;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.res.StringResources_androidKt;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.R;
import com.vuitton.android.designkit.components.components.LVFlowerLoaderKt;
import com.vuitton.android.designkit.ui.theme.GradientKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetKt;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetState;
import com.vuitton.android.presentation.contact.compose.ContactUsBottomSheetKt;
import com.vuitton.android.presentation.contact.models.ContactUsUiModel;
import com.vuitton.android.presentation.extensions.ResourcesExtKt;
import com.vuitton.android.presentation.screen.account.profile.AccountStatusUiModel;
import com.vuitton.android.presentation.screen.account.profile.AccountStatusValueUiModel;
import com.vuitton.android.presentation.screen.certificates.components.nfc.CertificateNfcScanBottomSheetKt;
import com.vuitton.android.presentation.screen.certificates.components.nfc.CertificateNfcScanScreenKt;
import com.vuitton.android.presentation.screen.certificates.nfc.model.CertificateNfcScanViewState;
import com.vuitton.android.presentation.screen.certificates.nfc.model.NfcScanState;
import com.vuitton.android.presentation.screen.distantrepairs.assessment.components.a;
import com.vuitton.android.presentation.screen.distantrepairs.assessment.sections.AssessmentPreliminaryComponentKt;
import com.vuitton.android.presentation.screen.distantrepairs.form.models.StepState;
import com.vuitton.android.presentation.screen.distantrepairs.models.AssessmentViewState;
import com.vuitton.android.presentation.screen.osa.form.contactinformation.components.OsaContactFormCardKt;
import com.vuitton.android.presentation.screen.osa.form.contactinformation.components.OsaContactFormScreenKt;
import com.vuitton.android.presentation.screen.osa.form.contactinformation.components.OsaGuestAccountCheckingCardKt;
import com.vuitton.android.presentation.screen.osa.form.contactinformation.models.OsaContactFormViewState;
import com.vuitton.android.presentation.screen.osa.form.storeselection.components.OsaReasonItemComposableKt;
import com.vuitton.android.presentation.screen.osa.reasons.models.OsaReasonsFormViewState;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.components.BeautyColorSelectorKt;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.components.BeautyDualColorComparatorKt;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.components.BeautyVtoScreenKt;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.BeautyVtoViewState;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.TryOnProductUiModel;
import com.vuitton.android.presentation.screen.repairs.list.components.ComposableSingletons$RepairListBffScreenKt;
import com.vuitton.android.presentation.screen.repairs.list.components.RepairListBffScreenKt;
import com.vuitton.android.presentation.screen.repairs.list.components.RepairListBffScreenKt$RepairListBffScreen$lambda$2$0$0$$inlined$items$default$1;
import com.vuitton.android.presentation.screen.repairs.list.components.RepairListBffScreenKt$RepairListBffScreen$lambda$2$0$0$$inlined$items$default$5;
import com.vuitton.android.presentation.screen.repairs.models.CareServiceDetailUiModel;
import com.vuitton.android.presentation.screen.repairs.models.RepairsViewState;
import com.vuitton.android.presentation.screen.repairs.models.bff.CareServiceShortUiModel;
import com.vuitton.android.presentation.screen.repairs.models.bff.RepairsBffViewState;
import com.vuitton.android.presentation.utils.AccessibilityUtils;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import java.util.List;
import kotlin.Function;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KFunction;
import kotlinx.coroutines.CoroutineScope;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class h9 implements Function3 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f69657b = 1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Function f69658c;
    public final /* synthetic */ Function0 d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Function0 f69659e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Function0 f69660f;
    public final /* synthetic */ Object g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ Object f69661h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ Object f69662i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ Object f69663j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final /* synthetic */ Object f69664k;
    public final /* synthetic */ Object l;
    public final /* synthetic */ Object m;

    public /* synthetic */ h9(MutableState mutableState, BeautyVtoViewState beautyVtoViewState, Context context, MutableState mutableState2, Function1 function1, Function0 function0, Function0 function2, Function0 function3, Function1 function4, Function0 function5, MutableState mutableState3) {
        this.f69661h = mutableState;
        this.f69662i = beautyVtoViewState;
        this.f69663j = context;
        this.f69664k = mutableState2;
        this.f69658c = function1;
        this.d = function0;
        this.f69659e = function2;
        this.f69660f = function3;
        this.g = function4;
        this.l = function5;
        this.m = mutableState3;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object A(Object obj, Object obj2, Object obj3) {
        Composer composer;
        Composer composer2;
        Composer composer3;
        OsaReasonsFormViewState osaReasonsFormViewState;
        Composer composer4;
        int i2;
        int i3 = this.f69657b;
        Function0 function0 = this.f69659e;
        RectangleShapeKt$RectangleShape$1 rectangleShapeKt$RectangleShape$1 = RectangleShapeKt.f8913a;
        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
        Object obj4 = this.m;
        Object obj5 = this.f69664k;
        Object obj6 = this.l;
        Object obj7 = this.f69662i;
        Object obj8 = this.f69663j;
        int i4 = 6;
        Object obj9 = this.g;
        Function function = this.f69658c;
        Object obj10 = this.f69661h;
        switch (i3) {
            case 0:
                AssessmentViewState assessmentViewState = (AssessmentViewState) obj10;
                String str = (String) obj7;
                Function1 function1 = (Function1) function;
                LVModalBottomSheetState lVModalBottomSheetState = (LVModalBottomSheetState) obj5;
                Function1 function2 = (Function1) obj9;
                Function1 function3 = (Function1) obj8;
                CoroutineScope coroutineScope = (CoroutineScope) obj6;
                LazyListState lazyListState = (LazyListState) obj4;
                Composer composer5 = (Composer) obj2;
                int iIntValue = ((Integer) obj3).intValue();
                ((LazyItemScope) obj).getClass();
                if (composer5.p(iIntValue & 1, (iIntValue & 17) != 16)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    InAppDispatch inAppDispatch = assessmentViewState.f57356a;
                    StepState stepState = assessmentViewState.f57358c.f57353a;
                    CareServiceDetailUiModel careServiceDetailUiModel = assessmentViewState.d;
                    Function0 function4 = this.d;
                    boolean zK = composer5.K(function4) | composer5.y(lVModalBottomSheetState);
                    Object objX = composer5.x();
                    if (zK || objX == composer$Companion$Empty$1) {
                        objX = new t3(function4, lVModalBottomSheetState, 4);
                        composer5.q(objX);
                    }
                    Function0 function5 = (Function0) objX;
                    boolean zY = composer5.y(assessmentViewState) | composer5.K(function0) | composer5.K(function2);
                    Object objX2 = composer5.x();
                    if (zY || objX2 == composer$Companion$Empty$1) {
                        objX2 = new q(assessmentViewState, function0, function2, 7);
                        composer5.q(objX2);
                    }
                    Function0 function6 = (Function0) objX2;
                    boolean zK2 = composer5.K(function3) | composer5.y(coroutineScope) | composer5.K(lazyListState);
                    Object objX3 = composer5.x();
                    if (zK2 || objX3 == composer$Companion$Empty$1) {
                        objX3 = new a(function3, coroutineScope, lazyListState, 5);
                        composer5.q(objX3);
                    }
                    AssessmentPreliminaryComponentKt.a(inAppDispatch, stepState, careServiceDetailUiModel, str, function1, function5, function6, this.f69660f, (Function1) objX3, composer5, 0);
                } else {
                    composer5.D();
                }
                return Unit.f71739a;
            case 1:
                MutableState mutableState = (MutableState) obj10;
                BeautyVtoViewState beautyVtoViewState = (BeautyVtoViewState) obj7;
                Context context = (Context) obj8;
                MutableState mutableState2 = (MutableState) obj5;
                Function1 function7 = (Function1) function;
                Function1 function8 = (Function1) obj9;
                Function0 function9 = (Function0) obj6;
                MutableState mutableState3 = (MutableState) obj4;
                PaddingValues paddingValues = (PaddingValues) obj;
                Composer composer6 = (Composer) obj2;
                int iIntValue2 = ((Integer) obj3).intValue();
                float f2 = BeautyVtoScreenKt.f62031a;
                paddingValues.getClass();
                if ((iIntValue2 & 6) == 0) {
                    iIntValue2 |= composer6.K(paddingValues) ? 4 : 2;
                }
                if (composer6.p(iIntValue2 & 1, (iIntValue2 & 19) != 18)) {
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    mutableState.setValue(paddingValues);
                    Modifier modifierH = PaddingKt.h(new DTFunctionNameModifier("BeautyVtoScreen$lambda$12$3").o(SizeKt.f5052c), paddingValues);
                    Alignment.f8582a.getClass();
                    BiasAlignment biasAlignment = Alignment.Companion.f8589i;
                    MeasurePolicy measurePolicyD = BoxKt.d(biasAlignment, false);
                    int iHashCode = Long.hashCode(composer6.getT());
                    PersistentCompositionLocalMap persistentCompositionLocalMapN = composer6.n();
                    Modifier modifierC = ComposedModifierKt.c(composer6, modifierH);
                    ComposeUiNode.b0.getClass();
                    Function0 function10 = ComposeUiNode.Companion.f9641b;
                    if (composer6.getF7976a() == null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    composer6.B();
                    if (composer6.getS()) {
                        composer6.C(function10);
                    } else {
                        composer6.o();
                    }
                    Updater.c(composer6, measurePolicyD, ComposeUiNode.Companion.f9644f);
                    Updater.c(composer6, persistentCompositionLocalMapN, ComposeUiNode.Companion.f9643e);
                    Updater.c(composer6, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                    Updater.b(composer6, ComposeUiNode.Companion.f9645h);
                    Updater.c(composer6, modifierC, ComposeUiNode.Companion.d);
                    Modifier modifierF = SizeKt.f(SizeKt.d(OffsetKt.c(new DTFunctionNameModifier("BeautyVtoScreen$lambda$12$3"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.d(composer6).m, 1), 1.0f), BeautyVtoScreenKt.f62032b);
                    BoxScopeInstance boxScopeInstance = BoxScopeInstance.f4938a;
                    BoxKt.a(GradientKt.b(boxScopeInstance.g(modifierF, biasAlignment)), composer6, 0);
                    int i5 = BeautyVtoScreenKt.WhenMappings.f62033a[beautyVtoViewState.f62149a.ordinal()];
                    Function0 function11 = this.f69660f;
                    if (i5 == 1) {
                        composer6.L(-1370652636);
                        List list = beautyVtoViewState.A ? beautyVtoViewState.f62151c : beautyVtoViewState.f62150b;
                        if (list == null) {
                            composer6.L(-1370652637);
                            composer6.F();
                            composer = composer6;
                        } else {
                            composer6.L(-1370652636);
                            Boolean boolValueOf = Boolean.valueOf(!((Boolean) mutableState2.getF10755b()).booleanValue());
                            Modifier modifierD = tr.d("BeautyVtoScreen$lambda$12$3", 1.0f);
                            Object objX4 = composer6.x();
                            if (objX4 == composer$Companion$Empty$1) {
                                objX4 = new re(0);
                                composer6.q(objX4);
                            }
                            AnimatedContentKt.b(boolValueOf, modifierD, (Function1) objX4, null, "Simple colorSlider visibility", null, ComposableLambdaKt.b(-1086293107, new za(list, beautyVtoViewState, function7, this.d, this.f69659e, function11, mutableState2, 1), composer6), composer6, 1597872, 40);
                            composer = composer6;
                            composer.F();
                        }
                        composer.F();
                    } else if (i5 == 2) {
                        composer6.L(-1368582704);
                        List list2 = beautyVtoViewState.d;
                        if (list2 == null) {
                            composer6.L(-1368582705);
                            composer6.F();
                            composer2 = composer6;
                        } else {
                            BeautyColorSelectorKt.a(boxScopeInstance.g(pq0.h(1.0f, -1368582704, composer6, "BeautyVtoScreen$lambda$12$3"), biasAlignment), list2, beautyVtoViewState.f62156j, null, function8, null, null, function11, composer6, 0, 104);
                            composer2 = composer6;
                            composer2.F();
                        }
                        composer2.F();
                        composer = composer2;
                    } else {
                        if (i5 != 3) {
                            throw o60.v(composer6, -875509115);
                        }
                        composer6.L(-1367823142);
                        TryOnProductUiModel tryOnProductUiModel = beautyVtoViewState.f62155i;
                        if (tryOnProductUiModel == null) {
                            composer6.L(-1367823143);
                            composer6.F();
                            composer = composer6;
                        } else {
                            Modifier modifierG = boxScopeInstance.g(pq0.h(1.0f, -1367823142, composer6, "BeautyVtoScreen$lambda$12$3"), biasAlignment);
                            TryOnProductUiModel tryOnProductUiModel2 = beautyVtoViewState.r;
                            boolean zK3 = composer6.K(function9);
                            Object objX5 = composer6.x();
                            if (zK3 || objX5 == composer$Companion$Empty$1) {
                                objX5 = new na(function9, mutableState3, 1);
                                composer6.q(objX5);
                            }
                            BeautyDualColorComparatorKt.b(modifierG, tryOnProductUiModel, tryOnProductUiModel2, (Function0) objX5, composer6, 0);
                            composer = composer6;
                            composer.F();
                        }
                        composer.F();
                    }
                    if (beautyVtoViewState.g) {
                        LVFlowerLoaderKt.a(boxScopeInstance.g(pq0.j(-1367098610, composer, "BeautyVtoScreen$lambda$12$3"), Alignment.Companion.f8587f), null, false, composer, 0, 6);
                        String string = context.getString(R.string.alt_loading_status);
                        string.getClass();
                        AccessibilityUtils.a(context, string);
                        composer.F();
                    } else {
                        composer.L(-1366911215);
                        composer.F();
                    }
                    composer.r();
                } else {
                    composer6.D();
                }
                return Unit.f71739a;
            case 2:
                CertificateNfcScanViewState certificateNfcScanViewState = (CertificateNfcScanViewState) obj10;
                LVModalBottomSheetState lVModalBottomSheetState2 = (LVModalBottomSheetState) obj5;
                LVModalBottomSheetState lVModalBottomSheetState3 = (LVModalBottomSheetState) obj7;
                Function3 function12 = (Function3) function;
                LVModalBottomSheetState lVModalBottomSheetState4 = (LVModalBottomSheetState) obj9;
                Function0 function13 = (Function0) obj8;
                Function0 function14 = (Function0) obj6;
                Function0 function15 = (Function0) obj4;
                PaddingValues paddingValues2 = (PaddingValues) obj;
                Composer composer7 = (Composer) obj2;
                int iIntValue3 = ((Integer) obj3).intValue();
                paddingValues2.getClass();
                if ((iIntValue3 & 6) == 0) {
                    iIntValue3 |= composer7.K(paddingValues2) ? 4 : 2;
                }
                if (composer7.p(iIntValue3 & 1, (iIntValue3 & 19) != 18)) {
                    OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                    Modifier modifierA = WindowInsetsPaddingKt.a(PaddingKt.h(BackgroundKt.b(new DTFunctionNameModifier("CertificateNfcScanScreen$lambda$3").o(SizeKt.f5052c), LVAppDesignKitTheme.c(composer7).f48361b.f48378f, rectangleShapeKt$RectangleShape$1), paddingValues2), paddingValues2);
                    Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
                    Alignment.f8582a.getClass();
                    ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, composer7, 0);
                    int iHashCode2 = Long.hashCode(composer7.getT());
                    PersistentCompositionLocalMap persistentCompositionLocalMapN2 = composer7.n();
                    Modifier modifierC2 = ComposedModifierKt.c(composer7, modifierA);
                    ComposeUiNode.b0.getClass();
                    Function0 function16 = ComposeUiNode.Companion.f9641b;
                    if (composer7.getF7976a() == null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    composer7.B();
                    if (composer7.getS()) {
                        composer7.C(function16);
                    } else {
                        composer7.o();
                    }
                    Updater.c(composer7, columnMeasurePolicyA, ComposeUiNode.Companion.f9644f);
                    Updater.c(composer7, persistentCompositionLocalMapN2, ComposeUiNode.Companion.f9643e);
                    Updater.c(composer7, Integer.valueOf(iHashCode2), ComposeUiNode.Companion.g);
                    Updater.b(composer7, ComposeUiNode.Companion.f9645h);
                    Updater.c(composer7, modifierC2, ComposeUiNode.Companion.d);
                    Modifier modifierA2 = ColumnScopeInstance.f4944a.a(SizeKt.d(new DTFunctionNameModifier("CertificateNfcScanScreen$lambda$3"), 1.0f), 1.0f, true);
                    ContactUsUiModel contactUsUiModel = certificateNfcScanViewState.f55932a;
                    Function0 function17 = this.d;
                    boolean zK4 = composer7.K(function17) | composer7.y(lVModalBottomSheetState2);
                    Object objX6 = composer7.x();
                    if (zK4 || objX6 == composer$Companion$Empty$1) {
                        objX6 = new t3(function17, lVModalBottomSheetState2, 5);
                        composer7.q(objX6);
                    }
                    CertificateNfcScanScreenKt.b(modifierA2, contactUsUiModel, (Function0) objX6, this.f69659e, composer7, 0);
                    int iB = (int) ResourcesExtKt.b(WindowInsetsKt.e(WindowInsets_androidKt.c(composer7), composer7).getF5031b());
                    int iB2 = (int) ResourcesExtKt.b(WindowInsetsKt.e(WindowInsets_androidKt.c(composer7), composer7).getD());
                    ContactUsUiModel contactUsUiModel2 = certificateNfcScanViewState.f55932a;
                    boolean zK5 = composer7.K(function12) | composer7.d(iB) | composer7.d(iB2);
                    Object objX7 = composer7.x();
                    if (zK5 || objX7 == composer$Companion$Empty$1) {
                        objX7 = new tj(function12, iB, iB2, 4);
                        composer7.q(objX7);
                    }
                    int i6 = LVModalBottomSheetState.f48797e;
                    int i7 = i6 << 3;
                    ContactUsBottomSheetKt.a(contactUsUiModel2, lVModalBottomSheetState2, lVModalBottomSheetState3, (Function1) objX7, this.f69660f, composer7, i7 | (i6 << 6));
                    NfcScanState nfcScanState = certificateNfcScanViewState.f55933b;
                    if (nfcScanState == null) {
                        composer7.L(2030762990);
                        composer7.F();
                    } else {
                        composer7.L(2030762991);
                        boolean zK6 = composer7.K(function13) | composer7.K(function14);
                        Object objX8 = composer7.x();
                        if (zK6 || objX8 == composer$Companion$Empty$1) {
                            objX8 = new il(function13, function14, 1);
                            composer7.q(objX8);
                        }
                        CertificateNfcScanBottomSheetKt.a(nfcScanState, lVModalBottomSheetState4, (Function0) objX8, function13, function15, composer7, i7);
                        composer7.F();
                    }
                    composer7.r();
                } else {
                    composer7.D();
                }
                return Unit.f71739a;
            case 3:
                OsaContactFormViewState osaContactFormViewState = (OsaContactFormViewState) obj10;
                OsaReasonsFormViewState osaReasonsFormViewState2 = (OsaReasonsFormViewState) obj7;
                Function1 function18 = (Function1) function;
                Function3 function19 = (Function3) obj5;
                Function1 function20 = (Function1) obj9;
                Function0 function21 = (Function0) obj6;
                Function1 function22 = (Function1) obj8;
                Function0 function23 = (Function0) obj4;
                PaddingValues paddingValues3 = (PaddingValues) obj;
                Composer composer8 = (Composer) obj2;
                int iIntValue4 = ((Integer) obj3).intValue();
                paddingValues3.getClass();
                if ((iIntValue4 & 6) == 0) {
                    iIntValue4 |= composer8.K(paddingValues3) ? 4 : 2;
                }
                if (composer8.p(iIntValue4 & 1, (iIntValue4 & 19) != 18)) {
                    OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                    Modifier modifierD2 = ScrollKt.d(PaddingKt.k(WindowInsetsPadding_androidKt.a(WindowInsetsPaddingKt.a(PaddingKt.h(BackgroundKt.b(new DTFunctionNameModifier("OsaContactFormScreen$lambda$2").o(SizeKt.f5052c), LVAppDesignKitTheme.c(composer8).f48361b.f48375b, rectangleShapeKt$RectangleShape$1), paddingValues3), paddingValues3)), LVAppDesignKitTheme.l(composer8).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), ScrollKt.b(composer8), false, 14);
                    Arrangement$Top$1 arrangement$Top$2 = Arrangement.f4920c;
                    Alignment.f8582a.getClass();
                    ColumnMeasurePolicy columnMeasurePolicyA2 = ColumnKt.a(arrangement$Top$2, Alignment.Companion.n, composer8, 0);
                    int iHashCode3 = Long.hashCode(composer8.getT());
                    PersistentCompositionLocalMap persistentCompositionLocalMapN3 = composer8.n();
                    Modifier modifierC3 = ComposedModifierKt.c(composer8, modifierD2);
                    ComposeUiNode.b0.getClass();
                    Function0 function24 = ComposeUiNode.Companion.f9641b;
                    if (composer8.getF7976a() == null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    composer8.B();
                    if (composer8.getS()) {
                        composer8.C(function24);
                    } else {
                        composer8.o();
                    }
                    Updater.c(composer8, columnMeasurePolicyA2, ComposeUiNode.Companion.f9644f);
                    Updater.c(composer8, persistentCompositionLocalMapN3, ComposeUiNode.Companion.f9643e);
                    Updater.c(composer8, Integer.valueOf(iHashCode3), ComposeUiNode.Companion.g);
                    Updater.b(composer8, ComposeUiNode.Companion.f9645h);
                    Updater.c(composer8, modifierC3, ComposeUiNode.Companion.d);
                    SpacerKt.a(composer8, SizeKt.f(new DTFunctionNameModifier("OsaContactFormScreen$lambda$2"), LVAppDesignKitTheme.d(composer8).o));
                    Boolean bool = osaContactFormViewState.f60744k;
                    Boolean bool2 = Boolean.TRUE;
                    if (Intrinsics.c(bool, bool2)) {
                        Modifier modifierM = PaddingKt.m(pq0.j(175585880, composer8, "OsaContactFormScreen$lambda$2"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer8).f48416e, 7);
                        boolean z = osaReasonsFormViewState2.f60972f;
                        Object objX9 = composer8.x();
                        if (objX9 == composer$Companion$Empty$1) {
                            objX9 = new ii0(9);
                            composer8.q(objX9);
                        }
                        osaReasonsFormViewState = osaReasonsFormViewState2;
                        OsaReasonItemComposableKt.a(modifierM, osaReasonsFormViewState, function18, this.d, z, (Function0) objX9, composer8, ImageMetadata.EDGE_MODE);
                        composer3 = composer8;
                        composer3.F();
                    } else {
                        composer3 = composer8;
                        osaReasonsFormViewState = osaReasonsFormViewState2;
                        composer3.L(176083678);
                        composer3.F();
                    }
                    boolean zY2 = composer3.y(osaContactFormViewState) | composer3.K(function0);
                    Function0 function25 = this.f69660f;
                    boolean zK7 = zY2 | composer3.K(function25);
                    Object objX10 = composer3.x();
                    if (zK7 || objX10 == composer$Companion$Empty$1) {
                        objX10 = new of0(osaContactFormViewState, function0, function25, 11);
                        composer3.q(objX10);
                    }
                    OsaContactFormScreenKt.a(osaContactFormViewState, (Function0) objX10, composer3, 0);
                    if (Intrinsics.c(osaContactFormViewState.f60738c, bool2)) {
                        composer3.L(176518856);
                        boolean zK8 = composer3.K(function19);
                        Object objX11 = composer3.x();
                        if (zK8 || objX11 == composer$Companion$Empty$1) {
                            objX11 = new ye0(function19, i4);
                            composer3.q(objX11);
                        }
                        Composer composer9 = composer3;
                        OsaGuestAccountCheckingCardKt.a(osaContactFormViewState, (Function2) objX11, function20, function21, composer9, 0);
                        composer4 = composer9;
                        AccountStatusUiModel accountStatusUiModel = osaContactFormViewState.q;
                        AnimatedVisibilityKt.c(ColumnScopeInstance.f4944a, ((accountStatusUiModel != null ? accountStatusUiModel.f52670a : null) == null || accountStatusUiModel.f52670a == AccountStatusValueUiModel.ACTIVATED) ? false : true, null, null, null, null, ComposableLambdaKt.b(-589983686, new n4(16, osaContactFormViewState, function19, osaReasonsFormViewState, function22, function23), composer4), composer4, 1572870, 30);
                        composer4.F();
                    } else {
                        composer4 = composer3;
                        OsaReasonsFormViewState osaReasonsFormViewState3 = osaReasonsFormViewState;
                        composer4.L(177634143);
                        boolean zK9 = composer4.K(function19);
                        Object objX12 = composer4.x();
                        if (zK9 || objX12 == composer$Companion$Empty$1) {
                            objX12 = new ye0(function19, 7);
                            composer4.q(objX12);
                        }
                        Function2 function26 = (Function2) objX12;
                        boolean zK10 = composer4.K(function22) | composer4.y(osaReasonsFormViewState3);
                        Object objX13 = composer4.x();
                        if (zK10 || objX13 == composer$Companion$Empty$1) {
                            i2 = 0;
                            objX13 = new gj0(function22, osaReasonsFormViewState3, 0);
                            composer4.q(objX13);
                        } else {
                            i2 = 0;
                        }
                        OsaContactFormCardKt.a(osaContactFormViewState, function26, (Function0) objX13, composer4, i2);
                        composer4.F();
                    }
                    composer4.r();
                } else {
                    composer8.D();
                }
                return Unit.f71739a;
            case 4:
                final RepairsBffViewState repairsBffViewState = (RepairsBffViewState) obj10;
                final Function1 function27 = (Function1) function;
                final Function1 function28 = (Function1) obj9;
                final Function1 function29 = (Function1) obj8;
                final Function1 function30 = (Function1) obj7;
                final LVModalBottomSheetState lVModalBottomSheetState5 = (LVModalBottomSheetState) obj5;
                ContactUsUiModel contactUsUiModel3 = (ContactUsUiModel) obj6;
                Function1 function31 = (Function1) obj4;
                PaddingValues paddingValues4 = (PaddingValues) obj;
                Composer composer10 = (Composer) obj2;
                int iIntValue5 = ((Integer) obj3).intValue();
                paddingValues4.getClass();
                if ((iIntValue5 & 6) == 0) {
                    iIntValue5 |= composer10.K(paddingValues4) ? 4 : 2;
                }
                if (composer10.p(iIntValue5 & 1, (iIntValue5 & 19) != 18)) {
                    OpaqueKey opaqueKey5 = ComposerKt.f7940a;
                    Modifier modifierK = PaddingKt.k(PaddingKt.h(BackgroundKt.b(new DTFunctionNameModifier("RepairListBffScreen$lambda$2").o(SizeKt.f5052c), LVAppDesignKitTheme.c(composer10).f48361b.f48375b, rectangleShapeKt$RectangleShape$1), paddingValues4), LVAppDesignKitTheme.l(composer10).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2);
                    Arrangement$Start$1 arrangement$Start$1 = Arrangement.f4918a;
                    Arrangement.SpacedAligned spacedAlignedF = Arrangement.f(LVAppDesignKitTheme.l(composer10).f48416e);
                    boolean zY3 = composer10.y(repairsBffViewState);
                    final Function0 function32 = this.d;
                    boolean zK11 = zY3 | composer10.K(function32) | composer10.K(function27) | composer10.K(function28) | composer10.K(function29) | composer10.K(function30) | composer10.y(lVModalBottomSheetState5);
                    final Function0 function33 = this.f69659e;
                    boolean zK12 = zK11 | composer10.K(function33);
                    Object objX14 = composer10.x();
                    if (zK12 || objX14 == composer$Companion$Empty$1) {
                        Function1 function34 = new Function1() { // from class: rs0
                            @Override // kotlin.jvm.functions.Function1
                            public final Object invoke(Object obj11) {
                                LazyListScope lazyListScope = (LazyListScope) obj11;
                                lazyListScope.getClass();
                                final RepairsBffViewState repairsBffViewState2 = repairsBffViewState;
                                final int i8 = 1;
                                if (!repairsBffViewState2.d.isEmpty() && repairsBffViewState2.l.f64008i != null) {
                                    LazyListScope.f(lazyListScope, null, new ComposableLambdaImpl(1725456934, true, new a3(function32, 28)), 3);
                                }
                                final int i9 = 0;
                                LazyListScope.f(lazyListScope, null, new ComposableLambdaImpl(-1468404959, true, new Function3() { // from class: ss0
                                    @Override // kotlin.jvm.functions.Function3
                                    public final Object A(Object obj12, Object obj13, Object obj14) {
                                        String strA;
                                        String strA2;
                                        int i10 = i9;
                                        RepairsBffViewState repairsBffViewState3 = repairsBffViewState2;
                                        LazyItemScope lazyItemScope = (LazyItemScope) obj12;
                                        Composer composer11 = (Composer) obj13;
                                        int iIntValue6 = ((Integer) obj14).intValue();
                                        switch (i10) {
                                            case 0:
                                                lazyItemScope.getClass();
                                                if (composer11.p(iIntValue6 & 1, (iIntValue6 & 17) != 16)) {
                                                    OpaqueKey opaqueKey6 = ComposerKt.f7940a;
                                                    List list3 = repairsBffViewState3.d;
                                                    String strA3 = StringResources_androidKt.a(R.plurals.dr_repairs_section_ongoing_title_pluralization, list3.size(), new Object[]{Integer.valueOf(list3.size())}, composer11);
                                                    if (list3.isEmpty()) {
                                                        strA = o60.k(composer11, -1009838167, R.string.dr_repairs_section_no_ongoing_subtitle, composer11);
                                                    } else {
                                                        composer11.L(-1009707998);
                                                        strA = StringResources_androidKt.a(R.plurals.dr_ongoing_header, list3.size(), new Object[]{Integer.valueOf(list3.size())}, composer11);
                                                        composer11.F();
                                                    }
                                                    RepairListBffScreenKt.a(strA3, strA, composer11, 0);
                                                } else {
                                                    composer11.D();
                                                }
                                                break;
                                            default:
                                                lazyItemScope.getClass();
                                                if (composer11.p(iIntValue6 & 1, (iIntValue6 & 17) != 16)) {
                                                    OpaqueKey opaqueKey7 = ComposerKt.f7940a;
                                                    String strC = StringResources_androidKt.c(composer11, R.string.dr_repairs_section_history_title);
                                                    List list4 = repairsBffViewState3.f64086e;
                                                    if (list4.isEmpty()) {
                                                        strA2 = o60.k(composer11, 1577658784, R.string.dr_repairs_section_no_history_subtitle, composer11);
                                                    } else {
                                                        composer11.L(1577788953);
                                                        strA2 = StringResources_androidKt.a(R.plurals.dr_history_header, list4.size(), new Object[]{Integer.valueOf(list4.size())}, composer11);
                                                        composer11.F();
                                                    }
                                                    RepairListBffScreenKt.a(strC, strA2, composer11, 0);
                                                } else {
                                                    composer11.D();
                                                }
                                                break;
                                        }
                                        return Unit.f71739a;
                                    }
                                }), 3);
                                final List list3 = repairsBffViewState2.d;
                                final RepairListBffScreenKt$RepairListBffScreen$lambda$2$0$0$$inlined$items$default$1 repairListBffScreenKt$RepairListBffScreen$lambda$2$0$0$$inlined$items$default$1 = new Function1() { // from class: com.vuitton.android.presentation.screen.repairs.list.components.RepairListBffScreenKt$RepairListBffScreen$lambda$2$0$0$$inlined$items$default$1
                                    @Override // kotlin.jvm.functions.Function1
                                    public final /* bridge */ /* synthetic */ Object invoke(Object obj12) {
                                        return null;
                                    }
                                };
                                int size = list3.size();
                                Function1<Integer, Object> function35 = new Function1<Integer, Object>() { // from class: com.vuitton.android.presentation.screen.repairs.list.components.RepairListBffScreenKt$RepairListBffScreen$lambda$2$0$0$$inlined$items$default$3
                                    @Override // kotlin.jvm.functions.Function1
                                    public final Object invoke(Object obj12) {
                                        return repairListBffScreenKt$RepairListBffScreen$lambda$2$0$0$$inlined$items$default$1.invoke(list3.get(((Number) obj12).intValue()));
                                    }
                                };
                                final Function1 function36 = function27;
                                final Function1 function37 = function28;
                                final Function1 function38 = function29;
                                final Function1 function39 = function30;
                                final LVModalBottomSheetState lVModalBottomSheetState6 = lVModalBottomSheetState5;
                                lazyListScope.h(size, null, function35, new ComposableLambdaImpl(802480018, true, new Function4<LazyItemScope, Integer, Composer, Integer, Unit>() { // from class: com.vuitton.android.presentation.screen.repairs.list.components.RepairListBffScreenKt$RepairListBffScreen$lambda$2$0$0$$inlined$items$default$4
                                    @Override // kotlin.jvm.functions.Function4
                                    public final Object g(Object obj12, Object obj13, Object obj14, Object obj15) {
                                        int i10;
                                        LazyItemScope lazyItemScope = (LazyItemScope) obj12;
                                        int iIntValue6 = ((Number) obj13).intValue();
                                        Composer composer11 = (Composer) obj14;
                                        int iIntValue7 = ((Number) obj15).intValue();
                                        if ((iIntValue7 & 6) == 0) {
                                            i10 = (composer11.K(lazyItemScope) ? 4 : 2) | iIntValue7;
                                        } else {
                                            i10 = iIntValue7;
                                        }
                                        if ((iIntValue7 & 48) == 0) {
                                            i10 |= composer11.d(iIntValue6) ? 32 : 16;
                                        }
                                        if (composer11.p(i10 & 1, (i10 & 147) != 146)) {
                                            OpaqueKey opaqueKey6 = ComposerKt.f7940a;
                                            final CareServiceShortUiModel careServiceShortUiModel = (CareServiceShortUiModel) list3.get(iIntValue6);
                                            composer11.L(-520413441);
                                            final Function1 function40 = function36;
                                            boolean zK13 = composer11.K(function40) | composer11.K(careServiceShortUiModel);
                                            Object objX15 = composer11.x();
                                            Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
                                            if (zK13 || objX15 == composer$Companion$Empty$2) {
                                                objX15 = new Function0<Unit>() { // from class: com.vuitton.android.presentation.screen.repairs.list.components.RepairListBffScreenKt$RepairListBffScreen$3$1$1$3$1$1
                                                    @Override // kotlin.jvm.functions.Function0
                                                    /* JADX INFO: renamed from: invoke */
                                                    public final Object mo47invoke() {
                                                        function40.invoke(careServiceShortUiModel);
                                                        return Unit.f71739a;
                                                    }
                                                };
                                                composer11.q(objX15);
                                            }
                                            Function0 function41 = (Function0) objX15;
                                            boolean zY4 = composer11.y(lVModalBottomSheetState6);
                                            Object objX16 = composer11.x();
                                            if (zY4 || objX16 == composer$Companion$Empty$2) {
                                                RepairListBffScreenKt$RepairListBffScreen$3$1$1$3$2$1 repairListBffScreenKt$RepairListBffScreen$3$1$1$3$2$1 = new RepairListBffScreenKt$RepairListBffScreen$3$1$1$3$2$1(0, lVModalBottomSheetState6, LVModalBottomSheetState.class, "show", "show()V", 0);
                                                composer11.q(repairListBffScreenKt$RepairListBffScreen$3$1$1$3$2$1);
                                                objX16 = repairListBffScreenKt$RepairListBffScreen$3$1$1$3$2$1;
                                            }
                                            RepairListBffItemKt.c(repairsBffViewState2, careServiceShortUiModel, function41, function37, function38, function39, (Function0) ((KFunction) objX16), composer11, 0);
                                            composer11.F();
                                        } else {
                                            composer11.D();
                                        }
                                        return Unit.f71739a;
                                    }
                                }));
                                LazyListScope.f(lazyListScope, null, new ComposableLambdaImpl(-2096899126, true, new Function3() { // from class: ss0
                                    @Override // kotlin.jvm.functions.Function3
                                    public final Object A(Object obj12, Object obj13, Object obj14) {
                                        String strA;
                                        String strA2;
                                        int i10 = i8;
                                        RepairsBffViewState repairsBffViewState3 = repairsBffViewState2;
                                        LazyItemScope lazyItemScope = (LazyItemScope) obj12;
                                        Composer composer11 = (Composer) obj13;
                                        int iIntValue6 = ((Integer) obj14).intValue();
                                        switch (i10) {
                                            case 0:
                                                lazyItemScope.getClass();
                                                if (composer11.p(iIntValue6 & 1, (iIntValue6 & 17) != 16)) {
                                                    OpaqueKey opaqueKey6 = ComposerKt.f7940a;
                                                    List list4 = repairsBffViewState3.d;
                                                    String strA3 = StringResources_androidKt.a(R.plurals.dr_repairs_section_ongoing_title_pluralization, list4.size(), new Object[]{Integer.valueOf(list4.size())}, composer11);
                                                    if (list4.isEmpty()) {
                                                        strA = o60.k(composer11, -1009838167, R.string.dr_repairs_section_no_ongoing_subtitle, composer11);
                                                    } else {
                                                        composer11.L(-1009707998);
                                                        strA = StringResources_androidKt.a(R.plurals.dr_ongoing_header, list4.size(), new Object[]{Integer.valueOf(list4.size())}, composer11);
                                                        composer11.F();
                                                    }
                                                    RepairListBffScreenKt.a(strA3, strA, composer11, 0);
                                                } else {
                                                    composer11.D();
                                                }
                                                break;
                                            default:
                                                lazyItemScope.getClass();
                                                if (composer11.p(iIntValue6 & 1, (iIntValue6 & 17) != 16)) {
                                                    OpaqueKey opaqueKey7 = ComposerKt.f7940a;
                                                    String strC = StringResources_androidKt.c(composer11, R.string.dr_repairs_section_history_title);
                                                    List list5 = repairsBffViewState3.f64086e;
                                                    if (list5.isEmpty()) {
                                                        strA2 = o60.k(composer11, 1577658784, R.string.dr_repairs_section_no_history_subtitle, composer11);
                                                    } else {
                                                        composer11.L(1577788953);
                                                        strA2 = StringResources_androidKt.a(R.plurals.dr_history_header, list5.size(), new Object[]{Integer.valueOf(list5.size())}, composer11);
                                                        composer11.F();
                                                    }
                                                    RepairListBffScreenKt.a(strC, strA2, composer11, 0);
                                                } else {
                                                    composer11.D();
                                                }
                                                break;
                                        }
                                        return Unit.f71739a;
                                    }
                                }), 3);
                                final List list4 = repairsBffViewState2.f64086e;
                                final RepairListBffScreenKt$RepairListBffScreen$lambda$2$0$0$$inlined$items$default$5 repairListBffScreenKt$RepairListBffScreen$lambda$2$0$0$$inlined$items$default$5 = new Function1() { // from class: com.vuitton.android.presentation.screen.repairs.list.components.RepairListBffScreenKt$RepairListBffScreen$lambda$2$0$0$$inlined$items$default$5
                                    @Override // kotlin.jvm.functions.Function1
                                    public final /* bridge */ /* synthetic */ Object invoke(Object obj12) {
                                        return null;
                                    }
                                };
                                lazyListScope.h(list4.size(), null, new Function1<Integer, Object>() { // from class: com.vuitton.android.presentation.screen.repairs.list.components.RepairListBffScreenKt$RepairListBffScreen$lambda$2$0$0$$inlined$items$default$7
                                    @Override // kotlin.jvm.functions.Function1
                                    public final Object invoke(Object obj12) {
                                        return repairListBffScreenKt$RepairListBffScreen$lambda$2$0$0$$inlined$items$default$5.invoke(list4.get(((Number) obj12).intValue()));
                                    }
                                }, new ComposableLambdaImpl(802480018, true, new Function4<LazyItemScope, Integer, Composer, Integer, Unit>() { // from class: com.vuitton.android.presentation.screen.repairs.list.components.RepairListBffScreenKt$RepairListBffScreen$lambda$2$0$0$$inlined$items$default$8
                                    @Override // kotlin.jvm.functions.Function4
                                    public final Object g(Object obj12, Object obj13, Object obj14, Object obj15) {
                                        int i10;
                                        LazyItemScope lazyItemScope = (LazyItemScope) obj12;
                                        int iIntValue6 = ((Number) obj13).intValue();
                                        Composer composer11 = (Composer) obj14;
                                        int iIntValue7 = ((Number) obj15).intValue();
                                        if ((iIntValue7 & 6) == 0) {
                                            i10 = (composer11.K(lazyItemScope) ? 4 : 2) | iIntValue7;
                                        } else {
                                            i10 = iIntValue7;
                                        }
                                        if ((iIntValue7 & 48) == 0) {
                                            i10 |= composer11.d(iIntValue6) ? 32 : 16;
                                        }
                                        if (composer11.p(i10 & 1, (i10 & 147) != 146)) {
                                            OpaqueKey opaqueKey6 = ComposerKt.f7940a;
                                            final CareServiceShortUiModel careServiceShortUiModel = (CareServiceShortUiModel) list4.get(iIntValue6);
                                            composer11.L(-208621578);
                                            final Function1 function40 = function36;
                                            boolean zK13 = composer11.K(function40) | composer11.K(careServiceShortUiModel);
                                            Object objX15 = composer11.x();
                                            Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
                                            if (zK13 || objX15 == composer$Companion$Empty$2) {
                                                objX15 = new Function0<Unit>() { // from class: com.vuitton.android.presentation.screen.repairs.list.components.RepairListBffScreenKt$RepairListBffScreen$3$1$1$5$1$1
                                                    @Override // kotlin.jvm.functions.Function0
                                                    /* JADX INFO: renamed from: invoke */
                                                    public final Object mo47invoke() {
                                                        function40.invoke(careServiceShortUiModel);
                                                        return Unit.f71739a;
                                                    }
                                                };
                                                composer11.q(objX15);
                                            }
                                            Function0 function41 = (Function0) objX15;
                                            boolean zY4 = composer11.y(lVModalBottomSheetState6);
                                            Object objX16 = composer11.x();
                                            if (zY4 || objX16 == composer$Companion$Empty$2) {
                                                RepairListBffScreenKt$RepairListBffScreen$3$1$1$5$2$1 repairListBffScreenKt$RepairListBffScreen$3$1$1$5$2$1 = new RepairListBffScreenKt$RepairListBffScreen$3$1$1$5$2$1(0, lVModalBottomSheetState6, LVModalBottomSheetState.class, "show", "show()V", 0);
                                                composer11.q(repairListBffScreenKt$RepairListBffScreen$3$1$1$5$2$1);
                                                objX16 = repairListBffScreenKt$RepairListBffScreen$3$1$1$5$2$1;
                                            }
                                            RepairListBffItemKt.c(repairsBffViewState2, careServiceShortUiModel, function41, function37, function38, function39, (Function0) ((KFunction) objX16), composer11, 0);
                                            composer11.F();
                                        } else {
                                            composer11.D();
                                        }
                                        return Unit.f71739a;
                                    }
                                }));
                                if (repairsBffViewState2.f64091k.f64009a) {
                                    LazyListScope.f(lazyListScope, null, new ComposableLambdaImpl(597730703, true, new ni0(repairsBffViewState2, function33, 18)), 3);
                                } else {
                                    ComposableSingletons$RepairListBffScreenKt.f63905a.getClass();
                                    LazyListScope.f(lazyListScope, null, ComposableSingletons$RepairListBffScreenKt.f63906b, 3);
                                }
                                return Unit.f71739a;
                            }
                        };
                        composer10.q(function34);
                        objX14 = function34;
                    }
                    LazyDslKt.a(modifierK, null, null, spacedAlignedF, null, null, false, null, (Function1) objX14, composer10, 0, 494);
                    LVModalBottomSheetState lVModalBottomSheetStateF = LVModalBottomSheetKt.f(0, 7, composer10, null);
                    int i8 = LVModalBottomSheetState.f48797e;
                    ContactUsBottomSheetKt.a(contactUsUiModel3, lVModalBottomSheetState5, lVModalBottomSheetStateF, function31, this.f69660f, composer10, (i8 << 3) | (i8 << 6));
                } else {
                    composer10.D();
                }
                return Unit.f71739a;
            default:
                RepairsViewState repairsViewState = (RepairsViewState) obj10;
                Function1 function35 = (Function1) function;
                Function1 function36 = (Function1) obj9;
                Function1 function37 = (Function1) obj8;
                Function1 function38 = (Function1) obj7;
                ContactUsUiModel contactUsUiModel4 = (ContactUsUiModel) obj6;
                LVModalBottomSheetState lVModalBottomSheetState6 = (LVModalBottomSheetState) obj5;
                Function1 function39 = (Function1) obj4;
                PaddingValues paddingValues5 = (PaddingValues) obj;
                Composer composer11 = (Composer) obj2;
                int iIntValue6 = ((Integer) obj3).intValue();
                paddingValues5.getClass();
                if ((iIntValue6 & 6) == 0) {
                    iIntValue6 |= composer11.K(paddingValues5) ? 4 : 2;
                }
                if (composer11.p(iIntValue6 & 1, (iIntValue6 & 19) != 18)) {
                    OpaqueKey opaqueKey6 = ComposerKt.f7940a;
                    Modifier modifierK2 = PaddingKt.k(PaddingKt.h(BackgroundKt.b(new DTFunctionNameModifier("RepairListScreen$lambda$2").o(SizeKt.f5052c), LVAppDesignKitTheme.c(composer11).f48361b.f48375b, rectangleShapeKt$RectangleShape$1), paddingValues5), LVAppDesignKitTheme.l(composer11).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2);
                    Arrangement$Start$1 arrangement$Start$2 = Arrangement.f4918a;
                    Arrangement.SpacedAligned spacedAlignedF2 = Arrangement.f(LVAppDesignKitTheme.l(composer11).f48416e);
                    boolean zY4 = composer11.y(repairsViewState);
                    Function0 function40 = this.d;
                    boolean zK13 = zY4 | composer11.K(function40) | composer11.K(function35) | composer11.K(function36) | composer11.K(function37) | composer11.K(function38);
                    Function0 function41 = this.f69659e;
                    boolean zK14 = zK13 | composer11.K(function41);
                    Object objX15 = composer11.x();
                    if (zK14 || objX15 == composer$Companion$Empty$1) {
                        objX15 = new nk(repairsViewState, function40, function41, function35, function36, function37, function38);
                        composer11.q(objX15);
                    }
                    LazyDslKt.a(modifierK2, null, null, spacedAlignedF2, null, null, false, null, (Function1) objX15, composer11, 0, 494);
                    LVModalBottomSheetState lVModalBottomSheetStateF2 = LVModalBottomSheetKt.f(0, 7, composer11, null);
                    int i9 = LVModalBottomSheetState.f48797e;
                    ContactUsBottomSheetKt.a(contactUsUiModel4, lVModalBottomSheetState6, lVModalBottomSheetStateF2, function39, this.f69660f, composer11, (i9 << 3) | (i9 << 6));
                } else {
                    composer11.D();
                }
                return Unit.f71739a;
        }
    }

    public /* synthetic */ h9(CertificateNfcScanViewState certificateNfcScanViewState, Function0 function0, LVModalBottomSheetState lVModalBottomSheetState, Function0 function1, LVModalBottomSheetState lVModalBottomSheetState2, Function3 function3, Function0 function2, LVModalBottomSheetState lVModalBottomSheetState3, Function0 function4, Function0 function5, Function0 function6) {
        this.f69661h = certificateNfcScanViewState;
        this.d = function0;
        this.f69664k = lVModalBottomSheetState;
        this.f69659e = function1;
        this.f69662i = lVModalBottomSheetState2;
        this.f69658c = function3;
        this.f69660f = function2;
        this.g = lVModalBottomSheetState3;
        this.f69663j = function4;
        this.l = function5;
        this.m = function6;
    }

    public /* synthetic */ h9(AssessmentViewState assessmentViewState, String str, Function1 function1, Function0 function0, LVModalBottomSheetState lVModalBottomSheetState, Function0 function2, Function1 function3, Function0 function4, Function1 function5, CoroutineScope coroutineScope, LazyListState lazyListState) {
        this.f69661h = assessmentViewState;
        this.f69662i = str;
        this.f69658c = function1;
        this.d = function0;
        this.f69664k = lVModalBottomSheetState;
        this.f69659e = function2;
        this.g = function3;
        this.f69660f = function4;
        this.f69663j = function5;
        this.l = coroutineScope;
        this.m = lazyListState;
    }

    public /* synthetic */ h9(OsaContactFormViewState osaContactFormViewState, OsaReasonsFormViewState osaReasonsFormViewState, Function1 function1, Function0 function0, Function0 function2, Function0 function3, Function3 function4, Function1 function5, Function0 function6, Function1 function7, Function0 function8) {
        this.f69661h = osaContactFormViewState;
        this.f69662i = osaReasonsFormViewState;
        this.f69658c = function1;
        this.d = function0;
        this.f69659e = function2;
        this.f69660f = function3;
        this.f69664k = function4;
        this.g = function5;
        this.l = function6;
        this.f69663j = function7;
        this.m = function8;
    }

    public /* synthetic */ h9(RepairsViewState repairsViewState, Function0 function0, Function1 function1, Function1 function2, Function1 function3, Function1 function4, Function0 function5, ContactUsUiModel contactUsUiModel, LVModalBottomSheetState lVModalBottomSheetState, Function1 function6, Function0 function7) {
        this.f69661h = repairsViewState;
        this.d = function0;
        this.f69658c = function1;
        this.g = function2;
        this.f69663j = function3;
        this.f69662i = function4;
        this.f69659e = function5;
        this.l = contactUsUiModel;
        this.f69664k = lVModalBottomSheetState;
        this.m = function6;
        this.f69660f = function7;
    }

    public /* synthetic */ h9(RepairsBffViewState repairsBffViewState, Function0 function0, Function1 function1, Function1 function2, Function1 function3, Function1 function4, LVModalBottomSheetState lVModalBottomSheetState, Function0 function5, ContactUsUiModel contactUsUiModel, Function1 function6, Function0 function7) {
        this.f69661h = repairsBffViewState;
        this.d = function0;
        this.f69658c = function1;
        this.g = function2;
        this.f69663j = function3;
        this.f69662i = function4;
        this.f69664k = lVModalBottomSheetState;
        this.f69659e = function5;
        this.l = contactUsUiModel;
        this.m = function6;
        this.f69660f = function7;
    }
}
