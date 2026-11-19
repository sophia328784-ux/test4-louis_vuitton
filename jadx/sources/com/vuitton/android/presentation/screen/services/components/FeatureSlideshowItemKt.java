package com.vuitton.android.presentation.screen.services.components;

import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.ImageKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.shape.RoundedCornerShapeKt;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.res.PainterResources_androidKt;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVIconButtonKt;
import com.vuitton.android.designkit.ui.theme.atoms.LVTagConfigs;
import com.vuitton.android.designkit.ui.theme.atoms.LVTagKt;
import com.vuitton.android.designkit.ui.theme.atoms.configurations.ConfigurationTag;
import com.vuitton.android.presentation.screen.services.components.FeatureSlideshowItemKt;
import defpackage.cj;
import defpackage.iv;
import defpackage.n00;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class FeatureSlideshowItemKt {
    public static final void a(Modifier modifier, final int i2, final int i3, final int i4, Integer num, int i5, boolean z, String str, Composer composer, final int i6, final int i7) {
        Integer num2;
        int i8;
        int i9;
        int i10;
        boolean z2;
        int i11;
        Applier applier;
        final Integer num3;
        final int i12;
        final boolean z3;
        final String str2;
        boolean z4;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "FeatureSlideshowItem");
        }
        GapComposer gapComposerH = composer.h(2042831698);
        Applier applier2 = gapComposerH.f7976a;
        int i13 = i6 | (gapComposerH.K(modifierE) ? 4 : 2) | (gapComposerH.d(i2) ? 32 : 16) | (gapComposerH.d(i3) ? 256 : 128) | (gapComposerH.d(i4) ? 2048 : 1024);
        int i14 = i7 & 16;
        if (i14 != 0) {
            i8 = i13 | 24576;
            num2 = num;
        } else {
            num2 = num;
            i8 = i13 | (gapComposerH.K(num2) ? 16384 : 8192);
        }
        int i15 = i7 & 32;
        if (i15 != 0) {
            i10 = i8 | ImageMetadata.EDGE_MODE;
            i9 = i5;
        } else {
            i9 = i5;
            i10 = i8 | (gapComposerH.d(i9) ? 131072 : 65536);
        }
        int i16 = i7 & 64;
        if (i16 != 0) {
            i11 = i10 | 1572864;
            z2 = z;
        } else {
            z2 = z;
            i11 = i10 | (gapComposerH.b(z2) ? 1048576 : 524288);
        }
        int i17 = i7 & 128;
        if (i17 != 0) {
            i11 |= 12582912;
            applier = applier2;
        } else {
            applier = applier2;
            if ((i6 & 12582912) == 0) {
                i11 |= gapComposerH.K(str) ? 8388608 : 4194304;
            }
        }
        int i18 = i11;
        if (gapComposerH.p(i18 & 1, (i11 & 4793491) != 4793490)) {
            if (i14 != 0) {
                num2 = null;
            }
            int i19 = i15 != 0 ? 0 : i9;
            boolean z5 = i16 != 0 ? true : z2;
            String str3 = i17 != 0 ? null : str;
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Object objX = gapComposerH.x();
            if (objX == Composer.Companion.f7939a) {
                objX = new iv(22);
                gapComposerH.q(objX);
            }
            Modifier modifierB = SemanticsModifierKt.b(modifierE, true, (Function1) objX);
            Alignment.f8582a.getClass();
            BiasAlignment biasAlignment = Alignment.Companion.f8584b;
            MeasurePolicy measurePolicyD = BoxKt.d(biasAlignment, false);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierB);
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
            Updater.c(gapComposerH, modifierC, function5);
            int i20 = i19;
            Modifier modifierO = new DTFunctionNameModifier("FeatureSlideshowItem").o(SizeKt.f5052c);
            Painter painterA = PainterResources_androidKt.a(i2, gapComposerH, (i18 >> 3) & 14);
            ContentScale.f9447a.getClass();
            boolean z6 = z5;
            Integer num4 = num2;
            ImageKt.a(painterA, null, modifierO, null, ContentScale.Companion.f9453h, 0.5f, null, gapComposerH, 221624, 72);
            if (num4 != null) {
                gapComposerH.L(-2086386114);
                LVTagKt.a(PaddingKt.m(Modifier.Companion.f8607b, LVAppDesignKitTheme.l(gapComposerH).f48416e, LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 12), ConfigurationTag.a(((LVTagConfigs) gapComposerH.k(LVTagKt.f48516a)).f48513a, Color.b(LVAppDesignKitTheme.h(gapComposerH).f48403c, LVAppDesignKitTheme.c(gapComposerH).f48361b.u), 0L, 61), StringResources_androidKt.c(gapComposerH, num4.intValue()), gapComposerH, 64, 24);
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(-2085861098);
                gapComposerH.Z(false);
            }
            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("FeatureSlideshowItem");
            BiasAlignment biasAlignment2 = Alignment.Companion.f8587f;
            BoxScopeInstance boxScopeInstance = BoxScopeInstance.f4938a;
            Modifier modifierG = boxScopeInstance.g(dTFunctionNameModifier, biasAlignment2);
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(Arrangement.f4920c, Alignment.Companion.o, gapComposerH, 48);
            int iHashCode2 = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU2 = gapComposerH.U();
            Modifier modifierC2 = ComposedModifierKt.c(gapComposerH, modifierG);
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
            Updater.c(gapComposerH, modifierC2, function5);
            TextKt.c(StringResources_androidKt.c(gapComposerH, i3), null, LVAppDesignKitTheme.c(gapComposerH).f48361b.m, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).l, gapComposerH, 0, 0, 131066);
            TextKt.c(StringResources_androidKt.c(gapComposerH, i4), PaddingKt.m(new DTFunctionNameModifier("FeatureSlideshowItem"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48415c, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), LVAppDesignKitTheme.c(gapComposerH).f48361b.m, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).f48425e, gapComposerH, 0, 0, 131064);
            gapComposerH = gapComposerH;
            if (z6) {
                LVIconButtonKt.b(PaddingKt.m(n00.i(gapComposerH, -858729607, "FeatureSlideshowItem"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13).o(str3 != null ? n00.g("FeatureSlideshowItem", str3) : new DTFunctionNameModifier("FeatureSlideshowItem")), LVAppDesignKitTheme.f(gapComposerH).d, LVAppDesignKitTheme.g(gapComposerH).I, null, null, false, 0, false, false, null, gapComposerH, 0, 0, 2040);
                gapComposerH = gapComposerH;
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(-858127060);
                gapComposerH.Z(false);
            }
            gapComposerH.Z(true);
            if (i20 > 0) {
                Modifier modifierB2 = BackgroundKt.b(boxScopeInstance.g(ClipKt.a(SizeKt.o(PaddingKt.m(n00.i(gapComposerH, -2084460053, "FeatureSlideshowItem"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 9), LVAppDesignKitTheme.d(gapComposerH).q), RoundedCornerShapeKt.f5846a), Alignment.Companion.d), Color.b(0.75f, LVAppDesignKitTheme.c(gapComposerH).f48361b.u), RectangleShapeKt.f8913a);
                MeasurePolicy measurePolicyD2 = BoxKt.d(biasAlignment, false);
                int iHashCode3 = Long.hashCode(gapComposerH.T);
                PersistentCompositionLocalMap persistentCompositionLocalMapU3 = gapComposerH.U();
                Modifier modifierC3 = ComposedModifierKt.c(gapComposerH, modifierB2);
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
                Updater.c(gapComposerH, measurePolicyD2, function2);
                Updater.c(gapComposerH, persistentCompositionLocalMapU3, function3);
                cj.t(iHashCode3, gapComposerH, function4, gapComposerH, function1);
                Updater.c(gapComposerH, modifierC3, function5);
                GapComposer gapComposer = gapComposerH;
                TextKt.c(String.valueOf(i20), boxScopeInstance.g(new DTFunctionNameModifier("FeatureSlideshowItem"), biasAlignment2), LVAppDesignKitTheme.c(gapComposerH).f48361b.m, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).n, gapComposer, 0, 0, 131064);
                gapComposerH = gapComposer;
                z4 = true;
                gapComposerH.Z(true);
                gapComposerH.Z(false);
            } else {
                z4 = true;
                gapComposerH.L(-2083649930);
                gapComposerH.Z(false);
            }
            gapComposerH.Z(z4);
            z3 = z6;
            num3 = num4;
            str2 = str3;
            i12 = i20;
        } else {
            gapComposerH.D();
            num3 = num2;
            i12 = i9;
            z3 = z2;
            str2 = str;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            final Modifier modifier2 = modifierE;
            recomposeScopeImplB0.d = new Function2() { // from class: dx
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    FeatureSlideshowItemKt.a(modifier2, i2, i3, i4, num3, i12, z3, str2, (Composer) obj, RecomposeScopeImplKt.a(i6 | 1), i7);
                    return Unit.f71739a;
                }
            };
        }
    }
}
