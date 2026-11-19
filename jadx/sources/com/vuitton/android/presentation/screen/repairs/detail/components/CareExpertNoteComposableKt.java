package com.vuitton.android.presentation.screen.repairs.detail.components;

import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Top$1;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.PaddingKt;
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
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.saveable.RememberSaveableKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.style.TextOverflow;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVLinkKt;
import defpackage.cj;
import defpackage.d0;
import defpackage.ej;
import defpackage.lg;
import defpackage.n00;
import defpackage.o9;
import defpackage.pq0;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\u0010\u000b\n\u0002\b\u0003¨\u0006\u0003²\u0006\u000e\u0010\u0001\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002²\u0006\u000e\u0010\u0002\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002"}, d2 = {"", "isExpanded", "isTextTruncated", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class CareExpertNoteComposableKt {
    public static final void a(int i2, Composer composer, Modifier modifier, String str) {
        int i3;
        Modifier modifierE = modifier;
        String str2 = str;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "CareExpertNoteComposable");
        }
        str2.getClass();
        GapComposer gapComposerH = composer.h(1840862532);
        Applier applier = gapComposerH.f7976a;
        int i4 = i2 | (gapComposerH.K(str2) ? 4 : 2) | 48;
        if (gapComposerH.p(i4 & 1, (i4 & 19) != 18)) {
            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("CareExpertNoteComposable");
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Object[] objArr = new Object[0];
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = new lg(12);
                gapComposerH.q(objX);
            }
            MutableState mutableState = (MutableState) RememberSaveableKt.d(objArr, (Function0) objX, gapComposerH, 48);
            Object[] objArr2 = new Object[0];
            Object objX2 = gapComposerH.x();
            if (objX2 == composer$Companion$Empty$1) {
                objX2 = new lg(13);
                gapComposerH.q(objX2);
            }
            MutableState mutableState2 = (MutableState) RememberSaveableKt.d(objArr2, (Function0) objX2, gapComposerH, 48);
            Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
            Alignment.f8582a.getClass();
            BiasAlignment.Horizontal horizontal = Alignment.Companion.n;
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, horizontal, gapComposerH, 0);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, dTFunctionNameModifier);
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
            Updater.c(gapComposerH, columnMeasurePolicyA, function2);
            Function2 function3 = ComposeUiNode.Companion.f9643e;
            Updater.c(gapComposerH, persistentCompositionLocalMapU, function3);
            Integer numValueOf = Integer.valueOf(iHashCode);
            Function2 function4 = ComposeUiNode.Companion.g;
            Updater.c(gapComposerH, numValueOf, function4);
            Function1 function1 = ComposeUiNode.Companion.f9645h;
            Updater.b(gapComposerH, function1);
            Function2 function5 = ComposeUiNode.Companion.d;
            Modifier modifierB = BackgroundKt.b(ClipKt.a(PaddingKt.m(n00.e(gapComposerH, modifierC, function5, "CareExpertNoteComposable", 1.0f), LVAppDesignKitTheme.l(gapComposerH).f48416e, LVAppDesignKitTheme.l(gapComposerH).f48416e, LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 8), LVAppDesignKitTheme.j(gapComposerH).f48410b), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48375b, RectangleShapeKt.f8913a);
            MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
            int iHashCode2 = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU2 = gapComposerH.U();
            Modifier modifierC2 = ComposedModifierKt.c(gapComposerH, modifierB);
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
            Updater.c(gapComposerH, measurePolicyD, function2);
            Updater.c(gapComposerH, persistentCompositionLocalMapU2, function3);
            cj.t(iHashCode2, gapComposerH, function4, gapComposerH, function1);
            Modifier modifierI = PaddingKt.i(n00.e(gapComposerH, modifierC2, function5, "CareExpertNoteComposable", 1.0f), LVAppDesignKitTheme.l(gapComposerH).f48416e);
            ColumnMeasurePolicy columnMeasurePolicyA2 = ColumnKt.a(arrangement$Top$1, horizontal, gapComposerH, 0);
            int iHashCode3 = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU3 = gapComposerH.U();
            Modifier modifierC3 = ComposedModifierKt.c(gapComposerH, modifierI);
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
            Updater.c(gapComposerH, columnMeasurePolicyA2, function2);
            Updater.c(gapComposerH, persistentCompositionLocalMapU3, function3);
            cj.t(iHashCode3, gapComposerH, function4, gapComposerH, function1);
            Updater.c(gapComposerH, modifierC3, function5);
            TextKt.c(StringResources_androidKt.c(gapComposerH, R.string.dr_mylv_repairs_detail_care_expert_note_title), null, LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).m, gapComposerH, 0, 0, 131066);
            Modifier modifierM = PaddingKt.m(new DTFunctionNameModifier("CareExpertNoteComposable"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48415c, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13);
            TextStyle textStyle = LVAppDesignKitTheme.n(gapComposerH).m;
            long j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.l;
            int i5 = ((Boolean) mutableState.getF10755b()).booleanValue() ? Integer.MAX_VALUE : 2;
            TextOverflow.f10989a.getClass();
            int i6 = TextOverflow.f10991c;
            boolean zK = gapComposerH.K(mutableState) | gapComposerH.K(mutableState2);
            Object objX3 = gapComposerH.x();
            if (zK || objX3 == composer$Companion$Empty$1) {
                objX3 = new ej(mutableState, mutableState2, 0);
                gapComposerH.q(objX3);
            }
            TextKt.c(str, modifierM, j2, 0L, null, 0L, null, null, 0L, i6, false, i5, 0, (Function1) objX3, textStyle, gapComposerH, i4 & 14, KyberEngine.KyberPolyBytes, 45048);
            str2 = str;
            gapComposerH = gapComposerH;
            if (((Boolean) mutableState2.getF10755b()).booleanValue() || ((Boolean) mutableState.getF10755b()).booleanValue()) {
                Modifier modifierM2 = PaddingKt.m(n00.i(gapComposerH, -1812149167, "CareExpertNoteComposable"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48415c, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13);
                String strC = StringResources_androidKt.c(gapComposerH, ((Boolean) mutableState.getF10755b()).booleanValue() ? R.string.close : R.string.dr_mylv_repairs_detail_care_expert_note_read_more);
                boolean zK2 = gapComposerH.K(mutableState);
                Object objX4 = gapComposerH.x();
                if (zK2 || objX4 == composer$Companion$Empty$1) {
                    objX4 = new d0(15, mutableState);
                    gapComposerH.q(objX4);
                }
                LVLinkKt.b(modifierM2, strC, false, null, (Function0) objX4, gapComposerH, 0, 12);
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(-1811596592);
                gapComposerH.Z(false);
            }
            i3 = 1;
            pq0.x(gapComposerH, true, true, true);
            modifierE = dTFunctionNameModifier;
        } else {
            i3 = 1;
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new o9(str2, modifierE, i2, i3);
        }
    }
}
