package androidx.compose.ui.text;

import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.Shadow;
import androidx.compose.ui.graphics.drawscope.DrawStyle;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontSynthesis;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.intl.LocaleList;
import androidx.compose.ui.text.style.BaselineShift;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.text.style.TextForegroundStyle;
import androidx.compose.ui.text.style.TextGeometricTransform;
import androidx.compose.ui.unit.InlineClassHelperKt;
import androidx.compose.ui.unit.TextUnit;
import androidx.compose.ui.unit.TextUnitKt;
import androidx.compose.ui.unit.TextUnitType;
import androidx.compose.ui.util.MathHelpersKt;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"ui-text"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class SpanStyleKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final long f10531a = TextUnitKt.c(14);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final long f10532b = TextUnitKt.c(0);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final long f10533c;
    public static final TextForegroundStyle d;

    static {
        Color.f8866b.getClass();
        f10533c = Color.f8870h;
        d = TextForegroundStyle.Companion.b(Color.f8867c);
    }

    /* JADX WARN: Code duplicated, block: B:100:0x014b  */
    /* JADX WARN: Code duplicated, block: B:103:0x0151  */
    /* JADX WARN: Code duplicated, block: B:104:0x0154  */
    /* JADX WARN: Code duplicated, block: B:106:0x0158  */
    /* JADX WARN: Code duplicated, block: B:109:0x015f  */
    /* JADX WARN: Code duplicated, block: B:110:0x0164  */
    /* JADX WARN: Code duplicated, block: B:112:0x016a  */
    /* JADX WARN: Code duplicated, block: B:114:0x016e  */
    /* JADX WARN: Code duplicated, block: B:117:0x0176  */
    /* JADX WARN: Code duplicated, block: B:119:0x0179  */
    /* JADX WARN: Code duplicated, block: B:120:0x017c  */
    /* JADX WARN: Code duplicated, block: B:80:0x0112  */
    /* JADX WARN: Code duplicated, block: B:81:0x0117  */
    /* JADX WARN: Code duplicated, block: B:84:0x0123  */
    /* JADX WARN: Code duplicated, block: B:86:0x0128  */
    /* JADX WARN: Code duplicated, block: B:87:0x012d  */
    /* JADX WARN: Code duplicated, block: B:89:0x0133  */
    /* JADX WARN: Code duplicated, block: B:91:0x0137  */
    /* JADX WARN: Code duplicated, block: B:93:0x013b  */
    /* JADX WARN: Code duplicated, block: B:95:0x013f  */
    /* JADX WARN: Code duplicated, block: B:98:0x0147  */
    public static final SpanStyle a(SpanStyle spanStyle, long j2, Brush brush, float f2, long j3, FontWeight fontWeight, FontStyle fontStyle, FontSynthesis fontSynthesis, FontFamily fontFamily, String str, long j4, BaselineShift baselineShift, TextGeometricTransform textGeometricTransform, LocaleList localeList, long j5, TextDecoration textDecoration, Shadow shadow, PlatformSpanStyle platformSpanStyle, DrawStyle drawStyle) {
        BaselineShift baselineShift2;
        LocaleList localeList2;
        Shadow shadow2;
        PlatformSpanStyle platformSpanStyle2;
        DrawStyle drawStyle2;
        TextForegroundStyle textForegroundStyleB;
        long j6;
        TextGeometricTransform textGeometricTransform2;
        long j7;
        PlatformSpanStyle platformSpanStyle3;
        DrawStyle drawStyle3;
        FontWeight fontWeight2 = fontWeight;
        FontStyle fontStyle2 = fontStyle;
        FontSynthesis fontSynthesis2 = fontSynthesis;
        FontFamily fontFamily2 = fontFamily;
        String str2 = str;
        long j8 = j4;
        TextDecoration textDecoration2 = textDecoration;
        TextUnit.Companion companion = TextUnit.f11023b;
        long j9 = j3 & 1095216660480L;
        if ((j9 == 0 || TextUnit.a(j3, spanStyle.fontSize)) && ((brush != null || j2 == 16 || Color.c(j2, spanStyle.f10522a.getF10927a())) && ((fontStyle2 == null || fontStyle2.equals(spanStyle.fontStyle)) && ((fontWeight2 == null || fontWeight2.equals(spanStyle.fontWeight)) && ((fontFamily2 == null || fontFamily2 == spanStyle.fontFamily) && (((j8 & 1095216660480L) == 0 || TextUnit.a(j8, spanStyle.letterSpacing)) && ((textDecoration2 == null || textDecoration2.equals(spanStyle.background)) && Intrinsics.c(brush, spanStyle.f10522a.e()) && ((brush == null || f2 == spanStyle.f10522a.getF10926b()) && ((fontSynthesis2 == null || fontSynthesis2.equals(spanStyle.fontSynthesis)) && (str2 == null || str2.equals(spanStyle.fontFeatureSettings))))))))))) {
            if (baselineShift != null) {
                baselineShift2 = baselineShift;
                if (baselineShift2.equals(spanStyle.baselineShift)) {
                }
                if (brush != null) {
                    textForegroundStyleB = TextForegroundStyle.Companion.a(brush, f2);
                } else {
                    textForegroundStyleB = TextForegroundStyle.Companion.b(j2);
                }
                TextForegroundStyle textForegroundStyleD = spanStyle.f10522a.d(textForegroundStyleB);
                if (fontFamily2 == null) {
                    fontFamily2 = spanStyle.fontFamily;
                }
                if (j9 == 0) {
                    j6 = spanStyle.fontSize;
                } else {
                    j6 = j3;
                }
                if (fontWeight2 == null) {
                    fontWeight2 = spanStyle.fontWeight;
                }
                if (fontStyle2 == null) {
                    fontStyle2 = spanStyle.fontStyle;
                }
                if (fontSynthesis2 == null) {
                    fontSynthesis2 = spanStyle.fontSynthesis;
                }
                if (str2 == null) {
                    str2 = spanStyle.fontFeatureSettings;
                }
                if ((j8 & 1095216660480L) == 0) {
                    j8 = spanStyle.letterSpacing;
                }
                if (baselineShift2 == null) {
                    baselineShift2 = spanStyle.baselineShift;
                }
                long j10 = j6;
                if (textGeometricTransform == null) {
                    textGeometricTransform2 = spanStyle.textGeometricTransform;
                } else {
                    textGeometricTransform2 = textGeometricTransform;
                }
                if (localeList2 == null) {
                    localeList2 = spanStyle.localeList;
                }
                if (j5 != 16) {
                    j7 = j5;
                } else {
                    j7 = spanStyle.l;
                }
                if (textDecoration2 == null) {
                    textDecoration2 = spanStyle.background;
                }
                if (shadow2 == null) {
                    shadow2 = spanStyle.shadow;
                }
                long j11 = j7;
                platformSpanStyle3 = spanStyle.platformStyle;
                if (platformSpanStyle3 == null) {
                    platformSpanStyle3 = platformSpanStyle2;
                }
                if (drawStyle2 == null) {
                    drawStyle3 = spanStyle.drawStyle;
                } else {
                    drawStyle3 = drawStyle2;
                }
                return new SpanStyle(textForegroundStyleD, j10, fontWeight2, fontStyle2, fontSynthesis2, fontFamily2, str2, j8, baselineShift2, textGeometricTransform2, localeList2, j11, textDecoration2, shadow2, platformSpanStyle3, drawStyle3, (DefaultConstructorMarker) null);
            }
            baselineShift2 = baselineShift;
            if (textGeometricTransform == null || textGeometricTransform.equals(spanStyle.textGeometricTransform)) {
                if (localeList != null) {
                    localeList2 = localeList;
                    if (localeList2.equals(spanStyle.localeList)) {
                    }
                    if (brush != null) {
                        textForegroundStyleB = TextForegroundStyle.Companion.a(brush, f2);
                    } else {
                        textForegroundStyleB = TextForegroundStyle.Companion.b(j2);
                    }
                    TextForegroundStyle textForegroundStyleD2 = spanStyle.f10522a.d(textForegroundStyleB);
                    if (fontFamily2 == null) {
                        fontFamily2 = spanStyle.fontFamily;
                    }
                    if (j9 == 0) {
                        j6 = spanStyle.fontSize;
                    } else {
                        j6 = j3;
                    }
                    if (fontWeight2 == null) {
                        fontWeight2 = spanStyle.fontWeight;
                    }
                    if (fontStyle2 == null) {
                        fontStyle2 = spanStyle.fontStyle;
                    }
                    if (fontSynthesis2 == null) {
                        fontSynthesis2 = spanStyle.fontSynthesis;
                    }
                    if (str2 == null) {
                        str2 = spanStyle.fontFeatureSettings;
                    }
                    if ((j8 & 1095216660480L) == 0) {
                        j8 = spanStyle.letterSpacing;
                    }
                    if (baselineShift2 == null) {
                        baselineShift2 = spanStyle.baselineShift;
                    }
                    long j12 = j6;
                    if (textGeometricTransform == null) {
                        textGeometricTransform2 = spanStyle.textGeometricTransform;
                    } else {
                        textGeometricTransform2 = textGeometricTransform;
                    }
                    if (localeList2 == null) {
                        localeList2 = spanStyle.localeList;
                    }
                    if (j5 != 16) {
                        j7 = j5;
                    } else {
                        j7 = spanStyle.l;
                    }
                    if (textDecoration2 == null) {
                        textDecoration2 = spanStyle.background;
                    }
                    if (shadow2 == null) {
                        shadow2 = spanStyle.shadow;
                    }
                    long j13 = j7;
                    platformSpanStyle3 = spanStyle.platformStyle;
                    if (platformSpanStyle3 == null) {
                        platformSpanStyle3 = platformSpanStyle2;
                    }
                    if (drawStyle2 == null) {
                        drawStyle3 = spanStyle.drawStyle;
                    } else {
                        drawStyle3 = drawStyle2;
                    }
                    return new SpanStyle(textForegroundStyleD2, j12, fontWeight2, fontStyle2, fontSynthesis2, fontFamily2, str2, j8, baselineShift2, textGeometricTransform2, localeList2, j13, textDecoration2, shadow2, platformSpanStyle3, drawStyle3, (DefaultConstructorMarker) null);
                }
                localeList2 = localeList;
                if (j5 == 16 || Color.c(j5, spanStyle.l)) {
                    shadow2 = shadow;
                    if (shadow2 == null || shadow2.equals(spanStyle.shadow)) {
                        platformSpanStyle2 = platformSpanStyle;
                        if (platformSpanStyle2 == null || platformSpanStyle2.equals(spanStyle.platformStyle)) {
                            drawStyle2 = drawStyle;
                            if (drawStyle2 == null || drawStyle2.equals(spanStyle.drawStyle)) {
                                return spanStyle;
                            }
                        }
                        if (brush != null) {
                            textForegroundStyleB = TextForegroundStyle.Companion.a(brush, f2);
                        } else {
                            textForegroundStyleB = TextForegroundStyle.Companion.b(j2);
                        }
                        TextForegroundStyle textForegroundStyleD3 = spanStyle.f10522a.d(textForegroundStyleB);
                        if (fontFamily2 == null) {
                            fontFamily2 = spanStyle.fontFamily;
                        }
                        if (j9 == 0) {
                            j6 = spanStyle.fontSize;
                        } else {
                            j6 = j3;
                        }
                        if (fontWeight2 == null) {
                            fontWeight2 = spanStyle.fontWeight;
                        }
                        if (fontStyle2 == null) {
                            fontStyle2 = spanStyle.fontStyle;
                        }
                        if (fontSynthesis2 == null) {
                            fontSynthesis2 = spanStyle.fontSynthesis;
                        }
                        if (str2 == null) {
                            str2 = spanStyle.fontFeatureSettings;
                        }
                        if ((j8 & 1095216660480L) == 0) {
                            j8 = spanStyle.letterSpacing;
                        }
                        if (baselineShift2 == null) {
                            baselineShift2 = spanStyle.baselineShift;
                        }
                        long j14 = j6;
                        if (textGeometricTransform == null) {
                            textGeometricTransform2 = spanStyle.textGeometricTransform;
                        } else {
                            textGeometricTransform2 = textGeometricTransform;
                        }
                        if (localeList2 == null) {
                            localeList2 = spanStyle.localeList;
                        }
                        if (j5 != 16) {
                            j7 = j5;
                        } else {
                            j7 = spanStyle.l;
                        }
                        if (textDecoration2 == null) {
                            textDecoration2 = spanStyle.background;
                        }
                        if (shadow2 == null) {
                            shadow2 = spanStyle.shadow;
                        }
                        long j15 = j7;
                        platformSpanStyle3 = spanStyle.platformStyle;
                        if (platformSpanStyle3 == null) {
                            platformSpanStyle3 = platformSpanStyle2;
                        }
                        if (drawStyle2 == null) {
                            drawStyle3 = spanStyle.drawStyle;
                        } else {
                            drawStyle3 = drawStyle2;
                        }
                        return new SpanStyle(textForegroundStyleD3, j14, fontWeight2, fontStyle2, fontSynthesis2, fontFamily2, str2, j8, baselineShift2, textGeometricTransform2, localeList2, j15, textDecoration2, shadow2, platformSpanStyle3, drawStyle3, (DefaultConstructorMarker) null);
                    }
                    drawStyle2 = drawStyle;
                    if (brush != null) {
                        textForegroundStyleB = TextForegroundStyle.Companion.a(brush, f2);
                    } else {
                        textForegroundStyleB = TextForegroundStyle.Companion.b(j2);
                    }
                    TextForegroundStyle textForegroundStyleD4 = spanStyle.f10522a.d(textForegroundStyleB);
                    if (fontFamily2 == null) {
                        fontFamily2 = spanStyle.fontFamily;
                    }
                    if (j9 == 0) {
                        j6 = spanStyle.fontSize;
                    } else {
                        j6 = j3;
                    }
                    if (fontWeight2 == null) {
                        fontWeight2 = spanStyle.fontWeight;
                    }
                    if (fontStyle2 == null) {
                        fontStyle2 = spanStyle.fontStyle;
                    }
                    if (fontSynthesis2 == null) {
                        fontSynthesis2 = spanStyle.fontSynthesis;
                    }
                    if (str2 == null) {
                        str2 = spanStyle.fontFeatureSettings;
                    }
                    if ((j8 & 1095216660480L) == 0) {
                        j8 = spanStyle.letterSpacing;
                    }
                    if (baselineShift2 == null) {
                        baselineShift2 = spanStyle.baselineShift;
                    }
                    long j16 = j6;
                    if (textGeometricTransform == null) {
                        textGeometricTransform2 = spanStyle.textGeometricTransform;
                    } else {
                        textGeometricTransform2 = textGeometricTransform;
                    }
                    if (localeList2 == null) {
                        localeList2 = spanStyle.localeList;
                    }
                    if (j5 != 16) {
                        j7 = j5;
                    } else {
                        j7 = spanStyle.l;
                    }
                    if (textDecoration2 == null) {
                        textDecoration2 = spanStyle.background;
                    }
                    if (shadow2 == null) {
                        shadow2 = spanStyle.shadow;
                    }
                    long j17 = j7;
                    platformSpanStyle3 = spanStyle.platformStyle;
                    if (platformSpanStyle3 == null) {
                        platformSpanStyle3 = platformSpanStyle2;
                    }
                    if (drawStyle2 == null) {
                        drawStyle3 = spanStyle.drawStyle;
                    } else {
                        drawStyle3 = drawStyle2;
                    }
                    return new SpanStyle(textForegroundStyleD4, j16, fontWeight2, fontStyle2, fontSynthesis2, fontFamily2, str2, j8, baselineShift2, textGeometricTransform2, localeList2, j17, textDecoration2, shadow2, platformSpanStyle3, drawStyle3, (DefaultConstructorMarker) null);
                }
                platformSpanStyle2 = platformSpanStyle;
                drawStyle2 = drawStyle;
                if (brush != null) {
                    textForegroundStyleB = TextForegroundStyle.Companion.a(brush, f2);
                } else {
                    textForegroundStyleB = TextForegroundStyle.Companion.b(j2);
                }
                TextForegroundStyle textForegroundStyleD5 = spanStyle.f10522a.d(textForegroundStyleB);
                if (fontFamily2 == null) {
                    fontFamily2 = spanStyle.fontFamily;
                }
                if (j9 == 0) {
                    j6 = spanStyle.fontSize;
                } else {
                    j6 = j3;
                }
                if (fontWeight2 == null) {
                    fontWeight2 = spanStyle.fontWeight;
                }
                if (fontStyle2 == null) {
                    fontStyle2 = spanStyle.fontStyle;
                }
                if (fontSynthesis2 == null) {
                    fontSynthesis2 = spanStyle.fontSynthesis;
                }
                if (str2 == null) {
                    str2 = spanStyle.fontFeatureSettings;
                }
                if ((j8 & 1095216660480L) == 0) {
                    j8 = spanStyle.letterSpacing;
                }
                if (baselineShift2 == null) {
                    baselineShift2 = spanStyle.baselineShift;
                }
                long j18 = j6;
                if (textGeometricTransform == null) {
                    textGeometricTransform2 = spanStyle.textGeometricTransform;
                } else {
                    textGeometricTransform2 = textGeometricTransform;
                }
                if (localeList2 == null) {
                    localeList2 = spanStyle.localeList;
                }
                if (j5 != 16) {
                    j7 = j5;
                } else {
                    j7 = spanStyle.l;
                }
                if (textDecoration2 == null) {
                    textDecoration2 = spanStyle.background;
                }
                if (shadow2 == null) {
                    shadow2 = spanStyle.shadow;
                }
                long j19 = j7;
                platformSpanStyle3 = spanStyle.platformStyle;
                if (platformSpanStyle3 == null) {
                    platformSpanStyle3 = platformSpanStyle2;
                }
                if (drawStyle2 == null) {
                    drawStyle3 = spanStyle.drawStyle;
                } else {
                    drawStyle3 = drawStyle2;
                }
                return new SpanStyle(textForegroundStyleD5, j18, fontWeight2, fontStyle2, fontSynthesis2, fontFamily2, str2, j8, baselineShift2, textGeometricTransform2, localeList2, j19, textDecoration2, shadow2, platformSpanStyle3, drawStyle3, (DefaultConstructorMarker) null);
            }
            shadow2 = shadow;
            platformSpanStyle2 = platformSpanStyle;
            drawStyle2 = drawStyle;
            if (brush != null) {
                textForegroundStyleB = TextForegroundStyle.Companion.a(brush, f2);
            } else {
                textForegroundStyleB = TextForegroundStyle.Companion.b(j2);
            }
            TextForegroundStyle textForegroundStyleD6 = spanStyle.f10522a.d(textForegroundStyleB);
            if (fontFamily2 == null) {
                fontFamily2 = spanStyle.fontFamily;
            }
            if (j9 == 0) {
                j6 = spanStyle.fontSize;
            } else {
                j6 = j3;
            }
            if (fontWeight2 == null) {
                fontWeight2 = spanStyle.fontWeight;
            }
            if (fontStyle2 == null) {
                fontStyle2 = spanStyle.fontStyle;
            }
            if (fontSynthesis2 == null) {
                fontSynthesis2 = spanStyle.fontSynthesis;
            }
            if (str2 == null) {
                str2 = spanStyle.fontFeatureSettings;
            }
            if ((j8 & 1095216660480L) == 0) {
                j8 = spanStyle.letterSpacing;
            }
            if (baselineShift2 == null) {
                baselineShift2 = spanStyle.baselineShift;
            }
            long j110 = j6;
            if (textGeometricTransform == null) {
                textGeometricTransform2 = spanStyle.textGeometricTransform;
            } else {
                textGeometricTransform2 = textGeometricTransform;
            }
            if (localeList2 == null) {
                localeList2 = spanStyle.localeList;
            }
            if (j5 != 16) {
                j7 = j5;
            } else {
                j7 = spanStyle.l;
            }
            if (textDecoration2 == null) {
                textDecoration2 = spanStyle.background;
            }
            if (shadow2 == null) {
                shadow2 = spanStyle.shadow;
            }
            long j111 = j7;
            platformSpanStyle3 = spanStyle.platformStyle;
            if (platformSpanStyle3 == null) {
                platformSpanStyle3 = platformSpanStyle2;
            }
            if (drawStyle2 == null) {
                drawStyle3 = spanStyle.drawStyle;
            } else {
                drawStyle3 = drawStyle2;
            }
            return new SpanStyle(textForegroundStyleD6, j110, fontWeight2, fontStyle2, fontSynthesis2, fontFamily2, str2, j8, baselineShift2, textGeometricTransform2, localeList2, j111, textDecoration2, shadow2, platformSpanStyle3, drawStyle3, (DefaultConstructorMarker) null);
        }
        baselineShift2 = baselineShift;
        localeList2 = localeList;
        shadow2 = shadow;
        platformSpanStyle2 = platformSpanStyle;
        drawStyle2 = drawStyle;
        if (brush != null) {
            textForegroundStyleB = TextForegroundStyle.Companion.a(brush, f2);
        } else {
            textForegroundStyleB = TextForegroundStyle.Companion.b(j2);
        }
        TextForegroundStyle textForegroundStyleD7 = spanStyle.f10522a.d(textForegroundStyleB);
        if (fontFamily2 == null) {
            fontFamily2 = spanStyle.fontFamily;
        }
        if (j9 == 0) {
            j6 = spanStyle.fontSize;
        } else {
            j6 = j3;
        }
        if (fontWeight2 == null) {
            fontWeight2 = spanStyle.fontWeight;
        }
        if (fontStyle2 == null) {
            fontStyle2 = spanStyle.fontStyle;
        }
        if (fontSynthesis2 == null) {
            fontSynthesis2 = spanStyle.fontSynthesis;
        }
        if (str2 == null) {
            str2 = spanStyle.fontFeatureSettings;
        }
        if ((j8 & 1095216660480L) == 0) {
            j8 = spanStyle.letterSpacing;
        }
        if (baselineShift2 == null) {
            baselineShift2 = spanStyle.baselineShift;
        }
        long j112 = j6;
        if (textGeometricTransform == null) {
            textGeometricTransform2 = spanStyle.textGeometricTransform;
        } else {
            textGeometricTransform2 = textGeometricTransform;
        }
        if (localeList2 == null) {
            localeList2 = spanStyle.localeList;
        }
        if (j5 != 16) {
            j7 = j5;
        } else {
            j7 = spanStyle.l;
        }
        if (textDecoration2 == null) {
            textDecoration2 = spanStyle.background;
        }
        if (shadow2 == null) {
            shadow2 = spanStyle.shadow;
        }
        long j113 = j7;
        platformSpanStyle3 = spanStyle.platformStyle;
        if (platformSpanStyle3 == null) {
            platformSpanStyle3 = platformSpanStyle2;
        }
        if (drawStyle2 == null) {
            drawStyle3 = spanStyle.drawStyle;
        } else {
            drawStyle3 = drawStyle2;
        }
        return new SpanStyle(textForegroundStyleD7, j112, fontWeight2, fontStyle2, fontSynthesis2, fontFamily2, str2, j8, baselineShift2, textGeometricTransform2, localeList2, j113, textDecoration2, shadow2, platformSpanStyle3, drawStyle3, (DefaultConstructorMarker) null);
    }

    public static final Object b(float f2, Object obj, Object obj2) {
        return ((double) f2) < 0.5d ? obj : obj2;
    }

    public static final long c(long j2, long j3, float f2) {
        TextUnit.Companion companion = TextUnit.f11023b;
        long j4 = j2 & 1095216660480L;
        if (j4 != 0) {
            long j5 = 1095216660480L & j3;
            if (j5 != 0) {
                if (j4 == 0 || j5 == 0) {
                    InlineClassHelperKt.a("Cannot perform operation for Unspecified type.");
                }
                if (!TextUnitType.a(TextUnit.b(j2), TextUnit.b(j3))) {
                    InlineClassHelperKt.a("Cannot perform operation for " + ((Object) TextUnitType.b(TextUnit.b(j2))) + " and " + ((Object) TextUnitType.b(TextUnit.b(j3))));
                }
                return TextUnitKt.d(MathHelpersKt.b(TextUnit.c(j2), TextUnit.c(j3), f2), j4);
            }
        }
        return ((TextUnit) b(f2, new TextUnit(j2), new TextUnit(j3))).f11025a;
    }
}
