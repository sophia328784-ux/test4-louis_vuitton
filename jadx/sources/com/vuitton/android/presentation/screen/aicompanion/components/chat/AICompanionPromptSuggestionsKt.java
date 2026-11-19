package com.vuitton.android.presentation.screen.aicompanion.components.chat;

import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.ScrollKt;
import androidx.compose.foundation.interaction.InteractionSourceKt;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Start$1;
import androidx.compose.foundation.layout.IntrinsicKt;
import androidx.compose.foundation.layout.IntrinsicSize;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.material3.IconKt;
import androidx.compose.material3.TextKt;
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
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.res.PainterResources_androidKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.style.TextOverflow;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import defpackage.j1;
import defpackage.k1;
import defpackage.l1;
import defpackage.m1;
import defpackage.tr;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002¨\u0006\u0002²\u0006\u000e\u0010\u0001\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002"}, d2 = {"Landroidx/compose/ui/unit/Dp;", "textWidth", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class AICompanionPromptSuggestionsKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final float f52814a;

    static {
        Dp.Companion companion = Dp.f11004c;
        f52814a = 150.0f;
    }

    public static final void a(Modifier modifier, String str, Function0 function0, Composer composer, int i2) {
        int i3;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "AICompanionPromptSuggestionCard");
        }
        Modifier modifier2 = modifierE;
        GapComposer gapComposerH = composer.h(1520395906);
        int i4 = i2 | (gapComposerH.K(str) ? 32 : 16) | (gapComposerH.y(function0) ? 256 : 128);
        if (gapComposerH.p(i4 & 1, (i4 & 147) != 146)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Density density = (Density) gapComposerH.k(CompositionLocalsKt.f10031h);
            boolean z = (i4 & 112) == 32;
            Object objX = gapComposerH.x();
            float f2 = f52814a;
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (z || objX == composer$Companion$Empty$1) {
                objX = SnapshotStateKt.g(new Dp(f2));
                gapComposerH.q(objX);
            }
            MutableState mutableState = (MutableState) objX;
            Modifier modifierK = PaddingKt.k(BackgroundKt.b(modifier2, LVAppDesignKitTheme.c(gapComposerH).f48361b.f48374a, LVAppDesignKitTheme.j(gapComposerH).d), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).d, 1);
            Object objX2 = gapComposerH.x();
            if (objX2 == composer$Companion$Empty$1) {
                objX2 = InteractionSourceKt.a();
                gapComposerH.q(objX2);
            }
            Modifier modifierC = ModifierExtKt.c(modifierK, false, (MutableInteractionSource) objX2, null, function0, 19);
            Arrangement$Start$1 arrangement$Start$1 = Arrangement.f4918a;
            Alignment.f8582a.getClass();
            RowMeasurePolicy rowMeasurePolicyA = RowKt.a(arrangement$Start$1, Alignment.Companion.f8591k, gapComposerH, 0);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC2 = ComposedModifierKt.c(gapComposerH, modifierC);
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
            Modifier modifierS = SizeKt.s(PaddingKt.m(SizeKt.u(tr.e(gapComposerH, modifierC2, ComposeUiNode.Companion.d, "AICompanionPromptSuggestionCard"), Call.Parameters.DEFAULT_CAMERA_ZOOM, f2, 1), LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48415c, Call.Parameters.DEFAULT_CAMERA_ZOOM, 10), ((Dp) mutableState.getF10755b()).f11006b);
            TextStyle textStyle = LVAppDesignKitTheme.n(gapComposerH).l;
            long j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k;
            TextOverflow.f10989a.getClass();
            int i5 = TextOverflow.f10991c;
            boolean zK = gapComposerH.K(density) | gapComposerH.K(mutableState);
            Object objX3 = gapComposerH.x();
            if (zK || objX3 == composer$Companion$Empty$1) {
                i3 = 0;
                objX3 = new j1(density, mutableState, 0);
                gapComposerH.q(objX3);
            } else {
                i3 = 0;
            }
            TextKt.c(str, modifierS, j2, 0L, null, 0L, null, null, 0L, i5, false, 2, 2, (Function1) objX3, textStyle, gapComposerH, (i4 >> 3) & 14, 221568, 12280);
            gapComposerH = gapComposerH;
            IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(gapComposerH).M1, gapComposerH, i3), null, SizeKt.o(PaddingKt.m(new DTFunctionNameModifier("AICompanionPromptSuggestionCard"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).d, Call.Parameters.DEFAULT_CAMERA_ZOOM, 11), LVAppDesignKitTheme.d(gapComposerH).m), LVAppDesignKitTheme.c(gapComposerH).f48361b.d, gapComposerH, 56, 0);
            gapComposerH.Z(true);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new k1(i2, 0, modifier2, str, function0);
        }
    }

    public static final void b(Modifier modifier, List list, Function1 function1, Composer composer, int i2) {
        if (modifier != null) {
            modifier = defpackage.a.e(modifier, "AICompanionPromptSuggestions");
        }
        list.getClass();
        function1.getClass();
        GapComposer gapComposerH = composer.h(261895959);
        int i3 = (gapComposerH.K(modifier) ? 4 : 2) | i2 | (gapComposerH.y(list) ? 32 : 16) | (gapComposerH.y(function1) ? 256 : 128);
        if (gapComposerH.p(i3 & 1, (i3 & 147) != 146)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierK = PaddingKt.k(IntrinsicKt.a(ScrollKt.a(ModifierExtKt.e(modifier, "aiCompanion_promptSuggestions_view"), ScrollKt.b(gapComposerH), false, 14), IntrinsicSize.Max), LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2);
            Arrangement$Start$1 arrangement$Start$1 = Arrangement.f4918a;
            Arrangement.SpacedAligned spacedAlignedF = Arrangement.f(LVAppDesignKitTheme.l(gapComposerH).f48415c);
            Alignment.f8582a.getClass();
            RowMeasurePolicy rowMeasurePolicyA = RowKt.a(spacedAlignedF, Alignment.Companion.f8591k, gapComposerH, 0);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierK);
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
            gapComposerH.L(42247724);
            Iterator it = list.iterator();
            while (it.hasNext()) {
                String str = (String) it.next();
                Modifier modifierC2 = SizeKt.c(new DTFunctionNameModifier("AICompanionPromptSuggestions"), 1.0f);
                boolean zK = ((i3 & 896) == 256) | gapComposerH.K(str);
                Object objX = gapComposerH.x();
                if (zK || objX == Composer.Companion.f7939a) {
                    objX = new l1(0, str, function1);
                    gapComposerH.q(objX);
                }
                a(modifierC2, str, (Function0) objX, gapComposerH, 6);
            }
            gapComposerH.Z(false);
            gapComposerH.Z(true);
            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new m1(modifier, list, function1, i2);
        }
    }
}
