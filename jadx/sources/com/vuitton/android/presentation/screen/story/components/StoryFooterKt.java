package com.vuitton.android.presentation.screen.story.components;

import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.WindowInsetsPadding_androidKt;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.style.TextOverflow;
import com.vuitton.android.designkit.components.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVButtonKt;
import com.vuitton.android.designkit.ui.theme.atoms.configurations.ConfigurationButton;
import com.vuitton.android.presentation.screen.story.models.StoryCtaUiModel;
import com.vuitton.android.presentation.screen.story.models.StorySlideUiModel;
import defpackage.cj;
import defpackage.n00;
import defpackage.o60;
import defpackage.p01;
import defpackage.tr;
import defpackage.zr;
import defpackage.zt0;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.text.StringsKt;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class StoryFooterKt {
    public static final void a(Modifier modifier, StorySlideUiModel storySlideUiModel, boolean z, Function1 function1, Composer composer, int i2) {
        int i3;
        boolean z2;
        int i4;
        float f2;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "StoryFooter");
        }
        storySlideUiModel.getClass();
        function1.getClass();
        GapComposer gapComposerH = composer.h(-166962419);
        Applier applier = gapComposerH.f7976a;
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.K(modifierE) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.y(storySlideUiModel) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.b(z) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i3 |= gapComposerH.y(function1) ? 2048 : 1024;
        }
        if (gapComposerH.p(i3 & 1, (i3 & 1171) != 1170)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierB = WindowInsetsPadding_androidKt.b(ModifierExtKt.b(modifierE, z, new zt0(22), gapComposerH, (i3 & 14) | ((i3 >> 3) & 112)));
            Alignment.f8582a.getClass();
            MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierB);
            ComposeUiNode.b0.getClass();
            Function0 function0 = ComposeUiNode.Companion.f9641b;
            String str = null;
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
            Function1 function5 = ComposeUiNode.Companion.f9645h;
            Updater.b(gapComposerH, function5);
            Function2 function6 = ComposeUiNode.Companion.d;
            Modifier modifierK = PaddingKt.k(PaddingKt.m(n00.e(gapComposerH, modifierC, function6, "StoryFooter", 1.0f), LVAppDesignKitTheme.l(gapComposerH).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48419i, Call.Parameters.DEFAULT_CAMERA_ZOOM, 10), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, 1);
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(Arrangement.f4920c, Alignment.Companion.n, gapComposerH, 0);
            int iHashCode2 = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU2 = gapComposerH.U();
            Modifier modifierC2 = ComposedModifierKt.c(gapComposerH, modifierK);
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
            cj.t(iHashCode2, gapComposerH, function4, gapComposerH, function5);
            Updater.c(gapComposerH, modifierC2, function6);
            String str2 = storySlideUiModel.f65170c;
            StoryCtaUiModel storyCtaUiModel = storySlideUiModel.f65172f;
            if (str2 != null && !StringsKt.w(str2)) {
                str = str2;
            }
            if (str == null) {
                gapComposerH.L(1732785001);
                z2 = false;
                gapComposerH.Z(false);
                i4 = 2048;
            } else {
                z2 = false;
                Modifier modifierM = PaddingKt.m(o60.c(gapComposerH, 1732785002, "StoryFooter", 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48415c, 7);
                String str3 = storySlideUiModel.f65170c;
                TextStyle textStyle = LVAppDesignKitTheme.n(gapComposerH).f48425e;
                long j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.m;
                TextOverflow.f10989a.getClass();
                i4 = 2048;
                TextKt.c(str3, modifierM, j2, 0L, null, 0L, null, null, 0L, TextOverflow.f10991c, false, 1, 0, null, textStyle, gapComposerH, 0, 24960, 110584);
                gapComposerH = gapComposerH;
                gapComposerH.Z(false);
            }
            Modifier modifierM2 = PaddingKt.m(tr.d("StoryFooter", 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48417f, 7);
            String str4 = storySlideUiModel.f65169b;
            TextStyle textStyle2 = LVAppDesignKitTheme.n(gapComposerH).d;
            long j3 = LVAppDesignKitTheme.c(gapComposerH).f48361b.m;
            TextOverflow.f10989a.getClass();
            int i5 = TextOverflow.f10991c;
            GapComposer gapComposer = gapComposerH;
            TextKt.c(str4, modifierM2, j3, 0L, null, 0L, null, null, 0L, i5, false, 2, 0, null, textStyle2, gapComposer, 0, 24960, 110584);
            gapComposerH = gapComposer;
            String str5 = storySlideUiModel.d;
            if (str5 == null) {
                gapComposerH.L(1733791478);
                gapComposerH.Z(z2);
            } else {
                Modifier modifierC3 = o60.c(gapComposerH, 1733791479, "StoryFooter", 1.0f);
                if (storyCtaUiModel != null) {
                    gapComposerH.L(-233284380);
                    f2 = LVAppDesignKitTheme.l(gapComposerH).f48417f;
                    gapComposerH.Z(z2);
                } else {
                    gapComposerH.L(-233177368);
                    f2 = LVAppDesignKitTheme.d(gapComposerH).f48383a;
                    gapComposerH.Z(z2);
                }
                TextKt.c(str5, PaddingKt.m(modifierC3, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, f2, 7), LVAppDesignKitTheme.c(gapComposerH).f48361b.m, 0L, null, 0L, null, null, 0L, i5, false, 4, 0, null, LVAppDesignKitTheme.n(gapComposerH).f48429j, gapComposerH, 0, 24960, 110584);
                gapComposerH = gapComposerH;
                gapComposerH.Z(z2);
            }
            if (storyCtaUiModel == null) {
                gapComposerH.L(1734556279);
                gapComposerH.Z(z2);
            } else {
                gapComposerH.L(1734556280);
                ConfigurationButton configurationButton = LVAppDesignKitTheme.b(gapComposerH).f48451h;
                String str6 = storyCtaUiModel.f65164a;
                boolean zK = gapComposerH.K(storyCtaUiModel) | ((i3 & 7168) == i4 ? true : z2);
                Object objX = gapComposerH.x();
                if (zK || objX == Composer.Companion.f7939a) {
                    objX = new p01(function1, storyCtaUiModel, 7);
                    gapComposerH.q(objX);
                }
                LVButtonKt.b(0, 505, gapComposerH, null, configurationButton, null, null, str6, (Function0) objX, false, false, false);
                gapComposerH.Z(z2);
            }
            gapComposerH.Z(true);
            gapComposerH.Z(true);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new zr(modifierE, storySlideUiModel, z, function1, i2);
        }
    }
}
