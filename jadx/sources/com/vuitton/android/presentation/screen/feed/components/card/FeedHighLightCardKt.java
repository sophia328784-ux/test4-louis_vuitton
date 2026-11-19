package com.vuitton.android.presentation.screen.feed.components.card;

import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Top$1;
import androidx.compose.foundation.layout.AspectRatioKt;
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
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.text.StringKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.intl.Locale;
import androidx.compose.ui.text.style.TextOverflow;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.LVColorScheme;
import com.vuitton.android.presentation.common.editorial.models.EditorialModuleUiModel;
import com.vuitton.android.presentation.imageloading.compose.ImageLoaderKt;
import com.vuitton.android.presentation.model.common.AssetImageUiModel;
import com.vuitton.android.presentation.screen.feed.models.AutomationTagsFeedKt;
import com.vuitton.android.presentation.screen.feed.models.FeedTab;
import defpackage.a;
import defpackage.cj;
import defpackage.d21;
import defpackage.dy;
import defpackage.i1;
import defpackage.o60;
import defpackage.tr;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class FeedHighLightCardKt {

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f57872a;

        static {
            int[] iArr = new int[LVColorScheme.values().length];
            try {
                iArr[LVColorScheme.DEFAULT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[LVColorScheme.INVERT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f57872a = iArr;
        }
    }

    public static final void a(Modifier modifier, FeedTab feedTab, EditorialModuleUiModel.HighLightUiModel highLightUiModel, LVColorScheme lVColorScheme, Composer composer, int i2) {
        int i3;
        GapComposer gapComposer;
        boolean z;
        boolean z2;
        int i4;
        long j2;
        long j3;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = a.e(modifierE, "FeedHighLightCard");
        }
        Modifier modifier2 = modifierE;
        feedTab.getClass();
        lVColorScheme.getClass();
        GapComposer gapComposerH = composer.h(-1742469094);
        Applier applier = gapComposerH.f7976a;
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.K(modifier2) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.d(feedTab.ordinal()) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.y(highLightUiModel) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i3 |= gapComposerH.d(lVColorScheme.ordinal()) ? 2048 : 1024;
        }
        if (gapComposerH.p(i3 & 1, (i3 & 1171) != 1170)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierM = PaddingKt.m(modifier2, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48418h, Call.Parameters.DEFAULT_CAMERA_ZOOM, 11);
            Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
            Alignment.f8582a.getClass();
            BiasAlignment.Horizontal horizontal = Alignment.Companion.n;
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, horizontal, gapComposerH, 0);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierM);
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
            DTFunctionNameModifier dTFunctionNameModifierE = tr.e(gapComposerH, modifierC, function5, "FeedHighLightCard");
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = new dy(2);
                gapComposerH.q(objX);
            }
            Modifier modifierB = SemanticsModifierKt.b(dTFunctionNameModifierE, true, (Function1) objX);
            ColumnMeasurePolicy columnMeasurePolicyA2 = ColumnKt.a(arrangement$Top$1, horizontal, gapComposerH, 0);
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
            Updater.c(gapComposerH, columnMeasurePolicyA2, function2);
            Updater.c(gapComposerH, persistentCompositionLocalMapU2, function3);
            cj.t(iHashCode2, gapComposerH, function4, gapComposerH, function1);
            Updater.c(gapComposerH, modifierC2, function5);
            AssetImageUiModel assetImageUiModel = highLightUiModel.d;
            if (assetImageUiModel == null) {
                gapComposerH.L(1504488305);
                gapComposerH.Z(false);
                gapComposer = gapComposerH;
                z = false;
                z2 = true;
                i4 = 2;
            } else {
                Modifier modifierE2 = ModifierExtKt.e(PaddingKt.m(AspectRatioKt.a(o60.c(gapComposerH, 1504488306, "FeedHighLightCard", 0.5f), 1.0f, false), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, 7), AutomationTagsFeedKt.a(feedTab).concat("_highlightImage_image"));
                String str = assetImageUiModel.f51778b;
                str.getClass();
                ContentScale.f9447a.getClass();
                z = false;
                z2 = true;
                i4 = 2;
                ImageLoaderKt.b(modifierE2, str, ContentScale.Companion.f9449b, null, null, 0, false, null, null, null, gapComposerH, 3456, 2032);
                gapComposer = gapComposerH;
                gapComposer.Z(false);
            }
            String str2 = highLightUiModel.f50841b;
            if (str2 == null) {
                gapComposer.L(1505073554);
                gapComposer.Z(z);
            } else {
                gapComposer.L(1505073555);
                Locale.f10870b.getClass();
                String strA = StringKt.a(str2, Locale.Companion.a());
                Modifier modifierE3 = ModifierExtKt.e(PaddingKt.m(new DTFunctionNameModifier("FeedHighLightCard"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposer).f48414b, 7), AutomationTagsFeedKt.a(feedTab).concat("_highlightTitle_text"));
                TextStyle textStyle = LVAppDesignKitTheme.n(gapComposer).p;
                int i5 = WhenMappings.f57872a[lVColorScheme.ordinal()];
                if (i5 == z2) {
                    gapComposer.L(1330904973);
                    j2 = LVAppDesignKitTheme.c(gapComposer).f48361b.f48382k;
                    gapComposer.Z(z);
                } else {
                    if (i5 != i4) {
                        throw d21.u(gapComposer, 1330901964, z);
                    }
                    gapComposer.L(1330907987);
                    j2 = LVAppDesignKitTheme.c(gapComposer).f48361b.m;
                    gapComposer.Z(z);
                }
                TextOverflow.f10989a.getClass();
                TextKt.c(strA, modifierE3, j2, 0L, null, 0L, null, null, 0L, TextOverflow.f10991c, false, 1, 0, null, textStyle, gapComposer, 0, 24960, 110584);
                gapComposer.Z(z);
            }
            DTFunctionNameModifier dTFunctionNameModifierF = o60.f(gapComposer, z2, "FeedHighLightCard");
            Object objX2 = gapComposer.x();
            if (objX2 == composer$Companion$Empty$1) {
                objX2 = new dy(3);
                gapComposer.q(objX2);
            }
            Modifier modifierE4 = ModifierExtKt.e(SemanticsModifierKt.b(dTFunctionNameModifierF, z2, (Function1) objX2), AutomationTagsFeedKt.a(feedTab).concat("_highlightDescription_text"));
            String str3 = highLightUiModel.f50842c;
            TextStyle textStyle2 = LVAppDesignKitTheme.n(gapComposer).f48426f;
            int i6 = WhenMappings.f57872a[lVColorScheme.ordinal()];
            if (i6 == z2) {
                gapComposer.L(-1990367746);
                j3 = LVAppDesignKitTheme.c(gapComposer).f48361b.f48382k;
                gapComposer.Z(z);
            } else {
                if (i6 != i4) {
                    throw d21.u(gapComposer, -1990370523, z);
                }
                gapComposer.L(-1990364988);
                j3 = LVAppDesignKitTheme.c(gapComposer).f48361b.m;
                gapComposer.Z(z);
            }
            TextOverflow.f10989a.getClass();
            TextKt.c(str3, modifierE4, j3, 0L, null, 0L, null, null, 0L, TextOverflow.f10991c, false, 2, 0, null, textStyle2, gapComposer, 0, 24960, 110584);
            gapComposer.Z(z2);
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new i1(modifier2, feedTab, highLightUiModel, lVColorScheme, i2, 17);
        }
    }
}
