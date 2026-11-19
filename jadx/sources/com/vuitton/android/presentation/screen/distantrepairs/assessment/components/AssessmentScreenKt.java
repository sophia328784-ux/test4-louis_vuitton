package com.vuitton.android.presentation.screen.distantrepairs.assessment.components;

import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Start$1;
import androidx.compose.foundation.layout.Arrangement$Top$1;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.WindowInsetsPadding_androidKt;
import androidx.compose.material3.ScaffoldKt;
import androidx.compose.material3.SnackbarHostState;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.navigation.NavHostController;
import androidx.navigation.compose.NavHostKt;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVButtonKt;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetState;
import com.vuitton.android.presentation.contact.models.ContactUsUiModel;
import com.vuitton.android.presentation.extensions.WindowInsetsExtKt;
import com.vuitton.android.presentation.screen.distantrepairs.assessment.components.AssessmentRoutes;
import com.vuitton.android.presentation.screen.distantrepairs.form.models.StepState;
import com.vuitton.android.presentation.screen.distantrepairs.models.AssessmentViewState;
import com.vuitton.android.presentation.screen.distantrepairs.models.RepairStatusUiModel;
import com.vuitton.android.presentation.screen.distantrepairs.models.RepairStatusUiModelKt;
import com.vuitton.android.presentation.screen.repairs.models.CareServiceDetailUiModel;
import com.vuitton.android.presentation.utils.PriceHelper;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import defpackage.g0;
import defpackage.o0;
import defpackage.q9;
import defpackage.tr;
import defpackage.v8;
import defpackage.x8;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.CoroutineScope;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\u0010\u000e\n\u0002\b\u0002¨\u0006\u0002²\u0006\u000e\u0010\u0001\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002"}, d2 = {"", "totalAmount", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class AssessmentScreenKt {
    public static final void a(final AssessmentViewState assessmentViewState, SnackbarHostState snackbarHostState, final CoroutineScope coroutineScope, final NavHostController navHostController, Function1 function1, Function0 function0, final Function0 function2, final Function0 function3, final Function0 function4, Function0 function5, final Function1 function6, final Function1 function7, final Function1 function8, final Function1 function9, final Function0 function10, final Function0 function11, ContactUsUiModel contactUsUiModel, Function1 function12, final LVModalBottomSheetState lVModalBottomSheetState, Composer composer, int i2, int i3) {
        int i4;
        Function1 function13;
        int i5;
        int i6;
        GapComposer gapComposer;
        assessmentViewState.getClass();
        InAppDispatch inAppDispatch = assessmentViewState.f57356a;
        snackbarHostState.getClass();
        coroutineScope.getClass();
        navHostController.getClass();
        function1.getClass();
        function0.getClass();
        function2.getClass();
        function3.getClass();
        function4.getClass();
        function5.getClass();
        function6.getClass();
        function7.getClass();
        function8.getClass();
        function9.getClass();
        function10.getClass();
        function11.getClass();
        contactUsUiModel.getClass();
        function12.getClass();
        lVModalBottomSheetState.getClass();
        GapComposer gapComposerH = composer.h(-674334870);
        if ((i2 & 6) == 0) {
            i4 = (gapComposerH.y(assessmentViewState) ? 4 : 2) | i2;
        } else {
            i4 = i2;
        }
        if ((i2 & 48) == 0) {
            i4 |= gapComposerH.K(snackbarHostState) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i4 |= gapComposerH.y(coroutineScope) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i4 |= gapComposerH.y(navHostController) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            function13 = function1;
            i4 |= gapComposerH.y(function13) ? 16384 : 8192;
        } else {
            function13 = function1;
        }
        if ((i2 & ImageMetadata.EDGE_MODE) == 0) {
            i4 |= gapComposerH.y(function0) ? 131072 : 65536;
        }
        if ((i2 & 1572864) == 0) {
            i5 = i4 | (gapComposerH.y(function2) ? 1048576 : 524288);
        } else {
            i5 = i4;
        }
        if ((i2 & 12582912) == 0) {
            i5 |= gapComposerH.y(function3) ? 8388608 : 4194304;
        }
        if ((i2 & 100663296) == 0) {
            i5 |= gapComposerH.y(function4) ? 67108864 : 33554432;
        }
        if ((i2 & 805306368) == 0) {
            i5 |= gapComposerH.y(function5) ? PKIFailureInfo.duplicateCertReq : 268435456;
        }
        if ((i3 & 6) == 0) {
            i6 = i3 | (gapComposerH.y(function6) ? 4 : 2);
        } else {
            i6 = i3;
        }
        if ((i3 & 48) == 0) {
            i6 |= gapComposerH.y(function7) ? 32 : 16;
        }
        if ((i3 & KyberEngine.KyberPolyBytes) == 0) {
            i6 |= gapComposerH.y(function8) ? 256 : 128;
        }
        if ((i3 & 3072) == 0) {
            i6 |= gapComposerH.y(function9) ? 2048 : 1024;
        }
        if ((i3 & 24576) == 0) {
            i6 |= gapComposerH.y(function10) ? 16384 : 8192;
        }
        if ((i3 & ImageMetadata.EDGE_MODE) == 0) {
            i6 |= gapComposerH.y(function11) ? 131072 : 65536;
        }
        if ((i3 & 1572864) == 0) {
            i6 |= (i3 & PKIFailureInfo.badSenderNonce) == 0 ? gapComposerH.K(contactUsUiModel) : gapComposerH.y(contactUsUiModel) ? 1048576 : 524288;
        }
        if ((i3 & 12582912) == 0) {
            i6 |= gapComposerH.y(function12) ? 8388608 : 4194304;
        }
        if ((i3 & 100663296) == 0) {
            i6 |= (i3 & 134217728) == 0 ? gapComposerH.K(lVModalBottomSheetState) : gapComposerH.y(lVModalBottomSheetState) ? 67108864 : 33554432;
        }
        if (gapComposerH.p(i5 & 1, ((i5 & 306783379) == 306783378 && (i6 & 38347923) == 38347922) ? false : true)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = SnapshotStateKt.g("");
                gapComposerH.q(objX);
            }
            final MutableState mutableState = (MutableState) objX;
            CareServiceDetailUiModel careServiceDetailUiModel = assessmentViewState.d;
            if (careServiceDetailUiModel != null) {
                double dDoubleValue = careServiceDetailUiModel.f63983h;
                String str = careServiceDetailUiModel.f63982f;
                RepairStatusUiModel repairStatusUiModel = careServiceDetailUiModel.d;
                if (RepairStatusUiModelKt.b(repairStatusUiModel)) {
                    mutableState.setValue(PriceHelper.a(inAppDispatch, str, dDoubleValue));
                } else if (RepairStatusUiModelKt.c(repairStatusUiModel)) {
                    Double d = careServiceDetailUiModel.f63984i;
                    if (d != null) {
                        dDoubleValue = d.doubleValue();
                    }
                    mutableState.setValue(PriceHelper.a(inAppDispatch, str, dDoubleValue));
                }
            }
            Boolean boolValueOf = Boolean.valueOf(!assessmentViewState.f57357b);
            Boolean boolValueOf2 = Boolean.valueOf(assessmentViewState.f57358c.f57353a == StepState.DISABLED);
            boolean z = (i6 & 14) == 4;
            Object objX2 = gapComposerH.x();
            if (z || objX2 == composer$Companion$Empty$1) {
                objX2 = new AssessmentScreenKt$AssessmentScreen$2$1(null, function6);
                gapComposerH.q(objX2);
            }
            EffectsKt.g(boolValueOf, boolValueOf2, (Function2) objX2, gapComposerH);
            final Function1 function14 = function13;
            gapComposer = gapComposerH;
            ScaffoldKt.a(null, ComposableLambdaKt.b(-1015131602, new v8(1, lVModalBottomSheetState, contactUsUiModel, function0, function12), gapComposerH), ComposableLambdaKt.b(-958318161, new q9(assessmentViewState, function5), gapComposerH), ComposableLambdaKt.b(-901504720, new g0(snackbarHostState, 7), gapComposerH), null, 0, 0L, 0L, WindowInsetsExtKt.a(), ComposableLambdaKt.b(44132729, new Function3() { // from class: r9
                @Override // kotlin.jvm.functions.Function3
                public final Object A(Object obj, Object obj2, Object obj3) {
                    PaddingValues paddingValues = (PaddingValues) obj;
                    Composer composer2 = (Composer) obj2;
                    int iIntValue = ((Integer) obj3).intValue();
                    paddingValues.getClass();
                    if ((iIntValue & 6) == 0) {
                        iIntValue |= composer2.K(paddingValues) ? 4 : 2;
                    }
                    if (composer2.p(iIntValue & 1, (iIntValue & 19) != 18)) {
                        OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                        Modifier modifierH = PaddingKt.h(WindowInsetsPadding_androidKt.b(BackgroundKt.b(new DTFunctionNameModifier("AssessmentScreen$lambda$8").o(SizeKt.f5052c), LVAppDesignKitTheme.c(composer2).f48361b.f48375b, RectangleShapeKt.f8913a)), paddingValues);
                        Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
                        Alignment.f8582a.getClass();
                        ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, composer2, 0);
                        int iHashCode = Long.hashCode(composer2.getT());
                        PersistentCompositionLocalMap persistentCompositionLocalMapN = composer2.n();
                        Modifier modifierC = ComposedModifierKt.c(composer2, modifierH);
                        ComposeUiNode.b0.getClass();
                        Function0 function15 = ComposeUiNode.Companion.f9641b;
                        if (composer2.getF7976a() == null) {
                            ComposablesKt.b();
                            throw null;
                        }
                        composer2.B();
                        if (composer2.getS()) {
                            composer2.C(function15);
                        } else {
                            composer2.o();
                        }
                        Updater.c(composer2, columnMeasurePolicyA, ComposeUiNode.Companion.f9644f);
                        Updater.c(composer2, persistentCompositionLocalMapN, ComposeUiNode.Companion.f9643e);
                        Updater.c(composer2, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                        Updater.b(composer2, ComposeUiNode.Companion.f9645h);
                        Updater.c(composer2, modifierC, ComposeUiNode.Companion.d);
                        AssessmentRoutes.Form form = AssessmentRoutes.Form.INSTANCE;
                        AssessmentViewState assessmentViewState2 = assessmentViewState;
                        boolean zY = composer2.y(assessmentViewState2);
                        CoroutineScope coroutineScope2 = coroutineScope;
                        boolean zY2 = zY | composer2.y(coroutineScope2);
                        Function1 function16 = function6;
                        boolean zK = zY2 | composer2.K(function16);
                        Function1 function17 = function7;
                        boolean zK2 = zK | composer2.K(function17);
                        Function1 function18 = function9;
                        boolean zK3 = zK2 | composer2.K(function18);
                        Function1 function19 = function14;
                        boolean zK4 = zK3 | composer2.K(function19);
                        Function1 function20 = function8;
                        boolean zK5 = zK4 | composer2.K(function20);
                        Function0 function21 = function10;
                        boolean zK6 = zK5 | composer2.K(function21);
                        Function0 function22 = function4;
                        boolean zK7 = zK6 | composer2.K(function22);
                        Function0 function23 = function11;
                        boolean zK8 = zK7 | composer2.K(function23);
                        LVModalBottomSheetState lVModalBottomSheetState2 = lVModalBottomSheetState;
                        boolean zY3 = zK8 | composer2.y(lVModalBottomSheetState2);
                        Function0 function24 = function2;
                        boolean zK9 = zY3 | composer2.K(function24);
                        Function0 function25 = function3;
                        boolean zK10 = zK9 | composer2.K(function25);
                        Object objX3 = composer2.x();
                        if (zK10 || objX3 == Composer.Companion.f7939a) {
                            s9 s9Var = new s9(assessmentViewState2, coroutineScope2, function16, function17, function18, function19, function20, function21, function22, function23, lVModalBottomSheetState2, mutableState, function24, function25);
                            composer2.q(s9Var);
                            objX3 = s9Var;
                        }
                        NavHostKt.b(navHostController, form, null, null, null, null, null, null, null, (Function1) objX3, composer2, 48, 2044);
                        composer2.r();
                    } else {
                        composer2.D();
                    }
                    return Unit.f71739a;
                }
            }, gapComposerH), gapComposer, 805309872, 241);
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new x8(assessmentViewState, snackbarHostState, coroutineScope, navHostController, function1, function0, function2, function3, function4, function5, function6, function7, function8, function9, function10, function11, contactUsUiModel, function12, lVModalBottomSheetState, i2, i3, 1);
        }
    }

    public static final void b(Function0 function0, Composer composer, int i2) {
        GapComposer gapComposerH = composer.h(-1806523074);
        int i3 = (gapComposerH.y(function0) ? 4 : 2) | i2;
        if (gapComposerH.p(i3 & 1, (i3 & 3) != 2)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierK = PaddingKt.k(BackgroundKt.b(new DTFunctionNameModifier("ConfirmAssessmentLayout"), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48374a, RectangleShapeKt.f8913a), LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2);
            Arrangement$Start$1 arrangement$Start$1 = Arrangement.f4918a;
            Alignment.f8582a.getClass();
            RowMeasurePolicy rowMeasurePolicyA = RowKt.a(arrangement$Start$1, Alignment.Companion.f8591k, gapComposerH, 0);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierK);
            ComposeUiNode.b0.getClass();
            Function0 function1 = ComposeUiNode.Companion.f9641b;
            if (gapComposerH.f7976a == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function1);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, rowMeasurePolicyA, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
            Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
            LVButtonKt.b((i3 << 27) & 1879048192, 504, gapComposerH, PaddingKt.m(tr.d("ConfirmAssessmentLayout", 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48415c, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48418h, 5), LVAppDesignKitTheme.b(gapComposerH).f48446a, null, null, StringResources_androidKt.c(gapComposerH, R.string.dr_cta_create), function0, false, false, false);
            gapComposerH.Z(true);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new o0(i2, 9, function0);
        }
    }
}
