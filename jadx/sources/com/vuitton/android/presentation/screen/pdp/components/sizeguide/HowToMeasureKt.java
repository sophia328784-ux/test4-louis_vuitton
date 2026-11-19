package com.vuitton.android.presentation.screen.pdp.components.sizeguide;

import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Top$1;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
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
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.Html_androidKt;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.platform.extensions.StringExtKt;
import com.vuitton.android.presentation.imageloading.compose.ImageLoaderKt;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.HowToMeasureItemUiModel;
import defpackage.a;
import defpackage.n00;
import defpackage.pq0;
import defpackage.rv;
import defpackage.tr;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class HowToMeasureKt {
    public static final void a(Modifier modifier, String str, List list, Composer composer, int i2) {
        GapComposer gapComposer;
        HowToMeasureItemUiModel howToMeasureItemUiModel;
        Modifier dTFunctionNameModifier = modifier;
        if (dTFunctionNameModifier != null) {
            dTFunctionNameModifier = a.e(dTFunctionNameModifier, "HowToMeasure");
        }
        str.getClass();
        list.getClass();
        GapComposer gapComposerH = composer.h(-1382212960);
        int i3 = i2 | 6 | (gapComposerH.K(str) ? 32 : 16) | (gapComposerH.y(list) ? 256 : 128);
        if (gapComposerH.p(i3 & 1, (i3 & 147) != 146)) {
            dTFunctionNameModifier = new DTFunctionNameModifier("HowToMeasure");
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            if (list.isEmpty()) {
                gapComposer = gapComposerH;
                gapComposer.L(-1653309822);
                gapComposer.Z(false);
            } else {
                gapComposerH.L(-1654636963);
                Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
                Alignment.f8582a.getClass();
                ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, gapComposerH, 0);
                int iHashCode = Long.hashCode(gapComposerH.T);
                PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
                Modifier modifierC = ComposedModifierKt.c(gapComposerH, dTFunctionNameModifier);
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
                int i4 = (i3 >> 3) & 14;
                boolean z = true;
                TextKt.c(str, ModifierExtKt.e(PaddingKt.m(tr.e(gapComposerH, modifierC, ComposeUiNode.Companion.d, "HowToMeasure"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, 7), "pdp_sizeGuide_howToMeasure_text"), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).f48426f, gapComposerH, i4, 0, 131064);
                gapComposer = gapComposerH;
                gapComposer.L(1481274312);
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    HowToMeasureItemUiModel howToMeasureItemUiModel2 = (HowToMeasureItemUiModel) it.next();
                    if (StringExtKt.a(howToMeasureItemUiModel2.f61697b)) {
                        Modifier modifierM = PaddingKt.m(n00.i(gapComposer, 1653665204, "HowToMeasure"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposer).f48416e, 7);
                        String str2 = howToMeasureItemUiModel2.f61697b;
                        if (str2 == null) {
                            str2 = null;
                        }
                        ContentScale.f9447a.getClass();
                        GapComposer gapComposer2 = gapComposer;
                        howToMeasureItemUiModel = howToMeasureItemUiModel2;
                        ImageLoaderKt.b(modifierM, str2, ContentScale.Companion.f9451e, null, null, 0, false, null, null, null, gapComposer2, KyberEngine.KyberPolyBytes, 2040);
                        gapComposer = gapComposer2;
                        gapComposer.Z(false);
                    } else {
                        howToMeasureItemUiModel = howToMeasureItemUiModel2;
                        gapComposer.L(1653994827);
                        gapComposer.Z(false);
                    }
                    String str3 = howToMeasureItemUiModel.f61698c;
                    if (str3.length() <= 0) {
                        str3 = null;
                    }
                    if (str3 == null) {
                        gapComposer.L(1654061197);
                        gapComposer.Z(false);
                    } else {
                        gapComposer.L(1654061198);
                        int i5 = AnnotatedString.f10418f;
                        GapComposer gapComposer3 = gapComposer;
                        TextKt.d(Html_androidKt.b(str3, null, 6), null, LVAppDesignKitTheme.c(gapComposer).f48361b.f48382k, 0L, 0L, null, 0L, 0, false, 0, 0, null, null, LVAppDesignKitTheme.n(gapComposer).f48427h, gapComposer3, 0, 0, 262138);
                        gapComposer = gapComposer3;
                        gapComposer.Z(false);
                    }
                    SpacerKt.a(gapComposer, SizeKt.f(dTFunctionNameModifier, LVAppDesignKitTheme.l(gapComposer).f48416e));
                    z = true;
                }
                pq0.x(gapComposer, false, z, false);
            }
            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        Modifier modifier2 = dTFunctionNameModifier;
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new rv(i2, 8, modifier2, str, list);
        }
    }
}
