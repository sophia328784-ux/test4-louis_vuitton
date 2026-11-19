package com.vuitton.android.presentation.screen.plp.components.composables.brandcontent;

import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Start$1;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.material3.TextKt;
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
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.text.TextStyle;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.presentation.imageloading.compose.ImageLoaderKt;
import com.vuitton.android.presentation.model.common.AssetImageUiModel;
import com.vuitton.android.presentation.screen.plp.models.plp.PlpSectionUiModel;
import defpackage.a;
import defpackage.d21;
import defpackage.fj0;
import defpackage.w20;
import defpackage.wd0;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class PLPCuratedTextComposableKt {

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f62749a;

        static {
            int[] iArr = new int[PlpSectionUiModel.CuratedText.LabelUiModel.FontUiModel.values().length];
            try {
                iArr[PlpSectionUiModel.CuratedText.LabelUiModel.FontUiModel.SMALL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[PlpSectionUiModel.CuratedText.LabelUiModel.FontUiModel.MEDIUM.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[PlpSectionUiModel.CuratedText.LabelUiModel.FontUiModel.LARGE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            f62749a = iArr;
        }
    }

    public static final void a(AssetImageUiModel assetImageUiModel, Composer composer, int i2) {
        GapComposer gapComposerH = composer.h(-592692475);
        int i3 = (gapComposerH.K(assetImageUiModel) ? 4 : 2) | i2;
        if (gapComposerH.p(i3 & 1, (i3 & 3) != 2)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierO = SizeKt.o(new DTFunctionNameModifier("CuratedTextLogo"), LVAppDesignKitTheme.d(gapComposerH).o);
            String str = assetImageUiModel.f51778b;
            str.getClass();
            ContentScale.f9447a.getClass();
            ImageLoaderKt.b(modifierO, str, ContentScale.Companion.f9450c, null, null, 0, false, null, null, null, gapComposerH, 3456, 2032);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new w20(assetImageUiModel, i2, 27);
        }
    }

    public static final void b(Modifier modifier, PlpSectionUiModel.CuratedText curatedText, Composer composer, int i2) {
        GapComposer gapComposer;
        TextStyle textStyle;
        Modifier dTFunctionNameModifier = modifier;
        if (dTFunctionNameModifier != null) {
            dTFunctionNameModifier = a.e(dTFunctionNameModifier, "PLPCuratedTextComposable");
        }
        GapComposer gapComposerH = composer.h(1561532467);
        int i3 = i2 | 6 | (gapComposerH.K(curatedText) ? 32 : 16);
        if (gapComposerH.p(i3 & 1, (i3 & 19) != 18)) {
            dTFunctionNameModifier = new DTFunctionNameModifier("PLPCuratedTextComposable");
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierJ = PaddingKt.j(SizeKt.d(dTFunctionNameModifier, 1.0f), LVAppDesignKitTheme.l(gapComposerH).f48416e, LVAppDesignKitTheme.l(gapComposerH).f48418h);
            Arrangement$Start$1 arrangement$Start$1 = Arrangement.f4918a;
            Arrangement.SpacedAligned spacedAlignedF = Arrangement.f(LVAppDesignKitTheme.l(gapComposerH).f48416e);
            Alignment.f8582a.getClass();
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(spacedAlignedF, Alignment.Companion.n, gapComposerH, 0);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierJ);
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
            AssetImageUiModel assetImageUiModel = curatedText.d;
            PlpSectionUiModel.CuratedText.LabelUiModel labelUiModel = curatedText.f62915b;
            if (assetImageUiModel == null) {
                gapComposerH.L(-1120121896);
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(-1120121895);
                a(assetImageUiModel, gapComposerH, 0);
                gapComposerH.Z(false);
            }
            DTFunctionNameModifier dTFunctionNameModifier2 = new DTFunctionNameModifier("PLPCuratedTextComposable");
            Object objX = gapComposerH.x();
            if (objX == Composer.Companion.f7939a) {
                objX = new fj0(20);
                gapComposerH.q(objX);
            }
            Modifier modifierB = SemanticsModifierKt.b(dTFunctionNameModifier2, false, (Function1) objX);
            PlpSectionUiModel.CuratedText.LabelUiModel.FontUiModel fontUiModel = labelUiModel.f62918b;
            PlpSectionUiModel.CuratedText.LabelUiModel.FontUiModel fontUiModel2 = PlpSectionUiModel.CuratedText.LabelUiModel.FontUiModel.LARGE;
            String upperCase = labelUiModel.f62917a;
            if (fontUiModel == fontUiModel2) {
                upperCase = upperCase.toUpperCase(Locale.ROOT);
                upperCase.getClass();
            }
            String str = upperCase;
            int i4 = WhenMappings.f62749a[labelUiModel.f62918b.ordinal()];
            if (i4 == 1) {
                gapComposerH.L(838404140);
                textStyle = LVAppDesignKitTheme.n(gapComposerH).f48425e;
                gapComposerH.Z(false);
            } else if (i4 == 2) {
                gapComposerH.L(838407628);
                textStyle = LVAppDesignKitTheme.n(gapComposerH).d;
                gapComposerH.Z(false);
            } else {
                if (i4 != 3) {
                    throw d21.u(gapComposerH, 838400856, false);
                }
                gapComposerH.L(838411084);
                textStyle = LVAppDesignKitTheme.n(gapComposerH).f48424c;
                gapComposerH.Z(false);
            }
            TextKt.c(str, modifierB, LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, textStyle, gapComposerH, 0, 0, 131064);
            gapComposer = gapComposerH;
            if (StringsKt.w(curatedText.f62916c)) {
                gapComposer.L(-1119366983);
                gapComposer.Z(false);
            } else {
                gapComposer.L(-1119564298);
                TextKt.c(curatedText.f62916c, null, LVAppDesignKitTheme.c(gapComposer).f48361b.l, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposer).g, gapComposer, 0, 0, 131066);
                gapComposer = gapComposer;
                gapComposer.Z(false);
            }
            gapComposer.Z(true);
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new wd0(dTFunctionNameModifier, curatedText, i2, 15);
        }
    }
}
