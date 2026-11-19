package com.vuitton.android.presentation.screen.certificates.components.visionnaire;

import androidx.compose.foundation.layout.AspectRatioKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.SizeKt;
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
import androidx.compose.ui.draw.PainterModifierKt;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.res.PainterResources_androidKt;
import androidx.compose.ui.res.StringResources_androidKt;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.theme.GradientKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.molecules.topbar.FloatingTopBarType;
import com.vuitton.android.designkit.ui.theme.molecules.topbar.LVFloatingTopBarKt;
import com.vuitton.android.platform.extensions.StringExtKt;
import com.vuitton.android.presentation.imageloading.compose.ImageLoaderKt;
import defpackage.n00;
import defpackage.qd;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class CertificateVisionnaireHeaderKt {
    public static final void a(String str, Function0 function0, Composer composer, int i2) {
        GapComposer gapComposer;
        GapComposer gapComposer2;
        String str2 = str;
        Function0 function1 = function0;
        str2.getClass();
        function1.getClass();
        GapComposer gapComposerH = composer.h(-871939547);
        int i3 = (gapComposerH.K(str2) ? 4 : 2) | i2 | (gapComposerH.y(function1) ? 32 : 16);
        if (gapComposerH.p(i3 & 1, (i3 & 19) != 18)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierC = SizeKt.c(SizeKt.d(new DTFunctionNameModifier("CertificateVisionnaireHeader"), 1.0f), 0.5f);
            Painter painterA = PainterResources_androidKt.a(R.drawable.background_visionnaire, gapComposerH, 0);
            ContentScale.f9447a.getClass();
            Modifier modifierA = PainterModifierKt.a(modifierC, painterA, null, ContentScale.Companion.f9453h, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, 54);
            Alignment.f8582a.getClass();
            MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC2 = ComposedModifierKt.c(gapComposerH, modifierA);
            ComposeUiNode.b0.getClass();
            Function0 function2 = ComposeUiNode.Companion.f9641b;
            if (gapComposerH.f7976a == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function2);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, measurePolicyD, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
            Updater.c(gapComposerH, modifierC2, ComposeUiNode.Companion.d);
            Modifier modifierO = new DTFunctionNameModifier("CertificateVisionnaireHeader").o(SizeKt.f5052c);
            Brush.Companion companion = Brush.f8862a;
            Float fValueOf = Float.valueOf(Call.Parameters.DEFAULT_CAMERA_ZOOM);
            Color.f8866b.getClass();
            Pair[] pairArr = (Pair[]) CollectionsKt.P(new Pair(fValueOf, new Color(Color.f8870h)), new Pair(Float.valueOf(0.8f), new Color(LVAppDesignKitTheme.c(gapComposerH).f48361b.f48375b))).toArray(new Pair[0]);
            BoxKt.a(GradientKt.a(modifierO, Brush.Companion.c(companion, (Pair[]) Arrays.copyOf(pairArr, pairArr.length))), gapComposerH, 0);
            if (StringExtKt.a(str2)) {
                gapComposer2 = gapComposerH;
                ImageLoaderKt.b(AspectRatioKt.a(PaddingKt.k(BoxScopeInstance.f4938a.g(n00.i(gapComposerH, 1147337694, "CertificateVisionnaireHeader"), Alignment.Companion.f8587f), LVAppDesignKitTheme.l(gapComposerH).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), 1.0f, false), str2, ContentScale.Companion.f9450c, null, null, 0, false, null, null, null, gapComposer2, KyberEngine.KyberPolyBytes, 2040);
                gapComposer2.Z(false);
            } else {
                gapComposer2 = gapComposerH;
                gapComposer2.L(1147699991);
                gapComposer2.Z(false);
            }
            GapComposer gapComposer3 = gapComposer2;
            LVFloatingTopBarKt.a(null, FloatingTopBarType.Close, null, null, StringResources_androidKt.c(gapComposer2, R.string.alt_close), function0, null, null, gapComposer3, ((i3 << 12) & ImageMetadata.JPEG_GPS_COORDINATES) | 48, 205);
            function1 = function0;
            gapComposer = gapComposer3;
            gapComposer.Z(true);
        } else {
            str2 = str2;
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new qd(str2, function1, i2, 8);
        }
    }
}
