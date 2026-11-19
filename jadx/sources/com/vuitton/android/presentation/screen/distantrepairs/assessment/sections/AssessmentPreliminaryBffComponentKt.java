package com.vuitton.android.presentation.screen.distantrepairs.assessment.sections;

import androidx.compose.animation.AnimatedVisibilityKt;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.BorderKt;
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
import androidx.compose.foundation.layout.SizeKt;
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
import com.vuitton.android.designkit.ui.theme.atoms.LVLinkKt;
import com.vuitton.android.designkit.ui.theme.atoms.configurations.ConfigurationButton;
import com.vuitton.android.presentation.screen.distantrepairs.assessment.components.AssessmentDisclaimerKt;
import com.vuitton.android.presentation.screen.distantrepairs.form.components.DistantRepairCardHeaderComponentKt;
import com.vuitton.android.presentation.screen.distantrepairs.form.models.Step;
import com.vuitton.android.presentation.screen.distantrepairs.form.models.StepState;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.PriceUiModel;
import com.vuitton.android.presentation.screen.repairs.models.bff.CareServiceDetailUiModel;
import defpackage.a;
import defpackage.cj;
import defpackage.d3;
import defpackage.m9;
import defpackage.n00;
import defpackage.n4;
import defpackage.n9;
import defpackage.o;
import defpackage.o60;
import defpackage.o9;
import defpackage.r1;
import defpackage.tr;
import defpackage.u8;
import defpackage.v40;
import defpackage.w;
import java.util.Iterator;
import java.util.List;
import kotlin.Function;
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
public abstract class AssessmentPreliminaryBffComponentKt {

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f57081a;

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
            f57081a = iArr;
        }
    }

    public static final void a(StepState stepState, CareServiceDetailUiModel.Assessment assessment, Function1 function1, Function0 function0, Function0 function2, Function0 function3, Function1 function4, Composer composer, int i2) {
        stepState.getClass();
        function1.getClass();
        function0.getClass();
        function2.getClass();
        function3.getClass();
        function4.getClass();
        GapComposer gapComposerH = composer.h(880742336);
        int i3 = i2 | (gapComposerH.d(stepState.ordinal()) ? 4 : 2) | (gapComposerH.y(assessment) ? 32 : 16) | (gapComposerH.y(function1) ? 256 : 128) | (gapComposerH.y(function0) ? 2048 : 1024) | (gapComposerH.y(function2) ? 16384 : 8192) | (gapComposerH.y(function3) ? 131072 : 65536) | (gapComposerH.y(function4) ? 1048576 : 524288);
        if (gapComposerH.p(i3 & 1, (599187 & i3) != 599186)) {
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
            int i4 = WhenMappings.f57081a[stepState.ordinal()];
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
            Modifier modifierA = ClipKt.a(tr.d("AssessmentPreliminaryBffCard", 1.0f), LVAppDesignKitTheme.j(gapComposerH).f48410b);
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
            int i5 = i3 << 6;
            DistantRepairCardHeaderComponentKt.a(Step.ONE, R.string.dr_prass_card1_title, stepState, false, function1, gapComposerH, (i5 & 57344) | (i5 & 896) | 6, 8);
            gapComposerH = gapComposerH;
            boolean z = !((Boolean) mutableState.getF10755b()).booleanValue() && ((Boolean) mutableState2.getF10755b()).booleanValue();
            ComposableLambdaImpl composableLambdaImplB = ComposableLambdaKt.b(1421563150, new n4((Object) assessment, function0, function2, (Object) function3, (Function) function4, 4), gapComposerH);
            ColumnScopeInstance columnScopeInstance = ColumnScopeInstance.f4944a;
            AnimatedVisibilityKt.c(columnScopeInstance, z, null, null, null, null, composableLambdaImplB, gapComposerH, 1572870, 30);
            AnimatedVisibilityKt.c(columnScopeInstance, (((Boolean) mutableState.getF10755b()).booleanValue() || ((Boolean) mutableState2.getF10755b()).booleanValue()) ? false : true, null, null, null, null, ComposableLambdaKt.b(2103994309, new d3(assessment, 4), gapComposerH), gapComposerH, 1572870, 30);
            gapComposerH.Z(true);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new o(stepState, assessment, function1, function0, function2, function3, function4, i2);
        }
    }

    public static final void b(int i2, Composer composer, Modifier modifier, String str) {
        String str2;
        GapComposer gapComposer;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = a.e(modifierE, "ExpertNoteCard");
        }
        GapComposer gapComposerH = composer.h(-505939275);
        Applier applier = gapComposerH.f7976a;
        int i3 = i2 | (gapComposerH.K(modifierE) ? 4 : 2) | (gapComposerH.K(str) ? 32 : 16);
        if (gapComposerH.p(i3 & 1, (i3 & 19) != 18)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierA = BorderKt.a(SizeKt.d(modifierE, 1.0f), LVAppDesignKitTheme.d(gapComposerH).f48385c, LVAppDesignKitTheme.c(gapComposerH).f48361b.q, LVAppDesignKitTheme.j(gapComposerH).f48410b);
            Alignment.f8582a.getClass();
            MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierA);
            ComposeUiNode.b0.getClass();
            Function0 function0 = ComposeUiNode.Companion.f9641b;
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function0);
            } else {
                gapComposerH.o();
            }
            Function2 function2 = ComposeUiNode.Companion.f9644f;
            Updater.c(gapComposerH, measurePolicyD, function2);
            Function2 function3 = ComposeUiNode.Companion.f9643e;
            Updater.c(gapComposerH, persistentCompositionLocalMapU, function3);
            Integer numValueOf = Integer.valueOf(iHashCode);
            Function2 function4 = ComposeUiNode.Companion.g;
            Updater.c(gapComposerH, numValueOf, function4);
            Function1 function1 = ComposeUiNode.Companion.f9645h;
            Updater.b(gapComposerH, function1);
            Function2 function5 = ComposeUiNode.Companion.d;
            Modifier modifierI = PaddingKt.i(n00.e(gapComposerH, modifierC, function5, "ExpertNoteCard", 1.0f), LVAppDesignKitTheme.l(gapComposerH).f48416e);
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(Arrangement.f4920c, Alignment.Companion.n, gapComposerH, 0);
            int iHashCode2 = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU2 = gapComposerH.U();
            Modifier modifierC2 = ComposedModifierKt.c(gapComposerH, modifierI);
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function0);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, columnMeasurePolicyA, function2);
            Updater.c(gapComposerH, persistentCompositionLocalMapU2, function3);
            cj.t(iHashCode2, gapComposerH, function4, gapComposerH, function1);
            TextKt.c(StringResources_androidKt.c(gapComposerH, R.string.dr_prass_expert_note_title), PaddingKt.m(tr.e(gapComposerH, modifierC2, function5, "ExpertNoteCard"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48415c, 7), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).l, gapComposerH, 0, 0, 131064);
            str2 = str;
            TextKt.c(str2, null, LVAppDesignKitTheme.c(gapComposerH).f48361b.l, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).l, gapComposerH, (i3 >> 3) & 14, 0, 131066);
            gapComposer = gapComposerH;
            gapComposer.Z(true);
            gapComposer.Z(true);
        } else {
            str2 = str;
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new o9(modifierE, str2, i2, 0);
        }
    }

    public static final void c(CareServiceDetailUiModel.Assessment assessment, Function0 function0, Function0 function1, Function0 function2, Function1 function3, Composer composer, int i2) {
        Function0 function4;
        Function1 function5;
        GapComposer gapComposerH = composer.h(-1624319688);
        Applier applier = gapComposerH.f7976a;
        int i3 = i2 | (gapComposerH.y(assessment) ? 4 : 2) | (gapComposerH.y(function0) ? 32 : 16) | (gapComposerH.y(function1) ? 256 : 128) | (gapComposerH.y(function2) ? 2048 : 1024) | (gapComposerH.y(function3) ? 16384 : 8192);
        if (gapComposerH.p(i3 & 1, (i3 & 9363) != 9362)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            if (assessment == null) {
                gapComposerH.L(1289118782);
                gapComposerH.Z(false);
                function4 = function2;
                function5 = function3;
            } else {
                Modifier modifierJ = PaddingKt.j(BackgroundKt.b(o60.c(gapComposerH, 1289118783, "PreliminaryEditBffCard", 1.0f), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48374a, RectangleShapeKt.f8913a), LVAppDesignKitTheme.l(gapComposerH).f48416e, LVAppDesignKitTheme.l(gapComposerH).f48417f);
                Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
                Alignment.f8582a.getClass();
                ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, gapComposerH, 0);
                int iHashCode = Long.hashCode(gapComposerH.T);
                PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
                Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierJ);
                ComposeUiNode.b0.getClass();
                Function0 function6 = ComposeUiNode.Companion.f9641b;
                if (applier == null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposerH.B();
                if (gapComposerH.S) {
                    gapComposerH.C(function6);
                } else {
                    gapComposerH.o();
                }
                Function2 function7 = ComposeUiNode.Companion.f9644f;
                Updater.c(gapComposerH, columnMeasurePolicyA, function7);
                Function2 function8 = ComposeUiNode.Companion.f9643e;
                Updater.c(gapComposerH, persistentCompositionLocalMapU, function8);
                Integer numValueOf = Integer.valueOf(iHashCode);
                Function2 function9 = ComposeUiNode.Companion.g;
                Updater.c(gapComposerH, numValueOf, function9);
                Function1 function10 = ComposeUiNode.Companion.f9645h;
                Updater.b(gapComposerH, function10);
                Function2 function11 = ComposeUiNode.Companion.d;
                TextKt.c(StringResources_androidKt.c(gapComposerH, R.string.dr_prass_text), PaddingKt.m(tr.e(gapComposerH, modifierC, function11, "PreliminaryEditBffCard"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48417f, 7), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).l, gapComposerH, 0, 0, 131064);
                String str = assessment.f64046c;
                if (str == null) {
                    gapComposerH.L(-1138663450);
                    gapComposerH.Z(false);
                } else {
                    b(0, gapComposerH, PaddingKt.m(n00.i(gapComposerH, -1138663449, "PreliminaryEditBffCard"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48417f, 7), str);
                    gapComposerH.Z(false);
                }
                e(assessment, gapComposerH, i3 & 14);
                DividerKt.a(PaddingKt.k(new DTFunctionNameModifier("PreliminaryEditBffCard"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, 1), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.c(gapComposerH).f48361b.q, gapComposerH, 0, 2);
                Modifier modifierM = PaddingKt.m(tr.d("PreliminaryEditBffCard", 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48417f, 7);
                Arrangement$Start$1 arrangement$Start$1 = Arrangement.f4918a;
                BiasAlignment.Vertical vertical = Alignment.Companion.f8591k;
                RowMeasurePolicy rowMeasurePolicyA = RowKt.a(arrangement$Start$1, vertical, gapComposerH, 0);
                int iHashCode2 = Long.hashCode(gapComposerH.T);
                PersistentCompositionLocalMap persistentCompositionLocalMapU2 = gapComposerH.U();
                Modifier modifierC2 = ComposedModifierKt.c(gapComposerH, modifierM);
                if (applier == null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposerH.B();
                if (gapComposerH.S) {
                    gapComposerH.C(function6);
                } else {
                    gapComposerH.o();
                }
                Updater.c(gapComposerH, rowMeasurePolicyA, function7);
                Updater.c(gapComposerH, persistentCompositionLocalMapU2, function8);
                cj.t(iHashCode2, gapComposerH, function9, gapComposerH, function10);
                Updater.c(gapComposerH, modifierC2, function11);
                String strC = StringResources_androidKt.c(gapComposerH, R.string.dr_prass_total);
                RowScopeInstance rowScopeInstance = RowScopeInstance.f5040a;
                TextKt.c(strC, cj.b("PreliminaryEditBffCard", rowScopeInstance, 6.0f, true), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).f48430k, gapComposerH, 0, 0, 131064);
                SpacerKt.a(gapComposerH, rowScopeInstance.a(new DTFunctionNameModifier("PreliminaryEditBffCard"), 1.0f, true));
                Modifier modifierB = cj.b("PreliminaryEditBffCard", rowScopeInstance, 3.0f, true);
                String str2 = assessment.d.f61722b;
                TextStyle textStyle = LVAppDesignKitTheme.n(gapComposerH).f48430k;
                TextAlign.f10959b.getClass();
                TextKt.c(str2, modifierB, LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, new TextAlign(TextAlign.f10963h), 0L, 0, false, 0, 0, null, textStyle, gapComposerH, 0, 0, 130040);
                AssessmentDisclaimerKt.a(PaddingKt.m(o60.f(gapComposerH, true, "PreliminaryEditBffCard"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48417f, 7), StringResources_androidKt.c(gapComposerH, R.string.dr_prass_com), null, 0L, null, gapComposerH, 0, 28);
                Modifier modifierM2 = PaddingKt.m(tr.d("PreliminaryEditBffCard", 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48417f, 7);
                RowMeasurePolicy rowMeasurePolicyA2 = RowKt.a(Arrangement.f4921e, vertical, gapComposerH, 6);
                int iHashCode3 = Long.hashCode(gapComposerH.T);
                PersistentCompositionLocalMap persistentCompositionLocalMapU3 = gapComposerH.U();
                Modifier modifierC3 = ComposedModifierKt.c(gapComposerH, modifierM2);
                if (applier == null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposerH.B();
                if (gapComposerH.S) {
                    gapComposerH.C(function6);
                } else {
                    gapComposerH.o();
                }
                Updater.c(gapComposerH, rowMeasurePolicyA2, function7);
                Updater.c(gapComposerH, persistentCompositionLocalMapU3, function8);
                cj.t(iHashCode3, gapComposerH, function9, gapComposerH, function10);
                Updater.c(gapComposerH, modifierC3, function11);
                LVLinkKt.a(null, StringResources_androidKt.c(gapComposerH, R.string.dr_prass_cta_contact), false, null, false, function0, gapComposerH, (i3 << 12) & ImageMetadata.JPEG_GPS_COORDINATES, 29);
                gapComposerH.Z(true);
                Object objX = gapComposerH.x();
                Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
                if (objX == composer$Companion$Empty$1) {
                    objX = SnapshotStateKt.g(Boolean.FALSE);
                    gapComposerH.q(objX);
                }
                MutableState mutableState = (MutableState) objX;
                BiasAlignment.Vertical vertical2 = Alignment.Companion.l;
                Modifier modifierM3 = PaddingKt.m(new DTFunctionNameModifier("PreliminaryEditBffCard"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48417f, 7);
                RowMeasurePolicy rowMeasurePolicyA3 = RowKt.a(arrangement$Start$1, vertical2, gapComposerH, 48);
                int iHashCode4 = Long.hashCode(gapComposerH.T);
                PersistentCompositionLocalMap persistentCompositionLocalMapU4 = gapComposerH.U();
                Modifier modifierC4 = ComposedModifierKt.c(gapComposerH, modifierM3);
                if (applier == null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposerH.B();
                if (gapComposerH.S) {
                    gapComposerH.C(function6);
                } else {
                    gapComposerH.o();
                }
                Updater.c(gapComposerH, rowMeasurePolicyA3, function7);
                Updater.c(gapComposerH, persistentCompositionLocalMapU4, function8);
                cj.t(iHashCode4, gapComposerH, function9, gapComposerH, function10);
                Updater.c(gapComposerH, modifierC4, function11);
                CompositionLocalKt.a(InteractiveComponentSizeKt.f7013c.c(new Dp(Call.Parameters.DEFAULT_CAMERA_ZOOM)), ComposableLambdaKt.b(1233815385, new r1(4, mutableState), gapComposerH), gapComposerH, 56);
                gapComposerH.L(1590834197);
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
                Modifier modifierM4 = PaddingKt.m(new DTFunctionNameModifier("PreliminaryEditBffCard"), LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, LVAppDesignKitTheme.l(gapComposerH).f48413a, 2);
                boolean zK = gapComposerH.K(annotatedStringI) | ((i3 & 7168) == 2048);
                Object objX2 = gapComposerH.x();
                if (zK || objX2 == composer$Companion$Empty$1) {
                    function4 = function2;
                    objX2 = new n9(annotatedStringI, function4, 0);
                    gapComposerH.q(objX2);
                } else {
                    function4 = function2;
                }
                ClickableTextKt.a(annotatedStringI, modifierM4, textStyle2, false, 0, 0, null, (Function1) objX2, gapComposerH, 0, 120);
                gapComposerH.Z(true);
                ConfigurationButton configurationButton = LVAppDesignKitTheme.b(gapComposerH).f48446a;
                Modifier modifierM5 = PaddingKt.m(tr.d("PreliminaryEditBffCard", 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, 7);
                String strC3 = StringResources_androidKt.c(gapComposerH, R.string.dr_prass_cta_accept);
                boolean zBooleanValue = ((Boolean) mutableState.getF10755b()).booleanValue();
                boolean z = (57344 & i3) == 16384;
                Object objX3 = gapComposerH.x();
                if (z || objX3 == composer$Companion$Empty$1) {
                    function5 = function3;
                    objX3 = new u8(function5, 1);
                    gapComposerH.q(objX3);
                } else {
                    function5 = function3;
                }
                LVButtonKt.b(0, 376, gapComposerH, modifierM5, configurationButton, null, null, strC3, (Function0) objX3, false, zBooleanValue, false);
                LVButtonKt.b((i3 << 21) & 1879048192, 504, gapComposerH, PaddingKt.m(tr.d("PreliminaryEditBffCard", 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48417f, 7), LVAppDesignKitTheme.b(gapComposerH).f48449e, null, null, StringResources_androidKt.c(gapComposerH, R.string.dr_prass_cta_decline), function1, false, false, false);
                gapComposerH = gapComposerH;
                gapComposerH.Z(true);
                gapComposerH.Z(false);
            }
        } else {
            function4 = function2;
            function5 = function3;
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new w((Object) assessment, (Object) function0, (Object) function1, (Object) function4, function5, i2, 4);
        }
    }

    public static final void d(CareServiceDetailUiModel.Assessment assessment, Composer composer, int i2) {
        GapComposer gapComposer;
        int i3;
        String str;
        PriceUiModel priceUiModel;
        GapComposer gapComposerH = composer.h(-1978823085);
        int i4 = i2 | (gapComposerH.y(assessment) ? 4 : 2);
        if (gapComposerH.p(i4 & 1, (i4 & 3) != 2)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            String str2 = null;
            if (assessment != null) {
                List list = assessment.g;
                int i5 = 0;
                String str3 = "";
                for (Object obj : list) {
                    int i6 = i5 + 1;
                    if (i5 < 0) {
                        CollectionsKt.t0();
                        throw null;
                    }
                    str3 = ((Object) str3) + ((CareServiceDetailUiModel.AssessmentItem) obj).f64049b + (i6 != list.size() ? ", " : FileUtils.HIDDEN_PREFIX);
                    i5 = i6;
                }
                str = str3;
            } else {
                str = "";
            }
            Modifier modifierI = PaddingKt.i(BackgroundKt.b(tr.d("PreliminaryReadBffCard", 1.0f), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48374a, RectangleShapeKt.f8913a), LVAppDesignKitTheme.l(gapComposerH).f48416e);
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
            i3 = 1;
            TextKt.c(StringResources_androidKt.c(gapComposerH, R.string.dr_prass_totalcost), PaddingKt.m(tr.e(gapComposerH, modifierC, ComposeUiNode.Companion.d, "PreliminaryReadBffCard"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48415c, 7), LVAppDesignKitTheme.c(gapComposerH).f48361b.l, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).m, gapComposerH, 0, 0, 131064);
            Modifier modifierM = PaddingKt.m(new DTFunctionNameModifier("PreliminaryReadBffCard"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, 7);
            if (assessment != null && (priceUiModel = assessment.d) != null) {
                str2 = priceUiModel.f61722b;
            }
            TextKt.c(str2 == null ? "" : str2, modifierM, LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).m, gapComposerH, 0, 0, 131064);
            TextKt.c(StringResources_androidKt.c(gapComposerH, R.string.dr_prass_repairs), PaddingKt.m(new DTFunctionNameModifier("PreliminaryReadBffCard"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48415c, 7), LVAppDesignKitTheme.c(gapComposerH).f48361b.l, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).m, gapComposerH, 0, 0, 131064);
            TextKt.c(str, null, LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).m, gapComposerH, 0, 0, 131066);
            gapComposer = gapComposerH;
            gapComposer.Z(true);
        } else {
            gapComposer = gapComposerH;
            i3 = 1;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new m9(assessment, i2, i3);
        }
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public static final void e(CareServiceDetailUiModel.Assessment assessment, Composer composer, int i2) {
        int i3;
        assessment.getClass();
        List list = assessment.g;
        GapComposer gapComposerH = composer.h(156902092);
        int i4 = i2 | (gapComposerH.y(assessment) ? 4 : 2);
        boolean z = true;
        if (gapComposerH.p(i4 & 1, (i4 & 3) != 2)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Iterator it = list.iterator();
            int i5 = 0;
            while (it.hasNext()) {
                Object next = it.next();
                int i6 = i5 + 1;
                if (i5 < 0) {
                    CollectionsKt.t0();
                    throw null;
                }
                CareServiceDetailUiModel.AssessmentItem assessmentItem = (CareServiceDetailUiModel.AssessmentItem) next;
                Modifier modifierD = tr.d("RepairItemsBffList", 1.0f);
                Arrangement$SpaceBetween$1 arrangement$SpaceBetween$1 = Arrangement.g;
                Alignment.f8582a.getClass();
                RowMeasurePolicy rowMeasurePolicyA = RowKt.a(arrangement$SpaceBetween$1, Alignment.Companion.f8591k, gapComposerH, 6);
                OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                int iHashCode = Long.hashCode(gapComposerH.T);
                PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
                Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierD);
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
                int i7 = i5;
                String str = assessmentItem.f64049b;
                RowScopeInstance rowScopeInstance = RowScopeInstance.f5040a;
                GapComposer gapComposer = gapComposerH;
                boolean z2 = z;
                List list2 = list;
                Iterator it2 = it;
                TextKt.c(str, cj.b("RepairItemsBffList", rowScopeInstance, 6.0f, z), LVAppDesignKitTheme.c(gapComposerH).f48361b.l, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).l, gapComposer, 0, 0, 131064);
                SpacerKt.a(gapComposer, rowScopeInstance.a(new DTFunctionNameModifier("RepairItemsBffList"), 1.0f, z2));
                PriceUiModel priceUiModel = assessmentItem.f64050c;
                String str2 = priceUiModel != null ? priceUiModel.f61722b : null;
                if (str2 == null) {
                    str2 = "";
                }
                Modifier modifierB = cj.b("RepairItemsBffList", rowScopeInstance, 3.0f, z2);
                TextStyle textStyle = LVAppDesignKitTheme.n(gapComposer).l;
                TextAlign.f10959b.getClass();
                TextKt.c(str2, modifierB, LVAppDesignKitTheme.c(gapComposer).f48361b.f48382k, 0L, null, 0L, null, new TextAlign(TextAlign.f10963h), 0L, 0, false, 0, 0, null, textStyle, gapComposer, 0, 0, 130040);
                gapComposerH = gapComposer;
                gapComposerH.Z(z2);
                if (i7 < list2.size() - (z2 ? 1 : 0)) {
                    DividerKt.a(PaddingKt.k(n00.i(gapComposerH, 1200113657, "RepairItemsBffList"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, z2 ? 1 : 0), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.c(gapComposerH).f48361b.q, gapComposerH, 0, 2);
                    gapComposerH.Z(false);
                } else {
                    gapComposerH.L(1200324116);
                    gapComposerH.Z(false);
                }
                it = it2;
                z = z2 ? 1 : 0;
                i5 = i6;
                list = list2;
            }
            i3 = 0;
            OpaqueKey opaqueKey3 = ComposerKt.f7940a;
        } else {
            i3 = 0;
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new m9(assessment, i2, i3);
        }
    }
}
