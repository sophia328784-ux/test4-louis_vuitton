package com.sightcall.graphik;

import androidx.compose.material3.Typography;
import androidx.compose.ui.graphics.Shadow;
import androidx.compose.ui.graphics.drawscope.DrawStyle;
import androidx.compose.ui.text.PlatformTextStyle;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontSynthesis;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.font.GenericFontFamily;
import androidx.compose.ui.text.intl.LocaleList;
import androidx.compose.ui.text.style.BaselineShift;
import androidx.compose.ui.text.style.LineHeightStyle;
import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.text.style.TextGeometricTransform;
import androidx.compose.ui.text.style.TextIndent;
import androidx.compose.ui.text.style.TextMotion;
import androidx.compose.ui.unit.TextUnitKt;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\"\u0011\u0010\u0000\u001a\u00020\u0001¢\u0006\b\n\u0000\u001a\u0004\b\u0002\u0010\u0003\"\u0015\u0010\u0004\u001a\u00020\u0005*\u00020\u00018F¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"VisionTypography", "Landroidx/compose/material3/Typography;", "getVisionTypography", "()Landroidx/compose/material3/Typography;", "textButtonStyle", "Landroidx/compose/ui/text/TextStyle;", "getTextButtonStyle", "(Landroidx/compose/material3/Typography;)Landroidx/compose/ui/text/TextStyle;", "graphik_release"}, k = 2, mv = {2, 3, 0}, xi = 48)
public final class VisionTypographyKt {
    private static final Typography VisionTypography;

    static {
        long jC = TextUnitKt.c(28);
        FontFamily.Companion companion = FontFamily.f10695b;
        companion.getClass();
        GenericFontFamily genericFontFamily = FontFamily.d;
        FontWeight.f10727c.getClass();
        TextStyle textStyle = new TextStyle(0L, jC, FontWeight.f10732j, (FontStyle) null, (FontSynthesis) null, genericFontFamily, (String) null, 0L, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, (TextDecoration) null, (Shadow) null, (DrawStyle) null, 0, 0, TextUnitKt.c(38), (TextIndent) null, (PlatformTextStyle) null, (LineHeightStyle) null, 0, 0, (TextMotion) null, 16646105, (DefaultConstructorMarker) null);
        companion.getClass();
        long jC2 = TextUnitKt.c(16);
        long jC3 = TextUnitKt.c(20);
        TextAlign.f10959b.getClass();
        VisionTypography = new Typography(null, null, null, null, null, null, textStyle, null, null, null, new TextStyle(0L, jC2, (FontWeight) null, (FontStyle) null, (FontSynthesis) null, genericFontFamily, (String) null, 0L, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, (TextDecoration) null, (Shadow) null, (DrawStyle) null, TextAlign.g, 0, jC3, (TextIndent) null, (PlatformTextStyle) null, (LineHeightStyle) null, 0, 0, (TextMotion) null, 16613341, (DefaultConstructorMarker) null), null, null, null, null, 31679, null);
    }

    public static final TextStyle getTextButtonStyle(Typography typography) {
        typography.getClass();
        FontFamily.f10695b.getClass();
        GenericFontFamily genericFontFamily = FontFamily.d;
        long jC = TextUnitKt.c(14);
        FontWeight.f10727c.getClass();
        return new TextStyle(0L, jC, FontWeight.f10732j, (FontStyle) null, (FontSynthesis) null, genericFontFamily, (String) null, 0L, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, (TextDecoration) null, (Shadow) null, (DrawStyle) null, 0, 0, 0L, (TextIndent) null, (PlatformTextStyle) null, (LineHeightStyle) null, 0, 0, (TextMotion) null, 16777177, (DefaultConstructorMarker) null);
    }

    public static final Typography getVisionTypography() {
        return VisionTypography;
    }
}
