package com.vuitton.android.presentation.common.editorial.components.editorialcard;

import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.ClickableKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.layout.ContentScale$Companion$Crop$1;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.media3.exoplayer.ExoPlayer;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.designkit.components.ModifierExtKt;
import com.vuitton.android.presentation.common.editorial.components.editorialcard.EditorialCardBackgroundKt;
import com.vuitton.android.presentation.compose.LvExoPlayer;
import com.vuitton.android.presentation.compose.LvVideoPlayerKt;
import com.vuitton.android.presentation.imageloading.compose.ImageLoaderKt;
import com.vuitton.android.presentation.model.common.AssetUiModel;
import com.vuitton.android.presentation.model.common.AssetVideoUiModel;
import defpackage.a;
import defpackage.bw;
import defpackage.cj;
import defpackage.h1;
import defpackage.n00;
import defpackage.p4;
import defpackage.rq;
import defpackage.y2;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class EditorialCardBackgroundKt {
    public static final void a(Modifier modifier, final float f2, AssetUiModel assetUiModel, final boolean z, final boolean z2, final boolean z3, final boolean z4, final boolean z5, LvExoPlayer lvExoPlayer, Function0 function0, ComposableLambdaImpl composableLambdaImpl, Composer composer, final int i2) {
        int i3;
        final ComposableLambdaImpl composableLambdaImpl2;
        GapComposer gapComposer;
        Modifier modifierE = modifier;
        final AssetUiModel assetUiModel2 = assetUiModel;
        final LvExoPlayer lvExoPlayer2 = lvExoPlayer;
        final Function0 function1 = function0;
        if (modifierE != null) {
            modifierE = a.e(modifierE, "EditorialCardBackground");
        }
        GapComposer gapComposerH = composer.h(2065898357);
        Applier applier = gapComposerH.f7976a;
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.K(modifierE) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.c(f2) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.y(assetUiModel2) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i3 |= gapComposerH.b(z) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            i3 |= gapComposerH.b(z2) ? 16384 : 8192;
        }
        if ((196608 & i2) == 0) {
            i3 |= gapComposerH.b(z3) ? 131072 : 65536;
        }
        if ((1572864 & i2) == 0) {
            i3 |= gapComposerH.b(z4) ? 1048576 : 524288;
        }
        if ((12582912 & i2) == 0) {
            i3 |= gapComposerH.b(z5) ? 8388608 : 4194304;
        }
        if ((100663296 & i2) == 0) {
            i3 |= gapComposerH.y(lvExoPlayer2) ? 67108864 : 33554432;
        }
        if ((805306368 & i2) == 0) {
            i3 |= gapComposerH.y(function1) ? PKIFailureInfo.duplicateCertReq : 268435456;
        }
        if (gapComposerH.p(i3 & 1, (306783379 & i3) != 306783378)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Color.f8866b.getClass();
            Modifier modifierB = BackgroundKt.b(modifierE, Color.f8870h, RectangleShapeKt.f8913a);
            Alignment.f8582a.getClass();
            BiasAlignment biasAlignment = Alignment.Companion.f8584b;
            MeasurePolicy measurePolicyD = BoxKt.d(biasAlignment, false);
            int i4 = i3;
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierB);
            ComposeUiNode.b0.getClass();
            Function0 function2 = ComposeUiNode.Companion.f9641b;
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function2);
            } else {
                gapComposerH.o();
            }
            Function2 function3 = ComposeUiNode.Companion.f9644f;
            Updater.c(gapComposerH, measurePolicyD, function3);
            Function2 function4 = ComposeUiNode.Companion.f9643e;
            Updater.c(gapComposerH, persistentCompositionLocalMapU, function4);
            Integer numValueOf = Integer.valueOf(iHashCode);
            Function2 function5 = ComposeUiNode.Companion.g;
            Updater.c(gapComposerH, numValueOf, function5);
            Function1 function6 = ComposeUiNode.Companion.f9645h;
            Updater.b(gapComposerH, function6);
            Function2 function7 = ComposeUiNode.Companion.d;
            Updater.c(gapComposerH, modifierC, function7);
            boolean z6 = !z;
            Modifier modifierB2 = ClipKt.b(ModifierExtKt.b(new DTFunctionNameModifier("EditorialCardBackground"), z6, new bw(f2, 0), gapComposerH, 6));
            int i5 = i4 & 1879048192;
            boolean z7 = i5 == 536870912;
            Object objX = gapComposerH.x();
            boolean z8 = z7;
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (z8 || objX == composer$Companion$Empty$1) {
                objX = new h1(function1, 26);
                gapComposerH.q(objX);
            }
            Modifier modifierB3 = ModifierExtKt.b(ModifierExtKt.b(ClickableKt.d(modifierB2, false, null, null, (Function0) objX, 15), z2, new rq(11), gapComposerH, (i4 >> 9) & 112), z3, new p4(z5, 1, (byte) 0), gapComposerH, (i4 >> 12) & 112);
            MeasurePolicy measurePolicyD2 = BoxKt.d(biasAlignment, false);
            int iHashCode2 = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU2 = gapComposerH.U();
            Modifier modifierC2 = ComposedModifierKt.c(gapComposerH, modifierB3);
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function2);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, measurePolicyD2, function3);
            Updater.c(gapComposerH, persistentCompositionLocalMapU2, function4);
            cj.t(iHashCode2, gapComposerH, function5, gapComposerH, function6);
            Updater.c(gapComposerH, modifierC2, function7);
            assetUiModel2 = assetUiModel;
            if ((assetUiModel != null ? assetUiModel2.f51780b : null) != null) {
                Modifier modifierA = com.vuitton.android.presentation.extensions.ModifierExtKt.a(n00.i(gapComposerH, -2084984061, "EditorialCardBackground"), null, null, 7);
                ContentScale.f9447a.getClass();
                ContentScale$Companion$Crop$1 contentScale$Companion$Crop$1 = ContentScale.Companion.f9449b;
                String str = assetUiModel2.f51780b.f51778b;
                str.getClass();
                ImageLoaderKt.b(modifierA, str, contentScale$Companion$Crop$1, null, null, 0, false, null, null, null, gapComposerH, KyberEngine.KyberPolyBytes, 2040);
                gapComposer = gapComposerH;
                gapComposer.Z(false);
                lvExoPlayer2 = lvExoPlayer;
                function1 = function0;
            } else {
                gapComposer = gapComposerH;
                if ((assetUiModel2 != null ? assetUiModel2.f51781c : null) == null || lvExoPlayer == null) {
                    lvExoPlayer2 = lvExoPlayer;
                    function1 = function0;
                    gapComposer.L(-2084055487);
                    gapComposer.Z(false);
                } else {
                    Modifier modifierB4 = ModifierExtKt.b(n00.i(gapComposer, -2084665195, "EditorialCardBackground"), z6, new bw(f2, 1), gapComposer, 6);
                    AssetVideoUiModel assetVideoUiModel = assetUiModel2.f51781c;
                    String str2 = assetVideoUiModel.f51783c;
                    lvExoPlayer2 = lvExoPlayer;
                    ExoPlayer exoPlayer = lvExoPlayer2.f50900a;
                    String str3 = assetVideoUiModel.d;
                    ContentScale.f9447a.getClass();
                    ContentScale$Companion$Crop$1 contentScale$Companion$Crop$2 = ContentScale.Companion.f9449b;
                    boolean z9 = i5 == 536870912;
                    Object objX2 = gapComposer.x();
                    if (z9 || objX2 == composer$Companion$Empty$1) {
                        function1 = function0;
                        objX2 = new y2(function1, 9);
                        gapComposer.q(objX2);
                    } else {
                        function1 = function0;
                    }
                    LvVideoPlayerKt.b(modifierB4, exoPlayer, str2, null, null, true, str3, contentScale$Companion$Crop$2, false, false, false, z4, null, false, 4, null, null, null, (Function1) objX2, null, null, gapComposer, 12779520, ((i4 >> 15) & 112) | 24576, 0, 1816344);
                    gapComposer.Z(false);
                }
            }
            gapComposer.Z(true);
            composableLambdaImpl2 = composableLambdaImpl;
            composableLambdaImpl2.A(BoxScopeInstance.f4938a, gapComposer, 54);
            gapComposer.Z(true);
        } else {
            composableLambdaImpl2 = composableLambdaImpl;
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            final Modifier modifier2 = modifierE;
            recomposeScopeImplB0.d = new Function2() { // from class: cw
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    EditorialCardBackgroundKt.a(modifier2, f2, assetUiModel2, z, z2, z3, z4, z5, lvExoPlayer2, function1, composableLambdaImpl2, (Composer) obj, RecomposeScopeImplKt.a(i2 | 1));
                    return Unit.f71739a;
                }
            };
        }
    }
}
