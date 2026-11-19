package androidx.compose.ui.text.platform;

import android.graphics.Typeface;
import android.text.Layout;
import android.text.Spannable;
import android.text.SpannableString;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.style.BackgroundColorSpan;
import android.text.style.LeadingMarginSpan;
import android.text.style.ScaleXSpan;
import androidx.compose.runtime.State;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.ShaderBrush;
import androidx.compose.ui.graphics.Shadow;
import androidx.compose.ui.graphics.SolidColor;
import androidx.compose.ui.graphics.drawscope.DrawStyle;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.AnnotatedStringKt;
import androidx.compose.ui.text.Bullet;
import androidx.compose.ui.text.EmojiSupportMatch;
import androidx.compose.ui.text.ParagraphIntrinsics;
import androidx.compose.ui.text.ParagraphStyle;
import androidx.compose.ui.text.Placeholder;
import androidx.compose.ui.text.PlaceholderVerticalAlign;
import androidx.compose.ui.text.PlatformParagraphStyle;
import androidx.compose.ui.text.PlatformSpanStyle;
import androidx.compose.ui.text.PlatformTextStyle;
import androidx.compose.ui.text.SpanStyle;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.android.CharSequenceCharacterIterator;
import androidx.compose.ui.text.android.LayoutIntrinsics;
import androidx.compose.ui.text.android.LayoutIntrinsics_androidKt;
import androidx.compose.ui.text.android.style.BaselineShiftSpan;
import androidx.compose.ui.text.android.style.FontFeatureSpan;
import androidx.compose.ui.text.android.style.LetterSpacingSpanEm;
import androidx.compose.ui.text.android.style.LetterSpacingSpanPx;
import androidx.compose.ui.text.android.style.LineHeightSpan;
import androidx.compose.ui.text.android.style.LineHeightStyleSpan;
import androidx.compose.ui.text.android.style.PlaceholderSpan;
import androidx.compose.ui.text.android.style.ShadowSpan;
import androidx.compose.ui.text.android.style.SkewXSpan;
import androidx.compose.ui.text.android.style.TextDecorationSpan;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontSynthesis;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.intl.LocaleList;
import androidx.compose.ui.text.intl.PlatformLocaleKt;
import androidx.compose.ui.text.platform.extensions.PlaceholderExtensions_androidKt;
import androidx.compose.ui.text.platform.extensions.SpannableExtensions_androidKt;
import androidx.compose.ui.text.platform.style.CustomBulletSpan;
import androidx.compose.ui.text.platform.style.DrawStyleSpan;
import androidx.compose.ui.text.platform.style.ShaderBrushSpan;
import androidx.compose.ui.text.style.BaselineShift;
import androidx.compose.ui.text.style.LineHeightStyle;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.text.style.TextDirection;
import androidx.compose.ui.text.style.TextForegroundStyle;
import androidx.compose.ui.text.style.TextGeometricTransform;
import androidx.compose.ui.text.style.TextIndent;
import androidx.compose.ui.text.style.TextMotion;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.TextUnit;
import androidx.compose.ui.unit.TextUnitKt;
import androidx.compose.ui.unit.TextUnitType;
import androidx.emoji2.text.EmojiCompat;
import androidx.emoji2.text.EmojiSpan;
import defpackage.b21;
import defpackage.md;
import defpackage.ni0;
import defpackage.zy0;
import java.text.BreakIterator;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.PriorityQueue;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntRange;
import kotlin.text.StringsKt;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u0001BQ\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0014\u0010\t\u001a\u0010\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u00020\b0\u00070\u0006\u0012\u0012\u0010\u000b\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\n0\u00070\u0006\u0012\u0006\u0010\r\u001a\u00020\f\u0012\u0006\u0010\u000f\u001a\u00020\u000e¢\u0006\u0004\b\u0010\u0010\u0011¨\u0006\u0012"}, d2 = {"Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;", "Landroidx/compose/ui/text/ParagraphIntrinsics;", "", "text", "Landroidx/compose/ui/text/TextStyle;", "style", "", "Landroidx/compose/ui/text/AnnotatedString$Range;", "Landroidx/compose/ui/text/AnnotatedString$Annotation;", "annotations", "Landroidx/compose/ui/text/Placeholder;", "placeholders", "Landroidx/compose/ui/text/font/FontFamily$Resolver;", "fontFamilyResolver", "Landroidx/compose/ui/unit/Density;", "density", "<init>", "(Ljava/lang/String;Landroidx/compose/ui/text/TextStyle;Ljava/util/List;Ljava/util/List;Landroidx/compose/ui/text/font/FontFamily$Resolver;Landroidx/compose/ui/unit/Density;)V", "ui-text"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class AndroidParagraphIntrinsics implements ParagraphIntrinsics {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f10877a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final TextStyle f10878b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final List f10879c;
    public final List d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final FontFamily.Resolver f10880e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Density f10881f;
    public final AndroidTextPaint g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final CharSequence f10882h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final LayoutIntrinsics f10883i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public TypefaceDirtyTrackerLinkedList f10884j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final boolean f10885k;
    public final int l;

    /* JADX WARN: Code duplicated, block: B:135:0x02e4  */
    /* JADX WARN: Code duplicated, block: B:15:0x0069  */
    /* JADX WARN: Code duplicated, block: B:186:0x03df  */
    /* JADX WARN: Code duplicated, block: B:188:0x03e3  */
    /* JADX WARN: Code duplicated, block: B:189:0x03e6  */
    /* JADX WARN: Code duplicated, block: B:18:0x006f  */
    /* JADX WARN: Code duplicated, block: B:192:0x0403  */
    /* JADX WARN: Code duplicated, block: B:193:0x0410  */
    /* JADX WARN: Code duplicated, block: B:196:0x0416  */
    /* JADX WARN: Code duplicated, block: B:199:0x041d  */
    /* JADX WARN: Code duplicated, block: B:201:0x0420  */
    /* JADX WARN: Code duplicated, block: B:206:0x043d  */
    /* JADX WARN: Code duplicated, block: B:207:0x043f  */
    /* JADX WARN: Code duplicated, block: B:209:0x0443  */
    /* JADX WARN: Code duplicated, block: B:212:0x0456  */
    /* JADX WARN: Code duplicated, block: B:215:0x045d  */
    /* JADX WARN: Code duplicated, block: B:217:0x0463  */
    /* JADX WARN: Code duplicated, block: B:222:0x0479  */
    /* JADX WARN: Code duplicated, block: B:223:0x047c  */
    /* JADX WARN: Code duplicated, block: B:226:0x0482  */
    /* JADX WARN: Code duplicated, block: B:227:0x0485  */
    /* JADX WARN: Code duplicated, block: B:231:0x04a4  */
    /* JADX WARN: Code duplicated, block: B:233:0x04b5  */
    /* JADX WARN: Code duplicated, block: B:240:0x04cd  */
    /* JADX WARN: Code duplicated, block: B:241:0x04d4  */
    /* JADX WARN: Code duplicated, block: B:246:0x04ef  */
    /* JADX WARN: Code duplicated, block: B:247:0x04f4  */
    /* JADX WARN: Code duplicated, block: B:249:0x04fe  */
    /* JADX WARN: Code duplicated, block: B:250:0x0504  */
    /* JADX WARN: Code duplicated, block: B:253:0x0510  */
    /* JADX WARN: Code duplicated, block: B:254:0x0515  */
    /* JADX WARN: Code duplicated, block: B:256:0x051d  */
    /* JADX WARN: Code duplicated, block: B:257:0x0523  */
    /* JADX WARN: Code duplicated, block: B:259:0x0543  */
    /* JADX WARN: Code duplicated, block: B:262:0x055a  */
    /* JADX WARN: Code duplicated, block: B:264:0x0566  */
    /* JADX WARN: Code duplicated, block: B:266:0x056d  */
    /* JADX WARN: Code duplicated, block: B:273:0x057c  */
    /* JADX WARN: Code duplicated, block: B:277:0x058a  */
    /* JADX WARN: Code duplicated, block: B:286:0x059b  */
    /* JADX WARN: Code duplicated, block: B:289:0x05dc  */
    /* JADX WARN: Code duplicated, block: B:291:0x05e4  */
    /* JADX WARN: Code duplicated, block: B:294:0x05f2  */
    /* JADX WARN: Code duplicated, block: B:297:0x0615  */
    /* JADX WARN: Code duplicated, block: B:299:0x0626 A[LOOP:9: B:298:0x0624->B:299:0x0626, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:302:0x0646  */
    /* JADX WARN: Code duplicated, block: B:304:0x064b  */
    /* JADX WARN: Code duplicated, block: B:306:0x0651  */
    /* JADX WARN: Code duplicated, block: B:308:0x0655  */
    /* JADX WARN: Code duplicated, block: B:309:0x065a  */
    /* JADX WARN: Code duplicated, block: B:311:0x0662  */
    /* JADX WARN: Code duplicated, block: B:313:0x0676  */
    /* JADX WARN: Code duplicated, block: B:322:0x0694  */
    /* JADX WARN: Code duplicated, block: B:327:0x06b1  */
    /* JADX WARN: Code duplicated, block: B:329:0x06bd  */
    /* JADX WARN: Code duplicated, block: B:331:0x06c3  */
    /* JADX WARN: Code duplicated, block: B:336:0x06d1  */
    /* JADX WARN: Code duplicated, block: B:380:0x07ff  */
    /* JADX WARN: Code duplicated, block: B:382:0x0806  */
    /* JADX WARN: Code duplicated, block: B:384:0x0814  */
    /* JADX WARN: Code duplicated, block: B:386:0x081a  */
    /* JADX WARN: Code duplicated, block: B:391:0x0828  */
    /* JADX WARN: Code duplicated, block: B:404:0x0872  */
    /* JADX WARN: Code duplicated, block: B:406:0x0885  */
    /* JADX WARN: Code duplicated, block: B:407:0x088a  */
    /* JADX WARN: Code duplicated, block: B:409:0x0892  */
    /* JADX WARN: Code duplicated, block: B:410:0x0899  */
    /* JADX WARN: Code duplicated, block: B:412:0x089e  */
    /* JADX WARN: Code duplicated, block: B:415:0x08a7  */
    /* JADX WARN: Code duplicated, block: B:417:0x08b3  */
    /* JADX WARN: Code duplicated, block: B:418:0x08b6  */
    /* JADX WARN: Code duplicated, block: B:420:0x08ba  */
    /* JADX WARN: Code duplicated, block: B:422:0x08d2  */
    /* JADX WARN: Code duplicated, block: B:430:0x0909  */
    /* JADX WARN: Code duplicated, block: B:432:0x0923 A[LOOP:8: B:431:0x0921->B:432:0x0923, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:435:0x0951  */
    /* JADX WARN: Code duplicated, block: B:437:0x0955  */
    /* JADX WARN: Code duplicated, block: B:439:0x0959  */
    /* JADX WARN: Code duplicated, block: B:440:0x095c  */
    /* JADX WARN: Code duplicated, block: B:442:0x0960  */
    /* JADX WARN: Code duplicated, block: B:443:0x0963  */
    /* JADX WARN: Code duplicated, block: B:445:0x0967  */
    /* JADX WARN: Code duplicated, block: B:446:0x096a  */
    /* JADX WARN: Code duplicated, block: B:448:0x096e  */
    /* JADX WARN: Code duplicated, block: B:450:0x0972  */
    /* JADX WARN: Code duplicated, block: B:452:0x0976  */
    /* JADX WARN: Code duplicated, block: B:453:0x0978  */
    /* JADX WARN: Code duplicated, block: B:455:0x097c  */
    /* JADX WARN: Code duplicated, block: B:462:0x09a3  */
    /* JADX WARN: Code duplicated, block: B:474:0x057f A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:486:0x08fb A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:487:0x08fb A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:490:0x098e A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:498:0x0689 A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /* JADX WARN: Instruction removed from duplicated block: B:430:0x0909, please report this as an issue */
    public AndroidParagraphIntrinsics(String str, TextStyle textStyle, List<? extends AnnotatedString.Range<? extends AnnotatedString.Annotation>> list, List<AnnotatedString.Range<Placeholder>> list2, FontFamily.Resolver resolver, Density density) throws Throwable {
        boolean zBooleanValue;
        Locale locale;
        int i2;
        AnnotatedString.Range<? extends AnnotatedString.Annotation> range;
        boolean z;
        FontWeight fontWeight;
        FontWeight fontWeight2;
        int i3;
        int i4;
        boolean z2;
        SpanStyle spanStyle;
        CharSequence charSequenceJ;
        Spannable spannableString;
        ParagraphStyle paragraphStyle;
        TextDecoration textDecoration;
        PlatformTextStyle platformTextStyle;
        boolean z3;
        LineHeightStyle lineHeightStyle;
        float fB;
        int length;
        int i5;
        boolean z4;
        boolean z5;
        int i6;
        TextIndent textIndent;
        ParagraphStyle paragraphStyle2;
        ArrayList arrayList;
        List list3;
        int size;
        int i7;
        SpanStyle spanStyle2;
        FontFamily fontFamily;
        SpanStyle spanStyle3;
        ni0 ni0Var;
        int size2;
        int i8;
        int[] iArr;
        int size3;
        int i9;
        Collection collection;
        int i10;
        int i11;
        int i12;
        int i13;
        int size4;
        ArrayList arrayList2;
        int i14;
        int i15;
        int size5;
        boolean z6;
        int i16;
        boolean z7;
        Spannable spannable;
        Density density2;
        TextIndent textIndent2;
        float f2;
        int size6;
        int i17;
        int size7;
        int i18;
        int i19;
        int i20;
        int i21;
        int i22;
        Object obj;
        Bullet bullet;
        float fA;
        long j2;
        long jB;
        float fC;
        int size8;
        int i23;
        AnnotatedString.Range range2;
        AnnotatedString.Annotation annotation;
        int i24;
        int i25;
        Object letterSpacingSpanEm;
        AnnotatedString.Range range3;
        Object obj2;
        boolean z8;
        Spannable spannable2;
        int i26;
        int i27;
        int i28;
        AnnotatedString.Range range4;
        Object obj3;
        SpanStyle spanStyle4;
        int i29;
        long j3;
        long j4;
        long jB2;
        long j5;
        float fC2;
        long jB3;
        float fC3;
        PlatformParagraphStyle platformParagraphStyle;
        PlatformParagraphStyle platformParagraphStyle2;
        this.f10877a = str;
        this.f10878b = textStyle;
        this.f10879c = list;
        this.d = list2;
        this.f10880e = resolver;
        this.f10881f = density;
        AndroidTextPaint androidTextPaint = new AndroidTextPaint(1, density.getF11002b());
        this.g = androidTextPaint;
        boolean zA = AndroidParagraphIntrinsics_androidKt.a(textStyle);
        SpanStyle spanStyle5 = textStyle.f10568a;
        ParagraphStyle paragraphStyle3 = textStyle.f10569b;
        if (zA) {
            EmojiCompatStatusDelegate emojiCompatStatusDelegate = EmojiCompatStatus.f10900a;
            DefaultImpl defaultImpl = (DefaultImpl) EmojiCompatStatus.f10900a;
            State stateA = defaultImpl.f10896a;
            if (stateA == null) {
                if (EmojiCompat.g()) {
                    stateA = defaultImpl.a();
                    defaultImpl.f10896a = stateA;
                } else {
                    stateA = EmojiCompatStatus_androidKt.f10901a;
                }
            }
            zBooleanValue = ((Boolean) stateA.getF10755b()).booleanValue();
        } else {
            zBooleanValue = false;
        }
        this.f10885k = zBooleanValue;
        int i30 = paragraphStyle3.f10480b;
        LocaleList localeList = spanStyle5.localeList;
        TextDirection.f10969b.getClass();
        if (i30 == TextDirection.f10972f) {
            i2 = 2;
        } else if (i30 == TextDirection.g) {
            i2 = 3;
        } else if (i30 == TextDirection.f10970c) {
            i2 = 0;
        } else if (i30 == TextDirection.d) {
            i2 = 1;
        } else {
            if (i30 != TextDirection.f10971e && i30 != 0) {
                md.k("Invalid TextDirection.");
                throw null;
            }
            int layoutDirectionFromLocale = TextUtils.getLayoutDirectionFromLocale((localeList == null || (locale = ((androidx.compose.ui.text.intl.Locale) localeList.f10873b.get(0)).f10871a) == null) ? Locale.getDefault() : locale);
            if (layoutDirectionFromLocale == 0 || layoutDirectionFromLocale != 1) {
                i2 = 2;
            } else {
                i2 = 3;
            }
        }
        this.l = i2;
        a aVar = new a(this);
        TextMotion textMotion = paragraphStyle3.f10485i;
        if (textMotion == null) {
            TextMotion.f10981c.getClass();
            textMotion = TextMotion.d;
        }
        androidTextPaint.setFlags(textMotion.f10984b ? androidTextPaint.getFlags() | 128 : androidTextPaint.getFlags() & (-129));
        int i31 = textMotion.f10983a;
        TextMotion.Linearity.f10985b.getClass();
        if (i31 == TextMotion.Linearity.f10986c) {
            androidTextPaint.setFlags(androidTextPaint.getFlags() | 64);
            androidTextPaint.setHinting(0);
        } else if (i31 == TextMotion.Linearity.d) {
            androidTextPaint.getFlags();
            androidTextPaint.setHinting(1);
        } else if (i31 == TextMotion.Linearity.f10987e) {
            androidTextPaint.getFlags();
            androidTextPaint.setHinting(0);
        } else {
            androidTextPaint.getFlags();
        }
        int size9 = list.size();
        int i32 = 0;
        while (true) {
            if (i32 >= size9) {
                range = null;
                break;
            }
            range = list.get(i32);
            if (range.f10428a instanceof SpanStyle) {
                break;
            } else {
                i32++;
            }
        }
        boolean z9 = range != null;
        long j6 = spanStyle5.fontSize;
        FontWeight fontWeight3 = spanStyle5.fontWeight;
        FontStyle fontStyle = spanStyle5.fontStyle;
        String str2 = spanStyle5.fontFeatureSettings;
        LocaleList localeList2 = spanStyle5.localeList;
        TextForegroundStyle textForegroundStyle = spanStyle5.f10522a;
        TextGeometricTransform textGeometricTransform = spanStyle5.textGeometricTransform;
        long j7 = spanStyle5.letterSpacing;
        long jB4 = TextUnit.b(j6);
        TextUnitType.f11026b.getClass();
        if (TextUnitType.a(jB4, TextUnitType.f11027c)) {
            androidTextPaint.setTextSize(density.E0(j6));
            z = z9;
            fontWeight = fontWeight3;
        } else {
            z = z9;
            fontWeight = fontWeight3;
            if (TextUnitType.a(jB4, TextUnitType.d)) {
                androidTextPaint.setTextSize(TextUnit.c(j6) * androidTextPaint.getTextSize());
            }
        }
        FontFamily fontFamily2 = spanStyle5.fontFamily;
        if (fontFamily2 != null || fontStyle != null || fontWeight != null) {
            if (fontWeight == null) {
                FontWeight.f10727c.getClass();
                fontWeight2 = FontWeight.f10730h;
            } else {
                fontWeight2 = fontWeight;
            }
            if (fontStyle != null) {
                i3 = fontStyle.f10717a;
            } else {
                FontStyle.f10715b.getClass();
                i3 = 0;
            }
            FontStyle fontStyle2 = new FontStyle(i3);
            FontSynthesis fontSynthesis = spanStyle5.fontSynthesis;
            if (fontSynthesis != null) {
                i4 = fontSynthesis.f10721a;
            } else {
                FontSynthesis.f10718b.getClass();
                i4 = FontSynthesis.f10720e;
            }
            androidTextPaint.setTypeface((Typeface) aVar.g(fontFamily2, fontWeight2, fontStyle2, new FontSynthesis(i4)));
        }
        if (localeList2 != null) {
            LocaleList.d.getClass();
            if (!localeList2.equals(PlatformLocaleKt.f10875a.a())) {
                ArrayList arrayList3 = new ArrayList(CollectionsKt.t(localeList2, 10));
                Iterator it = localeList2.f10873b.iterator();
                while (it.hasNext()) {
                    arrayList3.add(((androidx.compose.ui.text.intl.Locale) it.next()).f10871a);
                }
                Locale[] localeArr = (Locale[]) arrayList3.toArray(new Locale[0]);
                androidTextPaint.setTextLocales(new android.os.LocaleList((Locale[]) Arrays.copyOf(localeArr, localeArr.length)));
            }
        }
        if (str2 != null && !str2.equals("")) {
            androidTextPaint.setFontFeatureSettings(str2);
        }
        if (textGeometricTransform != null) {
            TextGeometricTransform.f10975c.getClass();
            if (!textGeometricTransform.equals(TextGeometricTransform.d)) {
                androidTextPaint.setTextScaleX(androidTextPaint.getTextScaleX() * textGeometricTransform.f10976a);
                androidTextPaint.setTextSkewX(androidTextPaint.getTextSkewX() + textGeometricTransform.f10977b);
            }
        }
        androidTextPaint.d(textForegroundStyle.getF10927a());
        Brush brushE = textForegroundStyle.e();
        Size.f8820b.getClass();
        androidTextPaint.c(brushE, Size.f8821c, textForegroundStyle.getF10926b());
        androidTextPaint.f(spanStyle5.shadow);
        androidTextPaint.g(spanStyle5.background);
        androidTextPaint.e(spanStyle5.drawStyle);
        long jB5 = TextUnit.b(j7);
        TextUnitType.f11026b.getClass();
        long j8 = TextUnitType.f11027c;
        if (TextUnitType.a(jB5, j8) && TextUnit.c(j7) != Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            float textScaleX = androidTextPaint.getTextScaleX() * androidTextPaint.getTextSize();
            float fE0 = density.E0(j7);
            if (textScaleX != Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                androidTextPaint.setLetterSpacing(fE0 / textScaleX);
            }
        } else if (TextUnitType.a(TextUnit.b(j7), TextUnitType.d)) {
            androidTextPaint.setLetterSpacing(TextUnit.c(j7));
        }
        long j9 = spanStyle5.l;
        BaselineShift baselineShift = spanStyle5.baselineShift;
        boolean z10 = z && TextUnitType.a(TextUnit.b(j7), j8) && TextUnit.c(j7) != Call.Parameters.DEFAULT_CAMERA_ZOOM;
        Color.f8866b.getClass();
        long j10 = Color.f8871i;
        boolean z11 = (Color.c(j9, j10) || Color.c(j9, Color.f8870h)) ? false : true;
        if (baselineShift != null) {
            BaselineShift.f10922b.getClass();
            if (Float.compare(baselineShift.f10924a, Call.Parameters.DEFAULT_CAMERA_ZOOM) == 0) {
                z2 = false;
            } else {
                z2 = true;
            }
        } else {
            z2 = false;
        }
        if (z10 || z11 || z2) {
            if (!z10) {
                TextUnit.f11023b.getClass();
                j7 = TextUnit.d;
            }
            spanStyle = new SpanStyle(0L, 0L, (FontWeight) null, (FontStyle) null, (FontSynthesis) null, (FontFamily) null, (String) null, j7, z2 ? baselineShift : null, (TextGeometricTransform) null, (LocaleList) null, z11 ? j9 : j10, (TextDecoration) null, (Shadow) null, (PlatformSpanStyle) null, (DrawStyle) null, 63103, (DefaultConstructorMarker) null);
        } else {
            spanStyle = null;
        }
        List list4 = this.f10879c;
        if (spanStyle != null) {
            int size10 = list4.size() + 1;
            ArrayList arrayList4 = new ArrayList(size10);
            int i33 = 0;
            while (i33 < size10) {
                arrayList4.add(i33 == 0 ? new AnnotatedString.Range(spanStyle, 0, this.f10877a.length()) : (AnnotatedString.Range) this.f10879c.get(i33 - 1));
                i33++;
            }
            list4 = arrayList4;
        }
        String str3 = this.f10877a;
        float textSize = this.g.getTextSize();
        TextStyle textStyle2 = this.f10878b;
        List list5 = this.d;
        Density density3 = this.f10881f;
        boolean z12 = this.f10885k;
        AndroidParagraphHelper_androidKt$NoopSpan$1 androidParagraphHelper_androidKt$NoopSpan$1 = AndroidParagraphHelper_androidKt.f10876a;
        if (z12 && EmojiCompat.g()) {
            PlatformTextStyle platformTextStyle2 = textStyle2.platformStyle;
            EmojiSupportMatch emojiSupportMatch = (platformTextStyle2 == null || (platformParagraphStyle2 = platformTextStyle2.f10503b) == null) ? null : new EmojiSupportMatch(platformParagraphStyle2.f10499b);
            EmojiSupportMatch.f10450b.getClass();
            charSequenceJ = EmojiCompat.a().j(0, str3.length(), (emojiSupportMatch != null && emojiSupportMatch.f10452a == EmojiSupportMatch.d) ? 1 : 0, str3);
            charSequenceJ.getClass();
        } else {
            charSequenceJ = str3;
        }
        if (list4.isEmpty() && list5.isEmpty()) {
            TextIndent textIndent3 = textStyle2.f10569b.d;
            TextIndent.f10978c.getClass();
            if (Intrinsics.c(textIndent3, TextIndent.d)) {
                long j11 = textStyle2.f10569b.f10481c;
                TextUnit.Companion companion = TextUnit.f11023b;
                if ((j11 & 1095216660480L) != 0) {
                    if (charSequenceJ instanceof Spannable) {
                        spannableString = (Spannable) charSequenceJ;
                    } else {
                        spannableString = new SpannableString(charSequenceJ);
                    }
                    SpanStyle spanStyle6 = textStyle2.f10568a;
                    paragraphStyle = textStyle2.f10569b;
                    textDecoration = spanStyle6.background;
                    TextDecoration.f10965b.getClass();
                    if (Intrinsics.c(textDecoration, TextDecoration.d)) {
                        spannableString.setSpan(AndroidParagraphHelper_androidKt.f10876a, 0, str3.length(), 33);
                    }
                    platformTextStyle = textStyle2.platformStyle;
                    if (platformTextStyle != null) {
                        z3 = false;
                    } else {
                        z3 = false;
                    }
                    if (z3) {
                        lineHeightStyle = paragraphStyle.f10483f;
                        if (lineHeightStyle == null) {
                            LineHeightStyle.d.getClass();
                            lineHeightStyle = LineHeightStyle.f10944e;
                        }
                        fB = SpannableExtensions_androidKt.b(paragraphStyle.f10481c, textSize, density3);
                        if (Float.isNaN(fB)) {
                            i6 = 0;
                        } else {
                            if (spannableString.length() == 0) {
                                length = spannableString.length() + 1;
                            } else {
                                length = spannableString.length();
                            }
                            int i34 = length;
                            i5 = lineHeightStyle.f10946b;
                            if ((i5 & 1) > 0) {
                                z4 = true;
                            } else {
                                z4 = false;
                            }
                            if ((i5 & 16) > 0) {
                                z5 = true;
                            } else {
                                z5 = false;
                            }
                            i6 = 0;
                            spannableString.setSpan(new LineHeightStyleSpan(fB, 0, i34, z4, z5, lineHeightStyle.f10945a, lineHeightStyle.f10947c, null), 0, spannableString.length(), 33);
                        }
                    } else {
                        lineHeightStyle = paragraphStyle.f10483f;
                        if (lineHeightStyle == null) {
                            LineHeightStyle.d.getClass();
                            lineHeightStyle = LineHeightStyle.f10944e;
                        }
                        fB = SpannableExtensions_androidKt.b(paragraphStyle.f10481c, textSize, density3);
                        if (Float.isNaN(fB)) {
                            if (spannableString.length() == 0) {
                                length = spannableString.length() + 1;
                            } else {
                                length = spannableString.length();
                            }
                            int i35 = length;
                            i5 = lineHeightStyle.f10946b;
                            if ((i5 & 1) > 0) {
                                z4 = true;
                            } else {
                                z4 = false;
                            }
                            if ((i5 & 16) > 0) {
                                z5 = true;
                            } else {
                                z5 = false;
                            }
                            i6 = 0;
                            spannableString.setSpan(new LineHeightStyleSpan(fB, 0, i35, z4, z5, lineHeightStyle.f10945a, lineHeightStyle.f10947c, null), 0, spannableString.length(), 33);
                        } else {
                            i6 = 0;
                        }
                    }
                    textIndent = paragraphStyle.d;
                    if (textIndent != null) {
                        i29 = i6;
                        j3 = textIndent.f10979a;
                        j4 = textIndent.f10980b;
                        if (!TextUnit.a(j3, TextUnitKt.c(i29))) {
                        }
                        if ((j3 & 1095216660480L) == r13) {
                            paragraphStyle2 = paragraphStyle;
                        } else {
                            jB2 = TextUnit.b(j3);
                            TextUnitType.f11026b.getClass();
                            paragraphStyle2 = paragraphStyle;
                            j5 = TextUnitType.f11027c;
                            if (TextUnitType.a(jB2, j5)) {
                                fC2 = density3.E0(j3);
                            } else if (TextUnitType.a(jB2, TextUnitType.d)) {
                                fC2 = TextUnit.c(j3) * textSize;
                            } else {
                                fC2 = 0.0f;
                            }
                            jB3 = TextUnit.b(j4);
                            if (TextUnitType.a(jB3, j5)) {
                                fC3 = density3.E0(j4);
                            } else if (TextUnitType.a(jB3, TextUnitType.d)) {
                                fC3 = TextUnit.c(j4) * textSize;
                            } else {
                                fC3 = 0.0f;
                            }
                            spannableString.setSpan(new LeadingMarginSpan.Standard((int) Math.ceil(fC2), (int) Math.ceil(fC3)), 0, spannableString.length(), 33);
                        }
                        arrayList = new ArrayList(list4.size());
                        list3 = list4;
                        size = list3.size();
                        for (i7 = 0; i7 < size; i7++) {
                            range4 = (AnnotatedString.Range) list4.get(i7);
                            obj3 = range4.f10428a;
                            if (obj3 instanceof SpanStyle) {
                                spanStyle4 = (SpanStyle) obj3;
                                if (spanStyle4.fontFamily == null) {
                                    arrayList.add(range4);
                                } else {
                                    arrayList.add(range4);
                                }
                            }
                        }
                        spanStyle2 = textStyle2.f10568a;
                        fontFamily = spanStyle2.fontFamily;
                        if (fontFamily != null) {
                            spanStyle3 = new SpanStyle(0L, 0L, spanStyle2.fontWeight, spanStyle2.fontStyle, spanStyle2.fontSynthesis, fontFamily, (String) null, 0L, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, (TextDecoration) null, (Shadow) null, (PlatformSpanStyle) null, (DrawStyle) null, 65475, (DefaultConstructorMarker) null);
                        } else {
                            spanStyle3 = new SpanStyle(0L, 0L, spanStyle2.fontWeight, spanStyle2.fontStyle, spanStyle2.fontSynthesis, fontFamily, (String) null, 0L, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, (TextDecoration) null, (Shadow) null, (PlatformSpanStyle) null, (DrawStyle) null, 65475, (DefaultConstructorMarker) null);
                        }
                        ni0Var = new ni0(spannableString, aVar, 25);
                        if (arrayList.size() <= 1) {
                            if (!arrayList.isEmpty()) {
                                SpanStyle spanStyle7 = (SpanStyle) ((AnnotatedString.Range) arrayList.get(0)).f10428a;
                                ni0Var.A(spanStyle3 != null ? spanStyle3.d(spanStyle7) : spanStyle7, Integer.valueOf(((AnnotatedString.Range) arrayList.get(0)).f10429b), Integer.valueOf(((AnnotatedString.Range) arrayList.get(0)).f10430c));
                            }
                            collection = list3;
                        } else {
                            size2 = arrayList.size();
                            i8 = size2 * 2;
                            iArr = new int[i8];
                            size3 = arrayList.size();
                            i9 = 0;
                            while (i9 < size3) {
                                AnnotatedString.Range range5 = (AnnotatedString.Range) arrayList.get(i9);
                                iArr[i9] = range5.f10429b;
                                iArr[i9 + size2] = range5.f10430c;
                                i9++;
                                list3 = list3;
                            }
                            collection = list3;
                            if (i8 > 1) {
                                Arrays.sort(iArr);
                            }
                            if (i8 != 0) {
                                zy0.c("Array is empty.");
                                throw null;
                            }
                            i10 = 0;
                            i11 = iArr[0];
                            i12 = 0;
                            while (i12 < i8) {
                                i13 = iArr[i12];
                                if (i13 == i11) {
                                    arrayList2 = arrayList;
                                } else {
                                    size4 = arrayList.size();
                                    while (i10 < size4) {
                                        ArrayList arrayList5 = arrayList;
                                        AnnotatedString.Range range6 = (AnnotatedString.Range) arrayList.get(i10);
                                        int i36 = size4;
                                        i14 = range6.f10429b;
                                        int i37 = i10;
                                        i15 = range6.f10430c;
                                        if (i14 == i15) {
                                        }
                                        i10 = i37 + 1;
                                        size4 = i36;
                                        arrayList = arrayList5;
                                    }
                                    arrayList2 = arrayList;
                                    if (spanStyle3 != null) {
                                        ni0Var.A(spanStyle3, Integer.valueOf(i11), Integer.valueOf(i13));
                                    }
                                    i11 = i13;
                                }
                                i12++;
                                spanStyle3 = spanStyle3;
                                arrayList = arrayList2;
                                i10 = 0;
                            }
                        }
                        size5 = collection.size();
                        z6 = false;
                        i16 = 0;
                        while (i16 < size5) {
                            range3 = (AnnotatedString.Range) list4.get(i16);
                            obj2 = range3.f10428a;
                            if (obj2 instanceof SpanStyle) {
                                i26 = range3.f10429b;
                                int i38 = range3.f10430c;
                                if (i26 >= 0) {
                                    size5 = size5;
                                    z8 = z6;
                                    i16 = i16;
                                    spannable2 = spannableString;
                                    density3 = density3;
                                } else {
                                    size5 = size5;
                                    z8 = z6;
                                    i16 = i16;
                                    spannable2 = spannableString;
                                    density3 = density3;
                                }
                            } else {
                                size5 = size5;
                                z8 = z6;
                                i16 = i16;
                                spannable2 = spannableString;
                                density3 = density3;
                            }
                            i16++;
                            density3 = density3;
                            size5 = size5;
                            spannableString = spannable2;
                            z6 = z8;
                        }
                        z7 = z6;
                        spannable = spannableString;
                        density2 = density3;
                        if (z7) {
                            size8 = collection.size();
                            i23 = 0;
                            while (i23 < size8) {
                                range2 = (AnnotatedString.Range) list4.get(i23);
                                annotation = (AnnotatedString.Annotation) range2.f10428a;
                                if (annotation instanceof SpanStyle) {
                                    i25 = range2.f10429b;
                                    int i39 = range2.f10430c;
                                    if (i25 >= 0) {
                                        i24 = i23;
                                    } else {
                                        i24 = i23;
                                    }
                                } else {
                                    i24 = i23;
                                }
                                i23 = i24 + 1;
                            }
                        }
                        textIndent2 = paragraphStyle2.d;
                        if (textIndent2 != null) {
                            j2 = textIndent2.f10979a;
                            jB = TextUnit.b(j2);
                            TextUnitType.f11026b.getClass();
                            if (TextUnitType.a(jB, TextUnitType.f11027c)) {
                                fC = density2.E0(j2);
                            } else if (TextUnitType.a(jB, TextUnitType.d)) {
                                fC = TextUnit.c(j2) * textSize;
                            } else {
                                fC = 0.0f;
                            }
                            f2 = fC;
                        } else {
                            f2 = 0.0f;
                        }
                        size6 = collection.size();
                        for (i17 = 0; i17 < size6; i17++) {
                            AnnotatedString.Range range7 = (AnnotatedString.Range) list4.get(i17);
                            obj = range7.f10428a;
                            if (obj instanceof Bullet) {
                                bullet = (Bullet) obj;
                            } else {
                                bullet = null;
                            }
                            if (bullet != null) {
                                fA = SpannableExtensions_androidKt.a(bullet.f10441b, textSize, density2);
                                float fA2 = SpannableExtensions_androidKt.a(bullet.f10442c, textSize, density2);
                                float fA3 = SpannableExtensions_androidKt.a(bullet.d, textSize, density2);
                                if (Float.isNaN(fA)) {
                                }
                            }
                        }
                        size7 = list5.size();
                        i18 = 0;
                        while (i18 < size7) {
                            List list6 = list5;
                            AnnotatedString.Range range8 = (AnnotatedString.Range) list6.get(i18);
                            Placeholder placeholder = (Placeholder) range8.f10428a;
                            int i40 = range8.f10429b;
                            int i41 = range8.f10430c;
                            for (Object obj4 : spannable.getSpans(i40, i41, EmojiSpan.class)) {
                                spannable.removeSpan((EmojiSpan) obj4);
                            }
                            long j12 = placeholder.f10488a;
                            long j13 = placeholder.f10489b;
                            float fC4 = TextUnit.c(j12);
                            int iA = PlaceholderExtensions_androidKt.a(placeholder.f10488a);
                            float fC5 = TextUnit.c(j13);
                            int iA2 = PlaceholderExtensions_androidKt.a(j13);
                            i20 = placeholder.f10490c;
                            PlaceholderVerticalAlign.f10491a.getClass();
                            if (i20 == PlaceholderVerticalAlign.f10492b) {
                                i22 = 0;
                            } else if (i20 == PlaceholderVerticalAlign.f10493c) {
                                i22 = 1;
                            } else if (i20 == PlaceholderVerticalAlign.d) {
                                i22 = 2;
                            } else if (i20 == PlaceholderVerticalAlign.f10494e) {
                                i22 = 3;
                            } else {
                                if (i20 == PlaceholderVerticalAlign.f10495f) {
                                    i21 = 4;
                                } else if (i20 == PlaceholderVerticalAlign.g) {
                                    i21 = 5;
                                } else {
                                    if (i20 == PlaceholderVerticalAlign.f10496h) {
                                        md.k("Invalid PlaceholderVerticalAlign");
                                        throw null;
                                    }
                                    i21 = 6;
                                }
                                i22 = i21;
                            }
                            PlaceholderSpan placeholderSpan = new PlaceholderSpan(fC4, iA, fC5, iA2, density2, i22);
                            density2 = density2;
                            spannable.setSpan(placeholderSpan, i40, i41, 33);
                            i18++;
                            list5 = list6;
                        }
                        charSequenceJ = spannable;
                    } else {
                        paragraphStyle2 = paragraphStyle;
                    }
                    arrayList = new ArrayList(list4.size());
                    list3 = list4;
                    size = list3.size();
                    while (i7 < size) {
                        range4 = (AnnotatedString.Range) list4.get(i7);
                        obj3 = range4.f10428a;
                        if (obj3 instanceof SpanStyle) {
                            spanStyle4 = (SpanStyle) obj3;
                            if (spanStyle4.fontFamily == null) {
                                arrayList.add(range4);
                            } else {
                                arrayList.add(range4);
                            }
                        }
                    }
                    spanStyle2 = textStyle2.f10568a;
                    fontFamily = spanStyle2.fontFamily;
                    if (fontFamily != null) {
                        spanStyle3 = new SpanStyle(0L, 0L, spanStyle2.fontWeight, spanStyle2.fontStyle, spanStyle2.fontSynthesis, fontFamily, (String) null, 0L, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, (TextDecoration) null, (Shadow) null, (PlatformSpanStyle) null, (DrawStyle) null, 65475, (DefaultConstructorMarker) null);
                    } else {
                        spanStyle3 = new SpanStyle(0L, 0L, spanStyle2.fontWeight, spanStyle2.fontStyle, spanStyle2.fontSynthesis, fontFamily, (String) null, 0L, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, (TextDecoration) null, (Shadow) null, (PlatformSpanStyle) null, (DrawStyle) null, 65475, (DefaultConstructorMarker) null);
                    }
                    ni0Var = new ni0(spannableString, aVar, 25);
                    if (arrayList.size() <= 1) {
                        if (!arrayList.isEmpty()) {
                            SpanStyle spanStyle8 = (SpanStyle) ((AnnotatedString.Range) arrayList.get(0)).f10428a;
                            ni0Var.A(spanStyle3 != null ? spanStyle3.d(spanStyle8) : spanStyle8, Integer.valueOf(((AnnotatedString.Range) arrayList.get(0)).f10429b), Integer.valueOf(((AnnotatedString.Range) arrayList.get(0)).f10430c));
                        }
                        collection = list3;
                    } else {
                        size2 = arrayList.size();
                        i8 = size2 * 2;
                        iArr = new int[i8];
                        size3 = arrayList.size();
                        i9 = 0;
                        while (i9 < size3) {
                            AnnotatedString.Range range9 = (AnnotatedString.Range) arrayList.get(i9);
                            iArr[i9] = range9.f10429b;
                            iArr[i9 + size2] = range9.f10430c;
                            i9++;
                            list3 = list3;
                        }
                        collection = list3;
                        if (i8 > 1) {
                            Arrays.sort(iArr);
                        }
                        if (i8 != 0) {
                            zy0.c("Array is empty.");
                            throw null;
                        }
                        i10 = 0;
                        i11 = iArr[0];
                        i12 = 0;
                        while (i12 < i8) {
                            i13 = iArr[i12];
                            if (i13 == i11) {
                                arrayList2 = arrayList;
                            } else {
                                size4 = arrayList.size();
                                while (i10 < size4) {
                                    ArrayList arrayList6 = arrayList;
                                    AnnotatedString.Range range10 = (AnnotatedString.Range) arrayList.get(i10);
                                    int i310 = size4;
                                    i14 = range10.f10429b;
                                    int i311 = i10;
                                    i15 = range10.f10430c;
                                    if (i14 == i15) {
                                    }
                                    i10 = i311 + 1;
                                    size4 = i310;
                                    arrayList = arrayList6;
                                }
                                arrayList2 = arrayList;
                                if (spanStyle3 != null) {
                                    ni0Var.A(spanStyle3, Integer.valueOf(i11), Integer.valueOf(i13));
                                }
                                i11 = i13;
                            }
                            i12++;
                            spanStyle3 = spanStyle3;
                            arrayList = arrayList2;
                            i10 = 0;
                        }
                    }
                    size5 = collection.size();
                    z6 = false;
                    i16 = 0;
                    while (i16 < size5) {
                        range3 = (AnnotatedString.Range) list4.get(i16);
                        obj2 = range3.f10428a;
                        if (obj2 instanceof SpanStyle) {
                            i26 = range3.f10429b;
                            int i312 = range3.f10430c;
                            if (i26 >= 0) {
                                size5 = size5;
                                z8 = z6;
                                i16 = i16;
                                spannable2 = spannableString;
                                density3 = density3;
                            } else {
                                size5 = size5;
                                z8 = z6;
                                i16 = i16;
                                spannable2 = spannableString;
                                density3 = density3;
                            }
                        } else {
                            size5 = size5;
                            z8 = z6;
                            i16 = i16;
                            spannable2 = spannableString;
                            density3 = density3;
                        }
                        i16++;
                        density3 = density3;
                        size5 = size5;
                        spannableString = spannable2;
                        z6 = z8;
                    }
                    z7 = z6;
                    spannable = spannableString;
                    density2 = density3;
                    if (z7) {
                        size8 = collection.size();
                        i23 = 0;
                        while (i23 < size8) {
                            range2 = (AnnotatedString.Range) list4.get(i23);
                            annotation = (AnnotatedString.Annotation) range2.f10428a;
                            if (annotation instanceof SpanStyle) {
                                i25 = range2.f10429b;
                                int i313 = range2.f10430c;
                                if (i25 >= 0) {
                                    i24 = i23;
                                } else {
                                    i24 = i23;
                                }
                            } else {
                                i24 = i23;
                            }
                            i23 = i24 + 1;
                        }
                    }
                    textIndent2 = paragraphStyle2.d;
                    if (textIndent2 != null) {
                        j2 = textIndent2.f10979a;
                        jB = TextUnit.b(j2);
                        TextUnitType.f11026b.getClass();
                        if (TextUnitType.a(jB, TextUnitType.f11027c)) {
                            fC = density2.E0(j2);
                        } else if (TextUnitType.a(jB, TextUnitType.d)) {
                            fC = TextUnit.c(j2) * textSize;
                        } else {
                            fC = 0.0f;
                        }
                        f2 = fC;
                    } else {
                        f2 = 0.0f;
                    }
                    size6 = collection.size();
                    while (i17 < size6) {
                        AnnotatedString.Range range11 = (AnnotatedString.Range) list4.get(i17);
                        obj = range11.f10428a;
                        if (obj instanceof Bullet) {
                            bullet = (Bullet) obj;
                        } else {
                            bullet = null;
                        }
                        if (bullet != null) {
                            fA = SpannableExtensions_androidKt.a(bullet.f10441b, textSize, density2);
                            float fA4 = SpannableExtensions_androidKt.a(bullet.f10442c, textSize, density2);
                            float fA5 = SpannableExtensions_androidKt.a(bullet.d, textSize, density2);
                            if (Float.isNaN(fA)) {
                            }
                        }
                    }
                    size7 = list5.size();
                    i18 = 0;
                    while (i18 < size7) {
                        List list7 = list5;
                        AnnotatedString.Range range12 = (AnnotatedString.Range) list7.get(i18);
                        Placeholder placeholder2 = (Placeholder) range12.f10428a;
                        int i42 = range12.f10429b;
                        int i43 = range12.f10430c;
                        while (i19 < r10) {
                            spannable.removeSpan((EmojiSpan) obj4);
                        }
                        long j14 = placeholder2.f10488a;
                        long j15 = placeholder2.f10489b;
                        float fC6 = TextUnit.c(j14);
                        int iA3 = PlaceholderExtensions_androidKt.a(placeholder2.f10488a);
                        float fC7 = TextUnit.c(j15);
                        int iA4 = PlaceholderExtensions_androidKt.a(j15);
                        i20 = placeholder2.f10490c;
                        PlaceholderVerticalAlign.f10491a.getClass();
                        if (i20 == PlaceholderVerticalAlign.f10492b) {
                            i22 = 0;
                        } else if (i20 == PlaceholderVerticalAlign.f10493c) {
                            i22 = 1;
                        } else if (i20 == PlaceholderVerticalAlign.d) {
                            i22 = 2;
                        } else if (i20 == PlaceholderVerticalAlign.f10494e) {
                            i22 = 3;
                        } else {
                            if (i20 == PlaceholderVerticalAlign.f10495f) {
                                i21 = 4;
                            } else if (i20 == PlaceholderVerticalAlign.g) {
                                i21 = 5;
                            } else {
                                if (i20 == PlaceholderVerticalAlign.f10496h) {
                                    md.k("Invalid PlaceholderVerticalAlign");
                                    throw null;
                                }
                                i21 = 6;
                            }
                            i22 = i21;
                        }
                        PlaceholderSpan placeholderSpan2 = new PlaceholderSpan(fC6, iA3, fC7, iA4, density2, i22);
                        density2 = density2;
                        spannable.setSpan(placeholderSpan2, i42, i43, 33);
                        i18++;
                        list5 = list7;
                    }
                    charSequenceJ = spannable;
                }
            } else {
                if (charSequenceJ instanceof Spannable) {
                    spannableString = (Spannable) charSequenceJ;
                } else {
                    spannableString = new SpannableString(charSequenceJ);
                }
                SpanStyle spanStyle9 = textStyle2.f10568a;
                paragraphStyle = textStyle2.f10569b;
                textDecoration = spanStyle9.background;
                TextDecoration.f10965b.getClass();
                if (Intrinsics.c(textDecoration, TextDecoration.d)) {
                    spannableString.setSpan(AndroidParagraphHelper_androidKt.f10876a, 0, str3.length(), 33);
                }
                platformTextStyle = textStyle2.platformStyle;
                if (platformTextStyle != null) {
                    z3 = false;
                } else {
                    z3 = false;
                }
                if (z3) {
                    lineHeightStyle = paragraphStyle.f10483f;
                    if (lineHeightStyle == null) {
                        LineHeightStyle.d.getClass();
                        lineHeightStyle = LineHeightStyle.f10944e;
                    }
                    fB = SpannableExtensions_androidKt.b(paragraphStyle.f10481c, textSize, density3);
                    if (Float.isNaN(fB)) {
                        if (spannableString.length() == 0) {
                            length = spannableString.length() + 1;
                        } else {
                            length = spannableString.length();
                        }
                        int i314 = length;
                        i5 = lineHeightStyle.f10946b;
                        if ((i5 & 1) > 0) {
                            z4 = true;
                        } else {
                            z4 = false;
                        }
                        if ((i5 & 16) > 0) {
                            z5 = true;
                        } else {
                            z5 = false;
                        }
                        i6 = 0;
                        spannableString.setSpan(new LineHeightStyleSpan(fB, 0, i314, z4, z5, lineHeightStyle.f10945a, lineHeightStyle.f10947c, null), 0, spannableString.length(), 33);
                    } else {
                        i6 = 0;
                    }
                } else {
                    lineHeightStyle = paragraphStyle.f10483f;
                    if (lineHeightStyle == null) {
                        LineHeightStyle.d.getClass();
                        lineHeightStyle = LineHeightStyle.f10944e;
                    }
                    fB = SpannableExtensions_androidKt.b(paragraphStyle.f10481c, textSize, density3);
                    if (Float.isNaN(fB)) {
                        if (spannableString.length() == 0) {
                            length = spannableString.length() + 1;
                        } else {
                            length = spannableString.length();
                        }
                        int i315 = length;
                        i5 = lineHeightStyle.f10946b;
                        if ((i5 & 1) > 0) {
                            z4 = true;
                        } else {
                            z4 = false;
                        }
                        if ((i5 & 16) > 0) {
                            z5 = true;
                        } else {
                            z5 = false;
                        }
                        i6 = 0;
                        spannableString.setSpan(new LineHeightStyleSpan(fB, 0, i315, z4, z5, lineHeightStyle.f10945a, lineHeightStyle.f10947c, null), 0, spannableString.length(), 33);
                    } else {
                        i6 = 0;
                    }
                }
                textIndent = paragraphStyle.d;
                if (textIndent != null) {
                    i29 = i6;
                    j3 = textIndent.f10979a;
                    j4 = textIndent.f10980b;
                    if (!TextUnit.a(j3, TextUnitKt.c(i29))) {
                    }
                    if ((j3 & 1095216660480L) == r13) {
                        paragraphStyle2 = paragraphStyle;
                    } else {
                        jB2 = TextUnit.b(j3);
                        TextUnitType.f11026b.getClass();
                        paragraphStyle2 = paragraphStyle;
                        j5 = TextUnitType.f11027c;
                        if (TextUnitType.a(jB2, j5)) {
                            fC2 = density3.E0(j3);
                        } else if (TextUnitType.a(jB2, TextUnitType.d)) {
                            fC2 = TextUnit.c(j3) * textSize;
                        } else {
                            fC2 = 0.0f;
                        }
                        jB3 = TextUnit.b(j4);
                        if (TextUnitType.a(jB3, j5)) {
                            fC3 = density3.E0(j4);
                        } else if (TextUnitType.a(jB3, TextUnitType.d)) {
                            fC3 = TextUnit.c(j4) * textSize;
                        } else {
                            fC3 = 0.0f;
                        }
                        spannableString.setSpan(new LeadingMarginSpan.Standard((int) Math.ceil(fC2), (int) Math.ceil(fC3)), 0, spannableString.length(), 33);
                    }
                    arrayList = new ArrayList(list4.size());
                    list3 = list4;
                    size = list3.size();
                    while (i7 < size) {
                        range4 = (AnnotatedString.Range) list4.get(i7);
                        obj3 = range4.f10428a;
                        if (obj3 instanceof SpanStyle) {
                            spanStyle4 = (SpanStyle) obj3;
                            if (spanStyle4.fontFamily == null) {
                                arrayList.add(range4);
                            } else {
                                arrayList.add(range4);
                            }
                        }
                    }
                    spanStyle2 = textStyle2.f10568a;
                    fontFamily = spanStyle2.fontFamily;
                    if (fontFamily != null) {
                        spanStyle3 = new SpanStyle(0L, 0L, spanStyle2.fontWeight, spanStyle2.fontStyle, spanStyle2.fontSynthesis, fontFamily, (String) null, 0L, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, (TextDecoration) null, (Shadow) null, (PlatformSpanStyle) null, (DrawStyle) null, 65475, (DefaultConstructorMarker) null);
                    } else {
                        spanStyle3 = new SpanStyle(0L, 0L, spanStyle2.fontWeight, spanStyle2.fontStyle, spanStyle2.fontSynthesis, fontFamily, (String) null, 0L, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, (TextDecoration) null, (Shadow) null, (PlatformSpanStyle) null, (DrawStyle) null, 65475, (DefaultConstructorMarker) null);
                    }
                    ni0Var = new ni0(spannableString, aVar, 25);
                    if (arrayList.size() <= 1) {
                        if (!arrayList.isEmpty()) {
                            SpanStyle spanStyle10 = (SpanStyle) ((AnnotatedString.Range) arrayList.get(0)).f10428a;
                            ni0Var.A(spanStyle3 != null ? spanStyle3.d(spanStyle10) : spanStyle10, Integer.valueOf(((AnnotatedString.Range) arrayList.get(0)).f10429b), Integer.valueOf(((AnnotatedString.Range) arrayList.get(0)).f10430c));
                        }
                        collection = list3;
                    } else {
                        size2 = arrayList.size();
                        i8 = size2 * 2;
                        iArr = new int[i8];
                        size3 = arrayList.size();
                        i9 = 0;
                        while (i9 < size3) {
                            AnnotatedString.Range range13 = (AnnotatedString.Range) arrayList.get(i9);
                            iArr[i9] = range13.f10429b;
                            iArr[i9 + size2] = range13.f10430c;
                            i9++;
                            list3 = list3;
                        }
                        collection = list3;
                        if (i8 > 1) {
                            Arrays.sort(iArr);
                        }
                        if (i8 != 0) {
                            zy0.c("Array is empty.");
                            throw null;
                        }
                        i10 = 0;
                        i11 = iArr[0];
                        i12 = 0;
                        while (i12 < i8) {
                            i13 = iArr[i12];
                            if (i13 == i11) {
                                arrayList2 = arrayList;
                            } else {
                                size4 = arrayList.size();
                                while (i10 < size4) {
                                    ArrayList arrayList7 = arrayList;
                                    AnnotatedString.Range range14 = (AnnotatedString.Range) arrayList.get(i10);
                                    int i316 = size4;
                                    i14 = range14.f10429b;
                                    int i317 = i10;
                                    i15 = range14.f10430c;
                                    if (i14 == i15) {
                                    }
                                    i10 = i317 + 1;
                                    size4 = i316;
                                    arrayList = arrayList7;
                                }
                                arrayList2 = arrayList;
                                if (spanStyle3 != null) {
                                    ni0Var.A(spanStyle3, Integer.valueOf(i11), Integer.valueOf(i13));
                                }
                                i11 = i13;
                            }
                            i12++;
                            spanStyle3 = spanStyle3;
                            arrayList = arrayList2;
                            i10 = 0;
                        }
                    }
                    size5 = collection.size();
                    z6 = false;
                    i16 = 0;
                    while (i16 < size5) {
                        range3 = (AnnotatedString.Range) list4.get(i16);
                        obj2 = range3.f10428a;
                        if (obj2 instanceof SpanStyle) {
                            i26 = range3.f10429b;
                            int i318 = range3.f10430c;
                            if (i26 >= 0) {
                                size5 = size5;
                                z8 = z6;
                                i16 = i16;
                                spannable2 = spannableString;
                                density3 = density3;
                            } else {
                                size5 = size5;
                                z8 = z6;
                                i16 = i16;
                                spannable2 = spannableString;
                                density3 = density3;
                            }
                        } else {
                            size5 = size5;
                            z8 = z6;
                            i16 = i16;
                            spannable2 = spannableString;
                            density3 = density3;
                        }
                        i16++;
                        density3 = density3;
                        size5 = size5;
                        spannableString = spannable2;
                        z6 = z8;
                    }
                    z7 = z6;
                    spannable = spannableString;
                    density2 = density3;
                    if (z7) {
                        size8 = collection.size();
                        i23 = 0;
                        while (i23 < size8) {
                            range2 = (AnnotatedString.Range) list4.get(i23);
                            annotation = (AnnotatedString.Annotation) range2.f10428a;
                            if (annotation instanceof SpanStyle) {
                                i25 = range2.f10429b;
                                int i319 = range2.f10430c;
                                if (i25 >= 0) {
                                    i24 = i23;
                                } else {
                                    i24 = i23;
                                }
                            } else {
                                i24 = i23;
                            }
                            i23 = i24 + 1;
                        }
                    }
                    textIndent2 = paragraphStyle2.d;
                    if (textIndent2 != null) {
                        j2 = textIndent2.f10979a;
                        jB = TextUnit.b(j2);
                        TextUnitType.f11026b.getClass();
                        if (TextUnitType.a(jB, TextUnitType.f11027c)) {
                            fC = density2.E0(j2);
                        } else if (TextUnitType.a(jB, TextUnitType.d)) {
                            fC = TextUnit.c(j2) * textSize;
                        } else {
                            fC = 0.0f;
                        }
                        f2 = fC;
                    } else {
                        f2 = 0.0f;
                    }
                    size6 = collection.size();
                    while (i17 < size6) {
                        AnnotatedString.Range range15 = (AnnotatedString.Range) list4.get(i17);
                        obj = range15.f10428a;
                        if (obj instanceof Bullet) {
                            bullet = (Bullet) obj;
                        } else {
                            bullet = null;
                        }
                        if (bullet != null) {
                            fA = SpannableExtensions_androidKt.a(bullet.f10441b, textSize, density2);
                            float fA6 = SpannableExtensions_androidKt.a(bullet.f10442c, textSize, density2);
                            float fA7 = SpannableExtensions_androidKt.a(bullet.d, textSize, density2);
                            if (Float.isNaN(fA)) {
                            }
                        }
                    }
                    size7 = list5.size();
                    i18 = 0;
                    while (i18 < size7) {
                        List list8 = list5;
                        AnnotatedString.Range range16 = (AnnotatedString.Range) list8.get(i18);
                        Placeholder placeholder3 = (Placeholder) range16.f10428a;
                        int i44 = range16.f10429b;
                        int i45 = range16.f10430c;
                        while (i19 < r10) {
                            spannable.removeSpan((EmojiSpan) obj4);
                        }
                        long j16 = placeholder3.f10488a;
                        long j17 = placeholder3.f10489b;
                        float fC8 = TextUnit.c(j16);
                        int iA5 = PlaceholderExtensions_androidKt.a(placeholder3.f10488a);
                        float fC9 = TextUnit.c(j17);
                        int iA6 = PlaceholderExtensions_androidKt.a(j17);
                        i20 = placeholder3.f10490c;
                        PlaceholderVerticalAlign.f10491a.getClass();
                        if (i20 == PlaceholderVerticalAlign.f10492b) {
                            i22 = 0;
                        } else if (i20 == PlaceholderVerticalAlign.f10493c) {
                            i22 = 1;
                        } else if (i20 == PlaceholderVerticalAlign.d) {
                            i22 = 2;
                        } else if (i20 == PlaceholderVerticalAlign.f10494e) {
                            i22 = 3;
                        } else {
                            if (i20 == PlaceholderVerticalAlign.f10495f) {
                                i21 = 4;
                            } else if (i20 == PlaceholderVerticalAlign.g) {
                                i21 = 5;
                            } else {
                                if (i20 == PlaceholderVerticalAlign.f10496h) {
                                    md.k("Invalid PlaceholderVerticalAlign");
                                    throw null;
                                }
                                i21 = 6;
                            }
                            i22 = i21;
                        }
                        PlaceholderSpan placeholderSpan3 = new PlaceholderSpan(fC8, iA5, fC9, iA6, density2, i22);
                        density2 = density2;
                        spannable.setSpan(placeholderSpan3, i44, i45, 33);
                        i18++;
                        list5 = list8;
                    }
                    charSequenceJ = spannable;
                } else {
                    paragraphStyle2 = paragraphStyle;
                }
                arrayList = new ArrayList(list4.size());
                list3 = list4;
                size = list3.size();
                while (i7 < size) {
                    range4 = (AnnotatedString.Range) list4.get(i7);
                    obj3 = range4.f10428a;
                    if (obj3 instanceof SpanStyle) {
                        spanStyle4 = (SpanStyle) obj3;
                        if (spanStyle4.fontFamily == null) {
                            arrayList.add(range4);
                        } else {
                            arrayList.add(range4);
                        }
                    }
                }
                spanStyle2 = textStyle2.f10568a;
                fontFamily = spanStyle2.fontFamily;
                if (fontFamily != null) {
                    spanStyle3 = new SpanStyle(0L, 0L, spanStyle2.fontWeight, spanStyle2.fontStyle, spanStyle2.fontSynthesis, fontFamily, (String) null, 0L, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, (TextDecoration) null, (Shadow) null, (PlatformSpanStyle) null, (DrawStyle) null, 65475, (DefaultConstructorMarker) null);
                } else {
                    spanStyle3 = new SpanStyle(0L, 0L, spanStyle2.fontWeight, spanStyle2.fontStyle, spanStyle2.fontSynthesis, fontFamily, (String) null, 0L, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, (TextDecoration) null, (Shadow) null, (PlatformSpanStyle) null, (DrawStyle) null, 65475, (DefaultConstructorMarker) null);
                }
                ni0Var = new ni0(spannableString, aVar, 25);
                if (arrayList.size() <= 1) {
                    if (!arrayList.isEmpty()) {
                        SpanStyle spanStyle11 = (SpanStyle) ((AnnotatedString.Range) arrayList.get(0)).f10428a;
                        ni0Var.A(spanStyle3 != null ? spanStyle3.d(spanStyle11) : spanStyle11, Integer.valueOf(((AnnotatedString.Range) arrayList.get(0)).f10429b), Integer.valueOf(((AnnotatedString.Range) arrayList.get(0)).f10430c));
                    }
                    collection = list3;
                } else {
                    size2 = arrayList.size();
                    i8 = size2 * 2;
                    iArr = new int[i8];
                    size3 = arrayList.size();
                    i9 = 0;
                    while (i9 < size3) {
                        AnnotatedString.Range range17 = (AnnotatedString.Range) arrayList.get(i9);
                        iArr[i9] = range17.f10429b;
                        iArr[i9 + size2] = range17.f10430c;
                        i9++;
                        list3 = list3;
                    }
                    collection = list3;
                    if (i8 > 1) {
                        Arrays.sort(iArr);
                    }
                    if (i8 != 0) {
                        zy0.c("Array is empty.");
                        throw null;
                    }
                    i10 = 0;
                    i11 = iArr[0];
                    i12 = 0;
                    while (i12 < i8) {
                        i13 = iArr[i12];
                        if (i13 == i11) {
                            arrayList2 = arrayList;
                        } else {
                            size4 = arrayList.size();
                            while (i10 < size4) {
                                ArrayList arrayList8 = arrayList;
                                AnnotatedString.Range range18 = (AnnotatedString.Range) arrayList.get(i10);
                                int i3110 = size4;
                                i14 = range18.f10429b;
                                int i3111 = i10;
                                i15 = range18.f10430c;
                                if (i14 == i15) {
                                }
                                i10 = i3111 + 1;
                                size4 = i3110;
                                arrayList = arrayList8;
                            }
                            arrayList2 = arrayList;
                            if (spanStyle3 != null) {
                                ni0Var.A(spanStyle3, Integer.valueOf(i11), Integer.valueOf(i13));
                            }
                            i11 = i13;
                        }
                        i12++;
                        spanStyle3 = spanStyle3;
                        arrayList = arrayList2;
                        i10 = 0;
                    }
                }
                size5 = collection.size();
                z6 = false;
                i16 = 0;
                while (i16 < size5) {
                    range3 = (AnnotatedString.Range) list4.get(i16);
                    obj2 = range3.f10428a;
                    if (obj2 instanceof SpanStyle) {
                        i26 = range3.f10429b;
                        int i3112 = range3.f10430c;
                        if (i26 >= 0) {
                            size5 = size5;
                            z8 = z6;
                            i16 = i16;
                            spannable2 = spannableString;
                            density3 = density3;
                        } else {
                            size5 = size5;
                            z8 = z6;
                            i16 = i16;
                            spannable2 = spannableString;
                            density3 = density3;
                        }
                    } else {
                        size5 = size5;
                        z8 = z6;
                        i16 = i16;
                        spannable2 = spannableString;
                        density3 = density3;
                    }
                    i16++;
                    density3 = density3;
                    size5 = size5;
                    spannableString = spannable2;
                    z6 = z8;
                }
                z7 = z6;
                spannable = spannableString;
                density2 = density3;
                if (z7) {
                    size8 = collection.size();
                    i23 = 0;
                    while (i23 < size8) {
                        range2 = (AnnotatedString.Range) list4.get(i23);
                        annotation = (AnnotatedString.Annotation) range2.f10428a;
                        if (annotation instanceof SpanStyle) {
                            i25 = range2.f10429b;
                            int i3113 = range2.f10430c;
                            if (i25 >= 0) {
                                i24 = i23;
                            } else {
                                i24 = i23;
                            }
                        } else {
                            i24 = i23;
                        }
                        i23 = i24 + 1;
                    }
                }
                textIndent2 = paragraphStyle2.d;
                if (textIndent2 != null) {
                    j2 = textIndent2.f10979a;
                    jB = TextUnit.b(j2);
                    TextUnitType.f11026b.getClass();
                    if (TextUnitType.a(jB, TextUnitType.f11027c)) {
                        fC = density2.E0(j2);
                    } else if (TextUnitType.a(jB, TextUnitType.d)) {
                        fC = TextUnit.c(j2) * textSize;
                    } else {
                        fC = 0.0f;
                    }
                    f2 = fC;
                } else {
                    f2 = 0.0f;
                }
                size6 = collection.size();
                while (i17 < size6) {
                    AnnotatedString.Range range19 = (AnnotatedString.Range) list4.get(i17);
                    obj = range19.f10428a;
                    if (obj instanceof Bullet) {
                        bullet = (Bullet) obj;
                    } else {
                        bullet = null;
                    }
                    if (bullet != null) {
                        fA = SpannableExtensions_androidKt.a(bullet.f10441b, textSize, density2);
                        float fA8 = SpannableExtensions_androidKt.a(bullet.f10442c, textSize, density2);
                        float fA9 = SpannableExtensions_androidKt.a(bullet.d, textSize, density2);
                        if (Float.isNaN(fA)) {
                        }
                    }
                }
                size7 = list5.size();
                i18 = 0;
                while (i18 < size7) {
                    List list9 = list5;
                    AnnotatedString.Range range110 = (AnnotatedString.Range) list9.get(i18);
                    Placeholder placeholder4 = (Placeholder) range110.f10428a;
                    int i46 = range110.f10429b;
                    int i47 = range110.f10430c;
                    while (i19 < r10) {
                        spannable.removeSpan((EmojiSpan) obj4);
                    }
                    long j18 = placeholder4.f10488a;
                    long j19 = placeholder4.f10489b;
                    float fC10 = TextUnit.c(j18);
                    int iA7 = PlaceholderExtensions_androidKt.a(placeholder4.f10488a);
                    float fC11 = TextUnit.c(j19);
                    int iA8 = PlaceholderExtensions_androidKt.a(j19);
                    i20 = placeholder4.f10490c;
                    PlaceholderVerticalAlign.f10491a.getClass();
                    if (i20 == PlaceholderVerticalAlign.f10492b) {
                        i22 = 0;
                    } else if (i20 == PlaceholderVerticalAlign.f10493c) {
                        i22 = 1;
                    } else if (i20 == PlaceholderVerticalAlign.d) {
                        i22 = 2;
                    } else if (i20 == PlaceholderVerticalAlign.f10494e) {
                        i22 = 3;
                    } else {
                        if (i20 == PlaceholderVerticalAlign.f10495f) {
                            i21 = 4;
                        } else if (i20 == PlaceholderVerticalAlign.g) {
                            i21 = 5;
                        } else {
                            if (i20 == PlaceholderVerticalAlign.f10496h) {
                                md.k("Invalid PlaceholderVerticalAlign");
                                throw null;
                            }
                            i21 = 6;
                        }
                        i22 = i21;
                    }
                    PlaceholderSpan placeholderSpan4 = new PlaceholderSpan(fC10, iA7, fC11, iA8, density2, i22);
                    density2 = density2;
                    spannable.setSpan(placeholderSpan4, i46, i47, 33);
                    i18++;
                    list5 = list9;
                }
                charSequenceJ = spannable;
            }
        } else {
            if (charSequenceJ instanceof Spannable) {
                spannableString = (Spannable) charSequenceJ;
            } else {
                spannableString = new SpannableString(charSequenceJ);
            }
            SpanStyle spanStyle12 = textStyle2.f10568a;
            paragraphStyle = textStyle2.f10569b;
            textDecoration = spanStyle12.background;
            TextDecoration.f10965b.getClass();
            if (Intrinsics.c(textDecoration, TextDecoration.d)) {
                spannableString.setSpan(AndroidParagraphHelper_androidKt.f10876a, 0, str3.length(), 33);
            }
            platformTextStyle = textStyle2.platformStyle;
            if (platformTextStyle != null || (platformParagraphStyle = platformTextStyle.f10503b) == null) {
                z3 = false;
            } else {
                z3 = platformParagraphStyle.f10498a;
            }
            if (z3 || paragraphStyle.f10483f != null) {
                lineHeightStyle = paragraphStyle.f10483f;
                if (lineHeightStyle == null) {
                    LineHeightStyle.d.getClass();
                    lineHeightStyle = LineHeightStyle.f10944e;
                }
                fB = SpannableExtensions_androidKt.b(paragraphStyle.f10481c, textSize, density3);
                if (Float.isNaN(fB)) {
                    if (spannableString.length() == 0 && StringsKt.x(spannableString) != '\n') {
                        length = spannableString.length();
                    } else {
                        length = spannableString.length() + 1;
                    }
                    int i3114 = length;
                    i5 = lineHeightStyle.f10946b;
                    if ((i5 & 1) > 0) {
                        z4 = true;
                    } else {
                        z4 = false;
                    }
                    if ((i5 & 16) > 0) {
                        z5 = true;
                    } else {
                        z5 = false;
                    }
                    i6 = 0;
                    spannableString.setSpan(new LineHeightStyleSpan(fB, 0, i3114, z4, z5, lineHeightStyle.f10945a, lineHeightStyle.f10947c, null), 0, spannableString.length(), 33);
                }
                textIndent = paragraphStyle.d;
                if (textIndent != null) {
                    i29 = i6;
                    j3 = textIndent.f10979a;
                    j4 = textIndent.f10980b;
                    if (!TextUnit.a(j3, TextUnitKt.c(i29)) && TextUnit.a(j4, TextUnitKt.c(i29))) {
                        paragraphStyle2 = paragraphStyle;
                    } else if ((j3 & 1095216660480L) == r13 && (j4 & 1095216660480L) != 0) {
                        jB2 = TextUnit.b(j3);
                        TextUnitType.f11026b.getClass();
                        paragraphStyle2 = paragraphStyle;
                        j5 = TextUnitType.f11027c;
                        if (TextUnitType.a(jB2, j5)) {
                            fC2 = density3.E0(j3);
                        } else if (TextUnitType.a(jB2, TextUnitType.d)) {
                            fC2 = TextUnit.c(j3) * textSize;
                        } else {
                            fC2 = 0.0f;
                        }
                        jB3 = TextUnit.b(j4);
                        if (TextUnitType.a(jB3, j5)) {
                            fC3 = density3.E0(j4);
                        } else if (TextUnitType.a(jB3, TextUnitType.d)) {
                            fC3 = TextUnit.c(j4) * textSize;
                        } else {
                            fC3 = 0.0f;
                        }
                        spannableString.setSpan(new LeadingMarginSpan.Standard((int) Math.ceil(fC2), (int) Math.ceil(fC3)), 0, spannableString.length(), 33);
                    } else {
                        paragraphStyle2 = paragraphStyle;
                    }
                    arrayList = new ArrayList(list4.size());
                    list3 = list4;
                    size = list3.size();
                    while (i7 < size) {
                        range4 = (AnnotatedString.Range) list4.get(i7);
                        obj3 = range4.f10428a;
                        if (obj3 instanceof SpanStyle) {
                            spanStyle4 = (SpanStyle) obj3;
                            if (spanStyle4.fontFamily == null || spanStyle4.fontStyle != null || spanStyle4.fontWeight != null || ((SpanStyle) obj3).fontSynthesis != null) {
                                arrayList.add(range4);
                            }
                        }
                    }
                    spanStyle2 = textStyle2.f10568a;
                    fontFamily = spanStyle2.fontFamily;
                    if (fontFamily != null && spanStyle2.fontStyle == null && spanStyle2.fontWeight == null && spanStyle2.fontSynthesis == null) {
                        spanStyle3 = null;
                    } else {
                        spanStyle3 = new SpanStyle(0L, 0L, spanStyle2.fontWeight, spanStyle2.fontStyle, spanStyle2.fontSynthesis, fontFamily, (String) null, 0L, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, (TextDecoration) null, (Shadow) null, (PlatformSpanStyle) null, (DrawStyle) null, 65475, (DefaultConstructorMarker) null);
                    }
                    ni0Var = new ni0(spannableString, aVar, 25);
                    if (arrayList.size() <= 1) {
                        if (!arrayList.isEmpty()) {
                            SpanStyle spanStyle13 = (SpanStyle) ((AnnotatedString.Range) arrayList.get(0)).f10428a;
                            ni0Var.A(spanStyle3 != null ? spanStyle3.d(spanStyle13) : spanStyle13, Integer.valueOf(((AnnotatedString.Range) arrayList.get(0)).f10429b), Integer.valueOf(((AnnotatedString.Range) arrayList.get(0)).f10430c));
                        }
                        collection = list3;
                    } else {
                        size2 = arrayList.size();
                        i8 = size2 * 2;
                        iArr = new int[i8];
                        size3 = arrayList.size();
                        i9 = 0;
                        while (i9 < size3) {
                            AnnotatedString.Range range111 = (AnnotatedString.Range) arrayList.get(i9);
                            iArr[i9] = range111.f10429b;
                            iArr[i9 + size2] = range111.f10430c;
                            i9++;
                            list3 = list3;
                        }
                        collection = list3;
                        if (i8 > 1) {
                            Arrays.sort(iArr);
                        }
                        if (i8 != 0) {
                            zy0.c("Array is empty.");
                            throw null;
                        }
                        i10 = 0;
                        i11 = iArr[0];
                        i12 = 0;
                        while (i12 < i8) {
                            i13 = iArr[i12];
                            if (i13 == i11) {
                                arrayList2 = arrayList;
                            } else {
                                size4 = arrayList.size();
                                while (i10 < size4) {
                                    ArrayList arrayList9 = arrayList;
                                    AnnotatedString.Range range112 = (AnnotatedString.Range) arrayList.get(i10);
                                    int i3115 = size4;
                                    i14 = range112.f10429b;
                                    int i3116 = i10;
                                    i15 = range112.f10430c;
                                    if (i14 == i15 && AnnotatedStringKt.b(i11, i13, i14, i15)) {
                                        SpanStyle spanStyle14 = (SpanStyle) range112.f10428a;
                                        spanStyle3 = spanStyle3 != null ? spanStyle3.d(spanStyle14) : spanStyle14;
                                    }
                                    i10 = i3116 + 1;
                                    size4 = i3115;
                                    arrayList = arrayList9;
                                }
                                arrayList2 = arrayList;
                                if (spanStyle3 != null) {
                                    ni0Var.A(spanStyle3, Integer.valueOf(i11), Integer.valueOf(i13));
                                }
                                i11 = i13;
                            }
                            i12++;
                            spanStyle3 = spanStyle3;
                            arrayList = arrayList2;
                            i10 = 0;
                        }
                    }
                    size5 = collection.size();
                    z6 = false;
                    i16 = 0;
                    while (i16 < size5) {
                        range3 = (AnnotatedString.Range) list4.get(i16);
                        obj2 = range3.f10428a;
                        if (obj2 instanceof SpanStyle) {
                            i26 = range3.f10429b;
                            int i3117 = range3.f10430c;
                            if (i26 >= 0 || i26 >= spannableString.length() || i3117 <= i26 || i3117 > spannableString.length()) {
                                size5 = size5;
                                z8 = z6;
                                i16 = i16;
                                spannable2 = spannableString;
                                density3 = density3;
                            } else {
                                SpanStyle spanStyle15 = (SpanStyle) obj2;
                                long j20 = spanStyle15.letterSpacing;
                                BaselineShift baselineShift2 = spanStyle15.baselineShift;
                                TextForegroundStyle textForegroundStyle2 = spanStyle15.f10522a;
                                if (baselineShift2 != null) {
                                    spannableString.setSpan(new BaselineShiftSpan(baselineShift2.f10924a), i26, i3117, 33);
                                }
                                z8 = z6;
                                SpannableExtensions_androidKt.c(spannableString, textForegroundStyle2.getF10927a(), i26, i3117);
                                Brush brushE2 = textForegroundStyle2.e();
                                float f10926b = textForegroundStyle2.getF10926b();
                                if (brushE2 != null) {
                                    if (brushE2 instanceof SolidColor) {
                                        SpannableExtensions_androidKt.c(spannableString, ((SolidColor) brushE2).f8931b, i26, i3117);
                                    } else {
                                        spannableString.setSpan(new ShaderBrushSpan((ShaderBrush) brushE2, f10926b), i26, i3117, 33);
                                    }
                                }
                                TextDecoration textDecoration2 = spanStyle15.background;
                                if (textDecoration2 != null) {
                                    TextDecoration.f10965b.getClass();
                                    TextDecorationSpan textDecorationSpan = new TextDecorationSpan(textDecoration2.a(TextDecoration.d), textDecoration2.a(TextDecoration.f10967e));
                                    i27 = 33;
                                    spannableString.setSpan(textDecorationSpan, i26, i3117, 33);
                                } else {
                                    i27 = 33;
                                }
                                SpannableExtensions_androidKt.d(spannableString, spanStyle15.fontSize, density3, i26, i3117);
                                spannable2 = spannableString;
                                String str4 = spanStyle15.fontFeatureSettings;
                                if (str4 != null) {
                                    spannable2.setSpan(new FontFeatureSpan(str4), i26, i3117, i27);
                                }
                                TextGeometricTransform textGeometricTransform2 = spanStyle15.textGeometricTransform;
                                if (textGeometricTransform2 != null) {
                                    spannable2.setSpan(new ScaleXSpan(textGeometricTransform2.f10976a), i26, i3117, i27);
                                    spannable2.setSpan(new SkewXSpan(textGeometricTransform2.f10977b), i26, i3117, i27);
                                }
                                SpannableExtensions_androidKt.e(spannable2, spanStyle15.localeList, i26, i3117);
                                long j21 = spanStyle15.l;
                                if (j21 != 16) {
                                    spannable2.setSpan(new BackgroundColorSpan(ColorKt.i(j21)), i26, i3117, 33);
                                }
                                Shadow shadow = spanStyle15.shadow;
                                if (shadow != null) {
                                    long j22 = shadow.f8927b;
                                    int i48 = ColorKt.i(shadow.f8926a);
                                    float fIntBitsToFloat = Float.intBitsToFloat((int) (j22 >> 32));
                                    float fIntBitsToFloat2 = Float.intBitsToFloat((int) (j22 & BodyPartID.bodyIdMax));
                                    float f3 = shadow.f8928c;
                                    ShadowSpan shadowSpan = new ShadowSpan(i48, fIntBitsToFloat, fIntBitsToFloat2, f3 == Call.Parameters.DEFAULT_CAMERA_ZOOM ? Float.MIN_VALUE : f3);
                                    i28 = 33;
                                    spannable2.setSpan(shadowSpan, i26, i3117, 33);
                                } else {
                                    i28 = 33;
                                }
                                DrawStyle drawStyle = spanStyle15.drawStyle;
                                if (drawStyle != null) {
                                    spannable2.setSpan(new DrawStyleSpan(drawStyle), i26, i3117, i28);
                                }
                                long jB6 = TextUnit.b(j20);
                                TextUnitType.f11026b.getClass();
                                if (TextUnitType.a(jB6, TextUnitType.f11027c) || TextUnitType.a(TextUnit.b(j20), TextUnitType.d)) {
                                    z8 = true;
                                }
                            }
                        } else {
                            size5 = size5;
                            z8 = z6;
                            i16 = i16;
                            spannable2 = spannableString;
                            density3 = density3;
                        }
                        i16++;
                        density3 = density3;
                        size5 = size5;
                        spannableString = spannable2;
                        z6 = z8;
                    }
                    z7 = z6;
                    spannable = spannableString;
                    density2 = density3;
                    if (z7) {
                        size8 = collection.size();
                        i23 = 0;
                        while (i23 < size8) {
                            range2 = (AnnotatedString.Range) list4.get(i23);
                            annotation = (AnnotatedString.Annotation) range2.f10428a;
                            if (annotation instanceof SpanStyle) {
                                i25 = range2.f10429b;
                                int i3118 = range2.f10430c;
                                if (i25 >= 0 || i25 >= spannable.length() || i3118 <= i25 || i3118 > spannable.length()) {
                                    i24 = i23;
                                } else {
                                    long j23 = ((SpanStyle) annotation).letterSpacing;
                                    long jB7 = TextUnit.b(j23);
                                    TextUnitType.f11026b.getClass();
                                    Density density4 = density2;
                                    if (TextUnitType.a(jB7, TextUnitType.f11027c)) {
                                        density2 = density4;
                                        letterSpacingSpanEm = new LetterSpacingSpanPx(density2.E0(j23));
                                        i24 = i23;
                                    } else {
                                        density2 = density4;
                                        i24 = i23;
                                        letterSpacingSpanEm = TextUnitType.a(jB7, TextUnitType.d) ? new LetterSpacingSpanEm(TextUnit.c(j23)) : null;
                                    }
                                    if (letterSpacingSpanEm != null) {
                                        spannable.setSpan(letterSpacingSpanEm, i25, i3118, 33);
                                    }
                                }
                            } else {
                                i24 = i23;
                            }
                            i23 = i24 + 1;
                        }
                    }
                    textIndent2 = paragraphStyle2.d;
                    if (textIndent2 != null) {
                        j2 = textIndent2.f10979a;
                        jB = TextUnit.b(j2);
                        TextUnitType.f11026b.getClass();
                        if (TextUnitType.a(jB, TextUnitType.f11027c)) {
                            fC = density2.E0(j2);
                        } else if (TextUnitType.a(jB, TextUnitType.d)) {
                            fC = TextUnit.c(j2) * textSize;
                        } else {
                            fC = 0.0f;
                        }
                        f2 = fC;
                    } else {
                        f2 = 0.0f;
                    }
                    size6 = collection.size();
                    while (i17 < size6) {
                        AnnotatedString.Range range113 = (AnnotatedString.Range) list4.get(i17);
                        obj = range113.f10428a;
                        if (obj instanceof Bullet) {
                            bullet = (Bullet) obj;
                        } else {
                            bullet = null;
                        }
                        if (bullet != null) {
                            fA = SpannableExtensions_androidKt.a(bullet.f10441b, textSize, density2);
                            float fA10 = SpannableExtensions_androidKt.a(bullet.f10442c, textSize, density2);
                            float fA11 = SpannableExtensions_androidKt.a(bullet.d, textSize, density2);
                            if (Float.isNaN(fA) && !Float.isNaN(fA10) && !Float.isNaN(fA11)) {
                                Density density5 = density2;
                                density2 = density5;
                                spannable.setSpan(new CustomBulletSpan(bullet.f10440a, fA, fA10, fA11, bullet.f10443e, bullet.f10444f, bullet.g, density5, f2), range113.f10429b, range113.f10430c, 33);
                            }
                        }
                    }
                    size7 = list5.size();
                    i18 = 0;
                    while (i18 < size7) {
                        List list10 = list5;
                        AnnotatedString.Range range114 = (AnnotatedString.Range) list10.get(i18);
                        Placeholder placeholder5 = (Placeholder) range114.f10428a;
                        int i49 = range114.f10429b;
                        int i410 = range114.f10430c;
                        while (i19 < r10) {
                            spannable.removeSpan((EmojiSpan) obj4);
                        }
                        long j110 = placeholder5.f10488a;
                        long j111 = placeholder5.f10489b;
                        float fC12 = TextUnit.c(j110);
                        int iA9 = PlaceholderExtensions_androidKt.a(placeholder5.f10488a);
                        float fC13 = TextUnit.c(j111);
                        int iA10 = PlaceholderExtensions_androidKt.a(j111);
                        i20 = placeholder5.f10490c;
                        PlaceholderVerticalAlign.f10491a.getClass();
                        if (i20 == PlaceholderVerticalAlign.f10492b) {
                            i22 = 0;
                        } else if (i20 == PlaceholderVerticalAlign.f10493c) {
                            i22 = 1;
                        } else if (i20 == PlaceholderVerticalAlign.d) {
                            i22 = 2;
                        } else if (i20 == PlaceholderVerticalAlign.f10494e) {
                            i22 = 3;
                        } else {
                            if (i20 == PlaceholderVerticalAlign.f10495f) {
                                i21 = 4;
                            } else if (i20 == PlaceholderVerticalAlign.g) {
                                i21 = 5;
                            } else {
                                if (i20 == PlaceholderVerticalAlign.f10496h) {
                                    md.k("Invalid PlaceholderVerticalAlign");
                                    throw null;
                                }
                                i21 = 6;
                            }
                            i22 = i21;
                        }
                        PlaceholderSpan placeholderSpan5 = new PlaceholderSpan(fC12, iA9, fC13, iA10, density2, i22);
                        density2 = density2;
                        spannable.setSpan(placeholderSpan5, i49, i410, 33);
                        i18++;
                        list5 = list10;
                    }
                    charSequenceJ = spannable;
                } else {
                    paragraphStyle2 = paragraphStyle;
                }
                arrayList = new ArrayList(list4.size());
                list3 = list4;
                size = list3.size();
                while (i7 < size) {
                    range4 = (AnnotatedString.Range) list4.get(i7);
                    obj3 = range4.f10428a;
                    if (obj3 instanceof SpanStyle) {
                        spanStyle4 = (SpanStyle) obj3;
                        if (spanStyle4.fontFamily == null) {
                            arrayList.add(range4);
                        } else {
                            arrayList.add(range4);
                        }
                    }
                }
                spanStyle2 = textStyle2.f10568a;
                fontFamily = spanStyle2.fontFamily;
                if (fontFamily != null) {
                    spanStyle3 = new SpanStyle(0L, 0L, spanStyle2.fontWeight, spanStyle2.fontStyle, spanStyle2.fontSynthesis, fontFamily, (String) null, 0L, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, (TextDecoration) null, (Shadow) null, (PlatformSpanStyle) null, (DrawStyle) null, 65475, (DefaultConstructorMarker) null);
                } else {
                    spanStyle3 = new SpanStyle(0L, 0L, spanStyle2.fontWeight, spanStyle2.fontStyle, spanStyle2.fontSynthesis, fontFamily, (String) null, 0L, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, (TextDecoration) null, (Shadow) null, (PlatformSpanStyle) null, (DrawStyle) null, 65475, (DefaultConstructorMarker) null);
                }
                ni0Var = new ni0(spannableString, aVar, 25);
                if (arrayList.size() <= 1) {
                    if (!arrayList.isEmpty()) {
                        SpanStyle spanStyle16 = (SpanStyle) ((AnnotatedString.Range) arrayList.get(0)).f10428a;
                        ni0Var.A(spanStyle3 != null ? spanStyle3.d(spanStyle16) : spanStyle16, Integer.valueOf(((AnnotatedString.Range) arrayList.get(0)).f10429b), Integer.valueOf(((AnnotatedString.Range) arrayList.get(0)).f10430c));
                    }
                    collection = list3;
                } else {
                    size2 = arrayList.size();
                    i8 = size2 * 2;
                    iArr = new int[i8];
                    size3 = arrayList.size();
                    i9 = 0;
                    while (i9 < size3) {
                        AnnotatedString.Range range115 = (AnnotatedString.Range) arrayList.get(i9);
                        iArr[i9] = range115.f10429b;
                        iArr[i9 + size2] = range115.f10430c;
                        i9++;
                        list3 = list3;
                    }
                    collection = list3;
                    if (i8 > 1) {
                        Arrays.sort(iArr);
                    }
                    if (i8 != 0) {
                        zy0.c("Array is empty.");
                        throw null;
                    }
                    i10 = 0;
                    i11 = iArr[0];
                    i12 = 0;
                    while (i12 < i8) {
                        i13 = iArr[i12];
                        if (i13 == i11) {
                            arrayList2 = arrayList;
                        } else {
                            size4 = arrayList.size();
                            while (i10 < size4) {
                                ArrayList arrayList10 = arrayList;
                                AnnotatedString.Range range116 = (AnnotatedString.Range) arrayList.get(i10);
                                int i3119 = size4;
                                i14 = range116.f10429b;
                                int i31110 = i10;
                                i15 = range116.f10430c;
                                if (i14 == i15) {
                                }
                                i10 = i31110 + 1;
                                size4 = i3119;
                                arrayList = arrayList10;
                            }
                            arrayList2 = arrayList;
                            if (spanStyle3 != null) {
                                ni0Var.A(spanStyle3, Integer.valueOf(i11), Integer.valueOf(i13));
                            }
                            i11 = i13;
                        }
                        i12++;
                        spanStyle3 = spanStyle3;
                        arrayList = arrayList2;
                        i10 = 0;
                    }
                }
                size5 = collection.size();
                z6 = false;
                i16 = 0;
                while (i16 < size5) {
                    range3 = (AnnotatedString.Range) list4.get(i16);
                    obj2 = range3.f10428a;
                    if (obj2 instanceof SpanStyle) {
                        i26 = range3.f10429b;
                        int i31111 = range3.f10430c;
                        if (i26 >= 0) {
                            size5 = size5;
                            z8 = z6;
                            i16 = i16;
                            spannable2 = spannableString;
                            density3 = density3;
                        } else {
                            size5 = size5;
                            z8 = z6;
                            i16 = i16;
                            spannable2 = spannableString;
                            density3 = density3;
                        }
                    } else {
                        size5 = size5;
                        z8 = z6;
                        i16 = i16;
                        spannable2 = spannableString;
                        density3 = density3;
                    }
                    i16++;
                    density3 = density3;
                    size5 = size5;
                    spannableString = spannable2;
                    z6 = z8;
                }
                z7 = z6;
                spannable = spannableString;
                density2 = density3;
                if (z7) {
                    size8 = collection.size();
                    i23 = 0;
                    while (i23 < size8) {
                        range2 = (AnnotatedString.Range) list4.get(i23);
                        annotation = (AnnotatedString.Annotation) range2.f10428a;
                        if (annotation instanceof SpanStyle) {
                            i25 = range2.f10429b;
                            int i31112 = range2.f10430c;
                            if (i25 >= 0) {
                                i24 = i23;
                            } else {
                                i24 = i23;
                            }
                        } else {
                            i24 = i23;
                        }
                        i23 = i24 + 1;
                    }
                }
                textIndent2 = paragraphStyle2.d;
                if (textIndent2 != null) {
                    j2 = textIndent2.f10979a;
                    jB = TextUnit.b(j2);
                    TextUnitType.f11026b.getClass();
                    if (TextUnitType.a(jB, TextUnitType.f11027c)) {
                        fC = density2.E0(j2);
                    } else if (TextUnitType.a(jB, TextUnitType.d)) {
                        fC = TextUnit.c(j2) * textSize;
                    } else {
                        fC = 0.0f;
                    }
                    f2 = fC;
                } else {
                    f2 = 0.0f;
                }
                size6 = collection.size();
                while (i17 < size6) {
                    AnnotatedString.Range range117 = (AnnotatedString.Range) list4.get(i17);
                    obj = range117.f10428a;
                    if (obj instanceof Bullet) {
                        bullet = (Bullet) obj;
                    } else {
                        bullet = null;
                    }
                    if (bullet != null) {
                        fA = SpannableExtensions_androidKt.a(bullet.f10441b, textSize, density2);
                        float fA12 = SpannableExtensions_androidKt.a(bullet.f10442c, textSize, density2);
                        float fA13 = SpannableExtensions_androidKt.a(bullet.d, textSize, density2);
                        if (Float.isNaN(fA)) {
                        }
                    }
                }
                size7 = list5.size();
                i18 = 0;
                while (i18 < size7) {
                    List list11 = list5;
                    AnnotatedString.Range range118 = (AnnotatedString.Range) list11.get(i18);
                    Placeholder placeholder6 = (Placeholder) range118.f10428a;
                    int i411 = range118.f10429b;
                    int i412 = range118.f10430c;
                    while (i19 < r10) {
                        spannable.removeSpan((EmojiSpan) obj4);
                    }
                    long j112 = placeholder6.f10488a;
                    long j113 = placeholder6.f10489b;
                    float fC14 = TextUnit.c(j112);
                    int iA11 = PlaceholderExtensions_androidKt.a(placeholder6.f10488a);
                    float fC15 = TextUnit.c(j113);
                    int iA12 = PlaceholderExtensions_androidKt.a(j113);
                    i20 = placeholder6.f10490c;
                    PlaceholderVerticalAlign.f10491a.getClass();
                    if (i20 == PlaceholderVerticalAlign.f10492b) {
                        i22 = 0;
                    } else if (i20 == PlaceholderVerticalAlign.f10493c) {
                        i22 = 1;
                    } else if (i20 == PlaceholderVerticalAlign.d) {
                        i22 = 2;
                    } else if (i20 == PlaceholderVerticalAlign.f10494e) {
                        i22 = 3;
                    } else {
                        if (i20 == PlaceholderVerticalAlign.f10495f) {
                            i21 = 4;
                        } else if (i20 == PlaceholderVerticalAlign.g) {
                            i21 = 5;
                        } else {
                            if (i20 == PlaceholderVerticalAlign.f10496h) {
                                md.k("Invalid PlaceholderVerticalAlign");
                                throw null;
                            }
                            i21 = 6;
                        }
                        i22 = i21;
                    }
                    PlaceholderSpan placeholderSpan6 = new PlaceholderSpan(fC14, iA11, fC15, iA12, density2, i22);
                    density2 = density2;
                    spannable.setSpan(placeholderSpan6, i411, i412, 33);
                    i18++;
                    list5 = list11;
                }
                charSequenceJ = spannable;
            } else {
                float fB2 = SpannableExtensions_androidKt.b(paragraphStyle.f10481c, textSize, density3);
                if (!Float.isNaN(fB2)) {
                    spannableString.setSpan(new LineHeightSpan(fB2), 0, spannableString.length(), 33);
                }
            }
            i6 = 0;
            textIndent = paragraphStyle.d;
            if (textIndent != null) {
                i29 = i6;
                j3 = textIndent.f10979a;
                j4 = textIndent.f10980b;
                if (!TextUnit.a(j3, TextUnitKt.c(i29))) {
                }
                if ((j3 & 1095216660480L) == r13) {
                    paragraphStyle2 = paragraphStyle;
                } else {
                    jB2 = TextUnit.b(j3);
                    TextUnitType.f11026b.getClass();
                    paragraphStyle2 = paragraphStyle;
                    j5 = TextUnitType.f11027c;
                    if (TextUnitType.a(jB2, j5)) {
                        fC2 = density3.E0(j3);
                    } else if (TextUnitType.a(jB2, TextUnitType.d)) {
                        fC2 = TextUnit.c(j3) * textSize;
                    } else {
                        fC2 = 0.0f;
                    }
                    jB3 = TextUnit.b(j4);
                    if (TextUnitType.a(jB3, j5)) {
                        fC3 = density3.E0(j4);
                    } else if (TextUnitType.a(jB3, TextUnitType.d)) {
                        fC3 = TextUnit.c(j4) * textSize;
                    } else {
                        fC3 = 0.0f;
                    }
                    spannableString.setSpan(new LeadingMarginSpan.Standard((int) Math.ceil(fC2), (int) Math.ceil(fC3)), 0, spannableString.length(), 33);
                }
                arrayList = new ArrayList(list4.size());
                list3 = list4;
                size = list3.size();
                while (i7 < size) {
                    range4 = (AnnotatedString.Range) list4.get(i7);
                    obj3 = range4.f10428a;
                    if (obj3 instanceof SpanStyle) {
                        spanStyle4 = (SpanStyle) obj3;
                        if (spanStyle4.fontFamily == null) {
                            arrayList.add(range4);
                        } else {
                            arrayList.add(range4);
                        }
                    }
                }
                spanStyle2 = textStyle2.f10568a;
                fontFamily = spanStyle2.fontFamily;
                if (fontFamily != null) {
                    spanStyle3 = new SpanStyle(0L, 0L, spanStyle2.fontWeight, spanStyle2.fontStyle, spanStyle2.fontSynthesis, fontFamily, (String) null, 0L, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, (TextDecoration) null, (Shadow) null, (PlatformSpanStyle) null, (DrawStyle) null, 65475, (DefaultConstructorMarker) null);
                } else {
                    spanStyle3 = new SpanStyle(0L, 0L, spanStyle2.fontWeight, spanStyle2.fontStyle, spanStyle2.fontSynthesis, fontFamily, (String) null, 0L, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, (TextDecoration) null, (Shadow) null, (PlatformSpanStyle) null, (DrawStyle) null, 65475, (DefaultConstructorMarker) null);
                }
                ni0Var = new ni0(spannableString, aVar, 25);
                if (arrayList.size() <= 1) {
                    if (!arrayList.isEmpty()) {
                        SpanStyle spanStyle17 = (SpanStyle) ((AnnotatedString.Range) arrayList.get(0)).f10428a;
                        ni0Var.A(spanStyle3 != null ? spanStyle3.d(spanStyle17) : spanStyle17, Integer.valueOf(((AnnotatedString.Range) arrayList.get(0)).f10429b), Integer.valueOf(((AnnotatedString.Range) arrayList.get(0)).f10430c));
                    }
                    collection = list3;
                } else {
                    size2 = arrayList.size();
                    i8 = size2 * 2;
                    iArr = new int[i8];
                    size3 = arrayList.size();
                    i9 = 0;
                    while (i9 < size3) {
                        AnnotatedString.Range range119 = (AnnotatedString.Range) arrayList.get(i9);
                        iArr[i9] = range119.f10429b;
                        iArr[i9 + size2] = range119.f10430c;
                        i9++;
                        list3 = list3;
                    }
                    collection = list3;
                    if (i8 > 1) {
                        Arrays.sort(iArr);
                    }
                    if (i8 != 0) {
                        zy0.c("Array is empty.");
                        throw null;
                    }
                    i10 = 0;
                    i11 = iArr[0];
                    i12 = 0;
                    while (i12 < i8) {
                        i13 = iArr[i12];
                        if (i13 == i11) {
                            arrayList2 = arrayList;
                        } else {
                            size4 = arrayList.size();
                            while (i10 < size4) {
                                ArrayList arrayList11 = arrayList;
                                AnnotatedString.Range range1110 = (AnnotatedString.Range) arrayList.get(i10);
                                int i31113 = size4;
                                i14 = range1110.f10429b;
                                int i31114 = i10;
                                i15 = range1110.f10430c;
                                if (i14 == i15) {
                                }
                                i10 = i31114 + 1;
                                size4 = i31113;
                                arrayList = arrayList11;
                            }
                            arrayList2 = arrayList;
                            if (spanStyle3 != null) {
                                ni0Var.A(spanStyle3, Integer.valueOf(i11), Integer.valueOf(i13));
                            }
                            i11 = i13;
                        }
                        i12++;
                        spanStyle3 = spanStyle3;
                        arrayList = arrayList2;
                        i10 = 0;
                    }
                }
                size5 = collection.size();
                z6 = false;
                i16 = 0;
                while (i16 < size5) {
                    range3 = (AnnotatedString.Range) list4.get(i16);
                    obj2 = range3.f10428a;
                    if (obj2 instanceof SpanStyle) {
                        i26 = range3.f10429b;
                        int i31115 = range3.f10430c;
                        if (i26 >= 0) {
                            size5 = size5;
                            z8 = z6;
                            i16 = i16;
                            spannable2 = spannableString;
                            density3 = density3;
                        } else {
                            size5 = size5;
                            z8 = z6;
                            i16 = i16;
                            spannable2 = spannableString;
                            density3 = density3;
                        }
                    } else {
                        size5 = size5;
                        z8 = z6;
                        i16 = i16;
                        spannable2 = spannableString;
                        density3 = density3;
                    }
                    i16++;
                    density3 = density3;
                    size5 = size5;
                    spannableString = spannable2;
                    z6 = z8;
                }
                z7 = z6;
                spannable = spannableString;
                density2 = density3;
                if (z7) {
                    size8 = collection.size();
                    i23 = 0;
                    while (i23 < size8) {
                        range2 = (AnnotatedString.Range) list4.get(i23);
                        annotation = (AnnotatedString.Annotation) range2.f10428a;
                        if (annotation instanceof SpanStyle) {
                            i25 = range2.f10429b;
                            int i31116 = range2.f10430c;
                            if (i25 >= 0) {
                                i24 = i23;
                            } else {
                                i24 = i23;
                            }
                        } else {
                            i24 = i23;
                        }
                        i23 = i24 + 1;
                    }
                }
                textIndent2 = paragraphStyle2.d;
                if (textIndent2 != null) {
                    j2 = textIndent2.f10979a;
                    jB = TextUnit.b(j2);
                    TextUnitType.f11026b.getClass();
                    if (TextUnitType.a(jB, TextUnitType.f11027c)) {
                        fC = density2.E0(j2);
                    } else if (TextUnitType.a(jB, TextUnitType.d)) {
                        fC = TextUnit.c(j2) * textSize;
                    } else {
                        fC = 0.0f;
                    }
                    f2 = fC;
                } else {
                    f2 = 0.0f;
                }
                size6 = collection.size();
                while (i17 < size6) {
                    AnnotatedString.Range range1111 = (AnnotatedString.Range) list4.get(i17);
                    obj = range1111.f10428a;
                    if (obj instanceof Bullet) {
                        bullet = (Bullet) obj;
                    } else {
                        bullet = null;
                    }
                    if (bullet != null) {
                        fA = SpannableExtensions_androidKt.a(bullet.f10441b, textSize, density2);
                        float fA14 = SpannableExtensions_androidKt.a(bullet.f10442c, textSize, density2);
                        float fA15 = SpannableExtensions_androidKt.a(bullet.d, textSize, density2);
                        if (Float.isNaN(fA)) {
                        }
                    }
                }
                size7 = list5.size();
                i18 = 0;
                while (i18 < size7) {
                    List list12 = list5;
                    AnnotatedString.Range range1112 = (AnnotatedString.Range) list12.get(i18);
                    Placeholder placeholder7 = (Placeholder) range1112.f10428a;
                    int i413 = range1112.f10429b;
                    int i414 = range1112.f10430c;
                    while (i19 < r10) {
                        spannable.removeSpan((EmojiSpan) obj4);
                    }
                    long j114 = placeholder7.f10488a;
                    long j115 = placeholder7.f10489b;
                    float fC16 = TextUnit.c(j114);
                    int iA13 = PlaceholderExtensions_androidKt.a(placeholder7.f10488a);
                    float fC17 = TextUnit.c(j115);
                    int iA14 = PlaceholderExtensions_androidKt.a(j115);
                    i20 = placeholder7.f10490c;
                    PlaceholderVerticalAlign.f10491a.getClass();
                    if (i20 == PlaceholderVerticalAlign.f10492b) {
                        i22 = 0;
                    } else if (i20 == PlaceholderVerticalAlign.f10493c) {
                        i22 = 1;
                    } else if (i20 == PlaceholderVerticalAlign.d) {
                        i22 = 2;
                    } else if (i20 == PlaceholderVerticalAlign.f10494e) {
                        i22 = 3;
                    } else {
                        if (i20 == PlaceholderVerticalAlign.f10495f) {
                            i21 = 4;
                        } else if (i20 == PlaceholderVerticalAlign.g) {
                            i21 = 5;
                        } else {
                            if (i20 == PlaceholderVerticalAlign.f10496h) {
                                md.k("Invalid PlaceholderVerticalAlign");
                                throw null;
                            }
                            i21 = 6;
                        }
                        i22 = i21;
                    }
                    PlaceholderSpan placeholderSpan7 = new PlaceholderSpan(fC16, iA13, fC17, iA14, density2, i22);
                    density2 = density2;
                    spannable.setSpan(placeholderSpan7, i413, i414, 33);
                    i18++;
                    list5 = list12;
                }
                charSequenceJ = spannable;
            } else {
                paragraphStyle2 = paragraphStyle;
            }
            arrayList = new ArrayList(list4.size());
            list3 = list4;
            size = list3.size();
            while (i7 < size) {
                range4 = (AnnotatedString.Range) list4.get(i7);
                obj3 = range4.f10428a;
                if (obj3 instanceof SpanStyle) {
                    spanStyle4 = (SpanStyle) obj3;
                    if (spanStyle4.fontFamily == null) {
                        arrayList.add(range4);
                    } else {
                        arrayList.add(range4);
                    }
                }
            }
            spanStyle2 = textStyle2.f10568a;
            fontFamily = spanStyle2.fontFamily;
            if (fontFamily != null) {
                spanStyle3 = new SpanStyle(0L, 0L, spanStyle2.fontWeight, spanStyle2.fontStyle, spanStyle2.fontSynthesis, fontFamily, (String) null, 0L, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, (TextDecoration) null, (Shadow) null, (PlatformSpanStyle) null, (DrawStyle) null, 65475, (DefaultConstructorMarker) null);
            } else {
                spanStyle3 = new SpanStyle(0L, 0L, spanStyle2.fontWeight, spanStyle2.fontStyle, spanStyle2.fontSynthesis, fontFamily, (String) null, 0L, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, (TextDecoration) null, (Shadow) null, (PlatformSpanStyle) null, (DrawStyle) null, 65475, (DefaultConstructorMarker) null);
            }
            ni0Var = new ni0(spannableString, aVar, 25);
            if (arrayList.size() <= 1) {
                if (!arrayList.isEmpty()) {
                    SpanStyle spanStyle18 = (SpanStyle) ((AnnotatedString.Range) arrayList.get(0)).f10428a;
                    ni0Var.A(spanStyle3 != null ? spanStyle3.d(spanStyle18) : spanStyle18, Integer.valueOf(((AnnotatedString.Range) arrayList.get(0)).f10429b), Integer.valueOf(((AnnotatedString.Range) arrayList.get(0)).f10430c));
                }
                collection = list3;
            } else {
                size2 = arrayList.size();
                i8 = size2 * 2;
                iArr = new int[i8];
                size3 = arrayList.size();
                i9 = 0;
                while (i9 < size3) {
                    AnnotatedString.Range range1113 = (AnnotatedString.Range) arrayList.get(i9);
                    iArr[i9] = range1113.f10429b;
                    iArr[i9 + size2] = range1113.f10430c;
                    i9++;
                    list3 = list3;
                }
                collection = list3;
                if (i8 > 1) {
                    Arrays.sort(iArr);
                }
                if (i8 != 0) {
                    zy0.c("Array is empty.");
                    throw null;
                }
                i10 = 0;
                i11 = iArr[0];
                i12 = 0;
                while (i12 < i8) {
                    i13 = iArr[i12];
                    if (i13 == i11) {
                        arrayList2 = arrayList;
                    } else {
                        size4 = arrayList.size();
                        while (i10 < size4) {
                            ArrayList arrayList12 = arrayList;
                            AnnotatedString.Range range1114 = (AnnotatedString.Range) arrayList.get(i10);
                            int i31117 = size4;
                            i14 = range1114.f10429b;
                            int i31118 = i10;
                            i15 = range1114.f10430c;
                            if (i14 == i15) {
                            }
                            i10 = i31118 + 1;
                            size4 = i31117;
                            arrayList = arrayList12;
                        }
                        arrayList2 = arrayList;
                        if (spanStyle3 != null) {
                            ni0Var.A(spanStyle3, Integer.valueOf(i11), Integer.valueOf(i13));
                        }
                        i11 = i13;
                    }
                    i12++;
                    spanStyle3 = spanStyle3;
                    arrayList = arrayList2;
                    i10 = 0;
                }
            }
            size5 = collection.size();
            z6 = false;
            i16 = 0;
            while (i16 < size5) {
                range3 = (AnnotatedString.Range) list4.get(i16);
                obj2 = range3.f10428a;
                if (obj2 instanceof SpanStyle) {
                    i26 = range3.f10429b;
                    int i31119 = range3.f10430c;
                    if (i26 >= 0) {
                        size5 = size5;
                        z8 = z6;
                        i16 = i16;
                        spannable2 = spannableString;
                        density3 = density3;
                    } else {
                        size5 = size5;
                        z8 = z6;
                        i16 = i16;
                        spannable2 = spannableString;
                        density3 = density3;
                    }
                } else {
                    size5 = size5;
                    z8 = z6;
                    i16 = i16;
                    spannable2 = spannableString;
                    density3 = density3;
                }
                i16++;
                density3 = density3;
                size5 = size5;
                spannableString = spannable2;
                z6 = z8;
            }
            z7 = z6;
            spannable = spannableString;
            density2 = density3;
            if (z7) {
                size8 = collection.size();
                i23 = 0;
                while (i23 < size8) {
                    range2 = (AnnotatedString.Range) list4.get(i23);
                    annotation = (AnnotatedString.Annotation) range2.f10428a;
                    if (annotation instanceof SpanStyle) {
                        i25 = range2.f10429b;
                        int i311110 = range2.f10430c;
                        if (i25 >= 0) {
                            i24 = i23;
                        } else {
                            i24 = i23;
                        }
                    } else {
                        i24 = i23;
                    }
                    i23 = i24 + 1;
                }
            }
            textIndent2 = paragraphStyle2.d;
            if (textIndent2 != null) {
                j2 = textIndent2.f10979a;
                jB = TextUnit.b(j2);
                TextUnitType.f11026b.getClass();
                if (TextUnitType.a(jB, TextUnitType.f11027c)) {
                    fC = density2.E0(j2);
                } else if (TextUnitType.a(jB, TextUnitType.d)) {
                    fC = TextUnit.c(j2) * textSize;
                } else {
                    fC = 0.0f;
                }
                f2 = fC;
            } else {
                f2 = 0.0f;
            }
            size6 = collection.size();
            while (i17 < size6) {
                AnnotatedString.Range range1115 = (AnnotatedString.Range) list4.get(i17);
                obj = range1115.f10428a;
                if (obj instanceof Bullet) {
                    bullet = (Bullet) obj;
                } else {
                    bullet = null;
                }
                if (bullet != null) {
                    fA = SpannableExtensions_androidKt.a(bullet.f10441b, textSize, density2);
                    float fA16 = SpannableExtensions_androidKt.a(bullet.f10442c, textSize, density2);
                    float fA17 = SpannableExtensions_androidKt.a(bullet.d, textSize, density2);
                    if (Float.isNaN(fA)) {
                    }
                }
            }
            size7 = list5.size();
            i18 = 0;
            while (i18 < size7) {
                List list13 = list5;
                AnnotatedString.Range range1116 = (AnnotatedString.Range) list13.get(i18);
                Placeholder placeholder8 = (Placeholder) range1116.f10428a;
                int i415 = range1116.f10429b;
                int i416 = range1116.f10430c;
                while (i19 < r10) {
                    spannable.removeSpan((EmojiSpan) obj4);
                }
                long j116 = placeholder8.f10488a;
                long j117 = placeholder8.f10489b;
                float fC18 = TextUnit.c(j116);
                int iA15 = PlaceholderExtensions_androidKt.a(placeholder8.f10488a);
                float fC19 = TextUnit.c(j117);
                int iA16 = PlaceholderExtensions_androidKt.a(j117);
                i20 = placeholder8.f10490c;
                PlaceholderVerticalAlign.f10491a.getClass();
                if (i20 == PlaceholderVerticalAlign.f10492b) {
                    i22 = 0;
                } else if (i20 == PlaceholderVerticalAlign.f10493c) {
                    i22 = 1;
                } else if (i20 == PlaceholderVerticalAlign.d) {
                    i22 = 2;
                } else if (i20 == PlaceholderVerticalAlign.f10494e) {
                    i22 = 3;
                } else {
                    if (i20 == PlaceholderVerticalAlign.f10495f) {
                        i21 = 4;
                    } else if (i20 == PlaceholderVerticalAlign.g) {
                        i21 = 5;
                    } else {
                        if (i20 == PlaceholderVerticalAlign.f10496h) {
                            md.k("Invalid PlaceholderVerticalAlign");
                            throw null;
                        }
                        i21 = 6;
                    }
                    i22 = i21;
                }
                PlaceholderSpan placeholderSpan8 = new PlaceholderSpan(fC18, iA15, fC19, iA16, density2, i22);
                density2 = density2;
                spannable.setSpan(placeholderSpan8, i415, i416, 33);
                i18++;
                list5 = list13;
            }
            charSequenceJ = spannable;
        }
        this.f10882h = charSequenceJ;
        this.f10883i = new LayoutIntrinsics(charSequenceJ, this.g, this.l);
    }

    @Override // androidx.compose.ui.text.ParagraphIntrinsics
    public final boolean a() {
        TypefaceDirtyTrackerLinkedList typefaceDirtyTrackerLinkedList = this.f10884j;
        if (typefaceDirtyTrackerLinkedList != null ? typefaceDirtyTrackerLinkedList.a() : false) {
            return true;
        }
        if (!this.f10885k && AndroidParagraphIntrinsics_androidKt.a(this.f10878b)) {
            EmojiCompatStatusDelegate emojiCompatStatusDelegate = EmojiCompatStatus.f10900a;
            DefaultImpl defaultImpl = (DefaultImpl) EmojiCompatStatus.f10900a;
            State stateA = defaultImpl.f10896a;
            if (stateA == null) {
                if (EmojiCompat.g()) {
                    stateA = defaultImpl.a();
                    defaultImpl.f10896a = stateA;
                } else {
                    stateA = EmojiCompatStatus_androidKt.f10901a;
                }
            }
            if (((Boolean) stateA.getF10755b()).booleanValue()) {
                return true;
            }
        }
        return false;
    }

    @Override // androidx.compose.ui.text.ParagraphIntrinsics
    public final float b() {
        return this.f10883i.c();
    }

    @Override // androidx.compose.ui.text.ParagraphIntrinsics
    public final float c() {
        LayoutIntrinsics layoutIntrinsics = this.f10883i;
        float f2 = layoutIntrinsics.f10592e;
        TextPaint textPaint = layoutIntrinsics.f10590b;
        if (!Float.isNaN(f2)) {
            return layoutIntrinsics.f10592e;
        }
        BreakIterator lineInstance = BreakIterator.getLineInstance(textPaint.getTextLocale());
        CharSequence charSequence = layoutIntrinsics.f10589a;
        int i2 = 0;
        lineInstance.setText(new CharSequenceCharacterIterator(charSequence, 0, charSequence.length()));
        PriorityQueue priorityQueue = new PriorityQueue(10, LayoutIntrinsics_androidKt.f10595a);
        int next = lineInstance.next();
        while (true) {
            int i3 = i2;
            i2 = next;
            if (i2 == -1) {
                break;
            }
            if (priorityQueue.size() < 10) {
                priorityQueue.add(new IntRange(i3, i2));
            } else {
                IntRange intRange = (IntRange) priorityQueue.peek();
                if (intRange != null && intRange.f71952c - intRange.f71951b < i2 - i3) {
                    priorityQueue.poll();
                    priorityQueue.add(new IntRange(i3, i2));
                }
            }
            next = lineInstance.next();
        }
        boolean zIsEmpty = priorityQueue.isEmpty();
        float desiredWidth = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        if (!zIsEmpty) {
            Iterator it = priorityQueue.iterator();
            if (!it.hasNext()) {
                b21.x();
                return Call.Parameters.DEFAULT_CAMERA_ZOOM;
            }
            IntRange intRange2 = (IntRange) it.next();
            desiredWidth = Layout.getDesiredWidth(layoutIntrinsics.b(), intRange2.f71951b, intRange2.f71952c, textPaint);
            while (it.hasNext()) {
                IntRange intRange3 = (IntRange) it.next();
                desiredWidth = Math.max(desiredWidth, Layout.getDesiredWidth(layoutIntrinsics.b(), intRange3.f71951b, intRange3.f71952c, textPaint));
            }
        }
        layoutIntrinsics.f10592e = desiredWidth;
        return desiredWidth;
    }
}
