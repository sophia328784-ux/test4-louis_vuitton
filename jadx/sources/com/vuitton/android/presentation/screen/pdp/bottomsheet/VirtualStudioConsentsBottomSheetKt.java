package com.vuitton.android.presentation.screen.pdp.bottomsheet;

import androidx.compose.foundation.ScrollKt;
import androidx.compose.foundation.ScrollState;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Start$1;
import androidx.compose.foundation.layout.Arrangement$Top$1;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.ColumnScopeInstance;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.foundation.layout.WindowInsetsPadding_androidKt;
import androidx.compose.material3.IconKt;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.Applier;
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
import androidx.compose.runtime.State;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.res.PainterResources_androidKt;
import androidx.compose.ui.res.StringResources_androidKt;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVButtonKt;
import defpackage.b3;
import defpackage.cj;
import defpackage.iu0;
import defpackage.kn0;
import defpackage.n00;
import defpackage.o60;
import defpackage.tr;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\u0010\u000b\n\u0002\b\u0003¨\u0006\u0003²\u0006\u000e\u0010\u0001\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002²\u0006\f\u0010\u0002\u001a\u00020\u00008\nX\u008a\u0084\u0002"}, d2 = {"", "hasScrolledToBottom", "isAtBottom", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class VirtualStudioConsentsBottomSheetKt {
    public static final void a(String str, String str2, int i2, String str3, String str4, String str5, Composer composer, int i3) {
        String str6;
        GapComposer gapComposerH = composer.h(-441309678);
        Applier applier = gapComposerH.f7976a;
        int i4 = i3 | (gapComposerH.K(str) ? 4 : 2) | (gapComposerH.K(str2) ? 32 : 16) | (gapComposerH.d(i2) ? 256 : 128);
        if (gapComposerH.p(i4 & 1, (74899 & i4) != 74898)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierD = tr.d("ConsentItem", 1.0f);
            Arrangement$Start$1 arrangement$Start$1 = Arrangement.f4918a;
            Arrangement.SpacedAligned spacedAlignedF = Arrangement.f(LVAppDesignKitTheme.l(gapComposerH).f48416e);
            Alignment.f8582a.getClass();
            RowMeasurePolicy rowMeasurePolicyA = RowKt.a(spacedAlignedF, Alignment.Companion.f8591k, gapComposerH, 0);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierD);
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
            Updater.c(gapComposerH, rowMeasurePolicyA, function2);
            Function2 function3 = ComposeUiNode.Companion.f9643e;
            Updater.c(gapComposerH, persistentCompositionLocalMapU, function3);
            Integer numValueOf = Integer.valueOf(iHashCode);
            Function2 function4 = ComposeUiNode.Companion.g;
            Updater.c(gapComposerH, numValueOf, function4);
            Function1 function1 = ComposeUiNode.Companion.f9645h;
            Updater.b(gapComposerH, function1);
            Function2 function5 = ComposeUiNode.Companion.d;
            IconKt.a(PainterResources_androidKt.a(i2, gapComposerH, (i4 >> 6) & 14), str, n00.f(gapComposerH, modifierC, function5, "ConsentItem", str3), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, gapComposerH, 8 | ((i4 << 3) & 112), 0);
            Modifier modifierD2 = tr.d("ConsentItem", 1.0f);
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(Arrangement.f(LVAppDesignKitTheme.l(gapComposerH).f48414b), Alignment.Companion.n, gapComposerH, 0);
            int iHashCode2 = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU2 = gapComposerH.U();
            Modifier modifierC2 = ComposedModifierKt.c(gapComposerH, modifierD2);
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
            TextKt.c(str, n00.f(gapComposerH, modifierC2, function5, "ConsentItem", str4), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).l, gapComposerH, i4 & 14, 0, 131064);
            str6 = str5;
            TextKt.c(str2, n00.g("ConsentItem", str6), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).f48427h, gapComposerH, (i4 >> 3) & 14, 0, 131064);
            gapComposerH = gapComposerH;
            gapComposerH.Z(true);
            gapComposerH.Z(true);
        } else {
            str6 = str5;
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new b3(str, str2, i2, str3, str4, str6, i3);
        }
    }

    public static final void b(Function0 function0, Composer composer, int i2) {
        GapComposer gapComposer;
        function0.getClass();
        GapComposer gapComposerH = composer.h(1603761171);
        Applier applier = gapComposerH.f7976a;
        int i3 = (gapComposerH.y(function0) ? 4 : 2) | i2;
        if (gapComposerH.p(i3 & 1, (i3 & 3) != 2)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            ScrollState scrollStateB = ScrollKt.b(gapComposerH);
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = SnapshotStateKt.g(Boolean.FALSE);
                gapComposerH.q(objX);
            }
            MutableState mutableState = (MutableState) objX;
            Object objX2 = gapComposerH.x();
            if (objX2 == composer$Companion$Empty$1) {
                objX2 = SnapshotStateKt.e(new iu0(scrollStateB, 3));
                gapComposerH.q(objX2);
            }
            State state = (State) objX2;
            Boolean bool = (Boolean) state.getF10755b();
            bool.booleanValue();
            Object objX3 = gapComposerH.x();
            if (objX3 == composer$Companion$Empty$1) {
                objX3 = new VirtualStudioConsentsBottomSheetKt$VirtualStudioConsentsBottomSheet$1$1(state, mutableState, null);
                gapComposerH.q(objX3);
            }
            EffectsKt.e(gapComposerH, bool, (Function2) objX3);
            Modifier modifierB = WindowInsetsPadding_androidKt.b(SizeKt.d(new DTFunctionNameModifier("VirtualStudioConsentsBottomSheet"), 1.0f));
            Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
            Alignment.f8582a.getClass();
            BiasAlignment.Horizontal horizontal = Alignment.Companion.n;
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, horizontal, gapComposerH, 0);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierB);
            ComposeUiNode.b0.getClass();
            Function0 function1 = ComposeUiNode.Companion.f9641b;
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function1);
            } else {
                gapComposerH.o();
            }
            Function2 function2 = ComposeUiNode.Companion.f9644f;
            Updater.c(gapComposerH, columnMeasurePolicyA, function2);
            Function2 function3 = ComposeUiNode.Companion.f9643e;
            Updater.c(gapComposerH, persistentCompositionLocalMapU, function3);
            Integer numValueOf = Integer.valueOf(iHashCode);
            Function2 function4 = ComposeUiNode.Companion.g;
            Updater.c(gapComposerH, numValueOf, function4);
            Function1 function5 = ComposeUiNode.Companion.f9645h;
            Updater.b(gapComposerH, function5);
            Function2 function6 = ComposeUiNode.Companion.d;
            Updater.c(gapComposerH, modifierC, function6);
            Modifier modifierM = PaddingKt.m(ScrollKt.d(ColumnScopeInstance.f4944a.a(new DTFunctionNameModifier("VirtualStudioConsentsBottomSheet"), 1.0f, true), scrollStateB, false, 14), LVAppDesignKitTheme.l(gapComposerH).f48417f, LVAppDesignKitTheme.l(gapComposerH).f48415c, LVAppDesignKitTheme.l(gapComposerH).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 8);
            ColumnMeasurePolicy columnMeasurePolicyA2 = ColumnKt.a(arrangement$Top$1, Alignment.Companion.o, gapComposerH, 48);
            int iHashCode2 = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU2 = gapComposerH.U();
            Modifier modifierC2 = ComposedModifierKt.c(gapComposerH, modifierM);
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function1);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, columnMeasurePolicyA2, function2);
            Updater.c(gapComposerH, persistentCompositionLocalMapU2, function3);
            cj.t(iHashCode2, gapComposerH, function4, gapComposerH, function5);
            TextKt.c(StringResources_androidKt.c(gapComposerH, R.string.global_virtual_consent_title), ModifierExtKt.e(SizeKt.d(PaddingKt.k(tr.e(gapComposerH, modifierC2, function6, "VirtualStudioConsentsBottomSheet"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48415c, 1), 1.0f), "bottomSheet_title_text"), 0L, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).f48426f, gapComposerH, 0, 0, 131068);
            TextKt.c(StringResources_androidKt.c(gapComposerH, R.string.global_virtual_consent_description), ModifierExtKt.e(PaddingKt.m(new DTFunctionNameModifier("VirtualStudioConsentsBottomSheet"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).g, 7), "virtualStudioConsent_description_text"), 0L, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).f48427h, gapComposerH, 0, 0, 131068);
            Modifier modifierD = tr.d("VirtualStudioConsentsBottomSheet", 1.0f);
            ColumnMeasurePolicy columnMeasurePolicyA3 = ColumnKt.a(Arrangement.f(LVAppDesignKitTheme.l(gapComposerH).g), horizontal, gapComposerH, 0);
            int iHashCode3 = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU3 = gapComposerH.U();
            Modifier modifierC3 = ComposedModifierKt.c(gapComposerH, modifierD);
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function1);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, columnMeasurePolicyA3, function2);
            Updater.c(gapComposerH, persistentCompositionLocalMapU3, function3);
            cj.t(iHashCode3, gapComposerH, function4, gapComposerH, function5);
            Updater.c(gapComposerH, modifierC3, function6);
            a(StringResources_androidKt.c(gapComposerH, R.string.global_virtual_step_1_title), StringResources_androidKt.c(gapComposerH, R.string.global_virtual_step_1_description), LVAppDesignKitTheme.g(gapComposerH).y1, "virtualStudioConsent_step1_icon", "virtualStudioConsent_step1Title_text", "virtualStudioConsent_step1Description_text", gapComposerH, 224256);
            a(StringResources_androidKt.c(gapComposerH, R.string.global_virtual_step_2_title), StringResources_androidKt.c(gapComposerH, R.string.global_virtual_step_2_description), LVAppDesignKitTheme.g(gapComposerH).w1, "virtualStudioConsent_step2_icon", "virtualStudioConsent_step2Title_text", "virtualStudioConsent_step2Description_text", gapComposerH, 224256);
            a(StringResources_androidKt.c(gapComposerH, R.string.global_virtual_step_3_title), StringResources_androidKt.c(gapComposerH, R.string.global_virtual_step_3_description), LVAppDesignKitTheme.g(gapComposerH).v1, "virtualStudioConsent_step3_icon", "virtualStudioConsent_step3Title_text", "virtualStudioConsent_step3Description_text", gapComposerH, 224256);
            a(StringResources_androidKt.c(gapComposerH, R.string.global_virtual_step_4_title), StringResources_androidKt.c(gapComposerH, R.string.global_virtual_step_4_description), LVAppDesignKitTheme.g(gapComposerH).x1, "virtualStudioConsent_step4_icon", "virtualStudioConsent_step4Title_text", "virtualStudioConsent_step4Description_text", gapComposerH, 224256);
            SpacerKt.a(gapComposerH, SizeKt.f(o60.f(gapComposerH, true, "VirtualStudioConsentsBottomSheet"), LVAppDesignKitTheme.l(gapComposerH).g));
            TextKt.c(StringResources_androidKt.c(gapComposerH, R.string.global_virtual_note_title), ModifierExtKt.e(new DTFunctionNameModifier("VirtualStudioConsentsBottomSheet"), "virtualStudioConsent_noteTitle_text"), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).l, gapComposerH, 0, 0, 131064);
            SpacerKt.a(gapComposerH, SizeKt.f(new DTFunctionNameModifier("VirtualStudioConsentsBottomSheet"), LVAppDesignKitTheme.l(gapComposerH).f48416e));
            TextKt.c(StringResources_androidKt.c(gapComposerH, R.string.global_virtual_note_description), ModifierExtKt.e(new DTFunctionNameModifier("VirtualStudioConsentsBottomSheet"), "virtualStudioConsent_noteDescription_text"), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).f48427h, gapComposerH, 0, 0, 131064);
            SpacerKt.a(gapComposerH, SizeKt.f(new DTFunctionNameModifier("VirtualStudioConsentsBottomSheet"), LVAppDesignKitTheme.l(gapComposerH).f48416e));
            gapComposerH.Z(true);
            LVButtonKt.b((i3 << 27) & 1879048192, 376, gapComposerH, ModifierExtKt.e(PaddingKt.j(tr.d("VirtualStudioConsentsBottomSheet", 1.0f), LVAppDesignKitTheme.l(gapComposerH).f48417f, LVAppDesignKitTheme.l(gapComposerH).f48416e), "virtualStudioConsent_accept_button"), LVAppDesignKitTheme.b(gapComposerH).f48446a, null, null, StringResources_androidKt.c(gapComposerH, R.string.global_virtual_consent_CTA), function0, false, ((Boolean) mutableState.getF10755b()).booleanValue(), false);
            gapComposer = gapComposerH;
            gapComposer.Z(true);
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new kn0(i2, 29, function0);
        }
    }
}
