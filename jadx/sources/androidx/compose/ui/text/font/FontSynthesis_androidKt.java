package androidx.compose.ui.text.font;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"ui-text"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class FontSynthesis_androidKt {
    /* JADX WARN: Code duplicated, block: B:14:0x0034  */
    /* JADX WARN: Code duplicated, block: B:21:0x0044  */
    /* JADX WARN: Code duplicated, block: B:31:0x0060  */
    public static final Object a(int i2, Object obj, Font font, FontWeight fontWeight, int i3) {
        boolean z;
        boolean z2;
        if (!(obj instanceof android.graphics.Typeface)) {
            return obj;
        }
        FontSynthesis.Companion companion = FontSynthesis.f10718b;
        boolean z3 = false;
        if ((i2 & 1) == 0 || Intrinsics.c(font.b(), fontWeight)) {
            z = false;
        } else {
            FontWeight.f10727c.getClass();
            FontWeight fontWeight2 = FontWeight.f10729f;
            if (fontWeight.compareTo(fontWeight2) < 0 || Intrinsics.d(font.b().f10734b, fontWeight2.f10734b) >= 0) {
                z = false;
            } else {
                z = true;
            }
        }
        if ((i2 & 2) != 0) {
            int iC = font.c();
            FontStyle.Companion companion2 = FontStyle.f10715b;
            if (i3 == iC) {
                z2 = false;
            } else {
                z2 = true;
            }
        } else {
            z2 = false;
        }
        if (!z2 && !z) {
            return obj;
        }
        int i4 = z ? fontWeight.f10734b : font.b().f10734b;
        if (z2) {
            FontStyle.f10715b.getClass();
            if (i3 == FontStyle.f10716c) {
                z3 = true;
            }
        } else {
            int iC2 = font.c();
            FontStyle.f10715b.getClass();
            if (iC2 == FontStyle.f10716c) {
                z3 = true;
            }
        }
        return android.graphics.Typeface.create((android.graphics.Typeface) obj, i4, z3);
    }
}
