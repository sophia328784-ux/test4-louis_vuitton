package com.vuitton.android.presentation.screen.audioguide.components;

import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Top$1;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.material3.AndroidMenu_androidKt;
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
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.DpOffset;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.atoms.configurations.ConfigurationIconButton;
import com.vuitton.android.presentation.compose.components.LVTextButtonKt;
import com.vuitton.android.presentation.model.common.FeatureThemeUiModel;
import com.vuitton.android.presentation.screen.audioguide.models.AudioGuideUiModel;
import defpackage.d0;
import defpackage.d21;
import defpackage.n00;
import defpackage.na;
import defpackage.oa;
import defpackage.p1;
import defpackage.r;
import defpackage.w9;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmc.BodyPartID;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\u0010\u000b\n\u0002\b\u0002¨\u0006\u0002²\u0006\u000e\u0010\u0001\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002"}, d2 = {"", "showLanguageDropdown", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class AudioGuideLanguageSelectorKt {

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f53011a;

        static {
            int[] iArr = new int[FeatureThemeUiModel.values().length];
            try {
                iArr[FeatureThemeUiModel.LIGHT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[FeatureThemeUiModel.DARK.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f53011a = iArr;
        }
    }

    public static final void a(Modifier modifier, AudioGuideUiModel.AvailableLanguageUiModel availableLanguageUiModel, boolean z, List list, Function1 function1, Function0 function0, Composer composer, int i2) {
        boolean z2;
        GapComposer gapComposer;
        Modifier modifier2;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "AudioGuideLanguageDropDown");
        }
        list.getClass();
        function1.getClass();
        function0.getClass();
        GapComposer gapComposerH = composer.h(-1005742043);
        int i3 = i2 | 6;
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.K(availableLanguageUiModel) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            z2 = z;
            i3 |= gapComposerH.b(z2) ? 256 : 128;
        } else {
            z2 = z;
        }
        if ((i2 & 3072) == 0) {
            i3 |= gapComposerH.y(list) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            i3 |= gapComposerH.y(function1) ? 16384 : 8192;
        }
        if ((196608 & i2) == 0) {
            i3 |= gapComposerH.y(function0) ? 131072 : 65536;
        }
        if (gapComposerH.p(i3 & 1, (74899 & i3) != 74898)) {
            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("AudioGuideLanguageDropDown");
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Dp.Companion companion = Dp.f11004c;
            long jFloatToRawIntBits = (((long) Float.floatToRawIntBits(LVAppDesignKitTheme.l(gapComposerH).f48414b)) & BodyPartID.bodyIdMax) | (((long) Float.floatToRawIntBits(Call.Parameters.DEFAULT_CAMERA_ZOOM)) << 32);
            int i4 = DpOffset.f11007b;
            gapComposer = gapComposerH;
            AndroidMenu_androidKt.a(z2, function0, dTFunctionNameModifier, jFloatToRawIntBits, null, null, LVAppDesignKitTheme.j(gapComposerH).d, LVAppDesignKitTheme.c(gapComposerH).f48361b.f48374a, Call.Parameters.DEFAULT_CAMERA_ZOOM, ComposableLambdaKt.b(2020166666, new r((Object) list, (Object) availableLanguageUiModel, (Object) function0, (Object) function1, 1), gapComposerH), gapComposer, ((i3 >> 6) & 14) | ((i3 >> 12) & 112) | ((i3 << 6) & 896), 1840);
            modifier2 = dTFunctionNameModifier;
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
            modifier2 = modifierE;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new p1(modifier2, availableLanguageUiModel, z, list, function1, function0, i2);
        }
    }

    public static final void b(Modifier modifier, FeatureThemeUiModel featureThemeUiModel, AudioGuideUiModel.AvailableLanguageUiModel availableLanguageUiModel, List list, Function1 function1, Function0 function0, Composer composer, int i2, int i3) {
        Function1 function2;
        Function0 function3;
        int i4;
        Modifier modifier2;
        Function0 function4;
        ConfigurationIconButton configurationIconButton;
        MutableState mutableState;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "AudioGuideLanguageSelector");
        }
        featureThemeUiModel.getClass();
        list.getClass();
        function1.getClass();
        GapComposer gapComposerH = composer.h(827670857);
        int i5 = i2 | 6;
        if ((i2 & 48) == 0) {
            i5 |= gapComposerH.d(featureThemeUiModel.ordinal()) ? 32 : 16;
        }
        int i6 = i5 | (gapComposerH.K(availableLanguageUiModel) ? 256 : 128) | (gapComposerH.y(list) ? 2048 : 1024);
        if ((i2 & 24576) == 0) {
            function2 = function1;
            i6 |= gapComposerH.y(function2) ? 16384 : 8192;
        } else {
            function2 = function1;
        }
        int i7 = i3 & 32;
        if (i7 != 0) {
            i4 = i6 | ImageMetadata.EDGE_MODE;
            function3 = function0;
        } else {
            function3 = function0;
            i4 = i6 | (gapComposerH.y(function3) ? 131072 : 65536);
        }
        if (gapComposerH.p(i4 & 1, (74899 & i4) != 74898)) {
            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("AudioGuideLanguageSelector");
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (i7 != 0) {
                Object objX = gapComposerH.x();
                if (objX == composer$Companion$Empty$1) {
                    objX = new w9(7);
                    gapComposerH.q(objX);
                }
                function4 = (Function0) objX;
            } else {
                function4 = function3;
            }
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Object objX2 = gapComposerH.x();
            if (objX2 == composer$Companion$Empty$1) {
                objX2 = SnapshotStateKt.g(Boolean.FALSE);
                gapComposerH.q(objX2);
            }
            MutableState mutableState2 = (MutableState) objX2;
            Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
            Alignment.f8582a.getClass();
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, gapComposerH, 0);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, dTFunctionNameModifier);
            ComposeUiNode.b0.getClass();
            Function0 function5 = ComposeUiNode.Companion.f9641b;
            if (gapComposerH.f7976a == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function5);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, columnMeasurePolicyA, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
            Modifier modifierF = n00.f(gapComposerH, modifierC, ComposeUiNode.Companion.d, "AudioGuideLanguageSelector", "audioGuide_languageSelector_button");
            int i8 = WhenMappings.f53011a[featureThemeUiModel.ordinal()];
            if (i8 == 1) {
                gapComposerH.L(-798335994);
                configurationIconButton = LVAppDesignKitTheme.f(gapComposerH).f48477a;
                gapComposerH.Z(false);
            } else {
                if (i8 != 2) {
                    throw d21.u(gapComposerH, -798338742, false);
                }
                gapComposerH.L(-798333300);
                configurationIconButton = LVAppDesignKitTheme.f(gapComposerH).f48478b;
                gapComposerH.Z(false);
            }
            String str = availableLanguageUiModel.f53212a;
            String strC = StringResources_androidKt.c(gapComposerH, R.string.alt_language_selector);
            String strB = StringResources_androidKt.b(R.string.alt_selected_language, new Object[]{availableLanguageUiModel.f53213b}, gapComposerH);
            boolean z = (458752 & i4) == 131072;
            Object objX3 = gapComposerH.x();
            if (z || objX3 == composer$Companion$Empty$1) {
                mutableState = mutableState2;
                objX3 = new na(function4, mutableState, 0);
                gapComposerH.q(objX3);
            } else {
                mutableState = mutableState2;
            }
            MutableState mutableState3 = mutableState;
            LVTextButtonKt.a(modifierF, configurationIconButton, str, strC, strB, false, (Function0) objX3, gapComposerH, 0);
            boolean zBooleanValue = ((Boolean) mutableState3.getF10755b()).booleanValue();
            Object objX4 = gapComposerH.x();
            if (objX4 == composer$Companion$Empty$1) {
                objX4 = new d0(8, mutableState3);
                gapComposerH.q(objX4);
            }
            function3 = function4;
            gapComposerH = gapComposerH;
            a(null, availableLanguageUiModel, zBooleanValue, list, function2, (Function0) objX4, gapComposerH, ((i4 >> 3) & 112) | ImageMetadata.EDGE_MODE | (i4 & 7168) | (57344 & i4));
            gapComposerH.Z(true);
            modifier2 = dTFunctionNameModifier;
        } else {
            gapComposerH.D();
            modifier2 = modifierE;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new oa(modifier2, featureThemeUiModel, availableLanguageUiModel, list, function1, function3, i2, i3, 0);
        }
    }
}
