package com.vuitton.android.designkit.ui.theme;

import androidx.compose.ui.graphics.Shadow;
import androidx.compose.ui.graphics.drawscope.DrawStyle;
import androidx.compose.ui.text.PlatformTextStyle;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontListFontFamily;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontSynthesis;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.intl.LocaleList;
import androidx.compose.ui.text.style.BaselineShift;
import androidx.compose.ui.text.style.LineHeightStyle;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.text.style.TextDirection;
import androidx.compose.ui.text.style.TextGeometricTransform;
import androidx.compose.ui.text.style.TextIndent;
import androidx.compose.ui.text.style.TextMotion;
import androidx.compose.ui.unit.TextUnitKt;
import defpackage.pq0;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0013\b\u0087\b\u0018\u00002\u00020\u0001B§\u0001\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0002\u0012\b\b\u0002\u0010\b\u001a\u00020\u0002\u0012\b\b\u0002\u0010\t\u001a\u00020\u0002\u0012\b\b\u0002\u0010\n\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u000b\u001a\u00020\u0002\u0012\b\b\u0002\u0010\f\u001a\u00020\u0002\u0012\b\b\u0002\u0010\r\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u000e\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u000f\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0010\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0011\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0012\u001a\u00020\u0002¢\u0006\u0004\b\u0013\u0010\u0014¨\u0006\u0015"}, d2 = {"Lcom/vuitton/android/designkit/ui/theme/LVTypography;", "", "Landroidx/compose/ui/text/TextStyle;", "coreTypography", "displayL", "displayM", "headingL", "headingM", "headingS", "bodyM", "bodyS", "labelMMedium", "labelMRegular", "labelSMedium", "labelSRegular", "labelXSRegular", "labelXXSRegular", "labelXSMedium", "overline", "<init>", "(Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;)V", "system"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class LVTypography {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final TextStyle f48422a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final TextStyle f48423b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final TextStyle f48424c;
    public final TextStyle d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final TextStyle f48425e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final TextStyle f48426f;
    public final TextStyle g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final TextStyle f48427h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final TextStyle f48428i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final TextStyle f48429j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final TextStyle f48430k;
    public final TextStyle l;
    public final TextStyle m;
    public final TextStyle n;
    public final TextStyle o;
    public final TextStyle p;

    public LVTypography(TextStyle textStyle, TextStyle textStyle2, TextStyle textStyle3, TextStyle textStyle4, TextStyle textStyle5, TextStyle textStyle6, TextStyle textStyle7, TextStyle textStyle8, TextStyle textStyle9, TextStyle textStyle10, TextStyle textStyle11, TextStyle textStyle12, TextStyle textStyle13, TextStyle textStyle14, TextStyle textStyle15, TextStyle textStyle16, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        TextStyle textStyle17;
        TextStyle textStyleD;
        TextStyle textStyleD2;
        TextStyle textStyleD3;
        TextStyle textStyleD4;
        TextStyle textStyleD5;
        TextStyle textStyleD6;
        TextStyle textStyleD7;
        TextStyle textStyleD8;
        TextStyle textStyleD9;
        TextStyle textStyleD10;
        TextStyle textStyleD11;
        TextStyle textStyleD12;
        TextStyle textStyleD13;
        TextStyle textStyleD14;
        if ((i2 & 1) != 0) {
            TextDirection.f10969b.getClass();
            textStyle17 = new TextStyle(0L, 0L, (FontWeight) null, (FontStyle) null, (FontSynthesis) null, (FontFamily) null, (String) null, 0L, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, (TextDecoration) null, (Shadow) null, (DrawStyle) null, 0, TextDirection.f10972f, 0L, (TextIndent) null, (PlatformTextStyle) null, (LineHeightStyle) null, 0, 0, (TextMotion) null, 16711679, (DefaultConstructorMarker) null);
        } else {
            textStyle17 = textStyle;
        }
        if ((i2 & 2) != 0) {
            FontListFontFamily fontListFontFamily = TypographyKt.f48438a;
            FontWeight.f10727c.getClass();
            textStyleD = textStyle17.d(new TextStyle(0L, TextUnitKt.c(64), FontWeight.f10730h, (FontStyle) null, (FontSynthesis) null, fontListFontFamily, (String) null, 0L, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, (TextDecoration) null, (Shadow) null, (DrawStyle) null, 0, 0, 0L, (TextIndent) null, (PlatformTextStyle) null, (LineHeightStyle) null, 0, 0, (TextMotion) null, 16777177, (DefaultConstructorMarker) null));
        } else {
            textStyleD = textStyle2;
        }
        if ((i2 & 4) != 0) {
            FontListFontFamily fontListFontFamily2 = TypographyKt.f48438a;
            FontWeight.f10727c.getClass();
            textStyleD2 = textStyle17.d(new TextStyle(0L, TextUnitKt.c(48), FontWeight.f10730h, (FontStyle) null, (FontSynthesis) null, fontListFontFamily2, (String) null, 0L, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, (TextDecoration) null, (Shadow) null, (DrawStyle) null, 0, 0, 0L, (TextIndent) null, (PlatformTextStyle) null, (LineHeightStyle) null, 0, 0, (TextMotion) null, 16777177, (DefaultConstructorMarker) null));
        } else {
            textStyleD2 = textStyle3;
        }
        if ((i2 & 8) != 0) {
            FontListFontFamily fontListFontFamily3 = TypographyKt.f48438a;
            FontWeight.f10727c.getClass();
            textStyleD3 = textStyle17.d(new TextStyle(0L, TextUnitKt.c(32), FontWeight.f10730h, (FontStyle) null, (FontSynthesis) null, fontListFontFamily3, (String) null, 0L, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, (TextDecoration) null, (Shadow) null, (DrawStyle) null, 0, 0, 0L, (TextIndent) null, (PlatformTextStyle) null, (LineHeightStyle) null, 0, 0, (TextMotion) null, 16777177, (DefaultConstructorMarker) null));
        } else {
            textStyleD3 = textStyle4;
        }
        if ((i2 & 16) != 0) {
            FontListFontFamily fontListFontFamily4 = TypographyKt.f48438a;
            FontWeight.f10727c.getClass();
            textStyleD4 = textStyle17.d(new TextStyle(0L, TextUnitKt.c(24), FontWeight.f10730h, (FontStyle) null, (FontSynthesis) null, fontListFontFamily4, (String) null, 0L, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, (TextDecoration) null, (Shadow) null, (DrawStyle) null, 0, 0, 0L, (TextIndent) null, (PlatformTextStyle) null, (LineHeightStyle) null, 0, 0, (TextMotion) null, 16777177, (DefaultConstructorMarker) null));
        } else {
            textStyleD4 = textStyle5;
        }
        if ((i2 & 32) != 0) {
            FontListFontFamily fontListFontFamily5 = TypographyKt.f48438a;
            FontWeight.f10727c.getClass();
            textStyleD5 = textStyle17.d(new TextStyle(0L, TextUnitKt.c(20), FontWeight.f10730h, (FontStyle) null, (FontSynthesis) null, fontListFontFamily5, (String) null, 0L, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, (TextDecoration) null, (Shadow) null, (DrawStyle) null, 0, 0, 0L, (TextIndent) null, (PlatformTextStyle) null, (LineHeightStyle) null, 0, 0, (TextMotion) null, 16777177, (DefaultConstructorMarker) null));
        } else {
            textStyleD5 = textStyle6;
        }
        if ((i2 & 64) != 0) {
            FontListFontFamily fontListFontFamily6 = TypographyKt.f48438a;
            FontWeight.f10727c.getClass();
            textStyleD6 = textStyle17.d(new TextStyle(0L, TextUnitKt.c(16), FontWeight.f10730h, (FontStyle) null, (FontSynthesis) null, fontListFontFamily6, (String) null, 0L, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, (TextDecoration) null, (Shadow) null, (DrawStyle) null, 0, 0, 0L, (TextIndent) null, (PlatformTextStyle) null, (LineHeightStyle) null, 0, 0, (TextMotion) null, 16777177, (DefaultConstructorMarker) null));
        } else {
            textStyleD6 = textStyle7;
        }
        if ((i2 & 128) != 0) {
            FontListFontFamily fontListFontFamily7 = TypographyKt.f48438a;
            FontWeight.f10727c.getClass();
            textStyleD7 = textStyle17.d(new TextStyle(0L, TextUnitKt.c(14), FontWeight.f10730h, (FontStyle) null, (FontSynthesis) null, fontListFontFamily7, (String) null, 0L, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, (TextDecoration) null, (Shadow) null, (DrawStyle) null, 0, 0, 0L, (TextIndent) null, (PlatformTextStyle) null, (LineHeightStyle) null, 0, 0, (TextMotion) null, 16777177, (DefaultConstructorMarker) null));
        } else {
            textStyleD7 = textStyle8;
        }
        if ((i2 & 256) != 0) {
            FontListFontFamily fontListFontFamily8 = TypographyKt.f48438a;
            FontWeight.f10727c.getClass();
            textStyleD8 = textStyle17.d(new TextStyle(0L, TextUnitKt.c(16), FontWeight.f10731i, (FontStyle) null, (FontSynthesis) null, fontListFontFamily8, (String) null, 0L, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, (TextDecoration) null, (Shadow) null, (DrawStyle) null, 0, 0, 0L, (TextIndent) null, (PlatformTextStyle) null, (LineHeightStyle) null, 0, 0, (TextMotion) null, 16777177, (DefaultConstructorMarker) null));
        } else {
            textStyleD8 = textStyle9;
        }
        if ((i2 & 512) != 0) {
            FontListFontFamily fontListFontFamily9 = TypographyKt.f48438a;
            FontWeight.f10727c.getClass();
            textStyleD9 = textStyle17.d(new TextStyle(0L, TextUnitKt.c(16), FontWeight.f10730h, (FontStyle) null, (FontSynthesis) null, fontListFontFamily9, (String) null, 0L, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, (TextDecoration) null, (Shadow) null, (DrawStyle) null, 0, 0, 0L, (TextIndent) null, (PlatformTextStyle) null, (LineHeightStyle) null, 0, 0, (TextMotion) null, 16777177, (DefaultConstructorMarker) null));
        } else {
            textStyleD9 = textStyle10;
        }
        if ((i2 & 1024) != 0) {
            FontListFontFamily fontListFontFamily10 = TypographyKt.f48438a;
            FontWeight.f10727c.getClass();
            textStyleD10 = textStyle17.d(new TextStyle(0L, TextUnitKt.c(14), FontWeight.f10731i, (FontStyle) null, (FontSynthesis) null, fontListFontFamily10, (String) null, 0L, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, (TextDecoration) null, (Shadow) null, (DrawStyle) null, 0, 0, 0L, (TextIndent) null, (PlatformTextStyle) null, (LineHeightStyle) null, 0, 0, (TextMotion) null, 16777177, (DefaultConstructorMarker) null));
        } else {
            textStyleD10 = textStyle11;
        }
        if ((i2 & 2048) != 0) {
            FontListFontFamily fontListFontFamily11 = TypographyKt.f48438a;
            FontWeight.f10727c.getClass();
            textStyleD11 = textStyle17.d(new TextStyle(0L, TextUnitKt.c(14), FontWeight.f10730h, (FontStyle) null, (FontSynthesis) null, fontListFontFamily11, (String) null, 0L, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, (TextDecoration) null, (Shadow) null, (DrawStyle) null, 0, 0, 0L, (TextIndent) null, (PlatformTextStyle) null, (LineHeightStyle) null, 0, 0, (TextMotion) null, 16777177, (DefaultConstructorMarker) null));
        } else {
            textStyleD11 = textStyle12;
        }
        if ((i2 & 4096) != 0) {
            FontListFontFamily fontListFontFamily12 = TypographyKt.f48438a;
            FontWeight.f10727c.getClass();
            textStyleD12 = textStyle17.d(new TextStyle(0L, TextUnitKt.c(12), FontWeight.f10730h, (FontStyle) null, (FontSynthesis) null, fontListFontFamily12, (String) null, 0L, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, (TextDecoration) null, (Shadow) null, (DrawStyle) null, 0, 0, 0L, (TextIndent) null, (PlatformTextStyle) null, (LineHeightStyle) null, 0, 0, (TextMotion) null, 16777177, (DefaultConstructorMarker) null));
        } else {
            textStyleD12 = textStyle13;
        }
        TextStyle textStyle18 = (i2 & 8192) != 0 ? textStyleD12 : textStyle14;
        if ((i2 & 16384) != 0) {
            FontListFontFamily fontListFontFamily13 = TypographyKt.f48438a;
            FontWeight.f10727c.getClass();
            textStyleD13 = textStyle17.d(new TextStyle(0L, TextUnitKt.c(12), FontWeight.f10731i, (FontStyle) null, (FontSynthesis) null, fontListFontFamily13, (String) null, 0L, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, (TextDecoration) null, (Shadow) null, (DrawStyle) null, 0, 0, 0L, (TextIndent) null, (PlatformTextStyle) null, (LineHeightStyle) null, 0, 0, (TextMotion) null, 16777177, (DefaultConstructorMarker) null));
        } else {
            textStyleD13 = textStyle15;
        }
        if ((i2 & 32768) != 0) {
            FontListFontFamily fontListFontFamily14 = TypographyKt.f48438a;
            FontWeight.f10727c.getClass();
            textStyleD14 = textStyle17.d(new TextStyle(0L, TextUnitKt.c(12), FontWeight.f10730h, (FontStyle) null, (FontSynthesis) null, fontListFontFamily14, (String) null, TextUnitKt.c(1), (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, (TextDecoration) null, (Shadow) null, (DrawStyle) null, 0, 0, 0L, (TextIndent) null, (PlatformTextStyle) null, (LineHeightStyle) null, 0, 0, (TextMotion) null, 16777049, (DefaultConstructorMarker) null));
        } else {
            textStyleD14 = textStyle16;
        }
        this(textStyle17, textStyleD, textStyleD2, textStyleD3, textStyleD4, textStyleD5, textStyleD6, textStyleD7, textStyleD8, textStyleD9, textStyleD10, textStyleD11, textStyleD12, textStyle18, textStyleD13, textStyleD14);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof LVTypography)) {
            return false;
        }
        LVTypography lVTypography = (LVTypography) obj;
        return Intrinsics.c(this.f48422a, lVTypography.f48422a) && Intrinsics.c(this.f48423b, lVTypography.f48423b) && Intrinsics.c(this.f48424c, lVTypography.f48424c) && Intrinsics.c(this.d, lVTypography.d) && Intrinsics.c(this.f48425e, lVTypography.f48425e) && Intrinsics.c(this.f48426f, lVTypography.f48426f) && Intrinsics.c(this.g, lVTypography.g) && Intrinsics.c(this.f48427h, lVTypography.f48427h) && Intrinsics.c(this.f48428i, lVTypography.f48428i) && Intrinsics.c(this.f48429j, lVTypography.f48429j) && Intrinsics.c(this.f48430k, lVTypography.f48430k) && Intrinsics.c(this.l, lVTypography.l) && Intrinsics.c(this.m, lVTypography.m) && Intrinsics.c(this.n, lVTypography.n) && Intrinsics.c(this.o, lVTypography.o) && Intrinsics.c(this.p, lVTypography.p);
    }

    public final int hashCode() {
        return this.p.hashCode() + pq0.e(this.o, pq0.e(this.n, pq0.e(this.m, pq0.e(this.l, pq0.e(this.f48430k, pq0.e(this.f48429j, pq0.e(this.f48428i, pq0.e(this.f48427h, pq0.e(this.g, pq0.e(this.f48426f, pq0.e(this.f48425e, pq0.e(this.d, pq0.e(this.f48424c, pq0.e(this.f48423b, this.f48422a.hashCode() * 31, 31), 31), 31), 31), 31), 31), 31), 31), 31), 31), 31), 31), 31), 31);
    }

    public final String toString() {
        return "LVTypography(coreTypography=" + this.f48422a + ", displayL=" + this.f48423b + ", displayM=" + this.f48424c + ", headingL=" + this.d + ", headingM=" + this.f48425e + ", headingS=" + this.f48426f + ", bodyM=" + this.g + ", bodyS=" + this.f48427h + ", labelMMedium=" + this.f48428i + ", labelMRegular=" + this.f48429j + ", labelSMedium=" + this.f48430k + ", labelSRegular=" + this.l + ", labelXSRegular=" + this.m + ", labelXXSRegular=" + this.n + ", labelXSMedium=" + this.o + ", overline=" + this.p + ")";
    }

    public LVTypography(TextStyle textStyle, TextStyle textStyle2, TextStyle textStyle3, TextStyle textStyle4, TextStyle textStyle5, TextStyle textStyle6, TextStyle textStyle7, TextStyle textStyle8, TextStyle textStyle9, TextStyle textStyle10, TextStyle textStyle11, TextStyle textStyle12, TextStyle textStyle13, TextStyle textStyle14, TextStyle textStyle15, TextStyle textStyle16) {
        textStyle.getClass();
        textStyle2.getClass();
        textStyle3.getClass();
        textStyle4.getClass();
        textStyle5.getClass();
        textStyle6.getClass();
        textStyle7.getClass();
        textStyle8.getClass();
        textStyle9.getClass();
        textStyle10.getClass();
        textStyle11.getClass();
        textStyle12.getClass();
        textStyle13.getClass();
        textStyle14.getClass();
        textStyle15.getClass();
        textStyle16.getClass();
        this.f48422a = textStyle;
        this.f48423b = textStyle2;
        this.f48424c = textStyle3;
        this.d = textStyle4;
        this.f48425e = textStyle5;
        this.f48426f = textStyle6;
        this.g = textStyle7;
        this.f48427h = textStyle8;
        this.f48428i = textStyle9;
        this.f48429j = textStyle10;
        this.f48430k = textStyle11;
        this.l = textStyle12;
        this.m = textStyle13;
        this.n = textStyle14;
        this.o = textStyle15;
        this.p = textStyle16;
    }

    public LVTypography() {
        this(null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 65535, null);
    }
}
