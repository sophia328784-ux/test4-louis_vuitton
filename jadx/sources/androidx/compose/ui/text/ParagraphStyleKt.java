package androidx.compose.ui.text;

import androidx.compose.ui.text.style.Hyphens;
import androidx.compose.ui.text.style.LineBreak;
import androidx.compose.ui.text.style.LineHeightStyle;
import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.text.style.TextDirection;
import androidx.compose.ui.text.style.TextIndent;
import androidx.compose.ui.text.style.TextMotion;
import androidx.compose.ui.unit.TextUnit;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"ui-text"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class ParagraphStyleKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final long f10486a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ int f10487b = 0;

    static {
        TextUnit.f11023b.getClass();
        f10486a = TextUnit.d;
    }

    /* JADX WARN: Code duplicated, block: B:45:0x0094  */
    /* JADX WARN: Code duplicated, block: B:48:0x0099  */
    /* JADX WARN: Code duplicated, block: B:49:0x009e  */
    /* JADX WARN: Code duplicated, block: B:52:0x00a5  */
    /* JADX WARN: Code duplicated, block: B:55:0x00af  */
    /* JADX WARN: Code duplicated, block: B:56:0x00b3  */
    /* JADX WARN: Code duplicated, block: B:59:0x00b8  */
    /* JADX WARN: Code duplicated, block: B:63:0x00c1  */
    /* JADX WARN: Code duplicated, block: B:64:0x00c6  */
    /* JADX WARN: Code duplicated, block: B:67:0x00cf  */
    /* JADX WARN: Code duplicated, block: B:68:0x00d4  */
    /* JADX WARN: Code duplicated, block: B:71:0x00dd  */
    /* JADX WARN: Code duplicated, block: B:72:0x00e2  */
    /* JADX WARN: Code duplicated, block: B:74:0x00e6  */
    /* JADX WARN: Code duplicated, block: B:75:0x00eb  */
    public static final ParagraphStyle a(ParagraphStyle paragraphStyle, int i2, int i3, long j2, TextIndent textIndent, PlatformParagraphStyle platformParagraphStyle, LineHeightStyle lineHeightStyle, int i4, int i5, TextMotion textMotion) {
        long j3;
        TextIndent textIndent2;
        int i6;
        PlatformParagraphStyle platformParagraphStyle2;
        PlatformParagraphStyle platformParagraphStyle3;
        LineHeightStyle lineHeightStyle2;
        int i7;
        int i8;
        TextMotion textMotion2;
        int i9 = i2;
        long j4 = j2;
        TextAlign.Companion companion = TextAlign.f10959b;
        companion.getClass();
        if (i9 != 0) {
            j3 = 0;
            if (i9 == paragraphStyle.f10479a) {
            }
            TextUnit.Companion companion2 = TextUnit.f11023b;
            if ((j4 & 1095216660480L) == j3) {
                j4 = paragraphStyle.f10481c;
            }
            long j5 = j4;
            if (textIndent == null) {
                textIndent2 = paragraphStyle.d;
            } else {
                textIndent2 = textIndent;
            }
            companion.getClass();
            if (i9 == 0) {
                i9 = paragraphStyle.f10479a;
            }
            int i10 = i9;
            TextDirection.f10969b.getClass();
            if (i3 == 0) {
                i6 = paragraphStyle.f10480b;
            } else {
                i6 = i3;
            }
            platformParagraphStyle2 = paragraphStyle.f10482e;
            if (platformParagraphStyle2 == null && platformParagraphStyle == null) {
                platformParagraphStyle3 = platformParagraphStyle2;
            } else {
                platformParagraphStyle3 = platformParagraphStyle;
            }
            if (lineHeightStyle == null) {
                lineHeightStyle2 = paragraphStyle.f10483f;
            } else {
                lineHeightStyle2 = lineHeightStyle;
            }
            LineBreak.f10931b.getClass();
            if (i4 == 0) {
                i7 = paragraphStyle.g;
            } else {
                i7 = i4;
            }
            Hyphens.f10928b.getClass();
            if (i5 == 0) {
                i8 = paragraphStyle.f10484h;
            } else {
                i8 = i5;
            }
            if (textMotion == null) {
                textMotion2 = paragraphStyle.f10485i;
            } else {
                textMotion2 = textMotion;
            }
            return new ParagraphStyle(i10, i6, j5, textIndent2, platformParagraphStyle3, lineHeightStyle2, i7, i8, textMotion2, (DefaultConstructorMarker) null);
        }
        j3 = 0;
        TextUnit.Companion companion3 = TextUnit.f11023b;
        if ((((j4 & 1095216660480L) == j3) || TextUnit.a(j4, paragraphStyle.f10481c)) && (textIndent == null || textIndent.equals(paragraphStyle.d))) {
            TextDirection.f10969b.getClass();
            if ((i3 == 0 || i3 == paragraphStyle.f10480b) && ((platformParagraphStyle == null || platformParagraphStyle.equals(paragraphStyle.f10482e)) && (lineHeightStyle == null || lineHeightStyle.equals(paragraphStyle.f10483f)))) {
                LineBreak.f10931b.getClass();
                if (i4 == 0 || i4 == paragraphStyle.g) {
                    Hyphens.f10928b.getClass();
                    if ((i5 == 0 || i5 == paragraphStyle.f10484h) && (textMotion == null || textMotion.equals(paragraphStyle.f10485i))) {
                        return paragraphStyle;
                    }
                }
            }
        }
        TextUnit.Companion companion4 = TextUnit.f11023b;
        if ((j4 & 1095216660480L) == j3) {
            j4 = paragraphStyle.f10481c;
        }
        long j6 = j4;
        if (textIndent == null) {
            textIndent2 = paragraphStyle.d;
        } else {
            textIndent2 = textIndent;
        }
        companion.getClass();
        if (i9 == 0) {
            i9 = paragraphStyle.f10479a;
        }
        int i11 = i9;
        TextDirection.f10969b.getClass();
        if (i3 == 0) {
            i6 = paragraphStyle.f10480b;
        } else {
            i6 = i3;
        }
        platformParagraphStyle2 = paragraphStyle.f10482e;
        if (platformParagraphStyle2 == null) {
            platformParagraphStyle3 = platformParagraphStyle;
        } else {
            platformParagraphStyle3 = platformParagraphStyle2;
        }
        if (lineHeightStyle == null) {
            lineHeightStyle2 = paragraphStyle.f10483f;
        } else {
            lineHeightStyle2 = lineHeightStyle;
        }
        LineBreak.f10931b.getClass();
        if (i4 == 0) {
            i7 = paragraphStyle.g;
        } else {
            i7 = i4;
        }
        Hyphens.f10928b.getClass();
        if (i5 == 0) {
            i8 = paragraphStyle.f10484h;
        } else {
            i8 = i5;
        }
        if (textMotion == null) {
            textMotion2 = paragraphStyle.f10485i;
        } else {
            textMotion2 = textMotion;
        }
        return new ParagraphStyle(i11, i6, j6, textIndent2, platformParagraphStyle3, lineHeightStyle2, i7, i8, textMotion2, (DefaultConstructorMarker) null);
    }
}
