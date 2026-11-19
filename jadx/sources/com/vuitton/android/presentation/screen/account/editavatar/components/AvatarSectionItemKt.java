package com.vuitton.android.presentation.screen.account.editavatar.components;

import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Top$1;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValuesImpl;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.lazy.LazyDslKt;
import androidx.compose.material3.TextKt;
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
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.text.TextStyle;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.presentation.screen.account.editavatar.models.AvatarSectionUiModel;
import defpackage.a;
import defpackage.c1;
import defpackage.k3;
import defpackage.u5;
import defpackage.z;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class AvatarSectionItemKt {
    public static final void a(Modifier modifier, AvatarSectionUiModel avatarSectionUiModel, String str, Function1 function1, Composer composer, int i2) {
        Modifier modifier2;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = a.e(modifierE, "AvatarSectionItem");
        }
        avatarSectionUiModel.getClass();
        function1.getClass();
        GapComposer gapComposerH = composer.h(2018980757);
        int i3 = i2 | 6 | (gapComposerH.K(avatarSectionUiModel) ? 32 : 16) | (gapComposerH.K(str) ? 256 : 128) | (gapComposerH.y(function1) ? 2048 : 1024);
        if (gapComposerH.p(i3 & 1, (i3 & 1171) != 1170)) {
            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("AvatarSectionItem");
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            String strC = StringResources_androidKt.c(gapComposerH, R.string.alt_selected);
            Modifier modifierD = SizeKt.d(dTFunctionNameModifier, 1.0f);
            Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
            Alignment.f8582a.getClass();
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, gapComposerH, 0);
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
            Updater.c(gapComposerH, columnMeasurePolicyA, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
            Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
            String str2 = avatarSectionUiModel.f52332a;
            TextStyle textStyle = LVAppDesignKitTheme.n(gapComposerH).m;
            long j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k;
            Modifier modifierE2 = ModifierExtKt.e(PaddingKt.m(PaddingKt.m(new DTFunctionNameModifier("AvatarSectionItem"), LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48415c, 7), "avatarLibrary_sectionTitle_text");
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = new u5(16);
                gapComposerH.q(objX);
            }
            TextKt.c(str2, SemanticsModifierKt.b(modifierE2, false, (Function1) objX), j2, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, textStyle, gapComposerH, 0, 0, 131064);
            gapComposerH = gapComposerH;
            DTFunctionNameModifier dTFunctionNameModifier2 = new DTFunctionNameModifier("AvatarSectionItem");
            int i4 = i3 & 112;
            boolean z = i4 == 32;
            Object objX2 = gapComposerH.x();
            if (z || objX2 == composer$Companion$Empty$1) {
                objX2 = new c1(avatarSectionUiModel, 14);
                gapComposerH.q(objX2);
            }
            Modifier modifierB = SemanticsModifierKt.b(dTFunctionNameModifier2, false, (Function1) objX2);
            Arrangement.SpacedAligned spacedAlignedF = Arrangement.f(LVAppDesignKitTheme.l(gapComposerH).f48417f);
            PaddingValuesImpl paddingValuesImplC = PaddingKt.c(LVAppDesignKitTheme.l(gapComposerH).f48416e, 2);
            boolean zK = gapComposerH.K(strC) | (i4 == 32) | ((i3 & 896) == 256) | ((i3 & 7168) == 2048);
            Object objX3 = gapComposerH.x();
            if (zK || objX3 == composer$Companion$Empty$1) {
                k3 k3Var = new k3((Object) avatarSectionUiModel, (Object) strC, (Object) str, function1, 2);
                gapComposerH.q(k3Var);
                objX3 = k3Var;
            }
            LazyDslKt.b(modifierB, null, paddingValuesImplC, spacedAlignedF, null, null, false, null, (Function1) objX3, gapComposerH, 0, 490);
            gapComposerH.Z(true);
            modifier2 = dTFunctionNameModifier;
        } else {
            gapComposerH.D();
            modifier2 = modifierE;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new z(modifier2, avatarSectionUiModel, str, function1, i2, 8);
        }
    }
}
