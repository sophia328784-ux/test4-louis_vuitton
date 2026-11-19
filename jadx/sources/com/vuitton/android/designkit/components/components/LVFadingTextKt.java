package com.vuitton.android.designkit.components.components;

import androidx.compose.animation.core.Animatable;
import androidx.compose.animation.core.AnimatableKt;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.AlphaKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.style.TextAlign;
import defpackage.vr;
import kotlin.Metadata;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\u0010\u000e\n\u0002\b\u0002¨\u0006\u0002²\u0006\u000e\u0010\u0001\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002"}, d2 = {"", "displayedText", "components"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class LVFadingTextKt {
    public static final void a(Modifier modifier, String str, TextStyle textStyle, long j2, TextAlign textAlign, Composer composer, int i2, int i3) {
        TextAlign textAlign2;
        int i4;
        GapComposer gapComposer;
        TextAlign textAlign3;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "LVFadingText-XEu76tw");
        }
        Modifier modifier2 = modifierE;
        str.getClass();
        textStyle.getClass();
        GapComposer gapComposerH = composer.h(512862203);
        int i5 = i2 | (gapComposerH.K(modifier2) ? 4 : 2) | (gapComposerH.K(str) ? 32 : 16) | (gapComposerH.K(textStyle) ? 256 : 128) | (gapComposerH.e(j2) ? 2048 : 1024);
        int i6 = i3 & 16;
        if (i6 != 0) {
            i4 = i5 | 24576;
            textAlign2 = textAlign;
        } else {
            textAlign2 = textAlign;
            i4 = i5 | (gapComposerH.K(textAlign2) ? 16384 : 8192);
        }
        if (gapComposerH.p(i4 & 1, (74899 & i4) != 74898)) {
            TextAlign textAlign4 = i6 != 0 ? null : textAlign2;
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = SnapshotStateKt.g(str);
                gapComposerH.q(objX);
            }
            MutableState mutableState = (MutableState) objX;
            Object objX2 = gapComposerH.x();
            if (objX2 == composer$Companion$Empty$1) {
                objX2 = AnimatableKt.a(1.0f);
                gapComposerH.q(objX2);
            }
            Animatable animatable = (Animatable) objX2;
            boolean zY = gapComposerH.y(animatable) | ((i4 & 112) == 32);
            Object objX3 = gapComposerH.x();
            if (zY || objX3 == composer$Companion$Empty$1) {
                objX3 = new LVFadingTextKt$LVFadingText$1$1(str, animatable, mutableState, null);
                gapComposerH.q(objX3);
            }
            EffectsKt.e(gapComposerH, str, (Function2) objX3);
            gapComposer = gapComposerH;
            TextKt.c((String) mutableState.getF10755b(), AlphaKt.a(modifier2, ((Number) animatable.d()).floatValue()), j2, 0L, null, 0L, null, textAlign4, 0L, 0, false, 0, 0, null, textStyle, gapComposer, (i4 >> 3) & 896, ((i4 >> 12) & 14) | ((i4 << 15) & 29360128), 130040);
            textAlign3 = textAlign4;
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
            textAlign3 = textAlign2;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new vr(modifier2, str, textStyle, j2, textAlign3, i2, i3);
        }
    }
}
