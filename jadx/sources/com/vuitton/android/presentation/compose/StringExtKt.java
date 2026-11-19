package com.vuitton.android.presentation.compose;

import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.Shadow;
import androidx.compose.ui.graphics.drawscope.DrawStyle;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.LinkAnnotation;
import androidx.compose.ui.text.PlatformSpanStyle;
import androidx.compose.ui.text.SpanStyle;
import androidx.compose.ui.text.TextLinkStyles;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontSynthesis;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.intl.LocaleList;
import androidx.compose.ui.text.style.BaselineShift;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.text.style.TextGeometricTransform;
import com.vuitton.foundation.logger.LegacyLogger;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.text.MatchResult;
import kotlin.text.Regex;
import kotlin.text.StringsKt;
import net.rtccloud.sdk.internal.Constants;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class StringExtKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Regex f50931a = new Regex("\\[([^]]+)]\\((tel:[^)\\s]+)\\)|\\*\\*(.*?)\\*\\*|\\*(.*?)\\*");

    public static final Color a(String str) {
        Object failure;
        str.getClass();
        try {
            Result.Companion companion = Result.INSTANCE;
            failure = new Color(ColorKt.b(android.graphics.Color.parseColor(StringsKt.P(str, "#", false) ? str : "#".concat(str))));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            failure = new Result.Failure(th);
        }
        if (Result.a(failure) != null) {
            failure = null;
            LegacyLogger.f66205a.c("InvalidColor", fc.h("'", str, "' is not a color."), null);
        }
        return (Color) failure;
    }

    public static final AnnotatedString b(String str) {
        str.getClass();
        int i2 = 0;
        AnnotatedString.Builder builder = new AnnotatedString.Builder(0, 1, null);
        for (MatchResult matchResult : Regex.c(f50931a, str)) {
            builder.e(str.substring(i2, matchResult.d().f71951b));
            String str2 = (String) matchResult.c().get(1);
            String str3 = (String) matchResult.c().get(2);
            String str4 = (String) matchResult.c().get(3);
            String str5 = (String) matchResult.c().get(4);
            if (str3.length() > 0) {
                TextDecoration.f10965b.getClass();
                int iG = builder.g(new LinkAnnotation.Url(str3, new TextLinkStyles(new SpanStyle(0L, 0L, (FontWeight) null, (FontStyle) null, (FontSynthesis) null, (FontFamily) null, (String) null, 0L, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, TextDecoration.d, (Shadow) null, (PlatformSpanStyle) null, (DrawStyle) null, 61439, (DefaultConstructorMarker) null), null, null, null, 14, null), null, 4, null));
                try {
                    builder.e(str2);
                    builder.f(iG);
                } catch (Throwable th) {
                    builder.f(iG);
                    throw th;
                }
            } else if (str4.length() > 0) {
                FontWeight.f10727c.getClass();
                int iH = builder.h(new SpanStyle(0L, 0L, FontWeight.f10733k, (FontStyle) null, (FontSynthesis) null, (FontFamily) null, (String) null, 0L, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, (TextDecoration) null, (Shadow) null, (PlatformSpanStyle) null, (DrawStyle) null, Constants.CallType.SIX_DIGITS, (DefaultConstructorMarker) null));
                try {
                    builder.e(str4);
                    builder.f(iH);
                } catch (Throwable th2) {
                    builder.f(iH);
                    throw th2;
                }
            } else if (str5.length() > 0) {
                FontStyle.f10715b.getClass();
                int iH2 = builder.h(new SpanStyle(0L, 0L, (FontWeight) null, new FontStyle(FontStyle.f10716c), (FontSynthesis) null, (FontFamily) null, (String) null, 0L, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, (TextDecoration) null, (Shadow) null, (PlatformSpanStyle) null, (DrawStyle) null, 65527, (DefaultConstructorMarker) null));
                try {
                    builder.e(str5);
                    builder.f(iH2);
                } catch (Throwable th3) {
                    builder.f(iH2);
                    throw th3;
                }
            } else {
                continue;
            }
            i2 = matchResult.d().f71952c + 1;
        }
        if (i2 < str.length()) {
            builder.e(str.substring(i2));
        }
        return builder.i();
    }
}
