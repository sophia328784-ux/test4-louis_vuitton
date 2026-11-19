package com.vuitton.android.presentation.compose.theme;

import androidx.compose.ui.graphics.Shadow;
import androidx.compose.ui.graphics.drawscope.DrawStyle;
import androidx.compose.ui.text.PlatformTextStyle;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontListFontFamily;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontSynthesis;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.intl.LocaleList;
import androidx.compose.ui.text.style.BaselineShift;
import androidx.compose.ui.text.style.LineHeightStyle;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.text.style.TextGeometricTransform;
import androidx.compose.ui.text.style.TextIndent;
import androidx.compose.ui.text.style.TextMotion;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/compose/theme/LVImmersiveArticleTextStyle;", "", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class LVImmersiveArticleTextStyle {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final TextStyle f51088a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final TextStyle f51089b;

    static {
        FontListFontFamily fontListFontFamily = LVFontFamily.f51087b;
        FontWeight.f10727c.getClass();
        FontWeight fontWeight = FontWeight.f10733k;
        long j2 = DimenKt.f51083b;
        long j3 = DimenKt.d;
        long j4 = DimenKt.f51085e;
        f51088a = new TextStyle(0L, j2, fontWeight, (FontStyle) null, (FontSynthesis) null, fontListFontFamily, (String) null, j4, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, (TextDecoration) null, (Shadow) null, (DrawStyle) null, 0, 0, j3, (TextIndent) null, (PlatformTextStyle) null, (LineHeightStyle) null, 0, 0, (TextMotion) null, 16645977, (DefaultConstructorMarker) null);
        FontListFontFamily fontListFontFamily2 = LVFontFamily.f51086a;
        f51089b = new TextStyle(0L, DimenKt.f51082a, FontWeight.f10730h, (FontStyle) null, (FontSynthesis) null, fontListFontFamily2, (String) null, j4, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, (TextDecoration) null, (Shadow) null, (DrawStyle) null, 0, 0, DimenKt.f51084c, (TextIndent) null, (PlatformTextStyle) null, (LineHeightStyle) null, 0, 0, (TextMotion) null, 16645977, (DefaultConstructorMarker) null);
    }
}
