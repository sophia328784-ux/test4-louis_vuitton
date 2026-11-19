package com.vuitton.android.designkit.ui.theme.atoms;

import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Center$1;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.material3.IconKt;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.res.PainterResources_androidKt;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.text.style.TextOverflow;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.atoms.configurations.ConfigurationTagButton;
import defpackage.c70;
import defpackage.cj;
import defpackage.d80;
import defpackage.eb;
import defpackage.n00;
import defpackage.n60;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"system"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class LVTagButtonKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final StaticProvidableCompositionLocal f48511a = new StaticProvidableCompositionLocal(new c70(9));

    public static final void a(Modifier modifier, String str, boolean z, boolean z2, ConfigurationTagButton configurationTagButton, Function0 function0, Composer composer, int i2) {
        int i3;
        GapComposer gapComposer;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "LVTagButtonInternal");
        }
        Modifier modifier2 = modifierE;
        GapComposer gapComposerH = composer.h(790298027);
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.K(modifier2) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.K(str) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.b(z) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i3 |= gapComposerH.b(z2) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            i3 |= gapComposerH.K(configurationTagButton) ? 16384 : 8192;
        }
        if ((196608 & i2) == 0) {
            i3 |= gapComposerH.y(function0) ? 131072 : 65536;
        }
        int i4 = i3;
        if (gapComposerH.p(i4 & 1, (74899 & i4) != 74898)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierJ = PaddingKt.j(SizeKt.u(ModifierExtKt.c(BackgroundKt.b(modifier2, z ? configurationTagButton.f48597b : configurationTagButton.f48599e, configurationTagButton.f48601h), z, null, null, function0, 30), Call.Parameters.DEFAULT_CAMERA_ZOOM, configurationTagButton.f48604k, 1), configurationTagButton.f48602i, configurationTagButton.f48603j);
            Object objX = gapComposerH.x();
            if (objX == Composer.Companion.f7939a) {
                objX = new n60(10);
                gapComposerH.q(objX);
            }
            Modifier modifierB = SemanticsModifierKt.b(modifierJ, false, (Function1) objX);
            Arrangement$Center$1 arrangement$Center$1 = Arrangement.f4921e;
            Alignment.f8582a.getClass();
            RowMeasurePolicy rowMeasurePolicyA = RowKt.a(arrangement$Center$1, Alignment.Companion.l, gapComposerH, 54);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierB);
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
            Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
            TextAlign.f10959b.getClass();
            int i5 = TextAlign.f10961e;
            TextStyle textStyle = configurationTagButton.f48596a;
            TextOverflow.f10989a.getClass();
            int i6 = TextOverflow.f10991c;
            TextKt.c(str, cj.b("LVTagButtonInternal", RowScopeInstance.f5040a, 1.0f, false), z ? configurationTagButton.f48598c : configurationTagButton.f48600f, 0L, null, 0L, null, new TextAlign(i5), 0L, i6, false, 1, 0, null, textStyle, gapComposerH, (i4 >> 3) & 14, 24960, 109560);
            gapComposer = gapComposerH;
            if (z2) {
                IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(gapComposer).s, gapComposer, 0), "", PaddingKt.m(SizeKt.o(n00.i(gapComposer, -218839160, "LVTagButtonInternal"), LVAppDesignKitTheme.d(gapComposer).m), LVAppDesignKitTheme.l(gapComposer).f48414b, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14), z ? configurationTagButton.d : configurationTagButton.g, gapComposer, 56, 0);
                gapComposer.Z(false);
            } else {
                gapComposer.L(-218318949);
                gapComposer.Z(false);
            }
            gapComposer.Z(true);
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new eb(modifier2, str, z, z2, configurationTagButton, function0, i2, 2);
        }
    }

    public static final void b(Modifier modifier, String str, boolean z, boolean z2, Function0 function0, Composer composer, int i2) {
        String str2;
        Modifier modifier2;
        if (modifier != null) {
            modifier = defpackage.a.e(modifier, "LVTagButtonPrimary");
        }
        str.getClass();
        GapComposer gapComposerH = composer.h(-958187756);
        int i3 = i2 | 6;
        if ((i2 & 48) == 0) {
            str2 = str;
            i3 |= gapComposerH.K(str2) ? 32 : 16;
        } else {
            str2 = str;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.b(z) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i3 |= gapComposerH.b(z2) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            i3 |= gapComposerH.y(function0) ? 16384 : 8192;
        }
        if (gapComposerH.p(i3 & 1, (i3 & 9363) != 9362)) {
            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("LVTagButtonPrimary");
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            a(dTFunctionNameModifier, str2, z, z2, ((LVTagButtons) gapComposerH.k(f48511a)).f48512a, function0, gapComposerH, (i3 & 8190) | ((i3 << 3) & ImageMetadata.JPEG_GPS_COORDINATES));
            modifier2 = dTFunctionNameModifier;
        } else {
            gapComposerH.D();
            modifier2 = modifier;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new d80(modifier2, str, z, z2, function0, i2, 0);
        }
    }
}
