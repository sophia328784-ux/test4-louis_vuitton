package com.vuitton.android.presentation.compose.components;

import androidx.compose.material3.TextKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.saveable.RememberSaveableKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.text.TextStyle;
import com.vuitton.android.presentation.compose.StringExtKt;
import defpackage.l31;
import defpackage.rw;
import defpackage.ta;
import java.text.BreakIterator;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002¨\u0006\u0004²\u0006\u000e\u0010\u0001\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002²\u0006\u000e\u0010\u0003\u001a\u00020\u00028\n@\nX\u008a\u008e\u0002"}, d2 = {"", "hasAnimated", "", "substringText", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class TextWithTypingAnimationKt {
    public static final void a(Modifier modifier, String str, TextStyle textStyle, long j2, BreakIterator breakIterator, long j3, long j4, Function0 function0, Composer composer, int i2) {
        Modifier modifier2;
        GapComposer gapComposer;
        BreakIterator breakIterator2;
        long j5;
        long j6;
        BreakIterator wordInstance;
        int i3;
        long j7;
        long j8;
        BreakIterator breakIterator3;
        MutableState mutableState;
        long j9;
        long j10;
        boolean z;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "TextWithTypingAnimation-8r3B23s");
        }
        Modifier modifier3 = modifierE;
        str.getClass();
        textStyle.getClass();
        GapComposer gapComposerH = composer.h(1115487083);
        int i4 = i2 | (gapComposerH.K(modifier3) ? 4 : 2) | (gapComposerH.K(str) ? 32 : 16) | (gapComposerH.K(textStyle) ? 256 : 128) | (gapComposerH.e(j2) ? 2048 : 1024) | 1777664 | (gapComposerH.y(function0) ? 8388608 : 4194304);
        if (gapComposerH.p(i4 & 1, (4793491 & i4) != 4793490)) {
            gapComposerH.y0();
            if ((i2 & 1) == 0 || gapComposerH.h0()) {
                wordInstance = BreakIterator.getWordInstance();
                wordInstance.getClass();
                i3 = i4 & (-57345);
                j7 = 250;
                j8 = 25;
            } else {
                gapComposerH.D();
                i3 = i4 & (-57345);
                wordInstance = breakIterator;
                j7 = j3;
                j8 = j4;
            }
            int i5 = i3;
            gapComposerH.a0();
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Object[] objArr = {str};
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = new l31(0);
                gapComposerH.q(objX);
            }
            MutableState mutableState2 = (MutableState) RememberSaveableKt.d(objArr, (Function0) objX, gapComposerH, 48);
            Object[] objArr2 = {str};
            int i6 = i5 & 112;
            boolean zK = gapComposerH.K(mutableState2) | (i6 == 32);
            Object objX2 = gapComposerH.x();
            if (zK || objX2 == composer$Companion$Empty$1) {
                objX2 = new rw(str, mutableState2, 1);
                gapComposerH.q(objX2);
            }
            MutableState mutableState3 = (MutableState) RememberSaveableKt.d(objArr2, (Function0) objX2, gapComposerH, 0);
            if (((Boolean) mutableState2.getF10755b()).booleanValue()) {
                breakIterator3 = wordInstance;
                mutableState = mutableState3;
                j9 = j7;
                modifier3 = modifier3;
                j10 = j8;
                gapComposerH.L(1315056138);
                boolean z2 = (i5 & 29360128) == 8388608;
                Object objX3 = gapComposerH.x();
                if (z2 || objX3 == composer$Companion$Empty$1) {
                    objX3 = new TextWithTypingAnimationKt$TextWithTypingAnimation$3$1(function0, null);
                    gapComposerH.q(objX3);
                }
                EffectsKt.e(gapComposerH, str, (Function2) objX3);
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(1314227105);
                boolean zK2 = gapComposerH.K(mutableState3) | gapComposerH.y(wordInstance) | (i6 == 32) | gapComposerH.K(mutableState2) | ((i5 & 29360128) == 8388608);
                Object objX4 = gapComposerH.x();
                if (zK2 || objX4 == composer$Companion$Empty$1) {
                    BreakIterator breakIterator4 = wordInstance;
                    mutableState = mutableState3;
                    long j11 = j7;
                    long j12 = j8;
                    z = false;
                    TextWithTypingAnimationKt$TextWithTypingAnimation$2$1 textWithTypingAnimationKt$TextWithTypingAnimation$2$1 = new TextWithTypingAnimationKt$TextWithTypingAnimation$2$1(j11, breakIterator4, str, j12, function0, mutableState, mutableState2, null);
                    j9 = j11;
                    breakIterator3 = breakIterator4;
                    j10 = j12;
                    gapComposerH.q(textWithTypingAnimationKt$TextWithTypingAnimation$2$1);
                    objX4 = textWithTypingAnimationKt$TextWithTypingAnimation$2$1;
                } else {
                    breakIterator3 = wordInstance;
                    mutableState = mutableState3;
                    j9 = j7;
                    j10 = j8;
                    z = false;
                }
                EffectsKt.e(gapComposerH, str, (Function2) objX4);
                gapComposerH.Z(z);
            }
            gapComposer = gapComposerH;
            Modifier modifier4 = modifier3;
            TextKt.d(StringExtKt.b((String) mutableState.getF10755b()), modifier4, j2, 0L, 0L, null, 0L, 0, false, 0, 0, null, null, textStyle, gapComposer, ((i5 << 3) & 112) | ((i5 >> 3) & 896), (i5 << 18) & 234881024, 262136);
            modifier2 = modifier4;
            breakIterator2 = breakIterator3;
            j5 = j9;
            j6 = j10;
        } else {
            modifier2 = modifier3;
            gapComposer = gapComposerH;
            gapComposer.D();
            breakIterator2 = breakIterator;
            j5 = j3;
            j6 = j4;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new ta(modifier2, str, textStyle, j2, breakIterator2, j5, j6, function0, i2);
        }
    }
}
