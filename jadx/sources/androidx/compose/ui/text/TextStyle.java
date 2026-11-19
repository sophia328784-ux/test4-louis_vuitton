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
import androidx.compose.ui.text.style.Hyphens;
import androidx.compose.ui.text.style.LineBreak;
import androidx.compose.ui.text.style.LineHeightStyle;
import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.text.style.TextDirection;
import androidx.compose.ui.text.style.TextForegroundStyle;
import androidx.compose.ui.text.style.TextGeometricTransform;
import androidx.compose.ui.text.style.TextIndent;
import androidx.compose.ui.text.style.TextMotion;
import androidx.compose.ui.unit.TextUnit;
import defpackage.o60;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000°\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u0001:\u0001AB%\b\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\b\u0010\tB\u0019\b\u0010\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\b\u0010\nB×\u0001\b\u0017\u0012\b\b\u0002\u0010\f\u001a\u00020\u000b\u0012\b\b\u0002\u0010\u000e\u001a\u00020\r\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u000f\u0012\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0011\u0012\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0013\u0012\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0015\u0012\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u0017\u0012\b\b\u0002\u0010\u0019\u001a\u00020\r\u0012\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u001a\u0012\n\b\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u001c\u0012\n\b\u0002\u0010\u001f\u001a\u0004\u0018\u00010\u001e\u0012\b\b\u0002\u0010 \u001a\u00020\u000b\u0012\n\b\u0002\u0010\"\u001a\u0004\u0018\u00010!\u0012\n\b\u0002\u0010$\u001a\u0004\u0018\u00010#\u0012\n\b\u0002\u0010&\u001a\u0004\u0018\u00010%\u0012\n\b\u0002\u0010(\u001a\u0004\u0018\u00010'\u0012\b\b\u0002\u0010)\u001a\u00020\r\u0012\n\b\u0002\u0010+\u001a\u0004\u0018\u00010*¢\u0006\u0004\b\b\u0010,Bï\u0001\b\u0017\u0012\b\b\u0002\u0010\f\u001a\u00020\u000b\u0012\b\b\u0002\u0010\u000e\u001a\u00020\r\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u000f\u0012\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0011\u0012\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0013\u0012\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0015\u0012\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u0017\u0012\b\b\u0002\u0010\u0019\u001a\u00020\r\u0012\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u001a\u0012\n\b\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u001c\u0012\n\b\u0002\u0010\u001f\u001a\u0004\u0018\u00010\u001e\u0012\b\b\u0002\u0010 \u001a\u00020\u000b\u0012\n\b\u0002\u0010\"\u001a\u0004\u0018\u00010!\u0012\n\b\u0002\u0010$\u001a\u0004\u0018\u00010#\u0012\n\b\u0002\u0010&\u001a\u0004\u0018\u00010%\u0012\n\b\u0002\u0010(\u001a\u0004\u0018\u00010'\u0012\b\b\u0002\u0010)\u001a\u00020\r\u0012\n\b\u0002\u0010+\u001a\u0004\u0018\u00010*\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010.\u001a\u0004\u0018\u00010-¢\u0006\u0004\b\b\u0010/B\u0087\u0002\b\u0017\u0012\b\b\u0002\u0010\f\u001a\u00020\u000b\u0012\b\b\u0002\u0010\u000e\u001a\u00020\r\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u000f\u0012\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0011\u0012\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0013\u0012\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0015\u0012\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u0017\u0012\b\b\u0002\u0010\u0019\u001a\u00020\r\u0012\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u001a\u0012\n\b\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u001c\u0012\n\b\u0002\u0010\u001f\u001a\u0004\u0018\u00010\u001e\u0012\b\b\u0002\u0010 \u001a\u00020\u000b\u0012\n\b\u0002\u0010\"\u001a\u0004\u0018\u00010!\u0012\n\b\u0002\u0010$\u001a\u0004\u0018\u00010#\u0012\n\b\u0002\u0010&\u001a\u0004\u0018\u00010%\u0012\n\b\u0002\u0010(\u001a\u0004\u0018\u00010'\u0012\b\b\u0002\u0010)\u001a\u00020\r\u0012\n\b\u0002\u0010+\u001a\u0004\u0018\u00010*\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010.\u001a\u0004\u0018\u00010-\u0012\n\b\u0002\u00101\u001a\u0004\u0018\u000100\u0012\n\b\u0002\u00103\u001a\u0004\u0018\u000102¢\u0006\u0004\b\b\u00104B\u009f\u0002\b\u0017\u0012\b\b\u0002\u0010\f\u001a\u00020\u000b\u0012\b\b\u0002\u0010\u000e\u001a\u00020\r\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u000f\u0012\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0011\u0012\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0013\u0012\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0015\u0012\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u0017\u0012\b\b\u0002\u0010\u0019\u001a\u00020\r\u0012\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u001a\u0012\n\b\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u001c\u0012\n\b\u0002\u0010\u001f\u001a\u0004\u0018\u00010\u001e\u0012\b\b\u0002\u0010 \u001a\u00020\u000b\u0012\n\b\u0002\u0010\"\u001a\u0004\u0018\u00010!\u0012\n\b\u0002\u0010$\u001a\u0004\u0018\u00010#\u0012\n\b\u0002\u00106\u001a\u0004\u0018\u000105\u0012\n\b\u0002\u0010&\u001a\u0004\u0018\u00010%\u0012\n\b\u0002\u0010(\u001a\u0004\u0018\u00010'\u0012\b\b\u0002\u0010)\u001a\u00020\r\u0012\n\b\u0002\u0010+\u001a\u0004\u0018\u00010*\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010.\u001a\u0004\u0018\u00010-\u0012\n\b\u0002\u00101\u001a\u0004\u0018\u000100\u0012\n\b\u0002\u00103\u001a\u0004\u0018\u000102\u0012\n\b\u0002\u00108\u001a\u0004\u0018\u000107¢\u0006\u0004\b\b\u00109B\u0097\u0002\b\u0016\u0012\b\b\u0002\u0010\f\u001a\u00020\u000b\u0012\b\b\u0002\u0010\u000e\u001a\u00020\r\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u000f\u0012\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0011\u0012\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0013\u0012\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0015\u0012\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u0017\u0012\b\b\u0002\u0010\u0019\u001a\u00020\r\u0012\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u001a\u0012\n\b\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u001c\u0012\n\b\u0002\u0010\u001f\u001a\u0004\u0018\u00010\u001e\u0012\b\b\u0002\u0010 \u001a\u00020\u000b\u0012\n\b\u0002\u0010\"\u001a\u0004\u0018\u00010!\u0012\n\b\u0002\u0010$\u001a\u0004\u0018\u00010#\u0012\n\b\u0002\u00106\u001a\u0004\u0018\u000105\u0012\b\b\u0002\u0010&\u001a\u00020%\u0012\b\b\u0002\u0010(\u001a\u00020'\u0012\b\b\u0002\u0010)\u001a\u00020\r\u0012\n\b\u0002\u0010+\u001a\u0004\u0018\u00010*\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010.\u001a\u0004\u0018\u00010-\u0012\b\b\u0002\u00101\u001a\u000200\u0012\b\b\u0002\u00103\u001a\u000202\u0012\n\b\u0002\u00108\u001a\u0004\u0018\u000107¢\u0006\u0004\b\b\u0010:B¡\u0002\b\u0016\u0012\b\u0010<\u001a\u0004\u0018\u00010;\u0012\b\b\u0002\u0010>\u001a\u00020=\u0012\b\b\u0002\u0010\u000e\u001a\u00020\r\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u000f\u0012\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0011\u0012\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0013\u0012\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0015\u0012\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u0017\u0012\b\b\u0002\u0010\u0019\u001a\u00020\r\u0012\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u001a\u0012\n\b\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u001c\u0012\n\b\u0002\u0010\u001f\u001a\u0004\u0018\u00010\u001e\u0012\b\b\u0002\u0010 \u001a\u00020\u000b\u0012\n\b\u0002\u0010\"\u001a\u0004\u0018\u00010!\u0012\n\b\u0002\u0010$\u001a\u0004\u0018\u00010#\u0012\n\b\u0002\u00106\u001a\u0004\u0018\u000105\u0012\b\b\u0002\u0010&\u001a\u00020%\u0012\b\b\u0002\u0010(\u001a\u00020'\u0012\b\b\u0002\u0010)\u001a\u00020\r\u0012\n\b\u0002\u0010+\u001a\u0004\u0018\u00010*\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010.\u001a\u0004\u0018\u00010-\u0012\b\b\u0002\u00101\u001a\u000200\u0012\b\b\u0002\u00103\u001a\u000202\u0012\n\b\u0002\u00108\u001a\u0004\u0018\u000107¢\u0006\u0004\b\b\u0010?B©\u0002\b\u0017\u0012\b\u0010<\u001a\u0004\u0018\u00010;\u0012\b\b\u0002\u0010>\u001a\u00020=\u0012\b\b\u0002\u0010\u000e\u001a\u00020\r\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u000f\u0012\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0011\u0012\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0013\u0012\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0015\u0012\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u0017\u0012\b\b\u0002\u0010\u0019\u001a\u00020\r\u0012\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u001a\u0012\n\b\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u001c\u0012\n\b\u0002\u0010\u001f\u001a\u0004\u0018\u00010\u001e\u0012\b\b\u0002\u0010 \u001a\u00020\u000b\u0012\n\b\u0002\u0010\"\u001a\u0004\u0018\u00010!\u0012\n\b\u0002\u0010$\u001a\u0004\u0018\u00010#\u0012\n\b\u0002\u00106\u001a\u0004\u0018\u000105\u0012\n\b\u0002\u0010&\u001a\u0004\u0018\u00010%\u0012\n\b\u0002\u0010(\u001a\u0004\u0018\u00010'\u0012\b\b\u0002\u0010)\u001a\u00020\r\u0012\n\b\u0002\u0010+\u001a\u0004\u0018\u00010*\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010.\u001a\u0004\u0018\u00010-\u0012\n\b\u0002\u00101\u001a\u0004\u0018\u000100\u0012\n\b\u0002\u00103\u001a\u0004\u0018\u000102\u0012\n\b\u0002\u00108\u001a\u0004\u0018\u000107¢\u0006\u0004\b\b\u0010@¨\u0006B"}, d2 = {"Landroidx/compose/ui/text/TextStyle;", "", "Landroidx/compose/ui/text/SpanStyle;", "spanStyle", "Landroidx/compose/ui/text/ParagraphStyle;", "paragraphStyle", "Landroidx/compose/ui/text/PlatformTextStyle;", "platformStyle", "<init>", "(Landroidx/compose/ui/text/SpanStyle;Landroidx/compose/ui/text/ParagraphStyle;Landroidx/compose/ui/text/PlatformTextStyle;)V", "(Landroidx/compose/ui/text/SpanStyle;Landroidx/compose/ui/text/ParagraphStyle;)V", "Landroidx/compose/ui/graphics/Color;", "color", "Landroidx/compose/ui/unit/TextUnit;", "fontSize", "Landroidx/compose/ui/text/font/FontWeight;", "fontWeight", "Landroidx/compose/ui/text/font/FontStyle;", "fontStyle", "Landroidx/compose/ui/text/font/FontSynthesis;", "fontSynthesis", "Landroidx/compose/ui/text/font/FontFamily;", "fontFamily", "", "fontFeatureSettings", "letterSpacing", "Landroidx/compose/ui/text/style/BaselineShift;", "baselineShift", "Landroidx/compose/ui/text/style/TextGeometricTransform;", "textGeometricTransform", "Landroidx/compose/ui/text/intl/LocaleList;", "localeList", "background", "Landroidx/compose/ui/text/style/TextDecoration;", "textDecoration", "Landroidx/compose/ui/graphics/Shadow;", "shadow", "Landroidx/compose/ui/text/style/TextAlign;", "textAlign", "Landroidx/compose/ui/text/style/TextDirection;", "textDirection", "lineHeight", "Landroidx/compose/ui/text/style/TextIndent;", "textIndent", "(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/text/style/TextAlign;Landroidx/compose/ui/text/style/TextDirection;JLandroidx/compose/ui/text/style/TextIndent;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "Landroidx/compose/ui/text/style/LineHeightStyle;", "lineHeightStyle", "(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/text/style/TextAlign;Landroidx/compose/ui/text/style/TextDirection;JLandroidx/compose/ui/text/style/TextIndent;Landroidx/compose/ui/text/PlatformTextStyle;Landroidx/compose/ui/text/style/LineHeightStyle;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "Landroidx/compose/ui/text/style/LineBreak;", "lineBreak", "Landroidx/compose/ui/text/style/Hyphens;", "hyphens", "(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/text/style/TextAlign;Landroidx/compose/ui/text/style/TextDirection;JLandroidx/compose/ui/text/style/TextIndent;Landroidx/compose/ui/text/PlatformTextStyle;Landroidx/compose/ui/text/style/LineHeightStyle;Landroidx/compose/ui/text/style/LineBreak;Landroidx/compose/ui/text/style/Hyphens;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "Landroidx/compose/ui/graphics/drawscope/DrawStyle;", "drawStyle", "Landroidx/compose/ui/text/style/TextMotion;", "textMotion", "(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/text/style/TextAlign;Landroidx/compose/ui/text/style/TextDirection;JLandroidx/compose/ui/text/style/TextIndent;Landroidx/compose/ui/text/PlatformTextStyle;Landroidx/compose/ui/text/style/LineHeightStyle;Landroidx/compose/ui/text/style/LineBreak;Landroidx/compose/ui/text/style/Hyphens;Landroidx/compose/ui/text/style/TextMotion;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/graphics/drawscope/DrawStyle;IIJLandroidx/compose/ui/text/style/TextIndent;Landroidx/compose/ui/text/PlatformTextStyle;Landroidx/compose/ui/text/style/LineHeightStyle;IILandroidx/compose/ui/text/style/TextMotion;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "Landroidx/compose/ui/graphics/Brush;", "brush", "", "alpha", "(Landroidx/compose/ui/graphics/Brush;FJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/graphics/drawscope/DrawStyle;IIJLandroidx/compose/ui/text/style/TextIndent;Landroidx/compose/ui/text/PlatformTextStyle;Landroidx/compose/ui/text/style/LineHeightStyle;IILandroidx/compose/ui/text/style/TextMotion;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "(Landroidx/compose/ui/graphics/Brush;FJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/text/style/TextAlign;Landroidx/compose/ui/text/style/TextDirection;JLandroidx/compose/ui/text/style/TextIndent;Landroidx/compose/ui/text/PlatformTextStyle;Landroidx/compose/ui/text/style/LineHeightStyle;Landroidx/compose/ui/text/style/LineBreak;Landroidx/compose/ui/text/style/Hyphens;Landroidx/compose/ui/text/style/TextMotion;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "Companion", "ui-text"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class TextStyle {
    public static final Companion d = new Companion(null);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final TextStyle f10567e = new TextStyle(0, 0, (FontWeight) null, (FontStyle) null, (FontSynthesis) null, (FontFamily) null, (String) null, 0, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0, (TextDecoration) null, (Shadow) null, (DrawStyle) null, 0, 0, 0, (TextIndent) null, (PlatformTextStyle) null, (LineHeightStyle) null, 0, 0, (TextMotion) null, 16777215, (DefaultConstructorMarker) null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final SpanStyle f10568a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ParagraphStyle f10569b;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from toString */
    public final PlatformTextStyle platformStyle;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/ui/text/TextStyle$Companion;", "", "ui-text"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public TextStyle(long j2, long j3, FontWeight fontWeight, FontStyle fontStyle, FontSynthesis fontSynthesis, FontFamily fontFamily, String str, long j4, BaselineShift baselineShift, TextGeometricTransform textGeometricTransform, LocaleList localeList, long j5, TextDecoration textDecoration, Shadow shadow, DrawStyle drawStyle, int i2, int i3, long j6, TextIndent textIndent, PlatformTextStyle platformTextStyle, LineHeightStyle lineHeightStyle, int i4, int i5, TextMotion textMotion, int i6, DefaultConstructorMarker defaultConstructorMarker) {
        long j7;
        long j8;
        long j9;
        long j10;
        int i7;
        int i8;
        long j11;
        int i9;
        if ((i6 & 1) != 0) {
            Color.f8866b.getClass();
            j7 = Color.f8871i;
        } else {
            j7 = j2;
        }
        if ((i6 & 2) != 0) {
            TextUnit.f11023b.getClass();
            j8 = TextUnit.d;
        } else {
            j8 = j3;
        }
        FontWeight fontWeight2 = (i6 & 4) != 0 ? null : fontWeight;
        FontStyle fontStyle2 = (i6 & 8) != 0 ? null : fontStyle;
        FontSynthesis fontSynthesis2 = (i6 & 16) != 0 ? null : fontSynthesis;
        FontFamily fontFamily2 = (i6 & 32) != 0 ? null : fontFamily;
        String str2 = (i6 & 64) != 0 ? null : str;
        if ((i6 & 128) != 0) {
            TextUnit.f11023b.getClass();
            j9 = TextUnit.d;
        } else {
            j9 = j4;
        }
        BaselineShift baselineShift2 = (i6 & 256) != 0 ? null : baselineShift;
        TextGeometricTransform textGeometricTransform2 = (i6 & 512) != 0 ? null : textGeometricTransform;
        LocaleList localeList2 = (i6 & 1024) != 0 ? null : localeList;
        if ((i6 & 2048) != 0) {
            Color.f8866b.getClass();
            j10 = Color.f8871i;
        } else {
            j10 = j5;
        }
        TextDecoration textDecoration2 = (i6 & 4096) != 0 ? null : textDecoration;
        long j12 = j7;
        Shadow shadow2 = (i6 & 8192) != 0 ? null : shadow;
        DrawStyle drawStyle2 = (i6 & 16384) != 0 ? null : drawStyle;
        int i10 = 0;
        if ((i6 & 32768) != 0) {
            TextAlign.f10959b.getClass();
            i7 = 0;
        } else {
            i7 = i2;
        }
        if ((i6 & 65536) != 0) {
            TextDirection.f10969b.getClass();
            i8 = 0;
        } else {
            i8 = i3;
        }
        if ((i6 & 131072) != 0) {
            TextUnit.f11023b.getClass();
            j11 = TextUnit.d;
        } else {
            j11 = j6;
        }
        TextIndent textIndent2 = (i6 & 262144) != 0 ? null : textIndent;
        PlatformTextStyle platformTextStyle2 = (i6 & 524288) != 0 ? null : platformTextStyle;
        LineHeightStyle lineHeightStyle2 = (i6 & 1048576) != 0 ? null : lineHeightStyle;
        if ((i6 & PKIFailureInfo.badSenderNonce) != 0) {
            LineBreak.f10931b.getClass();
            i9 = 0;
        } else {
            i9 = i4;
        }
        if ((i6 & 4194304) != 0) {
            Hyphens.f10928b.getClass();
        } else {
            i10 = i5;
        }
        this(j12, j8, fontWeight2, fontStyle2, fontSynthesis2, fontFamily2, str2, j9, baselineShift2, textGeometricTransform2, localeList2, j10, textDecoration2, shadow2, drawStyle2, i7, i8, j11, textIndent2, platformTextStyle2, lineHeightStyle2, i9, i10, (i6 & 8388608) != 0 ? null : textMotion, (DefaultConstructorMarker) null);
    }

    public static TextStyle a(TextStyle textStyle, long j2, long j3, FontWeight fontWeight, FontFamily fontFamily, long j4, BaselineShift baselineShift, int i2, int i3, long j5, PlatformTextStyle platformTextStyle, LineHeightStyle lineHeightStyle, int i4) {
        long jB = (i4 & 1) != 0 ? textStyle.f10568a.f10522a.b() : j2;
        long j6 = (i4 & 2) != 0 ? textStyle.f10568a.fontSize : j3;
        FontWeight fontWeight2 = (i4 & 4) != 0 ? textStyle.f10568a.fontWeight : fontWeight;
        SpanStyle spanStyle = textStyle.f10568a;
        FontStyle fontStyle = spanStyle.fontStyle;
        FontSynthesis fontSynthesis = spanStyle.fontSynthesis;
        FontFamily fontFamily2 = (i4 & 32) != 0 ? spanStyle.fontFamily : fontFamily;
        String str = spanStyle.fontFeatureSettings;
        long j7 = (i4 & 128) != 0 ? spanStyle.letterSpacing : j4;
        BaselineShift baselineShift2 = (i4 & 256) != 0 ? spanStyle.baselineShift : baselineShift;
        TextGeometricTransform textGeometricTransform = spanStyle.textGeometricTransform;
        LocaleList localeList = spanStyle.localeList;
        long j8 = spanStyle.l;
        TextDecoration textDecoration = spanStyle.background;
        Shadow shadow = spanStyle.shadow;
        DrawStyle drawStyle = spanStyle.drawStyle;
        int i5 = (i4 & 32768) != 0 ? textStyle.f10569b.f10479a : i2;
        int i6 = (i4 & 65536) != 0 ? textStyle.f10569b.f10480b : i3;
        long j9 = (i4 & 131072) != 0 ? textStyle.f10569b.f10481c : j5;
        ParagraphStyle paragraphStyle = textStyle.f10569b;
        TextIndent textIndent = paragraphStyle.d;
        PlatformTextStyle platformTextStyle2 = (i4 & 524288) != 0 ? textStyle.platformStyle : platformTextStyle;
        return new TextStyle(new SpanStyle(Color.c(jB, spanStyle.f10522a.b()) ? spanStyle.f10522a : TextForegroundStyle.Companion.b(jB), j6, fontWeight2, fontStyle, fontSynthesis, fontFamily2, str, j7, baselineShift2, textGeometricTransform, localeList, j8, textDecoration, shadow, platformTextStyle2 != null ? platformTextStyle2.f10502a : null, drawStyle, (DefaultConstructorMarker) null), new ParagraphStyle(i5, i6, j9, textIndent, platformTextStyle2 != null ? platformTextStyle2.f10503b : null, (i4 & 1048576) != 0 ? paragraphStyle.f10483f : lineHeightStyle, paragraphStyle.g, paragraphStyle.f10484h, paragraphStyle.f10485i, (DefaultConstructorMarker) null), platformTextStyle2);
    }

    public static TextStyle e(TextStyle textStyle, long j2, long j3, FontWeight fontWeight, long j4, TextDecoration textDecoration, int i2, long j5, int i3) {
        long j6;
        long j7;
        long j8;
        int i4;
        long j9;
        if ((i3 & 1) != 0) {
            Color.f8866b.getClass();
            j6 = Color.f8871i;
        } else {
            j6 = j2;
        }
        if ((i3 & 2) != 0) {
            TextUnit.f11023b.getClass();
            j7 = TextUnit.d;
        } else {
            j7 = j3;
        }
        FontWeight fontWeight2 = (i3 & 4) != 0 ? null : fontWeight;
        if ((i3 & 128) != 0) {
            TextUnit.f11023b.getClass();
            j8 = TextUnit.d;
        } else {
            j8 = j4;
        }
        Color.f8866b.getClass();
        long j10 = Color.f8871i;
        TextDecoration textDecoration2 = (i3 & 4096) != 0 ? null : textDecoration;
        if ((32768 & i3) != 0) {
            TextAlign.f10959b.getClass();
            i4 = 0;
        } else {
            i4 = i2;
        }
        TextDirection.f10969b.getClass();
        if ((i3 & 131072) != 0) {
            TextUnit.f11023b.getClass();
            j9 = TextUnit.d;
        } else {
            j9 = j5;
        }
        LineBreak.f10931b.getClass();
        Hyphens.f10928b.getClass();
        SpanStyle spanStyleA = SpanStyleKt.a(textStyle.f10568a, j6, null, Float.NaN, j7, fontWeight2, null, null, null, null, j8, null, null, null, j10, textDecoration2, null, null, null);
        ParagraphStyle paragraphStyleA = ParagraphStyleKt.a(textStyle.f10569b, i4, 0, j9, null, null, null, 0, 0, null);
        return (textStyle.f10568a == spanStyleA && textStyle.f10569b == paragraphStyleA) ? textStyle : new TextStyle(spanStyleA, paragraphStyleA);
    }

    public final long b() {
        return this.f10568a.f10522a.b();
    }

    public final boolean c(TextStyle textStyle) {
        if (this != textStyle) {
            return Intrinsics.c(this.f10569b, textStyle.f10569b) && this.f10568a.b(textStyle.f10568a);
        }
        return true;
    }

    public final TextStyle d(TextStyle textStyle) {
        return (textStyle == null || textStyle.equals(f10567e)) ? this : new TextStyle(this.f10568a.d(textStyle.f10568a), this.f10569b.a(textStyle.f10569b));
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof TextStyle)) {
            return false;
        }
        TextStyle textStyle = (TextStyle) obj;
        return Intrinsics.c(this.f10568a, textStyle.f10568a) && Intrinsics.c(this.f10569b, textStyle.f10569b) && Intrinsics.c(this.platformStyle, textStyle.platformStyle);
    }

    public final int hashCode() {
        int iHashCode = (this.f10569b.hashCode() + (this.f10568a.hashCode() * 31)) * 31;
        PlatformTextStyle platformTextStyle = this.platformStyle;
        return iHashCode + (platformTextStyle != null ? platformTextStyle.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("TextStyle(color=");
        sb.append((Object) Color.i(b()));
        sb.append(", brush=");
        SpanStyle spanStyle = this.f10568a;
        sb.append(spanStyle.f10522a.e());
        sb.append(", alpha=");
        sb.append(spanStyle.f10522a.a());
        sb.append(", fontSize=");
        sb.append((Object) TextUnit.e(spanStyle.fontSize));
        sb.append(", fontWeight=");
        sb.append(spanStyle.fontWeight);
        sb.append(", fontStyle=");
        sb.append(spanStyle.fontStyle);
        sb.append(", fontSynthesis=");
        sb.append(spanStyle.fontSynthesis);
        sb.append(", fontFamily=");
        sb.append(spanStyle.fontFamily);
        sb.append(", fontFeatureSettings=");
        sb.append(spanStyle.fontFeatureSettings);
        sb.append(", letterSpacing=");
        sb.append((Object) TextUnit.e(spanStyle.letterSpacing));
        sb.append(", baselineShift=");
        sb.append(spanStyle.baselineShift);
        sb.append(", textGeometricTransform=");
        sb.append(spanStyle.textGeometricTransform);
        sb.append(", localeList=");
        sb.append(spanStyle.localeList);
        sb.append(", background=");
        o60.y(spanStyle.l, ", textDecoration=", sb);
        sb.append(spanStyle.background);
        sb.append(", shadow=");
        sb.append(spanStyle.shadow);
        sb.append(", drawStyle=");
        sb.append(spanStyle.drawStyle);
        sb.append(", textAlign=");
        ParagraphStyle paragraphStyle = this.f10569b;
        sb.append((Object) TextAlign.a(paragraphStyle.f10479a));
        sb.append(", textDirection=");
        sb.append((Object) TextDirection.a(paragraphStyle.f10480b));
        sb.append(", lineHeight=");
        sb.append((Object) TextUnit.e(paragraphStyle.f10481c));
        sb.append(", textIndent=");
        sb.append(paragraphStyle.d);
        sb.append(", platformStyle=");
        sb.append(this.platformStyle);
        sb.append(", lineHeightStyle=");
        sb.append(paragraphStyle.f10483f);
        sb.append(", lineBreak=");
        sb.append((Object) LineBreak.a(paragraphStyle.g));
        sb.append(", hyphens=");
        sb.append((Object) Hyphens.a(paragraphStyle.f10484h));
        sb.append(", textMotion=");
        sb.append(paragraphStyle.f10485i);
        sb.append(')');
        return sb.toString();
    }

    public /* synthetic */ TextStyle(SpanStyle spanStyle, ParagraphStyle paragraphStyle, PlatformTextStyle platformTextStyle, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(spanStyle, paragraphStyle, (i2 & 4) != 0 ? null : platformTextStyle);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public TextStyle(long j2, long j3, FontWeight fontWeight, FontStyle fontStyle, FontSynthesis fontSynthesis, FontFamily fontFamily, String str, long j4, BaselineShift baselineShift, TextGeometricTransform textGeometricTransform, LocaleList localeList, long j5, TextDecoration textDecoration, Shadow shadow, TextAlign textAlign, TextDirection textDirection, long j6, TextIndent textIndent, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        long j7;
        long j8;
        long j9;
        long j10;
        long j11;
        if ((i2 & 1) != 0) {
            Color.f8866b.getClass();
            j7 = Color.f8871i;
        } else {
            j7 = j2;
        }
        if ((i2 & 2) != 0) {
            TextUnit.f11023b.getClass();
            j8 = TextUnit.d;
        } else {
            j8 = j3;
        }
        FontWeight fontWeight2 = (i2 & 4) != 0 ? null : fontWeight;
        FontStyle fontStyle2 = (i2 & 8) != 0 ? null : fontStyle;
        FontSynthesis fontSynthesis2 = (i2 & 16) != 0 ? null : fontSynthesis;
        FontFamily fontFamily2 = (i2 & 32) != 0 ? null : fontFamily;
        String str2 = (i2 & 64) != 0 ? null : str;
        if ((i2 & 128) != 0) {
            TextUnit.f11023b.getClass();
            j9 = TextUnit.d;
        } else {
            j9 = j4;
        }
        BaselineShift baselineShift2 = (i2 & 256) != 0 ? null : baselineShift;
        TextGeometricTransform textGeometricTransform2 = (i2 & 512) != 0 ? null : textGeometricTransform;
        LocaleList localeList2 = (i2 & 1024) != 0 ? null : localeList;
        if ((i2 & 2048) != 0) {
            Color.f8866b.getClass();
            j10 = Color.f8871i;
        } else {
            j10 = j5;
        }
        TextDecoration textDecoration2 = (i2 & 4096) != 0 ? null : textDecoration;
        long j12 = j7;
        Shadow shadow2 = (i2 & 8192) != 0 ? null : shadow;
        TextAlign textAlign2 = (i2 & 16384) != 0 ? null : textAlign;
        TextDirection textDirection2 = (i2 & 32768) != 0 ? null : textDirection;
        if ((i2 & 65536) != 0) {
            TextUnit.f11023b.getClass();
            j11 = TextUnit.d;
        } else {
            j11 = j6;
        }
        FontStyle fontStyle3 = fontStyle2;
        FontSynthesis fontSynthesis3 = fontSynthesis2;
        FontFamily fontFamily3 = fontFamily2;
        String str3 = str2;
        long j13 = j9;
        BaselineShift baselineShift3 = baselineShift2;
        TextGeometricTransform textGeometricTransform3 = textGeometricTransform2;
        LocaleList localeList3 = localeList2;
        long j14 = j10;
        this(j12, j8, fontWeight2, fontStyle3, fontSynthesis3, fontFamily3, str3, j13, baselineShift3, textGeometricTransform3, localeList3, j14, textDecoration2, shadow2, textAlign2, textDirection2, j11, (i2 & 131072) != 0 ? null : textIndent, null);
    }

    @Deprecated
    public TextStyle(long j2, long j3, FontWeight fontWeight, FontStyle fontStyle, FontSynthesis fontSynthesis, FontFamily fontFamily, String str, long j4, BaselineShift baselineShift, TextGeometricTransform textGeometricTransform, LocaleList localeList, long j5, TextDecoration textDecoration, Shadow shadow, TextAlign textAlign, TextDirection textDirection, long j6, TextIndent textIndent, DefaultConstructorMarker defaultConstructorMarker) {
        int i2;
        SpanStyle spanStyle = new SpanStyle(j2, j3, fontWeight, fontStyle, fontSynthesis, fontFamily, str, j4, baselineShift, textGeometricTransform, localeList, j5, textDecoration, shadow, (PlatformSpanStyle) null, (DrawStyle) null, (DefaultConstructorMarker) null);
        int i3 = 0;
        if (textAlign != null) {
            i2 = textAlign.f10964a;
        } else {
            TextAlign.f10959b.getClass();
            i2 = 0;
        }
        if (textDirection != null) {
            i3 = textDirection.f10973a;
        } else {
            TextDirection.f10969b.getClass();
        }
        LineBreak.f10931b.getClass();
        Hyphens.f10928b.getClass();
        this(spanStyle, new ParagraphStyle(i2, i3, j6, textIndent, (PlatformParagraphStyle) null, (LineHeightStyle) null, 0, 0, (TextMotion) null, (DefaultConstructorMarker) null), null);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public TextStyle(SpanStyle spanStyle, ParagraphStyle paragraphStyle) {
        PlatformSpanStyle platformSpanStyle = spanStyle.platformStyle;
        PlatformParagraphStyle platformParagraphStyle = paragraphStyle.f10482e;
        this(spanStyle, paragraphStyle, (platformSpanStyle == null && platformParagraphStyle == null) ? null : new PlatformTextStyle(platformSpanStyle, platformParagraphStyle));
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public TextStyle(long j2, long j3, FontWeight fontWeight, FontStyle fontStyle, FontSynthesis fontSynthesis, FontFamily fontFamily, String str, long j4, BaselineShift baselineShift, TextGeometricTransform textGeometricTransform, LocaleList localeList, long j5, TextDecoration textDecoration, Shadow shadow, TextAlign textAlign, TextDirection textDirection, long j6, TextIndent textIndent, PlatformTextStyle platformTextStyle, LineHeightStyle lineHeightStyle, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        long j7;
        long j8;
        long j9;
        long j10;
        long j11;
        if ((i2 & 1) != 0) {
            Color.f8866b.getClass();
            j7 = Color.f8871i;
        } else {
            j7 = j2;
        }
        if ((i2 & 2) != 0) {
            TextUnit.f11023b.getClass();
            j8 = TextUnit.d;
        } else {
            j8 = j3;
        }
        FontWeight fontWeight2 = (i2 & 4) != 0 ? null : fontWeight;
        FontStyle fontStyle2 = (i2 & 8) != 0 ? null : fontStyle;
        FontSynthesis fontSynthesis2 = (i2 & 16) != 0 ? null : fontSynthesis;
        FontFamily fontFamily2 = (i2 & 32) != 0 ? null : fontFamily;
        String str2 = (i2 & 64) != 0 ? null : str;
        if ((i2 & 128) != 0) {
            TextUnit.f11023b.getClass();
            j9 = TextUnit.d;
        } else {
            j9 = j4;
        }
        BaselineShift baselineShift2 = (i2 & 256) != 0 ? null : baselineShift;
        TextGeometricTransform textGeometricTransform2 = (i2 & 512) != 0 ? null : textGeometricTransform;
        LocaleList localeList2 = (i2 & 1024) != 0 ? null : localeList;
        if ((i2 & 2048) != 0) {
            Color.f8866b.getClass();
            j10 = Color.f8871i;
        } else {
            j10 = j5;
        }
        TextDecoration textDecoration2 = (i2 & 4096) != 0 ? null : textDecoration;
        long j12 = j7;
        Shadow shadow2 = (i2 & 8192) != 0 ? null : shadow;
        TextAlign textAlign2 = (i2 & 16384) != 0 ? null : textAlign;
        TextDirection textDirection2 = (i2 & 32768) != 0 ? null : textDirection;
        if ((i2 & 65536) != 0) {
            TextUnit.f11023b.getClass();
            j11 = TextUnit.d;
        } else {
            j11 = j6;
        }
        FontStyle fontStyle3 = fontStyle2;
        FontSynthesis fontSynthesis3 = fontSynthesis2;
        FontFamily fontFamily3 = fontFamily2;
        String str3 = str2;
        long j13 = j9;
        BaselineShift baselineShift3 = baselineShift2;
        TextGeometricTransform textGeometricTransform3 = textGeometricTransform2;
        LocaleList localeList3 = localeList2;
        long j14 = j10;
        this(j12, j8, fontWeight2, fontStyle3, fontSynthesis3, fontFamily3, str3, j13, baselineShift3, textGeometricTransform3, localeList3, j14, textDecoration2, shadow2, textAlign2, textDirection2, j11, (i2 & 131072) != 0 ? null : textIndent, (i2 & 262144) != 0 ? null : platformTextStyle, (i2 & 524288) != 0 ? null : lineHeightStyle, null);
    }

    @Deprecated
    public TextStyle(long j2, long j3, FontWeight fontWeight, FontStyle fontStyle, FontSynthesis fontSynthesis, FontFamily fontFamily, String str, long j4, BaselineShift baselineShift, TextGeometricTransform textGeometricTransform, LocaleList localeList, long j5, TextDecoration textDecoration, Shadow shadow, TextAlign textAlign, TextDirection textDirection, long j6, TextIndent textIndent, PlatformTextStyle platformTextStyle, LineHeightStyle lineHeightStyle, DefaultConstructorMarker defaultConstructorMarker) {
        int i2;
        SpanStyle spanStyle = new SpanStyle(j2, j3, fontWeight, fontStyle, fontSynthesis, fontFamily, str, j4, baselineShift, textGeometricTransform, localeList, j5, textDecoration, shadow, platformTextStyle != null ? platformTextStyle.f10502a : null, (DrawStyle) null, (DefaultConstructorMarker) null);
        int i3 = 0;
        if (textAlign != null) {
            i2 = textAlign.f10964a;
        } else {
            TextAlign.f10959b.getClass();
            i2 = 0;
        }
        if (textDirection != null) {
            i3 = textDirection.f10973a;
        } else {
            TextDirection.f10969b.getClass();
        }
        PlatformParagraphStyle platformParagraphStyle = platformTextStyle != null ? platformTextStyle.f10503b : null;
        LineBreak.f10931b.getClass();
        Hyphens.f10928b.getClass();
        this(spanStyle, new ParagraphStyle(i2, i3, j6, textIndent, platformParagraphStyle, lineHeightStyle, 0, 0, (TextMotion) null, (DefaultConstructorMarker) null), platformTextStyle);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public TextStyle(long j2, long j3, FontWeight fontWeight, FontStyle fontStyle, FontSynthesis fontSynthesis, FontFamily fontFamily, String str, long j4, BaselineShift baselineShift, TextGeometricTransform textGeometricTransform, LocaleList localeList, long j5, TextDecoration textDecoration, Shadow shadow, TextAlign textAlign, TextDirection textDirection, long j6, TextIndent textIndent, PlatformTextStyle platformTextStyle, LineHeightStyle lineHeightStyle, LineBreak lineBreak, Hyphens hyphens, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        long j7;
        long j8;
        long j9;
        long j10;
        long j11;
        if ((i2 & 1) != 0) {
            Color.f8866b.getClass();
            j7 = Color.f8871i;
        } else {
            j7 = j2;
        }
        if ((i2 & 2) != 0) {
            TextUnit.f11023b.getClass();
            j8 = TextUnit.d;
        } else {
            j8 = j3;
        }
        FontWeight fontWeight2 = (i2 & 4) != 0 ? null : fontWeight;
        FontStyle fontStyle2 = (i2 & 8) != 0 ? null : fontStyle;
        FontSynthesis fontSynthesis2 = (i2 & 16) != 0 ? null : fontSynthesis;
        FontFamily fontFamily2 = (i2 & 32) != 0 ? null : fontFamily;
        String str2 = (i2 & 64) != 0 ? null : str;
        if ((i2 & 128) != 0) {
            TextUnit.f11023b.getClass();
            j9 = TextUnit.d;
        } else {
            j9 = j4;
        }
        BaselineShift baselineShift2 = (i2 & 256) != 0 ? null : baselineShift;
        TextGeometricTransform textGeometricTransform2 = (i2 & 512) != 0 ? null : textGeometricTransform;
        LocaleList localeList2 = (i2 & 1024) != 0 ? null : localeList;
        if ((i2 & 2048) != 0) {
            Color.f8866b.getClass();
            j10 = Color.f8871i;
        } else {
            j10 = j5;
        }
        TextDecoration textDecoration2 = (i2 & 4096) != 0 ? null : textDecoration;
        long j12 = j7;
        Shadow shadow2 = (i2 & 8192) != 0 ? null : shadow;
        TextAlign textAlign2 = (i2 & 16384) != 0 ? null : textAlign;
        TextDirection textDirection2 = (i2 & 32768) != 0 ? null : textDirection;
        if ((i2 & 65536) != 0) {
            TextUnit.f11023b.getClass();
            j11 = TextUnit.d;
        } else {
            j11 = j6;
        }
        FontStyle fontStyle3 = fontStyle2;
        FontSynthesis fontSynthesis3 = fontSynthesis2;
        FontFamily fontFamily3 = fontFamily2;
        String str3 = str2;
        long j13 = j9;
        BaselineShift baselineShift3 = baselineShift2;
        TextGeometricTransform textGeometricTransform3 = textGeometricTransform2;
        LocaleList localeList3 = localeList2;
        long j14 = j10;
        this(j12, j8, fontWeight2, fontStyle3, fontSynthesis3, fontFamily3, str3, j13, baselineShift3, textGeometricTransform3, localeList3, j14, textDecoration2, shadow2, textAlign2, textDirection2, j11, (i2 & 131072) != 0 ? null : textIndent, (i2 & 262144) != 0 ? null : platformTextStyle, (i2 & 524288) != 0 ? null : lineHeightStyle, (i2 & 1048576) != 0 ? null : lineBreak, (i2 & PKIFailureInfo.badSenderNonce) != 0 ? null : hyphens, null);
    }

    @Deprecated
    public TextStyle(long j2, long j3, FontWeight fontWeight, FontStyle fontStyle, FontSynthesis fontSynthesis, FontFamily fontFamily, String str, long j4, BaselineShift baselineShift, TextGeometricTransform textGeometricTransform, LocaleList localeList, long j5, TextDecoration textDecoration, Shadow shadow, TextAlign textAlign, TextDirection textDirection, long j6, TextIndent textIndent, PlatformTextStyle platformTextStyle, LineHeightStyle lineHeightStyle, LineBreak lineBreak, Hyphens hyphens, DefaultConstructorMarker defaultConstructorMarker) {
        int i2;
        int i3;
        int i4;
        SpanStyle spanStyle = new SpanStyle(j2, j3, fontWeight, fontStyle, fontSynthesis, fontFamily, str, j4, baselineShift, textGeometricTransform, localeList, j5, textDecoration, shadow, platformTextStyle != null ? platformTextStyle.f10502a : null, (DrawStyle) null, 32768, (DefaultConstructorMarker) null);
        int i5 = 0;
        if (textAlign != null) {
            i2 = textAlign.f10964a;
        } else {
            TextAlign.f10959b.getClass();
            i2 = 0;
        }
        if (textDirection != null) {
            i3 = textDirection.f10973a;
        } else {
            TextDirection.f10969b.getClass();
            i3 = 0;
        }
        PlatformParagraphStyle platformParagraphStyle = platformTextStyle != null ? platformTextStyle.f10503b : null;
        if (lineBreak != null) {
            i4 = lineBreak.f10933a;
        } else {
            LineBreak.f10931b.getClass();
            i4 = 0;
        }
        if (hyphens != null) {
            i5 = hyphens.f10930a;
        } else {
            Hyphens.f10928b.getClass();
        }
        this(spanStyle, new ParagraphStyle(i2, i3, j6, textIndent, platformParagraphStyle, lineHeightStyle, i4, i5, (TextMotion) null, 256, (DefaultConstructorMarker) null), platformTextStyle);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public TextStyle(long j2, long j3, FontWeight fontWeight, FontStyle fontStyle, FontSynthesis fontSynthesis, FontFamily fontFamily, String str, long j4, BaselineShift baselineShift, TextGeometricTransform textGeometricTransform, LocaleList localeList, long j5, TextDecoration textDecoration, Shadow shadow, DrawStyle drawStyle, TextAlign textAlign, TextDirection textDirection, long j6, TextIndent textIndent, PlatformTextStyle platformTextStyle, LineHeightStyle lineHeightStyle, LineBreak lineBreak, Hyphens hyphens, TextMotion textMotion, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        long j7;
        long j8;
        long j9;
        long j10;
        long j11;
        if ((i2 & 1) != 0) {
            Color.f8866b.getClass();
            j7 = Color.f8871i;
        } else {
            j7 = j2;
        }
        if ((i2 & 2) != 0) {
            TextUnit.f11023b.getClass();
            j8 = TextUnit.d;
        } else {
            j8 = j3;
        }
        FontWeight fontWeight2 = (i2 & 4) != 0 ? null : fontWeight;
        FontStyle fontStyle2 = (i2 & 8) != 0 ? null : fontStyle;
        FontSynthesis fontSynthesis2 = (i2 & 16) != 0 ? null : fontSynthesis;
        FontFamily fontFamily2 = (i2 & 32) != 0 ? null : fontFamily;
        String str2 = (i2 & 64) != 0 ? null : str;
        if ((i2 & 128) != 0) {
            TextUnit.f11023b.getClass();
            j9 = TextUnit.d;
        } else {
            j9 = j4;
        }
        BaselineShift baselineShift2 = (i2 & 256) != 0 ? null : baselineShift;
        TextGeometricTransform textGeometricTransform2 = (i2 & 512) != 0 ? null : textGeometricTransform;
        LocaleList localeList2 = (i2 & 1024) != 0 ? null : localeList;
        if ((i2 & 2048) != 0) {
            Color.f8866b.getClass();
            j10 = Color.f8871i;
        } else {
            j10 = j5;
        }
        TextDecoration textDecoration2 = (i2 & 4096) != 0 ? null : textDecoration;
        long j12 = j7;
        Shadow shadow2 = (i2 & 8192) != 0 ? null : shadow;
        DrawStyle drawStyle2 = (i2 & 16384) != 0 ? null : drawStyle;
        TextAlign textAlign2 = (i2 & 32768) != 0 ? null : textAlign;
        TextDirection textDirection2 = (i2 & 65536) != 0 ? null : textDirection;
        if ((i2 & 131072) != 0) {
            TextUnit.f11023b.getClass();
            j11 = TextUnit.d;
        } else {
            j11 = j6;
        }
        FontStyle fontStyle3 = fontStyle2;
        FontSynthesis fontSynthesis3 = fontSynthesis2;
        FontFamily fontFamily3 = fontFamily2;
        String str3 = str2;
        long j13 = j9;
        BaselineShift baselineShift3 = baselineShift2;
        TextGeometricTransform textGeometricTransform3 = textGeometricTransform2;
        LocaleList localeList3 = localeList2;
        long j14 = j10;
        this(j12, j8, fontWeight2, fontStyle3, fontSynthesis3, fontFamily3, str3, j13, baselineShift3, textGeometricTransform3, localeList3, j14, textDecoration2, shadow2, drawStyle2, textAlign2, textDirection2, j11, (i2 & 262144) != 0 ? null : textIndent, (i2 & 524288) != 0 ? null : platformTextStyle, (i2 & 1048576) != 0 ? null : lineHeightStyle, (i2 & PKIFailureInfo.badSenderNonce) != 0 ? null : lineBreak, (i2 & 4194304) != 0 ? null : hyphens, (i2 & 8388608) != 0 ? null : textMotion, (DefaultConstructorMarker) null);
    }

    @Deprecated
    public TextStyle(long j2, long j3, FontWeight fontWeight, FontStyle fontStyle, FontSynthesis fontSynthesis, FontFamily fontFamily, String str, long j4, BaselineShift baselineShift, TextGeometricTransform textGeometricTransform, LocaleList localeList, long j5, TextDecoration textDecoration, Shadow shadow, DrawStyle drawStyle, TextAlign textAlign, TextDirection textDirection, long j6, TextIndent textIndent, PlatformTextStyle platformTextStyle, LineHeightStyle lineHeightStyle, LineBreak lineBreak, Hyphens hyphens, TextMotion textMotion, DefaultConstructorMarker defaultConstructorMarker) {
        int i2;
        int i3;
        int i4;
        SpanStyle spanStyle = new SpanStyle(j2, j3, fontWeight, fontStyle, fontSynthesis, fontFamily, str, j4, baselineShift, textGeometricTransform, localeList, j5, textDecoration, shadow, platformTextStyle != null ? platformTextStyle.f10502a : null, drawStyle, (DefaultConstructorMarker) null);
        int i5 = 0;
        if (textAlign != null) {
            i2 = textAlign.f10964a;
        } else {
            TextAlign.f10959b.getClass();
            i2 = 0;
        }
        if (textDirection != null) {
            i3 = textDirection.f10973a;
        } else {
            TextDirection.f10969b.getClass();
            i3 = 0;
        }
        PlatformParagraphStyle platformParagraphStyle = platformTextStyle != null ? platformTextStyle.f10503b : null;
        if (lineBreak != null) {
            i4 = lineBreak.f10933a;
        } else {
            LineBreak.f10931b.getClass();
            i4 = 0;
        }
        if (hyphens != null) {
            i5 = hyphens.f10930a;
        } else {
            Hyphens.f10928b.getClass();
        }
        this(spanStyle, new ParagraphStyle(i2, i3, j6, textIndent, platformParagraphStyle, lineHeightStyle, i4, i5, textMotion, (DefaultConstructorMarker) null), platformTextStyle);
    }

    public TextStyle(SpanStyle spanStyle, ParagraphStyle paragraphStyle, PlatformTextStyle platformTextStyle) {
        this.f10568a = spanStyle;
        this.f10569b = paragraphStyle;
        this.platformStyle = platformTextStyle;
    }

    public TextStyle(long j2, long j3, FontWeight fontWeight, FontStyle fontStyle, FontSynthesis fontSynthesis, FontFamily fontFamily, String str, long j4, BaselineShift baselineShift, TextGeometricTransform textGeometricTransform, LocaleList localeList, long j5, TextDecoration textDecoration, Shadow shadow, DrawStyle drawStyle, int i2, int i3, long j6, TextIndent textIndent, PlatformTextStyle platformTextStyle, LineHeightStyle lineHeightStyle, int i4, int i5, TextMotion textMotion, DefaultConstructorMarker defaultConstructorMarker) {
        this(new SpanStyle(j2, j3, fontWeight, fontStyle, fontSynthesis, fontFamily, str, j4, baselineShift, textGeometricTransform, localeList, j5, textDecoration, shadow, platformTextStyle != null ? platformTextStyle.f10502a : null, drawStyle, (DefaultConstructorMarker) null), new ParagraphStyle(i2, i3, j6, textIndent, platformTextStyle != null ? platformTextStyle.f10503b : null, lineHeightStyle, i4, i5, textMotion, (DefaultConstructorMarker) null), platformTextStyle);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public TextStyle(Brush brush, float f2, long j2, FontWeight fontWeight, FontStyle fontStyle, FontSynthesis fontSynthesis, FontFamily fontFamily, String str, long j3, BaselineShift baselineShift, TextGeometricTransform textGeometricTransform, LocaleList localeList, long j4, TextDecoration textDecoration, Shadow shadow, DrawStyle drawStyle, int i2, int i3, long j5, TextIndent textIndent, PlatformTextStyle platformTextStyle, LineHeightStyle lineHeightStyle, int i4, int i5, TextMotion textMotion, int i6, DefaultConstructorMarker defaultConstructorMarker) {
        long j6;
        long j7;
        long j8;
        int i7;
        int i8;
        long j9;
        int i9;
        int i10;
        float f3 = (i6 & 2) != 0 ? Float.NaN : f2;
        if ((i6 & 4) != 0) {
            TextUnit.f11023b.getClass();
            j6 = TextUnit.d;
        } else {
            j6 = j2;
        }
        FontWeight fontWeight2 = (i6 & 8) != 0 ? null : fontWeight;
        FontStyle fontStyle2 = (i6 & 16) != 0 ? null : fontStyle;
        FontSynthesis fontSynthesis2 = (i6 & 32) != 0 ? null : fontSynthesis;
        FontFamily fontFamily2 = (i6 & 64) != 0 ? null : fontFamily;
        String str2 = (i6 & 128) != 0 ? null : str;
        if ((i6 & 256) != 0) {
            TextUnit.f11023b.getClass();
            j7 = TextUnit.d;
        } else {
            j7 = j3;
        }
        BaselineShift baselineShift2 = (i6 & 512) != 0 ? null : baselineShift;
        TextGeometricTransform textGeometricTransform2 = (i6 & 1024) != 0 ? null : textGeometricTransform;
        LocaleList localeList2 = (i6 & 2048) != 0 ? null : localeList;
        if ((i6 & 4096) != 0) {
            Color.f8866b.getClass();
            j8 = Color.f8871i;
        } else {
            j8 = j4;
        }
        TextDecoration textDecoration2 = (i6 & 8192) != 0 ? null : textDecoration;
        Shadow shadow2 = (i6 & 16384) != 0 ? null : shadow;
        DrawStyle drawStyle2 = (32768 & i6) != 0 ? null : drawStyle;
        if ((65536 & i6) != 0) {
            TextAlign.f10959b.getClass();
            i7 = 0;
        } else {
            i7 = i2;
        }
        if ((131072 & i6) != 0) {
            TextDirection.f10969b.getClass();
            i8 = 0;
        } else {
            i8 = i3;
        }
        if ((262144 & i6) != 0) {
            TextUnit.f11023b.getClass();
            j9 = TextUnit.d;
        } else {
            j9 = j5;
        }
        TextIndent textIndent2 = (524288 & i6) != 0 ? null : textIndent;
        PlatformTextStyle platformTextStyle2 = (1048576 & i6) != 0 ? null : platformTextStyle;
        LineHeightStyle lineHeightStyle2 = (2097152 & i6) != 0 ? null : lineHeightStyle;
        if ((4194304 & i6) != 0) {
            LineBreak.f10931b.getClass();
            i9 = 0;
        } else {
            i9 = i4;
        }
        if ((8388608 & i6) != 0) {
            Hyphens.f10928b.getClass();
            i10 = 0;
        } else {
            i10 = i5;
        }
        this(brush, f3, j6, fontWeight2, fontStyle2, fontSynthesis2, fontFamily2, str2, j7, baselineShift2, textGeometricTransform2, localeList2, j8, textDecoration2, shadow2, drawStyle2, i7, i8, j9, textIndent2, platformTextStyle2, lineHeightStyle2, i9, i10, (i6 & 16777216) != 0 ? null : textMotion, (DefaultConstructorMarker) null);
    }

    public TextStyle(Brush brush, float f2, long j2, FontWeight fontWeight, FontStyle fontStyle, FontSynthesis fontSynthesis, FontFamily fontFamily, String str, long j3, BaselineShift baselineShift, TextGeometricTransform textGeometricTransform, LocaleList localeList, long j4, TextDecoration textDecoration, Shadow shadow, DrawStyle drawStyle, int i2, int i3, long j5, TextIndent textIndent, PlatformTextStyle platformTextStyle, LineHeightStyle lineHeightStyle, int i4, int i5, TextMotion textMotion, DefaultConstructorMarker defaultConstructorMarker) {
        this(new SpanStyle(brush, f2, j2, fontWeight, fontStyle, fontSynthesis, fontFamily, str, j3, baselineShift, textGeometricTransform, localeList, j4, textDecoration, shadow, platformTextStyle != null ? platformTextStyle.f10502a : null, drawStyle, (DefaultConstructorMarker) null), new ParagraphStyle(i2, i3, j5, textIndent, platformTextStyle != null ? platformTextStyle.f10503b : null, lineHeightStyle, i4, i5, textMotion, (DefaultConstructorMarker) null), platformTextStyle);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public TextStyle(Brush brush, float f2, long j2, FontWeight fontWeight, FontStyle fontStyle, FontSynthesis fontSynthesis, FontFamily fontFamily, String str, long j3, BaselineShift baselineShift, TextGeometricTransform textGeometricTransform, LocaleList localeList, long j4, TextDecoration textDecoration, Shadow shadow, DrawStyle drawStyle, TextAlign textAlign, TextDirection textDirection, long j5, TextIndent textIndent, PlatformTextStyle platformTextStyle, LineHeightStyle lineHeightStyle, LineBreak lineBreak, Hyphens hyphens, TextMotion textMotion, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        long j6;
        long j7;
        long j8;
        long j9;
        float f3 = (i2 & 2) != 0 ? Float.NaN : f2;
        if ((i2 & 4) != 0) {
            TextUnit.f11023b.getClass();
            j6 = TextUnit.d;
        } else {
            j6 = j2;
        }
        FontWeight fontWeight2 = (i2 & 8) != 0 ? null : fontWeight;
        FontStyle fontStyle2 = (i2 & 16) != 0 ? null : fontStyle;
        FontSynthesis fontSynthesis2 = (i2 & 32) != 0 ? null : fontSynthesis;
        FontFamily fontFamily2 = (i2 & 64) != 0 ? null : fontFamily;
        String str2 = (i2 & 128) != 0 ? null : str;
        if ((i2 & 256) != 0) {
            TextUnit.f11023b.getClass();
            j7 = TextUnit.d;
        } else {
            j7 = j3;
        }
        BaselineShift baselineShift2 = (i2 & 512) != 0 ? null : baselineShift;
        TextGeometricTransform textGeometricTransform2 = (i2 & 1024) != 0 ? null : textGeometricTransform;
        LocaleList localeList2 = (i2 & 2048) != 0 ? null : localeList;
        if ((i2 & 4096) != 0) {
            Color.f8866b.getClass();
            j8 = Color.f8871i;
        } else {
            j8 = j4;
        }
        TextDecoration textDecoration2 = (i2 & 8192) != 0 ? null : textDecoration;
        Shadow shadow2 = (i2 & 16384) != 0 ? null : shadow;
        DrawStyle drawStyle2 = (32768 & i2) != 0 ? null : drawStyle;
        TextAlign textAlign2 = (65536 & i2) != 0 ? null : textAlign;
        TextDirection textDirection2 = (131072 & i2) != 0 ? null : textDirection;
        if ((262144 & i2) != 0) {
            TextUnit.f11023b.getClass();
            j9 = TextUnit.d;
        } else {
            j9 = j5;
        }
        this(brush, f3, j6, fontWeight2, fontStyle2, fontSynthesis2, fontFamily2, str2, j7, baselineShift2, textGeometricTransform2, localeList2, j8, textDecoration2, shadow2, drawStyle2, textAlign2, textDirection2, j9, (524288 & i2) != 0 ? null : textIndent, (1048576 & i2) != 0 ? null : platformTextStyle, (2097152 & i2) != 0 ? null : lineHeightStyle, (4194304 & i2) != 0 ? null : lineBreak, (8388608 & i2) != 0 ? null : hyphens, (i2 & 16777216) != 0 ? null : textMotion, (DefaultConstructorMarker) null);
    }

    @Deprecated
    public TextStyle(Brush brush, float f2, long j2, FontWeight fontWeight, FontStyle fontStyle, FontSynthesis fontSynthesis, FontFamily fontFamily, String str, long j3, BaselineShift baselineShift, TextGeometricTransform textGeometricTransform, LocaleList localeList, long j4, TextDecoration textDecoration, Shadow shadow, DrawStyle drawStyle, TextAlign textAlign, TextDirection textDirection, long j5, TextIndent textIndent, PlatformTextStyle platformTextStyle, LineHeightStyle lineHeightStyle, LineBreak lineBreak, Hyphens hyphens, TextMotion textMotion, DefaultConstructorMarker defaultConstructorMarker) {
        int i2;
        int i3;
        int i4;
        SpanStyle spanStyle = new SpanStyle(brush, f2, j2, fontWeight, fontStyle, fontSynthesis, fontFamily, str, j3, baselineShift, textGeometricTransform, localeList, j4, textDecoration, shadow, platformTextStyle != null ? platformTextStyle.f10502a : null, drawStyle, (DefaultConstructorMarker) null);
        int i5 = 0;
        if (textAlign != null) {
            i2 = textAlign.f10964a;
        } else {
            TextAlign.f10959b.getClass();
            i2 = 0;
        }
        if (textDirection != null) {
            i3 = textDirection.f10973a;
        } else {
            TextDirection.f10969b.getClass();
            i3 = 0;
        }
        PlatformParagraphStyle platformParagraphStyle = platformTextStyle != null ? platformTextStyle.f10503b : null;
        if (lineBreak != null) {
            i4 = lineBreak.f10933a;
        } else {
            LineBreak.f10931b.getClass();
            i4 = 0;
        }
        if (hyphens != null) {
            i5 = hyphens.f10930a;
        } else {
            Hyphens.f10928b.getClass();
        }
        this(spanStyle, new ParagraphStyle(i2, i3, j5, textIndent, platformParagraphStyle, lineHeightStyle, i4, i5, textMotion, (DefaultConstructorMarker) null), platformTextStyle);
    }
}
