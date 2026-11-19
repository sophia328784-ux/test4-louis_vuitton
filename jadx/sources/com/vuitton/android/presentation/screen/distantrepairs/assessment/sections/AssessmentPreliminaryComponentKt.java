package com.vuitton.android.presentation.screen.distantrepairs.assessment.sections;

import androidx.compose.animation.AnimatedVisibilityKt;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$SpaceBetween$1;
import androidx.compose.foundation.layout.Arrangement$Start$1;
import androidx.compose.foundation.layout.Arrangement$Top$1;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.ColumnScopeInstance;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.foundation.text.ClickableTextKt;
import androidx.compose.material3.DividerKt;
import androidx.compose.material3.InteractiveComponentSizeKt;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.graphics.RectangleShapeKt$RectangleShape$1;
import androidx.compose.ui.graphics.Shadow;
import androidx.compose.ui.graphics.drawscope.DrawStyle;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.PlatformSpanStyle;
import androidx.compose.ui.text.SpanStyle;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontSynthesis;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.intl.LocaleList;
import androidx.compose.ui.text.style.BaselineShift;
import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.text.style.TextGeometricTransform;
import androidx.compose.ui.unit.Dp;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import com.sightcall.universal.media.offline.FileUtils;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVButtonKt;
import com.vuitton.android.designkit.ui.theme.atoms.configurations.ConfigurationButton;
import com.vuitton.android.presentation.screen.distantrepairs.form.components.DistantRepairCardHeaderComponentKt;
import com.vuitton.android.presentation.screen.distantrepairs.form.models.Step;
import com.vuitton.android.presentation.screen.distantrepairs.form.models.StepState;
import com.vuitton.android.presentation.screen.repairs.models.CareServiceDetailUiModel;
import com.vuitton.android.presentation.screen.repairs.models.CareServiceItemUiModel;
import com.vuitton.android.presentation.utils.PriceHelper;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import defpackage.cj;
import defpackage.f0;
import defpackage.f1;
import defpackage.k9;
import defpackage.n00;
import defpackage.n9;
import defpackage.o;
import defpackage.o60;
import defpackage.p9;
import defpackage.r1;
import defpackage.tr;
import defpackage.u8;
import defpackage.v40;
import defpackage.w0;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.text.StringsKt;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\u0010\u000b\n\u0002\b\u0004¨\u0006\u0004²\u0006\u000e\u0010\u0001\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002²\u0006\u000e\u0010\u0002\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002²\u0006\u000e\u0010\u0003\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002"}, d2 = {"", "disabledMode", "editMode", "acceptButtonEnabled", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class AssessmentPreliminaryComponentKt {

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f57082a;

        static {
            int[] iArr = new int[StepState.values().length];
            try {
                iArr[StepState.DISABLED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[StepState.EDIT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[StepState.READ.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            f57082a = iArr;
        }
    }

    public static final void a(InAppDispatch inAppDispatch, StepState stepState, CareServiceDetailUiModel careServiceDetailUiModel, String str, Function1 function1, Function0 function0, Function0 function2, Function0 function3, Function1 function4, Composer composer, int i2) {
        String str2;
        boolean z;
        boolean z2;
        inAppDispatch.getClass();
        stepState.getClass();
        str.getClass();
        function1.getClass();
        function0.getClass();
        function2.getClass();
        function3.getClass();
        function4.getClass();
        GapComposer gapComposerH = composer.h(-1416115347);
        int i3 = i2 | (gapComposerH.y(inAppDispatch) ? 4 : 2) | (gapComposerH.d(stepState.ordinal()) ? 32 : 16) | (gapComposerH.y(careServiceDetailUiModel) ? 256 : 128) | (gapComposerH.K(str) ? 2048 : 1024) | (gapComposerH.y(function1) ? 16384 : 8192) | (gapComposerH.y(function0) ? 131072 : 65536) | (gapComposerH.y(function2) ? 1048576 : 524288) | (gapComposerH.y(function3) ? 8388608 : 4194304) | (gapComposerH.y(function4) ? 67108864 : 33554432);
        if (gapComposerH.p(i3 & 1, (38347923 & i3) != 38347922)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = SnapshotStateKt.g(Boolean.FALSE);
                gapComposerH.q(objX);
            }
            MutableState mutableState = (MutableState) objX;
            Object objX2 = gapComposerH.x();
            if (objX2 == composer$Companion$Empty$1) {
                objX2 = SnapshotStateKt.g(Boolean.FALSE);
                gapComposerH.q(objX2);
            }
            MutableState mutableState2 = (MutableState) objX2;
            int i4 = WhenMappings.f57082a[stepState.ordinal()];
            if (i4 == 1) {
                mutableState.setValue(Boolean.TRUE);
            } else if (i4 == 2) {
                mutableState.setValue(Boolean.FALSE);
                mutableState2.setValue(Boolean.TRUE);
            } else if (i4 != 3) {
                v40.g();
                return;
            } else {
                Boolean bool = Boolean.FALSE;
                mutableState.setValue(bool);
                mutableState2.setValue(bool);
            }
            Modifier modifierA = ClipKt.a(tr.d("AssessmentPreliminaryCard", 1.0f), LVAppDesignKitTheme.j(gapComposerH).f48410b);
            Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
            Alignment.f8582a.getClass();
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, gapComposerH, 0);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierA);
            ComposeUiNode.b0.getClass();
            Function0 function5 = ComposeUiNode.Companion.f9641b;
            if (gapComposerH.f7976a == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function5);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, columnMeasurePolicyA, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
            Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
            DistantRepairCardHeaderComponentKt.a(Step.ONE, R.string.dr_prass_card1_title, stepState, false, function1, gapComposerH, ((i3 << 3) & 896) | 6 | (i3 & 57344), 8);
            if (((Boolean) mutableState.getF10755b()).booleanValue() || !((Boolean) mutableState2.getF10755b()).booleanValue()) {
                z = true;
                z2 = false;
            } else {
                z = true;
                z2 = true;
            }
            boolean z3 = z;
            str2 = str;
            ComposableLambdaImpl composableLambdaImplB = ComposableLambdaKt.b(-2084966177, new w0(inAppDispatch, careServiceDetailUiModel, str, function0, function2, function3, function4, 4), gapComposerH);
            ColumnScopeInstance columnScopeInstance = ColumnScopeInstance.f4944a;
            gapComposerH = gapComposerH;
            AnimatedVisibilityKt.c(columnScopeInstance, z2, null, null, null, null, composableLambdaImplB, gapComposerH, 1572870, 30);
            AnimatedVisibilityKt.c(columnScopeInstance, (((Boolean) mutableState.getF10755b()).booleanValue() || ((Boolean) mutableState2.getF10755b()).booleanValue()) ? false : z3, null, null, null, null, ComposableLambdaKt.b(-173224568, new f1(careServiceDetailUiModel, str2, 4), gapComposerH), gapComposerH, 1572870, 30);
            gapComposerH.Z(z3);
        } else {
            str2 = str;
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new p9(inAppDispatch, stepState, careServiceDetailUiModel, str2, function1, function0, function2, function3, function4, i2);
        }
    }

    public static final void b(InAppDispatch inAppDispatch, CareServiceDetailUiModel careServiceDetailUiModel, String str, Function0 function0, Function0 function1, Function0 function2, Function1 function3, Composer composer, int i2) {
        Function0 function4;
        Function0 function5;
        boolean z;
        Function1 function6 = function3;
        GapComposer gapComposerH = composer.h(911489095);
        Applier applier = gapComposerH.f7976a;
        int i3 = i2 | (gapComposerH.y(inAppDispatch) ? 4 : 2) | (gapComposerH.y(careServiceDetailUiModel) ? 32 : 16) | (gapComposerH.K(str) ? 256 : 128) | (gapComposerH.y(function0) ? 2048 : 1024) | (gapComposerH.y(function1) ? 16384 : 8192) | (gapComposerH.y(function2) ? 131072 : 65536) | (gapComposerH.y(function6) ? 1048576 : 524288);
        if (gapComposerH.p(i3 & 1, (599187 & i3) != 599186)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            if (careServiceDetailUiModel == null) {
                gapComposerH.L(1388885259);
                gapComposerH.Z(false);
                function4 = function2;
            } else {
                Modifier modifierC = o60.c(gapComposerH, 1388885260, "PreliminaryEditCard", 1.0f);
                long j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.f48374a;
                RectangleShapeKt$RectangleShape$1 rectangleShapeKt$RectangleShape$1 = RectangleShapeKt.f8913a;
                Modifier modifierI = PaddingKt.i(BackgroundKt.b(modifierC, j2, rectangleShapeKt$RectangleShape$1), LVAppDesignKitTheme.l(gapComposerH).f48416e);
                Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
                Alignment.f8582a.getClass();
                BiasAlignment.Horizontal horizontal = Alignment.Companion.n;
                ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, horizontal, gapComposerH, 0);
                int iHashCode = Long.hashCode(gapComposerH.T);
                PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
                Modifier modifierC2 = ComposedModifierKt.c(gapComposerH, modifierI);
                ComposeUiNode.b0.getClass();
                Function0 function7 = ComposeUiNode.Companion.f9641b;
                if (applier == null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposerH.B();
                if (gapComposerH.S) {
                    gapComposerH.C(function7);
                } else {
                    gapComposerH.o();
                }
                Function2 function8 = ComposeUiNode.Companion.f9644f;
                Updater.c(gapComposerH, columnMeasurePolicyA, function8);
                Function2 function9 = ComposeUiNode.Companion.f9643e;
                Updater.c(gapComposerH, persistentCompositionLocalMapU, function9);
                Integer numValueOf = Integer.valueOf(iHashCode);
                Function2 function10 = ComposeUiNode.Companion.g;
                Updater.c(gapComposerH, numValueOf, function10);
                Function1 function11 = ComposeUiNode.Companion.f9645h;
                Updater.b(gapComposerH, function11);
                Function2 function12 = ComposeUiNode.Companion.d;
                TextKt.c(StringResources_androidKt.c(gapComposerH, R.string.dr_prass_text), PaddingKt.m(tr.e(gapComposerH, modifierC2, function12, "PreliminaryEditCard"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48417f, 7), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).m, gapComposerH, 0, 0, 131064);
                d(inAppDispatch, careServiceDetailUiModel, gapComposerH, i3 & 126);
                DividerKt.a(PaddingKt.k(new DTFunctionNameModifier("PreliminaryEditCard"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, 1), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.c(gapComposerH).f48361b.q, gapComposerH, 0, 2);
                Modifier modifierK = PaddingKt.k(tr.d("PreliminaryEditCard", 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, 1);
                Arrangement$Start$1 arrangement$Start$1 = Arrangement.f4918a;
                RowMeasurePolicy rowMeasurePolicyA = RowKt.a(arrangement$Start$1, Alignment.Companion.f8591k, gapComposerH, 0);
                int iHashCode2 = Long.hashCode(gapComposerH.T);
                PersistentCompositionLocalMap persistentCompositionLocalMapU2 = gapComposerH.U();
                Modifier modifierC3 = ComposedModifierKt.c(gapComposerH, modifierK);
                if (applier == null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposerH.B();
                if (gapComposerH.S) {
                    function5 = function7;
                    gapComposerH.C(function5);
                } else {
                    function5 = function7;
                    gapComposerH.o();
                }
                Function0 function13 = function5;
                Updater.c(gapComposerH, rowMeasurePolicyA, function8);
                Updater.c(gapComposerH, persistentCompositionLocalMapU2, function9);
                cj.t(iHashCode2, gapComposerH, function10, gapComposerH, function11);
                Updater.c(gapComposerH, modifierC3, function12);
                String strC = StringResources_androidKt.c(gapComposerH, R.string.dr_prass_total);
                RowScopeInstance rowScopeInstance = RowScopeInstance.f5040a;
                TextKt.c(strC, cj.b("PreliminaryEditCard", rowScopeInstance, 6.0f, true), LVAppDesignKitTheme.c(gapComposerH).f48361b.l, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).m, gapComposerH, 0, 0, 131064);
                SpacerKt.a(gapComposerH, rowScopeInstance.a(new DTFunctionNameModifier("PreliminaryEditCard"), 1.0f, true));
                Modifier modifierB = cj.b("PreliminaryEditCard", rowScopeInstance, 3.0f, true);
                TextStyle textStyle = LVAppDesignKitTheme.n(gapComposerH).m;
                TextAlign.f10959b.getClass();
                TextKt.c(str, modifierB, LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, new TextAlign(TextAlign.f10963h), 0L, 0, false, 0, 0, null, textStyle, gapComposerH, (i3 >> 6) & 14, 0, 130040);
                DividerKt.a(PaddingKt.k(o60.f(gapComposerH, true, "PreliminaryEditCard"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, 1), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.c(gapComposerH).f48361b.q, gapComposerH, 0, 2);
                TextKt.c(StringResources_androidKt.c(gapComposerH, R.string.dr_prass_com), PaddingKt.m(new DTFunctionNameModifier("PreliminaryEditCard"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48417f, 7), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).m, gapComposerH, 0, 0, 131064);
                Modifier modifierB2 = BackgroundKt.b(ClipKt.a(tr.d("PreliminaryEditCard", 1.0f), LVAppDesignKitTheme.j(gapComposerH).f48410b), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48375b, rectangleShapeKt$RectangleShape$1);
                MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                int iHashCode3 = Long.hashCode(gapComposerH.T);
                PersistentCompositionLocalMap persistentCompositionLocalMapU3 = gapComposerH.U();
                Modifier modifierC4 = ComposedModifierKt.c(gapComposerH, modifierB2);
                if (applier == null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposerH.B();
                if (gapComposerH.S) {
                    gapComposerH.C(function13);
                } else {
                    gapComposerH.o();
                }
                Updater.c(gapComposerH, measurePolicyD, function8);
                Updater.c(gapComposerH, persistentCompositionLocalMapU3, function9);
                cj.t(iHashCode3, gapComposerH, function10, gapComposerH, function11);
                Modifier modifierI2 = PaddingKt.i(n00.e(gapComposerH, modifierC4, function12, "PreliminaryEditCard", 1.0f), LVAppDesignKitTheme.l(gapComposerH).f48416e);
                ColumnMeasurePolicy columnMeasurePolicyA2 = ColumnKt.a(arrangement$Top$1, horizontal, gapComposerH, 0);
                int iHashCode4 = Long.hashCode(gapComposerH.T);
                PersistentCompositionLocalMap persistentCompositionLocalMapU4 = gapComposerH.U();
                Modifier modifierC5 = ComposedModifierKt.c(gapComposerH, modifierI2);
                if (applier == null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposerH.B();
                if (gapComposerH.S) {
                    gapComposerH.C(function13);
                } else {
                    gapComposerH.o();
                }
                Updater.c(gapComposerH, columnMeasurePolicyA2, function8);
                Updater.c(gapComposerH, persistentCompositionLocalMapU4, function9);
                cj.t(iHashCode4, gapComposerH, function10, gapComposerH, function11);
                TextKt.c(StringResources_androidKt.c(gapComposerH, R.string.dr_prass_expert_note_title), PaddingKt.m(tr.e(gapComposerH, modifierC5, function12, "PreliminaryEditCard"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48415c, 7), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).m, gapComposerH, 0, 0, 131064);
                TextKt.c(careServiceDetailUiModel.l, null, LVAppDesignKitTheme.c(gapComposerH).f48361b.l, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).m, gapComposerH, 0, 0, 131066);
                gapComposerH.Z(true);
                gapComposerH.Z(true);
                LVButtonKt.b((i3 << 18) & 1879048192, 504, gapComposerH, PaddingKt.k(tr.d("PreliminaryEditCard", 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48417f, 1), LVAppDesignKitTheme.b(gapComposerH).f48449e, null, null, StringResources_androidKt.c(gapComposerH, R.string.dr_prass_cta_contact), function0, false, false, false);
                Object objX = gapComposerH.x();
                Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
                if (objX == composer$Companion$Empty$1) {
                    objX = SnapshotStateKt.g(Boolean.FALSE);
                    gapComposerH.q(objX);
                }
                MutableState mutableState = (MutableState) objX;
                BiasAlignment.Vertical vertical = Alignment.Companion.l;
                Modifier modifierM = PaddingKt.m(new DTFunctionNameModifier("PreliminaryEditCard"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48417f, 7);
                RowMeasurePolicy rowMeasurePolicyA2 = RowKt.a(arrangement$Start$1, vertical, gapComposerH, 48);
                int iHashCode5 = Long.hashCode(gapComposerH.getT());
                PersistentCompositionLocalMap persistentCompositionLocalMapU5 = gapComposerH.U();
                Modifier modifierC6 = ComposedModifierKt.c(gapComposerH, modifierM);
                if (applier == null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposerH.B();
                if (gapComposerH.S) {
                    gapComposerH.C(function13);
                } else {
                    gapComposerH.o();
                }
                Updater.c(gapComposerH, rowMeasurePolicyA2, function8);
                Updater.c(gapComposerH, persistentCompositionLocalMapU5, function9);
                cj.t(iHashCode5, gapComposerH, function10, gapComposerH, function11);
                Updater.c(gapComposerH, modifierC6, function12);
                CompositionLocalKt.a(InteractiveComponentSizeKt.f7013c.c(new Dp(Call.Parameters.DEFAULT_CAMERA_ZOOM)), ComposableLambdaKt.b(75348903, new r1(5, mutableState), gapComposerH), gapComposerH, 56);
                gapComposerH.L(1496275811);
                AnnotatedString.Builder builder = new AnnotatedString.Builder(0, 1, null);
                String strB = StringResources_androidKt.b(R.string.dr_prass_legal_checkbox, new Object[]{StringResources_androidKt.c(gapComposerH, R.string.cta_terms_conditions)}, gapComposerH);
                String strC2 = StringResources_androidKt.c(gapComposerH, R.string.terms_conditions);
                int iV = StringsKt.v(strB, strC2, 0, false, 6);
                int length = strC2.length() + iV;
                builder.e(strB);
                TextDecoration.f10965b.getClass();
                builder.c(new SpanStyle(0L, 0L, (FontWeight) null, (FontStyle) null, (FontSynthesis) null, (FontFamily) null, (String) null, 0L, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, TextDecoration.d, (Shadow) null, (PlatformSpanStyle) null, (DrawStyle) null, 61439, (DefaultConstructorMarker) null), iV, length);
                builder.b(iV, length, "link", "terms");
                AnnotatedString annotatedStringI = builder.i();
                gapComposerH.Z(false);
                TextStyle textStyle2 = LVAppDesignKitTheme.n(gapComposerH).n;
                Modifier modifierM2 = PaddingKt.m(new DTFunctionNameModifier("PreliminaryEditCard"), LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, LVAppDesignKitTheme.l(gapComposerH).f48413a, 2);
                boolean zK = gapComposerH.K(annotatedStringI) | ((i3 & ImageMetadata.JPEG_GPS_COORDINATES) == 131072);
                Object objX2 = gapComposerH.x();
                if (zK || objX2 == composer$Companion$Empty$1) {
                    function4 = function2;
                    z = true;
                    objX2 = new n9(annotatedStringI, function4, 1);
                    gapComposerH.q(objX2);
                } else {
                    function4 = function2;
                    z = true;
                }
                ClickableTextKt.a(annotatedStringI, modifierM2, textStyle2, false, 0, 0, null, (Function1) objX2, gapComposerH, 0, 120);
                gapComposerH = gapComposerH;
                gapComposerH.Z(z);
                ConfigurationButton configurationButton = LVAppDesignKitTheme.b(gapComposerH).f48446a;
                Modifier modifierM3 = PaddingKt.m(tr.d("PreliminaryEditCard", 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, 7);
                String strC3 = StringResources_androidKt.c(gapComposerH, R.string.dr_prass_cta_accept);
                boolean zBooleanValue = ((Boolean) mutableState.getF10755b()).booleanValue();
                boolean z2 = (i3 & 3670016) == 1048576;
                Object objX3 = gapComposerH.x();
                if (z2 || objX3 == composer$Companion$Empty$1) {
                    function6 = function3;
                    objX3 = new u8(function6, 2);
                    gapComposerH.q(objX3);
                } else {
                    function6 = function3;
                }
                LVButtonKt.b(0, 376, gapComposerH, modifierM3, configurationButton, null, null, strC3, (Function0) objX3, false, zBooleanValue, false);
                LVButtonKt.b((i3 << 15) & 1879048192, 504, gapComposerH, PaddingKt.m(tr.d("PreliminaryEditCard", 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48417f, 7), LVAppDesignKitTheme.b(gapComposerH).f48449e, null, null, StringResources_androidKt.c(gapComposerH, R.string.dr_prass_cta_decline), function1, false, false, false);
                gapComposerH.Z(true);
                gapComposerH.Z(false);
            }
        } else {
            function4 = function2;
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new o(inAppDispatch, careServiceDetailUiModel, str, function0, function1, function4, function6, i2);
        }
    }

    public static final void c(CareServiceDetailUiModel careServiceDetailUiModel, String str, Composer composer, int i2) {
        GapComposer gapComposerH = composer.h(479502166);
        int i3 = i2 | (gapComposerH.y(careServiceDetailUiModel) ? 4 : 2) | (gapComposerH.K(str) ? 32 : 16);
        if (gapComposerH.p(i3 & 1, (i3 & 19) != 18)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            String str2 = "";
            if (careServiceDetailUiModel != null) {
                List list = careServiceDetailUiModel.w;
                int i4 = 0;
                for (Object obj : list) {
                    int i5 = i4 + 1;
                    if (i4 < 0) {
                        CollectionsKt.t0();
                        throw null;
                    }
                    str2 = ((Object) str2) + ((CareServiceItemUiModel) obj).f63989e + (i5 != list.size() ? ", " : FileUtils.HIDDEN_PREFIX);
                    i4 = i5;
                }
            }
            String str3 = str2;
            Modifier modifierI = PaddingKt.i(BackgroundKt.b(tr.d("PreliminaryReadCard", 1.0f), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48374a, RectangleShapeKt.f8913a), LVAppDesignKitTheme.l(gapComposerH).f48416e);
            Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
            Alignment.f8582a.getClass();
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, gapComposerH, 0);
            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierI);
            ComposeUiNode.b0.getClass();
            Function0 function0 = ComposeUiNode.Companion.f9641b;
            if (gapComposerH.f7976a == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function0);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, columnMeasurePolicyA, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
            TextKt.c(StringResources_androidKt.c(gapComposerH, R.string.dr_prass_totalcost), PaddingKt.m(tr.e(gapComposerH, modifierC, ComposeUiNode.Companion.d, "PreliminaryReadCard"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48415c, 7), LVAppDesignKitTheme.c(gapComposerH).f48361b.l, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).m, gapComposerH, 0, 0, 131064);
            TextKt.c(str, PaddingKt.m(new DTFunctionNameModifier("PreliminaryReadCard"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, 7), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).m, gapComposerH, (i3 >> 3) & 14, 0, 131064);
            TextKt.c(StringResources_androidKt.c(gapComposerH, R.string.dr_prass_repairs), PaddingKt.m(new DTFunctionNameModifier("PreliminaryReadCard"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48415c, 7), LVAppDesignKitTheme.c(gapComposerH).f48361b.l, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).m, gapComposerH, 0, 0, 131064);
            TextKt.c(str3, null, LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).m, gapComposerH, 0, 0, 131066);
            gapComposerH = gapComposerH;
            gapComposerH.Z(true);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new f0(careServiceDetailUiModel, str, i2, 8);
        }
    }

    public static final void d(InAppDispatch inAppDispatch, CareServiceDetailUiModel careServiceDetailUiModel, Composer composer, int i2) {
        GapComposer gapComposer;
        InAppDispatch inAppDispatch2 = inAppDispatch;
        CareServiceDetailUiModel careServiceDetailUiModel2 = careServiceDetailUiModel;
        inAppDispatch2.getClass();
        careServiceDetailUiModel2.getClass();
        GapComposer gapComposerH = composer.h(-291982146);
        int i3 = (gapComposerH.y(inAppDispatch2) ? 4 : 2) | i2 | (gapComposerH.y(careServiceDetailUiModel2) ? 32 : 16);
        boolean z = true;
        if (gapComposerH.p(i3 & 1, (i3 & 19) != 18)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            for (CareServiceItemUiModel careServiceItemUiModel : careServiceDetailUiModel2.w) {
                Modifier modifierM = PaddingKt.m(tr.d("RepairItemsList", 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, 7);
                Arrangement$SpaceBetween$1 arrangement$SpaceBetween$1 = Arrangement.g;
                Alignment.f8582a.getClass();
                RowMeasurePolicy rowMeasurePolicyA = RowKt.a(arrangement$SpaceBetween$1, Alignment.Companion.f8591k, gapComposerH, 6);
                OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                int iHashCode = Long.hashCode(gapComposerH.T);
                PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
                Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierM);
                ComposeUiNode.b0.getClass();
                Function0 function0 = ComposeUiNode.Companion.f9641b;
                if (gapComposerH.f7976a == null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposerH.B();
                if (gapComposerH.S) {
                    gapComposerH.C(function0);
                } else {
                    gapComposerH.o();
                }
                Updater.c(gapComposerH, rowMeasurePolicyA, ComposeUiNode.Companion.f9644f);
                Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
                Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
                Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
                String str = careServiceDetailUiModel2.f63982f;
                Double d = careServiceItemUiModel.g;
                String strA = PriceHelper.a(inAppDispatch2, str, d != null ? d.doubleValue() : careServiceItemUiModel.f63990f);
                String str2 = careServiceItemUiModel.f63989e;
                RowScopeInstance rowScopeInstance = RowScopeInstance.f5040a;
                GapComposer gapComposer2 = gapComposerH;
                TextKt.c(str2, cj.b("RepairItemsList", rowScopeInstance, 6.0f, z), LVAppDesignKitTheme.c(gapComposerH).f48361b.l, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).m, gapComposer2, 0, 0, 131064);
                SpacerKt.a(gapComposer2, rowScopeInstance.a(new DTFunctionNameModifier("RepairItemsList"), 1.0f, true));
                Modifier modifierB = cj.b("RepairItemsList", rowScopeInstance, 3.0f, true);
                TextStyle textStyle = LVAppDesignKitTheme.n(gapComposer2).m;
                TextAlign.f10959b.getClass();
                TextKt.c(strA, modifierB, LVAppDesignKitTheme.c(gapComposer2).f48361b.f48382k, 0L, null, 0L, null, new TextAlign(TextAlign.f10963h), 0L, 0, false, 0, 0, null, textStyle, gapComposer2, 0, 0, 130040);
                gapComposer2.Z(true);
                inAppDispatch2 = inAppDispatch;
                careServiceDetailUiModel2 = careServiceDetailUiModel;
                gapComposerH = gapComposer2;
                z = true;
            }
            gapComposer = gapComposerH;
            OpaqueKey opaqueKey3 = ComposerKt.f7940a;
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new k9(inAppDispatch, careServiceDetailUiModel, i2, 1);
        }
    }
}
