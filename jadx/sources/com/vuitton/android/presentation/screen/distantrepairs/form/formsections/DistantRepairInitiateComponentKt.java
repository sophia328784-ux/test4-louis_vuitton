package com.vuitton.android.presentation.screen.distantrepairs.form.formsections;

import androidx.compose.animation.AnimatedVisibilityKt;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$SpaceBetween$1;
import androidx.compose.foundation.layout.Arrangement$Top$1;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.ColumnScopeInstance;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.material3.DividerKt;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
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
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.style.TextAlign;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.R;
import com.vuitton.android.designkit.components.components.LVRadioButtonBlockKt;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVButtonKt;
import com.vuitton.android.designkit.ui.theme.atoms.configurations.ConfigurationButton;
import com.vuitton.android.designkit.ui.theme.atoms.textfield.LVReadOnlyTextFieldKt;
import com.vuitton.android.presentation.screen.distantrepairs.form.components.DistantRepairCardHeaderComponentKt;
import com.vuitton.android.presentation.screen.distantrepairs.form.models.DistantRepairContactMethod;
import com.vuitton.android.presentation.screen.distantrepairs.form.models.DistantRepairsFormFeatureFlags;
import com.vuitton.android.presentation.screen.distantrepairs.form.models.Step;
import com.vuitton.android.presentation.screen.distantrepairs.form.models.StepState;
import com.vuitton.android.presentation.screen.distantrepairs.models.DistantRepairFormViewState;
import com.vuitton.android.presentation.screen.distantrepairs.models.Step1StateUIModel;
import defpackage.cj;
import defpackage.d0;
import defpackage.d3;
import defpackage.em;
import defpackage.i1;
import defpackage.n00;
import defpackage.n4;
import defpackage.o;
import defpackage.r;
import defpackage.rs;
import defpackage.tr;
import defpackage.u1;
import defpackage.u8;
import defpackage.v40;
import defpackage.z;
import java.io.Serializable;
import kotlin.Function;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\u0010\u000b\n\u0002\b\u0004¨\u0006\u0004²\u0006\u000e\u0010\u0001\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002²\u0006\u000e\u0010\u0002\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002²\u0006\u000e\u0010\u0003\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002"}, d2 = {"", "disabledMode", "editMode", "extended", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class DistantRepairInitiateComponentKt {

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f57334a;

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
            f57334a = iArr;
        }
    }

    public static final void a(DistantRepairFormViewState distantRepairFormViewState, StepState stepState, Step1StateUIModel step1StateUIModel, Function0 function0, Function1 function1, Function1 function2, Function1 function3, Composer composer, int i2) {
        distantRepairFormViewState.getClass();
        stepState.getClass();
        step1StateUIModel.getClass();
        function0.getClass();
        function1.getClass();
        function2.getClass();
        function3.getClass();
        GapComposer gapComposerH = composer.h(-342521240);
        int i3 = i2 | (gapComposerH.y(distantRepairFormViewState) ? 4 : 2) | (gapComposerH.d(stepState.ordinal()) ? 32 : 16) | (gapComposerH.y(step1StateUIModel) ? 256 : 128) | (gapComposerH.y(function0) ? 2048 : 1024) | (gapComposerH.y(function1) ? 16384 : 8192) | (gapComposerH.y(function2) ? 131072 : 65536) | (gapComposerH.y(function3) ? 1048576 : 524288);
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
            int i4 = WhenMappings.f57334a[stepState.ordinal()];
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
            Modifier modifierA = ClipKt.a(tr.d("DistantRepairInitiateCard", 1.0f), LVAppDesignKitTheme.j(gapComposerH).f48410b);
            Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
            Alignment.f8582a.getClass();
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, gapComposerH, 0);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierA);
            ComposeUiNode.b0.getClass();
            Function0 function4 = ComposeUiNode.Companion.f9641b;
            if (gapComposerH.f7976a == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function4);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, columnMeasurePolicyA, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
            Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
            DistantRepairCardHeaderComponentKt.a(Step.ONE, R.string.dr_card1_title, stepState, false, function1, gapComposerH, ((i3 << 3) & 896) | 6 | (i3 & 57344), 8);
            boolean z = !((Boolean) mutableState.getF10755b()).booleanValue() && ((Boolean) mutableState2.getF10755b()).booleanValue();
            ComposableLambdaImpl composableLambdaImplB = ComposableLambdaKt.b(1885959094, new n4((Object) distantRepairFormViewState, (Object) step1StateUIModel, function0, (Object) function2, (Object) function3, 9), gapComposerH);
            ColumnScopeInstance columnScopeInstance = ColumnScopeInstance.f4944a;
            AnimatedVisibilityKt.c(columnScopeInstance, z, null, null, null, null, composableLambdaImplB, gapComposerH, 1572870, 30);
            AnimatedVisibilityKt.c(columnScopeInstance, (((Boolean) mutableState.getF10755b()).booleanValue() || ((Boolean) mutableState2.getF10755b()).booleanValue()) ? false : true, null, null, null, null, ComposableLambdaKt.b(975190125, new d3(step1StateUIModel, 15), gapComposerH), gapComposerH, 1572870, 30);
            gapComposerH.Z(true);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new o(distantRepairFormViewState, stepState, step1StateUIModel, function0, function1, function2, function3, i2, 6);
        }
    }

    public static final void b(DistantRepairFormViewState distantRepairFormViewState, DistantRepairContactMethod distantRepairContactMethod, String str, Function0 function0, Function1 function1, Function1 function2, Composer composer, int i2) {
        distantRepairFormViewState.getClass();
        function0.getClass();
        function1.getClass();
        function2.getClass();
        GapComposer gapComposerH = composer.h(1452444357);
        int i3 = i2 | (gapComposerH.y(distantRepairFormViewState) ? 4 : 2) | (gapComposerH.d(distantRepairContactMethod == null ? -1 : distantRepairContactMethod.ordinal()) ? 32 : 16) | (gapComposerH.K(str) ? 256 : 128) | (gapComposerH.y(function0) ? 2048 : 1024) | (gapComposerH.y(function1) ? 16384 : 8192) | (gapComposerH.y(function2) ? 131072 : 65536);
        if (gapComposerH.p(i3 & 1, (74899 & i3) != 74898)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = SnapshotStateKt.g(Boolean.valueOf(distantRepairContactMethod != null));
                gapComposerH.q(objX);
            }
            MutableState mutableState = (MutableState) objX;
            Modifier modifierB = BackgroundKt.b(tr.d("InitiateEditCard", 1.0f), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48374a, RectangleShapeKt.f8913a);
            Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
            Alignment.f8582a.getClass();
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, gapComposerH, 0);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierB);
            ComposeUiNode.b0.getClass();
            Function0 function3 = ComposeUiNode.Companion.f9641b;
            if (gapComposerH.f7976a == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function3);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, columnMeasurePolicyA, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
            Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
            Object objX2 = gapComposerH.x();
            if (objX2 == composer$Companion$Empty$1) {
                objX2 = new d0(27, mutableState);
                gapComposerH.q(objX2);
            }
            d(distantRepairFormViewState, distantRepairContactMethod, (Function0) objX2, function1, gapComposerH, (i3 & 14) | KyberEngine.KyberPolyBytes | (i3 & 112) | ((i3 >> 3) & 7168));
            SpacerKt.a(gapComposerH, SizeKt.f(new DTFunctionNameModifier("InitiateEditCard"), LVAppDesignKitTheme.l(gapComposerH).f48415c));
            AnimatedVisibilityKt.c(ColumnScopeInstance.f4944a, ((Boolean) mutableState.getF10755b()).booleanValue(), null, null, null, null, ComposableLambdaKt.b(-1671980361, new r((Object) distantRepairContactMethod, (Object) str, (Object) function0, (Object) function2, 11), gapComposerH), gapComposerH, 1572870, 30);
            gapComposerH.Z(true);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new u1(distantRepairFormViewState, distantRepairContactMethod, str, function0, function1, function2, i2, 12);
        }
    }

    public static final void c(DistantRepairContactMethod distantRepairContactMethod, String str, Function0 function0, Function1 function1, Composer composer, int i2) {
        boolean z;
        boolean z2;
        function0.getClass();
        function1.getClass();
        GapComposer gapComposerH = composer.h(-1021539101);
        int i3 = i2 | (gapComposerH.d(distantRepairContactMethod == null ? -1 : distantRepairContactMethod.ordinal()) ? 4 : 2) | (gapComposerH.K(str) ? 32 : 16) | (gapComposerH.y(function0) ? 256 : 128) | (gapComposerH.y(function1) ? 2048 : 1024);
        if (gapComposerH.p(i3 & 1, (i3 & 1171) != 1170)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierM = PaddingKt.m(PaddingKt.k(new DTFunctionNameModifier("InitiateEditCardBottom"), LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13);
            Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
            Alignment.f8582a.getClass();
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, gapComposerH, 0);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierM);
            ComposeUiNode.b0.getClass();
            Function0 function2 = ComposeUiNode.Companion.f9641b;
            if (gapComposerH.f7976a == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function2);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, columnMeasurePolicyA, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
            DividerKt.a(BackgroundKt.b(SizeKt.f(tr.e(gapComposerH, modifierC, ComposeUiNode.Companion.d, "InitiateEditCardBottom"), LVAppDesignKitTheme.d(gapComposerH).f48385c), LVAppDesignKitTheme.c(gapComposerH).f48361b.q, RectangleShapeKt.f8913a), Call.Parameters.DEFAULT_CAMERA_ZOOM, 0L, gapComposerH, 0, 6);
            gapComposerH = gapComposerH;
            if (distantRepairContactMethod == DistantRepairContactMethod.VIDEO_CALL || distantRepairContactMethod == DistantRepairContactMethod.PHONE_CALL) {
                z = true;
                TextKt.c(StringResources_androidKt.c(gapComposerH, R.string.dr_card1_cta_text2), ModifierExtKt.e(PaddingKt.m(n00.i(gapComposerH, 1778422975, "InitiateEditCardBottom"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), "careservicesForm_careExpertTimeSlot_text"), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).f48427h, gapComposerH, 0, 0, 131064);
                LVReadOnlyTextFieldKt.a(str == null ? "" : str, ModifierExtKt.e(PaddingKt.k(new DTFunctionNameModifier("InitiateEditCardBottom"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, 1), "careservicesForm_dateSelection_textfield"), null, null, false, StringResources_androidKt.c(gapComposerH, R.string.dr_pick_date), false, null, null, null, null, function0, Integer.valueOf(LVAppDesignKitTheme.g(gapComposerH).I0), gapComposerH, 0, (i3 >> 3) & 112, 10204);
                gapComposerH = gapComposerH;
                gapComposerH.Z(false);
            } else if (distantRepairContactMethod == DistantRepairContactMethod.EMAIL) {
                z = true;
                TextKt.c(StringResources_androidKt.c(gapComposerH, R.string.dr_card1_email_done), ModifierExtKt.e(PaddingKt.m(n00.i(gapComposerH, 1779445944, "InitiateEditCardBottom"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), "careservicesForm_careExpertEmail_text"), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).f48427h, gapComposerH, 0, 0, 131064);
                ConfigurationButton configurationButton = LVAppDesignKitTheme.b(gapComposerH).f48446a;
                Modifier modifierE = ModifierExtKt.e(PaddingKt.k(tr.d("InitiateEditCardBottom", 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, 1), "careservicesForm_next_button");
                String strC = StringResources_androidKt.c(gapComposerH, R.string.dr_card1_cta_next);
                if ((i3 & 7168) == 2048) {
                    gapComposerH = gapComposerH;
                    z2 = true;
                } else {
                    gapComposerH = gapComposerH;
                    z2 = false;
                }
                Object objX = gapComposerH.x();
                if (z2 || objX == Composer.Companion.f7939a) {
                    objX = new u8(function1, 19);
                    gapComposerH.q(objX);
                }
                LVButtonKt.b(0, 504, gapComposerH, modifierE, configurationButton, null, null, strC, (Function0) objX, false, false, false);
                gapComposerH.Z(false);
            } else {
                z = true;
                gapComposerH.L(1780384841);
                gapComposerH.Z(false);
            }
            gapComposerH.Z(z);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new z((Serializable) distantRepairContactMethod, (Object) str, function0, function1, i2, 29);
        }
    }

    public static final void d(DistantRepairFormViewState distantRepairFormViewState, DistantRepairContactMethod distantRepairContactMethod, Function0 function0, Function1 function1, Composer composer, int i2) {
        Function0 function2;
        DistantRepairsFormFeatureFlags distantRepairsFormFeatureFlags;
        int i3;
        int i4;
        Composer$Companion$Empty$1 composer$Companion$Empty$1;
        Function1 function3 = function1;
        distantRepairFormViewState.getClass();
        function0.getClass();
        function3.getClass();
        GapComposer gapComposerH = composer.h(-1099841316);
        Applier applier = gapComposerH.f7976a;
        int i5 = (gapComposerH.y(distantRepairFormViewState) ? 4 : 2) | i2 | (gapComposerH.d(distantRepairContactMethod == null ? -1 : distantRepairContactMethod.ordinal()) ? 32 : 16);
        if ((i2 & 3072) == 0) {
            i5 |= gapComposerH.y(function3) ? 2048 : 1024;
        }
        if (gapComposerH.p(i5 & 1, (i5 & 1171) != 1170)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("InitiateEditCardContent");
            Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
            Alignment.f8582a.getClass();
            BiasAlignment.Horizontal horizontal = Alignment.Companion.n;
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, horizontal, gapComposerH, 0);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, dTFunctionNameModifier);
            ComposeUiNode.b0.getClass();
            Function0 function4 = ComposeUiNode.Companion.f9641b;
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function4);
            } else {
                gapComposerH.o();
            }
            Function2 function5 = ComposeUiNode.Companion.f9644f;
            Updater.c(gapComposerH, columnMeasurePolicyA, function5);
            Function2 function6 = ComposeUiNode.Companion.f9643e;
            Updater.c(gapComposerH, persistentCompositionLocalMapU, function6);
            Integer numValueOf = Integer.valueOf(iHashCode);
            Function2 function7 = ComposeUiNode.Companion.g;
            Updater.c(gapComposerH, numValueOf, function7);
            Function1 function8 = ComposeUiNode.Companion.f9645h;
            Updater.b(gapComposerH, function8);
            Function2 function9 = ComposeUiNode.Companion.d;
            int i6 = i5;
            TextKt.c(StringResources_androidKt.c(gapComposerH, R.string.dr_card1_text1), ModifierExtKt.e(PaddingKt.i(tr.e(gapComposerH, modifierC, function9, "InitiateEditCardContent"), LVAppDesignKitTheme.l(gapComposerH).f48416e), "careservicesForm_initiateRepairDescription_text"), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).f48427h, gapComposerH, 0, 0, 131064);
            gapComposerH = gapComposerH;
            DistantRepairsFormFeatureFlags distantRepairsFormFeatureFlags2 = distantRepairFormViewState.f57385i;
            boolean z = distantRepairsFormFeatureFlags2.f57338a;
            Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
            if (z || distantRepairsFormFeatureFlags2.f57339b) {
                DTFunctionNameModifier dTFunctionNameModifierI = n00.i(gapComposerH, -1001011660, "InitiateEditCardContent");
                ColumnMeasurePolicy columnMeasurePolicyA2 = ColumnKt.a(arrangement$Top$1, horizontal, gapComposerH, 0);
                int iHashCode2 = Long.hashCode(gapComposerH.T);
                PersistentCompositionLocalMap persistentCompositionLocalMapU2 = gapComposerH.U();
                Modifier modifierC2 = ComposedModifierKt.c(gapComposerH, dTFunctionNameModifierI);
                if (applier == null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposerH.B();
                if (gapComposerH.S) {
                    gapComposerH.C(function4);
                } else {
                    gapComposerH.o();
                }
                Updater.c(gapComposerH, columnMeasurePolicyA2, function5);
                Updater.c(gapComposerH, persistentCompositionLocalMapU2, function6);
                cj.t(iHashCode2, gapComposerH, function7, gapComposerH, function8);
                distantRepairsFormFeatureFlags = distantRepairsFormFeatureFlags2;
                TextKt.c(StringResources_androidKt.c(gapComposerH, R.string.dr_card1_subtitle1), ModifierExtKt.e(PaddingKt.m(tr.e(gapComposerH, modifierC2, function9, "InitiateEditCardContent"), LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, LVAppDesignKitTheme.l(gapComposerH).f48415c, 2), "careservicesForm_talkToAnExpert_text"), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).m, gapComposerH, 0, 0, 131064);
                gapComposerH = gapComposerH;
                if (distantRepairsFormFeatureFlags.f57338a) {
                    Modifier modifierE = ModifierExtKt.e(PaddingKt.m(n00.i(gapComposerH, 123627557, "InitiateEditCardContent"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48415c, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), "careservicesForm_videoCall_button");
                    String strC = StringResources_androidKt.c(gapComposerH, R.string.dr_card1_video);
                    boolean z2 = distantRepairContactMethod == DistantRepairContactMethod.VIDEO_CALL;
                    i3 = i6;
                    boolean z3 = (i3 & 7168) == 2048;
                    Object objX = gapComposerH.x();
                    if (z3 || objX == composer$Companion$Empty$2) {
                        objX = new em(function1, function0, 4);
                        gapComposerH.q(objX);
                    }
                    i4 = 2048;
                    LVRadioButtonBlockKt.a(modifierE, strC, null, false, z2, (Function1) objX, null, "careservicesForm_videoCall_text", gapComposerH, 12582912, 76);
                    gapComposerH.Z(false);
                } else {
                    i3 = i6;
                    i4 = 2048;
                    gapComposerH.L(124373293);
                    gapComposerH.Z(false);
                }
                if (distantRepairsFormFeatureFlags.f57339b) {
                    Modifier modifierE2 = ModifierExtKt.e(PaddingKt.m(n00.i(gapComposerH, 124464960, "InitiateEditCardContent"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48415c, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), "careservicesForm_phoneCall_button");
                    String strC2 = StringResources_androidKt.c(gapComposerH, R.string.dr_card1_phone_call);
                    boolean z4 = distantRepairContactMethod == DistantRepairContactMethod.PHONE_CALL;
                    boolean z5 = (i3 & 7168) == i4;
                    Object objX2 = gapComposerH.x();
                    if (z5 || objX2 == composer$Companion$Empty$2) {
                        objX2 = new em(function1, function0, 2);
                        gapComposerH.q(objX2);
                    }
                    composer$Companion$Empty$1 = composer$Companion$Empty$2;
                    LVRadioButtonBlockKt.a(modifierE2, strC2, null, false, z4, (Function1) objX2, null, "careservicesForm_phoneCall_text", gapComposerH, 12582912, 76);
                    gapComposerH.Z(false);
                } else {
                    composer$Companion$Empty$1 = r4;
                    gapComposerH.L(125215501);
                    gapComposerH.Z(false);
                }
                gapComposerH.Z(true);
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(-998666820);
                gapComposerH.Z(false);
                distantRepairContactMethod = distantRepairContactMethod;
                distantRepairsFormFeatureFlags = distantRepairsFormFeatureFlags2;
                composer$Companion$Empty$1 = composer$Companion$Empty$2;
                i3 = i6;
                i4 = 2048;
            }
            if (distantRepairsFormFeatureFlags.f57340c) {
                gapComposerH.L(-998567124);
                GapComposer gapComposer = gapComposerH;
                TextKt.c(StringResources_androidKt.c(gapComposerH, R.string.dr_card1_subtitle2), ModifierExtKt.e(PaddingKt.m(Modifier.Companion.f8607b, LVAppDesignKitTheme.l(gapComposerH).f48416e, LVAppDesignKitTheme.l(gapComposerH).d, LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 8), "careservicesForm_writeToAnExpert_text"), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).m, gapComposer, 0, 0, 131064);
                gapComposerH = gapComposer;
                Modifier modifierE3 = ModifierExtKt.e(PaddingKt.m(new DTFunctionNameModifier("InitiateEditCardContent"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48415c, 5), "careservicesForm_email_button");
                String strC3 = StringResources_androidKt.c(gapComposerH, R.string.dr_card1_email);
                boolean z6 = distantRepairContactMethod == DistantRepairContactMethod.EMAIL;
                boolean z7 = (i3 & 7168) == i4;
                Object objX3 = gapComposerH.x();
                if (z7 || objX3 == composer$Companion$Empty$1) {
                    function2 = function0;
                    function3 = function1;
                    objX3 = new em(function3, function2, 3);
                    gapComposerH.q(objX3);
                } else {
                    function2 = function0;
                    function3 = function1;
                }
                LVRadioButtonBlockKt.a(modifierE3, strC3, null, false, z6, (Function1) objX3, null, "careservicesForm_email_text", gapComposerH, 12582912, 76);
                gapComposerH.Z(false);
            } else {
                function2 = function0;
                function3 = function1;
                gapComposerH.L(-997198660);
                gapComposerH.Z(false);
            }
            gapComposerH.Z(true);
        } else {
            distantRepairContactMethod = distantRepairContactMethod;
            function2 = function0;
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new i1((Object) distantRepairFormViewState, (Object) distantRepairContactMethod, function2, (Function) function3, i2, 14);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v15 */
    /* JADX WARN: Type inference failed for: r1v19, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r1v20 */
    public static final void e(DistantRepairContactMethod distantRepairContactMethod, String str, Composer composer, int i2) {
        DistantRepairContactMethod distantRepairContactMethod2;
        GapComposer gapComposer;
        Applier applier;
        String str2;
        Function0 function0;
        Function2 function2;
        Function2 function3;
        Function1 function1;
        Function2 function4;
        String str3;
        String str4;
        ?? r1;
        GapComposer gapComposer2;
        boolean z;
        GapComposer gapComposer3;
        GapComposer gapComposerH = composer.h(1691475259);
        Applier applier2 = gapComposerH.f7976a;
        int i3 = i2 | (gapComposerH.d(distantRepairContactMethod == null ? -1 : distantRepairContactMethod.ordinal()) ? 4 : 2) | (gapComposerH.K(str) ? 32 : 16);
        if (gapComposerH.p(i3 & 1, (i3 & 19) != 18)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierI = PaddingKt.i(BackgroundKt.b(tr.d("InitiateReadCard", 1.0f), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48374a, RectangleShapeKt.f8913a), LVAppDesignKitTheme.l(gapComposerH).f48416e);
            Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
            Alignment.f8582a.getClass();
            BiasAlignment.Horizontal horizontal = Alignment.Companion.n;
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, horizontal, gapComposerH, 0);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierI);
            ComposeUiNode.b0.getClass();
            Function0 function5 = ComposeUiNode.Companion.f9641b;
            if (applier2 == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function5);
            } else {
                gapComposerH.o();
            }
            Function2 function6 = ComposeUiNode.Companion.f9644f;
            Updater.c(gapComposerH, columnMeasurePolicyA, function6);
            Function2 function7 = ComposeUiNode.Companion.f9643e;
            Updater.c(gapComposerH, persistentCompositionLocalMapU, function7);
            Integer numValueOf = Integer.valueOf(iHashCode);
            Function2 function8 = ComposeUiNode.Companion.g;
            Updater.c(gapComposerH, numValueOf, function8);
            Function1 function9 = ComposeUiNode.Companion.f9645h;
            Updater.b(gapComposerH, function9);
            Function2 function10 = ComposeUiNode.Companion.d;
            Updater.c(gapComposerH, modifierC, function10);
            DistantRepairContactMethod distantRepairContactMethod3 = DistantRepairContactMethod.PHONE_CALL;
            if (distantRepairContactMethod == distantRepairContactMethod3 || distantRepairContactMethod == DistantRepairContactMethod.VIDEO_CALL) {
                gapComposerH.L(-2044828658);
                Arrangement$SpaceBetween$1 arrangement$SpaceBetween$1 = Arrangement.g;
                DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("InitiateReadCard");
                RowMeasurePolicy rowMeasurePolicyA = RowKt.a(arrangement$SpaceBetween$1, Alignment.Companion.f8591k, gapComposerH, 6);
                int iHashCode2 = Long.hashCode(gapComposerH.T);
                PersistentCompositionLocalMap persistentCompositionLocalMapU2 = gapComposerH.U();
                Modifier modifierC2 = ComposedModifierKt.c(gapComposerH, dTFunctionNameModifier);
                if (applier2 == null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposerH.B();
                if (gapComposerH.S) {
                    gapComposerH.C(function5);
                } else {
                    gapComposerH.o();
                }
                Updater.c(gapComposerH, rowMeasurePolicyA, function6);
                Updater.c(gapComposerH, persistentCompositionLocalMapU2, function7);
                cj.t(iHashCode2, gapComposerH, function8, gapComposerH, function9);
                Updater.c(gapComposerH, modifierC2, function10);
                Object objX = gapComposerH.x();
                Object obj = Composer.Companion.f7939a;
                if (objX == obj) {
                    objX = Float.valueOf(4.0f);
                    gapComposerH.q(objX);
                }
                float fFloatValue = ((Number) objX).floatValue();
                Object objX2 = gapComposerH.x();
                if (objX2 == obj) {
                    objX2 = Float.valueOf(1.0f);
                    gapComposerH.q(objX2);
                }
                float fFloatValue2 = ((Number) objX2).floatValue();
                Object objX3 = gapComposerH.x();
                if (objX3 == obj) {
                    objX3 = Float.valueOf(5.0f);
                    gapComposerH.q(objX3);
                }
                float fFloatValue3 = ((Number) objX3).floatValue();
                DTFunctionNameModifier dTFunctionNameModifier2 = new DTFunctionNameModifier("InitiateReadCard");
                RowScopeInstance rowScopeInstance = RowScopeInstance.f5040a;
                applier = applier2;
                str2 = "InitiateReadCard";
                function0 = function5;
                function2 = function10;
                function3 = function7;
                function1 = function9;
                function4 = function8;
                str3 = "careservicesFormRecap_initiateRepairType_text";
                TextKt.c(StringResources_androidKt.c(gapComposerH, distantRepairContactMethod == distantRepairContactMethod3 ? R.string.dr_card1_phone_call : R.string.dr_card1_video), ModifierExtKt.e(rowScopeInstance.a(dTFunctionNameModifier2, fFloatValue, true), "careservicesFormRecap_initiateRepairType_text"), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).m, gapComposerH, 0, 0, 131064);
                SpacerKt.a(gapComposerH, rowScopeInstance.a(new DTFunctionNameModifier(str2), fFloatValue2, true));
                String str5 = str == null ? "" : str;
                TextStyle textStyle = LVAppDesignKitTheme.n(gapComposerH).m;
                str4 = "careservicesFormRecap_initiateRepairDescription_text";
                Modifier modifierE = ModifierExtKt.e(rowScopeInstance.a(new DTFunctionNameModifier(str2), fFloatValue3, true), str4);
                TextAlign.f10959b.getClass();
                TextKt.c(str5, modifierE, LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, new TextAlign(TextAlign.f10963h), 0L, 0, false, 0, 0, null, textStyle, gapComposerH, 0, 0, 130040);
                GapComposer gapComposer4 = gapComposerH;
                gapComposer4.Z(true);
                r1 = 0;
                gapComposer4.Z(false);
                gapComposer2 = gapComposer4;
            } else {
                gapComposerH.L(-2043380431);
                gapComposerH.Z(false);
                applier = applier2;
                str2 = "InitiateReadCard";
                str3 = "careservicesFormRecap_initiateRepairType_text";
                r1 = 0;
                function0 = function5;
                function2 = function10;
                function3 = function7;
                function1 = function9;
                function4 = function8;
                gapComposer2 = gapComposerH;
                str4 = "careservicesFormRecap_initiateRepairDescription_text";
            }
            if (distantRepairContactMethod == DistantRepairContactMethod.EMAIL) {
                DTFunctionNameModifier dTFunctionNameModifierI = n00.i(gapComposer2, -2043287307, str2);
                ColumnMeasurePolicy columnMeasurePolicyA2 = ColumnKt.a(arrangement$Top$1, horizontal, gapComposer2, r1);
                int iHashCode3 = Long.hashCode(gapComposer2.T);
                PersistentCompositionLocalMap persistentCompositionLocalMapU3 = gapComposer2.U();
                Modifier modifierC3 = ComposedModifierKt.c(gapComposer2, dTFunctionNameModifierI);
                if (applier == null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposer2.B();
                if (gapComposer2.S) {
                    gapComposer2.C(function0);
                } else {
                    gapComposer2.o();
                }
                Updater.c(gapComposer2, columnMeasurePolicyA2, function6);
                Updater.c(gapComposer2, persistentCompositionLocalMapU3, function3);
                cj.t(iHashCode3, gapComposer2, function4, gapComposer2, function1);
                Modifier modifierE2 = ModifierExtKt.e(PaddingKt.m(tr.e(gapComposer2, modifierC3, function2, str2), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposer2).f48415c, 7), str3);
                GapComposer gapComposer5 = gapComposer2;
                distantRepairContactMethod2 = distantRepairContactMethod;
                TextKt.c(StringResources_androidKt.c(gapComposer2, R.string.dr_card1_email), modifierE2, LVAppDesignKitTheme.c(gapComposer2).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposer2).m, gapComposer5, 0, 0, 131064);
                TextKt.c(StringResources_androidKt.c(gapComposer5, R.string.dr_card1_cta_text2_nd), n00.g(str2, str4), LVAppDesignKitTheme.c(gapComposer5).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposer5).m, gapComposer5, 0, 0, 131064);
                GapComposer gapComposer6 = gapComposer5;
                z = true;
                gapComposer6.Z(true);
                gapComposer6.Z(r1);
                gapComposer3 = gapComposer6;
            } else {
                distantRepairContactMethod2 = distantRepairContactMethod;
                z = true;
                gapComposer2.L(-2042368591);
                gapComposer2.Z(r1);
                gapComposer3 = gapComposer2;
            }
            gapComposer3.Z(z);
            gapComposer = gapComposer3;
        } else {
            distantRepairContactMethod2 = distantRepairContactMethod;
            GapComposer gapComposer7 = gapComposerH;
            gapComposer7.D();
            gapComposer = gapComposer7;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new rs(distantRepairContactMethod2, str, i2, 6);
        }
    }
}
