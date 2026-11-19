package com.vuitton.android.presentation.screen.aicompanion.components.chat;

import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.BorderKt;
import androidx.compose.foundation.interaction.InteractionSourceKt;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.material3.IconKt;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.res.PainterResources_androidKt;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.text.style.TextOverflow;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.IconSize;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import defpackage.cj;
import defpackage.n00;
import defpackage.p;
import defpackage.s;
import defpackage.tr;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class AICompanionChatHeaderKt {
    public static final void a(int i2, Composer composer, Modifier modifier, Function0 function0) {
        int i3;
        boolean z;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "AICompanionChatHeader");
        }
        Modifier modifier2 = modifierE;
        function0.getClass();
        GapComposer gapComposerH = composer.h(1037490884);
        Applier applier = gapComposerH.f7976a;
        int i4 = (gapComposerH.K(modifier2) ? 4 : 2) | i2 | (gapComposerH.y(function0) ? 32 : 16);
        if (gapComposerH.p(i4 & 1, (i4 & 19) != 18)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierK = PaddingKt.k(modifier2, LVAppDesignKitTheme.l(gapComposerH).g, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2);
            Alignment.f8582a.getClass();
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(Arrangement.f4920c, Alignment.Companion.o, gapComposerH, 48);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierK);
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
            IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(gapComposerH).M1, gapComposerH, 0), null, SizeKt.o(tr.e(gapComposerH, modifierC, function6, "AICompanionChatHeader"), IconSize.f48350e), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, gapComposerH, 56, 0);
            Modifier modifierM = PaddingKt.m(n00.g("AICompanionChatHeader", "aiCompanion_welcomeDescription_text"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48415c, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13);
            String strC = StringResources_androidKt.c(gapComposerH, R.string.companion_welcome_description);
            TextStyle textStyle = LVAppDesignKitTheme.n(gapComposerH).f48425e;
            long j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k;
            TextAlign.f10959b.getClass();
            TextKt.c(strC, modifierM, j2, 0L, null, 0L, null, new TextAlign(TextAlign.f10961e), 0L, 0, false, 0, 0, null, textStyle, gapComposerH, 0, 0, 130040);
            Modifier modifierJ = PaddingKt.j(BorderKt.a(BackgroundKt.b(PaddingKt.m(new DTFunctionNameModifier("AICompanionChatHeader"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48374a, LVAppDesignKitTheme.j(gapComposerH).f48409a), LVAppDesignKitTheme.d(gapComposerH).f48385c, LVAppDesignKitTheme.c(gapComposerH).f48361b.o, LVAppDesignKitTheme.j(gapComposerH).f48409a), LVAppDesignKitTheme.l(gapComposerH).f48414b, LVAppDesignKitTheme.l(gapComposerH).f48413a);
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = InteractionSourceKt.a();
                gapComposerH.q(objX);
            }
            Modifier modifierC2 = ModifierExtKt.c(modifierJ, false, (MutableInteractionSource) objX, null, function0, 19);
            Object objX2 = gapComposerH.x();
            if (objX2 == composer$Companion$Empty$1) {
                z = true;
                objX2 = new p(1);
                gapComposerH.q(objX2);
            } else {
                z = true;
            }
            i3 = 0;
            Modifier modifierB = SemanticsModifierKt.b(modifierC2, false, (Function1) objX2);
            RowMeasurePolicy rowMeasurePolicyA = RowKt.a(Arrangement.f(LVAppDesignKitTheme.l(gapComposerH).f48415c), Alignment.Companion.l, gapComposerH, 48);
            int iHashCode2 = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU2 = gapComposerH.U();
            Modifier modifierC3 = ComposedModifierKt.c(gapComposerH, modifierB);
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
            Updater.c(gapComposerH, rowMeasurePolicyA, function2);
            Updater.c(gapComposerH, persistentCompositionLocalMapU2, function3);
            cj.t(iHashCode2, gapComposerH, function4, gapComposerH, function5);
            Modifier modifierF = n00.f(gapComposerH, modifierC3, function6, "AICompanionChatHeader", "aiCompanion_beta_button");
            String upperCase = StringResources_androidKt.c(gapComposerH, R.string.companion_beta_value).toUpperCase(Locale.ROOT);
            upperCase.getClass();
            TextStyle textStyle2 = LVAppDesignKitTheme.n(gapComposerH).p;
            long j3 = LVAppDesignKitTheme.c(gapComposerH).f48361b.l;
            TextOverflow.f10989a.getClass();
            TextKt.c(upperCase, modifierF, j3, 0L, null, 0L, null, null, 0L, TextOverflow.f10991c, false, 1, 0, null, textStyle2, gapComposerH, 0, 24960, 110584);
            gapComposerH = gapComposerH;
            gapComposerH.Z(z);
            gapComposerH.Z(z);
        } else {
            i3 = 0;
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new s(modifier2, function0, i2, i3);
        }
    }
}
