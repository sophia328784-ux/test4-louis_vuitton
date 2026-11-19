package com.vuitton.android.presentation.screen.distantrepairs.assessment.components;

import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Start$1;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.material3.ScaffoldKt;
import androidx.compose.material3.SnackbarHostState;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.navigation.NavHostController;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVButtonKt;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetState;
import com.vuitton.android.presentation.contact.models.ContactUsUiModel;
import com.vuitton.android.presentation.extensions.WindowInsetsExtKt;
import com.vuitton.android.presentation.screen.distantrepairs.form.models.StepState;
import com.vuitton.android.presentation.screen.distantrepairs.models.AssessmentBffViewState;
import defpackage.f0;
import defpackage.g0;
import defpackage.o0;
import defpackage.tr;
import defpackage.v8;
import defpackage.w8;
import defpackage.x8;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class AssessmentBffScreenKt {
    public static final void a(AssessmentBffViewState assessmentBffViewState, SnackbarHostState snackbarHostState, CoroutineScope coroutineScope, NavHostController navHostController, Function1 function1, Function0 function0, Function0 function2, Function0 function3, Function0 function4, Function0 function5, Function1 function6, Function1 function7, Function1 function8, Function1 function9, Function0 function10, Function0 function11, ContactUsUiModel contactUsUiModel, Function1 function12, LVModalBottomSheetState lVModalBottomSheetState, Composer composer, int i2, int i3) {
        int i4;
        int i5;
        GapComposer gapComposer;
        assessmentBffViewState.getClass();
        snackbarHostState.getClass();
        coroutineScope.getClass();
        navHostController.getClass();
        function1.getClass();
        defpackage.a.D(function0, function2, function3, function4, function5);
        function6.getClass();
        function7.getClass();
        function8.getClass();
        function9.getClass();
        function10.getClass();
        function11.getClass();
        contactUsUiModel.getClass();
        function12.getClass();
        lVModalBottomSheetState.getClass();
        GapComposer gapComposerH = composer.h(-1801136702);
        if ((i2 & 6) == 0) {
            i4 = (gapComposerH.y(assessmentBffViewState) ? 4 : 2) | i2;
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
            i4 |= gapComposerH.y(function1) ? 16384 : 8192;
        }
        if ((i2 & ImageMetadata.EDGE_MODE) == 0) {
            i4 |= gapComposerH.y(function0) ? 131072 : 65536;
        }
        if ((i2 & 1572864) == 0) {
            i4 |= gapComposerH.y(function2) ? 1048576 : 524288;
        }
        if ((i2 & 12582912) == 0) {
            i4 |= gapComposerH.y(function3) ? 8388608 : 4194304;
        }
        if ((i2 & 100663296) == 0) {
            i4 |= gapComposerH.y(function4) ? 67108864 : 33554432;
        }
        if ((i2 & 805306368) == 0) {
            i4 |= gapComposerH.y(function5) ? PKIFailureInfo.duplicateCertReq : 268435456;
        }
        if ((i3 & 6) == 0) {
            i5 = i3 | (gapComposerH.y(function6) ? 4 : 2);
        } else {
            i5 = i3;
        }
        if ((i3 & 48) == 0) {
            i5 |= gapComposerH.y(function7) ? 32 : 16;
        }
        if ((i3 & KyberEngine.KyberPolyBytes) == 0) {
            i5 |= gapComposerH.y(function8) ? 256 : 128;
        }
        int i6 = i4;
        if ((i3 & 3072) == 0) {
            i5 |= gapComposerH.y(function9) ? 2048 : 1024;
        }
        if ((i3 & 24576) == 0) {
            i5 |= gapComposerH.y(function10) ? 16384 : 8192;
        }
        if ((i3 & ImageMetadata.EDGE_MODE) == 0) {
            i5 |= gapComposerH.y(function11) ? 131072 : 65536;
        }
        if ((i3 & 1572864) == 0) {
            i5 |= (i3 & PKIFailureInfo.badSenderNonce) == 0 ? gapComposerH.K(contactUsUiModel) : gapComposerH.y(contactUsUiModel) ? 1048576 : 524288;
        }
        if ((i3 & 12582912) == 0) {
            i5 |= gapComposerH.y(function12) ? 8388608 : 4194304;
        }
        if ((i3 & 100663296) == 0) {
            i5 |= (i3 & 134217728) == 0 ? gapComposerH.K(lVModalBottomSheetState) : gapComposerH.y(lVModalBottomSheetState) ? 67108864 : 33554432;
        }
        if (gapComposerH.p(i6 & 1, ((i6 & 306783379) == 306783378 && (i5 & 38347923) == 38347922) ? false : true)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Boolean boolValueOf = Boolean.valueOf(!assessmentBffViewState.f57345b);
            Boolean boolValueOf2 = Boolean.valueOf(assessmentBffViewState.f57346c.f57341a == StepState.DISABLED);
            boolean z = (i5 & 14) == 4;
            Object objX = gapComposerH.x();
            if (z || objX == Composer.Companion.f7939a) {
                objX = new AssessmentBffScreenKt$AssessmentBffScreen$1$1(null, function6);
                gapComposerH.q(objX);
            }
            EffectsKt.g(boolValueOf, boolValueOf2, (Function2) objX, gapComposerH);
            gapComposer = gapComposerH;
            ScaffoldKt.a(null, ComposableLambdaKt.b(-261826690, new v8(0, lVModalBottomSheetState, contactUsUiModel, function0, function12), gapComposerH), ComposableLambdaKt.b(-111685347, new f0(assessmentBffViewState, function5, 7), gapComposerH), ComposableLambdaKt.b(38455996, new g0(snackbarHostState, 5), gapComposerH), null, 0, 0L, 0L, WindowInsetsExtKt.a(), ComposableLambdaKt.b(860865683, new w8(navHostController, assessmentBffViewState, coroutineScope, function6, function7, function9, function1, function8, function10, function4, function11, lVModalBottomSheetState, function2, function3), gapComposerH), gapComposer, 805309872, 241);
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new x8(assessmentBffViewState, snackbarHostState, coroutineScope, navHostController, function1, function0, function2, function3, function4, function5, function6, function7, function8, function9, function10, function11, contactUsUiModel, function12, lVModalBottomSheetState, i2, i3, 0);
        }
    }

    public static final void b(Function0 function0, Composer composer, int i2) {
        GapComposer gapComposerH = composer.h(981924790);
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
            recomposeScopeImplB0.d = new o0(i2, 7, function0);
        }
    }
}
