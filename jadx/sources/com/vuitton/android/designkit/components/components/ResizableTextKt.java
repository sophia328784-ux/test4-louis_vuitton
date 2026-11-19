package com.vuitton.android.designkit.components.components;

import androidx.compose.material3.ContentColorKt;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.layout.LayoutModifierKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.style.TextAlign;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.designkit.components.components.ResizableTextKt;
import defpackage.c30;
import defpackage.lc;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002¨\u0006\u0002²\u0006\u0010\u0010\u0001\u001a\u0004\u0018\u00010\u00008\n@\nX\u008a\u008e\u0002"}, d2 = {"Landroidx/compose/ui/text/TextLayoutResult;", "textLayoutResult", "components"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class ResizableTextKt {
    /* JADX WARN: Code duplicated, block: B:102:0x01bf  */
    /* JADX WARN: Code duplicated, block: B:104:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:64:0x00bc  */
    /* JADX WARN: Code duplicated, block: B:65:0x00bf  */
    /* JADX WARN: Code duplicated, block: B:68:0x00c8  */
    /* JADX WARN: Code duplicated, block: B:74:0x00dd A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:75:0x00df  */
    /* JADX WARN: Code duplicated, block: B:76:0x00e3  */
    /* JADX WARN: Code duplicated, block: B:79:0x00f7  */
    /* JADX WARN: Code duplicated, block: B:80:0x00f9  */
    /* JADX WARN: Code duplicated, block: B:83:0x010a  */
    /* JADX WARN: Code duplicated, block: B:87:0x0124  */
    /* JADX WARN: Code duplicated, block: B:90:0x0131  */
    /* JADX WARN: Code duplicated, block: B:91:0x0136  */
    /* JADX WARN: Code duplicated, block: B:94:0x015b  */
    /* JADX WARN: Code duplicated, block: B:97:0x0170  */
    /* JADX WARN: Code duplicated, block: B:99:0x01b1  */
    public static final void a(final String str, Modifier modifier, final long j2, final int i2, final int i3, int i4, final TextStyle textStyle, TextAlign textAlign, Composer composer, final int i5, final int i6) {
        int i7;
        int i8;
        int i9;
        TextStyle textStyle2;
        TextAlign textAlign2;
        boolean z;
        GapComposer gapComposer;
        final int i10;
        final TextAlign textAlign3;
        RecomposeScopeImpl recomposeScopeImplB0;
        TextAlign textAlign4;
        int i11;
        long jB;
        Object objX;
        Composer$Companion$Empty$1 composer$Companion$Empty$1;
        MutableState mutableState;
        int i12;
        Object objX2;
        Object objX3;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "ResizableText-8-C820o");
        }
        final Modifier modifier2 = modifierE;
        str.getClass();
        GapComposer gapComposerH = composer.h(1551561867);
        if ((i5 & 6) == 0) {
            i7 = (gapComposerH.K(str) ? 4 : 2) | i5;
        } else {
            i7 = i5;
        }
        if ((i5 & 48) == 0) {
            i7 |= gapComposerH.K(modifier2) ? 32 : 16;
        }
        if ((i5 & KyberEngine.KyberPolyBytes) == 0) {
            i7 |= gapComposerH.e(j2) ? 256 : 128;
        }
        if ((i5 & 3072) == 0) {
            i8 = i2;
            i7 |= gapComposerH.d(i8) ? 2048 : 1024;
        } else {
            i8 = i2;
        }
        if ((i5 & 24576) == 0) {
            i9 = i3;
            i7 |= gapComposerH.d(i9) ? 16384 : 8192;
        } else {
            i9 = i3;
        }
        int i13 = i7 | ImageMetadata.EDGE_MODE;
        if ((i5 & 1572864) == 0) {
            textStyle2 = textStyle;
            i13 |= gapComposerH.K(textStyle2) ? 1048576 : 524288;
        } else {
            textStyle2 = textStyle;
        }
        int i14 = i6 & 128;
        if (i14 == 0) {
            if ((12582912 & i5) == 0) {
                textAlign2 = textAlign;
                i13 |= gapComposerH.K(textAlign2) ? 8388608 : 4194304;
            }
            if ((4793491 & i13) != 4793490) {
                z = true;
            } else {
                z = false;
            }
            if (gapComposerH.p(i13 & 1, z)) {
                gapComposerH.y0();
                if ((i5 & 1) == 0 && !gapComposerH.h0()) {
                    gapComposerH.D();
                    i11 = i4;
                    textAlign4 = textAlign2;
                } else if (i14 != 0) {
                    i11 = 1;
                    textAlign4 = null;
                } else {
                    textAlign4 = textAlign2;
                    i11 = 1;
                }
                gapComposerH.a0();
                OpaqueKey opaqueKey = ComposerKt.f7940a;
                gapComposerH.L(697313006);
                if (j2 != 16) {
                    jB = j2;
                } else {
                    gapComposerH.L(697313779);
                    jB = textStyle2.b();
                    if (jB == 16) {
                        jB = ((Color) gapComposerH.k(ContentColorKt.f6730a)).f8872a;
                    }
                    gapComposerH.Z(false);
                }
                gapComposerH.Z(false);
                objX = gapComposerH.x();
                composer$Companion$Empty$1 = Composer.Companion.f7939a;
                if (objX == composer$Companion$Empty$1) {
                    objX = SnapshotStateKt.g(null);
                    gapComposerH.q(objX);
                }
                mutableState = (MutableState) objX;
                int i15 = i13;
                if (textAlign4 != null) {
                    i12 = textAlign4.f10964a;
                } else {
                    TextAlign.f10959b.getClass();
                    i12 = 0;
                }
                TextAlign textAlign5 = textAlign4;
                TextStyle textStyleE = TextStyle.e(textStyle2, jB, 0L, null, 0L, null, i12, 0L, 16744446);
                objX2 = gapComposerH.x();
                if (objX2 == composer$Companion$Empty$1) {
                    objX2 = new lc(3, mutableState);
                    gapComposerH.q(objX2);
                }
                Modifier modifierA = LayoutModifierKt.a(modifier2, (Function3) objX2);
                objX3 = gapComposerH.x();
                if (objX3 == composer$Companion$Empty$1) {
                    objX3 = new c30(29, mutableState);
                    gapComposerH.q(objX3);
                }
                gapComposer = gapComposerH;
                TextKt.c(str, modifierA, 0L, 0L, null, 0L, null, null, 0L, i8, false, i9, i11, (Function1) objX3, textStyleE, gapComposer, i15 & 14, ((i15 >> 3) & 896) | 1572864 | (i15 & 57344) | (i15 & ImageMetadata.JPEG_GPS_COORDINATES), 12284);
                textAlign3 = textAlign5;
                i10 = i11;
            } else {
                gapComposer = gapComposerH;
                gapComposer.D();
                i10 = i4;
                textAlign3 = textAlign2;
            }
            recomposeScopeImplB0 = gapComposer.b0();
            if (recomposeScopeImplB0 != null) {
                recomposeScopeImplB0.d = new Function2() { // from class: et0
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        ((Integer) obj2).getClass();
                        ResizableTextKt.a(str, modifier2, j2, i2, i3, i10, textStyle, textAlign3, (Composer) obj, RecomposeScopeImplKt.a(i5 | 1), i6);
                        return Unit.f71739a;
                    }
                };
            }
        }
        i13 |= 12582912;
        textAlign2 = textAlign;
        if ((4793491 & i13) != 4793490) {
            z = true;
        } else {
            z = false;
        }
        if (gapComposerH.p(i13 & 1, z)) {
            gapComposerH.y0();
            if ((i5 & 1) == 0) {
                if (i14 != 0) {
                    i11 = 1;
                    textAlign4 = null;
                } else {
                    textAlign4 = textAlign2;
                    i11 = 1;
                }
            } else if (i14 != 0) {
                i11 = 1;
                textAlign4 = null;
            } else {
                textAlign4 = textAlign2;
                i11 = 1;
            }
            gapComposerH.a0();
            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
            gapComposerH.L(697313006);
            if (j2 != 16) {
                jB = j2;
            } else {
                gapComposerH.L(697313779);
                jB = textStyle2.b();
                if (jB == 16) {
                    jB = ((Color) gapComposerH.k(ContentColorKt.f6730a)).f8872a;
                }
                gapComposerH.Z(false);
            }
            gapComposerH.Z(false);
            objX = gapComposerH.x();
            composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = SnapshotStateKt.g(null);
                gapComposerH.q(objX);
            }
            mutableState = (MutableState) objX;
            int i16 = i13;
            if (textAlign4 != null) {
                i12 = textAlign4.f10964a;
            } else {
                TextAlign.f10959b.getClass();
                i12 = 0;
            }
            TextAlign textAlign6 = textAlign4;
            TextStyle textStyleE2 = TextStyle.e(textStyle2, jB, 0L, null, 0L, null, i12, 0L, 16744446);
            objX2 = gapComposerH.x();
            if (objX2 == composer$Companion$Empty$1) {
                objX2 = new lc(3, mutableState);
                gapComposerH.q(objX2);
            }
            Modifier modifierA2 = LayoutModifierKt.a(modifier2, (Function3) objX2);
            objX3 = gapComposerH.x();
            if (objX3 == composer$Companion$Empty$1) {
                objX3 = new c30(29, mutableState);
                gapComposerH.q(objX3);
            }
            gapComposer = gapComposerH;
            TextKt.c(str, modifierA2, 0L, 0L, null, 0L, null, null, 0L, i8, false, i9, i11, (Function1) objX3, textStyleE2, gapComposer, i16 & 14, ((i16 >> 3) & 896) | 1572864 | (i16 & 57344) | (i16 & ImageMetadata.JPEG_GPS_COORDINATES), 12284);
            textAlign3 = textAlign6;
            i10 = i11;
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
            i10 = i4;
            textAlign3 = textAlign2;
        }
        recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new Function2() { // from class: et0
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    ResizableTextKt.a(str, modifier2, j2, i2, i3, i10, textStyle, textAlign3, (Composer) obj, RecomposeScopeImplKt.a(i5 | 1), i6);
                    return Unit.f71739a;
                }
            };
        }
    }
}
