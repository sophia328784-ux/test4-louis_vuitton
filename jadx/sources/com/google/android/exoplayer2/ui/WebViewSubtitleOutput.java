package com.google.android.exoplayer2.ui;

import android.content.Context;
import android.text.Spanned;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.BackgroundColorSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.RelativeSizeSpan;
import android.text.style.StrikethroughSpan;
import android.text.style.StyleSpan;
import android.text.style.TypefaceSpan;
import android.text.style.UnderlineSpan;
import android.util.AttributeSet;
import android.util.Base64;
import android.util.SparseArray;
import android.view.MotionEvent;
import android.webkit.WebView;
import android.widget.FrameLayout;
import com.google.android.exoplayer2.text.Cue;
import com.google.android.exoplayer2.text.span.HorizontalTextInVerticalContextSpan;
import com.google.android.exoplayer2.text.span.RubySpan;
import com.google.android.exoplayer2.text.span.TextEmphasisSpan;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Util;
import com.google.common.base.Charsets;
import com.google.common.collect.ImmutableMap;
import com.linkplay.medialib.server.HttpServer;
import com.sightcall.universal.media.offline.FileUtils;
import defpackage.d21;
import defpackage.fc;
import defpackage.n00;
import defpackage.pq0;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.regex.Pattern;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
final class WebViewSubtitleOutput extends FrameLayout implements SubtitleView.Output {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final CanvasSubtitleOutput f28427b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final WebView f28428c;
    public List d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public CaptionStyleCompat f28429e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public float f28430f;
    public float g;

    /* JADX INFO: renamed from: com.google.android.exoplayer2.ui.WebViewSubtitleOutput$1, reason: invalid class name */
    public class AnonymousClass1 extends WebView {
        @Override // android.webkit.WebView, android.view.View
        public final boolean onTouchEvent(MotionEvent motionEvent) {
            super.onTouchEvent(motionEvent);
            return false;
        }

        @Override // android.view.View
        public final boolean performClick() {
            super.performClick();
            return false;
        }
    }

    public WebViewSubtitleOutput(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.d = Collections.EMPTY_LIST;
        this.f28429e = CaptionStyleCompat.g;
        this.f28430f = 0.0533f;
        this.g = 0.08f;
        CanvasSubtitleOutput canvasSubtitleOutput = new CanvasSubtitleOutput(context, attributeSet);
        this.f28427b = canvasSubtitleOutput;
        AnonymousClass1 anonymousClass1 = new AnonymousClass1(context, attributeSet);
        this.f28428c = anonymousClass1;
        anonymousClass1.setBackgroundColor(0);
        addView(canvasSubtitleOutput);
        addView(anonymousClass1);
    }

    @Override // com.google.android.exoplayer2.ui.SubtitleView.Output
    public final void a(List list, CaptionStyleCompat captionStyleCompat, float f2, float f3) {
        this.f28429e = captionStyleCompat;
        this.f28430f = f2;
        this.g = f3;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (int i2 = 0; i2 < list.size(); i2++) {
            Cue cue = (Cue) list.get(i2);
            cue.getClass();
            arrayList2.add(cue);
        }
        if (!this.d.isEmpty() || !arrayList2.isEmpty()) {
            this.d = arrayList2;
            c();
        }
        this.f28427b.a(arrayList, captionStyleCompat, f2, f3);
        invalidate();
    }

    public final String b(float f2, int i2) {
        float fB = SubtitleViewUtils.b(i2, getHeight(), (getHeight() - getPaddingTop()) - getPaddingBottom(), f2);
        if (fB == -3.4028235E38f) {
            return "unset";
        }
        Object[] objArr = {Float.valueOf(fB / getContext().getResources().getDisplayMetrics().density)};
        int i3 = Util.f28451a;
        return String.format(Locale.US, "%.2fpx", objArr);
    }

    /* JADX WARN: Code duplicated, block: B:100:0x02b8  */
    /* JADX WARN: Code duplicated, block: B:102:0x02c0  */
    /* JADX WARN: Code duplicated, block: B:103:0x02d0  */
    /* JADX WARN: Code duplicated, block: B:105:0x02d6  */
    /* JADX WARN: Code duplicated, block: B:107:0x02f7  */
    /* JADX WARN: Code duplicated, block: B:109:0x02ff  */
    /* JADX WARN: Code duplicated, block: B:110:0x0313  */
    /* JADX WARN: Code duplicated, block: B:112:0x0317  */
    /* JADX WARN: Code duplicated, block: B:113:0x031a  */
    /* JADX WARN: Code duplicated, block: B:115:0x031e  */
    /* JADX WARN: Code duplicated, block: B:117:0x0327  */
    /* JADX WARN: Code duplicated, block: B:118:0x032d  */
    /* JADX WARN: Code duplicated, block: B:120:0x0347  */
    /* JADX WARN: Code duplicated, block: B:122:0x034b  */
    /* JADX WARN: Code duplicated, block: B:123:0x0367  */
    /* JADX WARN: Code duplicated, block: B:125:0x036b  */
    /* JADX WARN: Code duplicated, block: B:127:0x0374  */
    /* JADX WARN: Code duplicated, block: B:128:0x0382  */
    /* JADX WARN: Code duplicated, block: B:129:0x038a  */
    /* JADX WARN: Code duplicated, block: B:131:0x038e  */
    /* JADX WARN: Code duplicated, block: B:133:0x0398  */
    /* JADX WARN: Code duplicated, block: B:135:0x039b  */
    /* JADX WARN: Code duplicated, block: B:138:0x039f  */
    /* JADX WARN: Code duplicated, block: B:139:0x03a3  */
    /* JADX WARN: Code duplicated, block: B:140:0x03a7  */
    /* JADX WARN: Code duplicated, block: B:141:0x03ab  */
    /* JADX WARN: Code duplicated, block: B:143:0x03af  */
    /* JADX WARN: Code duplicated, block: B:145:0x03b7  */
    /* JADX WARN: Code duplicated, block: B:147:0x03ba  */
    /* JADX WARN: Code duplicated, block: B:150:0x03be  */
    /* JADX WARN: Code duplicated, block: B:151:0x03c2  */
    /* JADX WARN: Code duplicated, block: B:152:0x03c6  */
    /* JADX WARN: Code duplicated, block: B:153:0x03ca  */
    /* JADX WARN: Code duplicated, block: B:155:0x03ce  */
    /* JADX WARN: Code duplicated, block: B:156:0x03d2  */
    /* JADX WARN: Code duplicated, block: B:158:0x03d6  */
    /* JADX WARN: Code duplicated, block: B:160:0x03e9  */
    /* JADX WARN: Code duplicated, block: B:163:0x03ed  */
    /* JADX WARN: Code duplicated, block: B:164:0x03f3  */
    /* JADX WARN: Code duplicated, block: B:166:0x03fb  */
    /* JADX WARN: Code duplicated, block: B:168:0x03fe A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:169:0x0400  */
    /* JADX WARN: Code duplicated, block: B:171:0x0403  */
    /* JADX WARN: Code duplicated, block: B:172:0x0407  */
    /* JADX WARN: Code duplicated, block: B:173:0x040d  */
    /* JADX WARN: Code duplicated, block: B:174:0x0413  */
    /* JADX WARN: Code duplicated, block: B:175:0x0419  */
    /* JADX WARN: Code duplicated, block: B:178:0x0427  */
    /* JADX WARN: Code duplicated, block: B:179:0x042a  */
    /* JADX WARN: Code duplicated, block: B:200:0x0464 A[PHI: r7
      0x0464: PHI (r7v49 java.lang.String) = 
      (r7v48 java.lang.String)
      (r7v48 java.lang.String)
      (r7v48 java.lang.String)
      (r7v48 java.lang.String)
      (r7v48 java.lang.String)
      (r7v48 java.lang.String)
      (r7v48 java.lang.String)
      (r7v48 java.lang.String)
      (r7v63 java.lang.String)
     binds: [B:182:0x043c, B:184:0x0440, B:186:0x0444, B:188:0x0448, B:190:0x044c, B:192:0x0450, B:194:0x0454, B:199:0x0462, B:201:0x0467] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:223:0x04bb  */
    /* JADX WARN: Code duplicated, block: B:225:0x04cb  */
    /* JADX WARN: Code duplicated, block: B:228:0x04e0  */
    /* JADX WARN: Code duplicated, block: B:234:0x0514  */
    /* JADX WARN: Code duplicated, block: B:237:0x053e A[LOOP:6: B:235:0x0538->B:237:0x053e, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:241:0x0559 A[LOOP:7: B:239:0x0553->B:241:0x0559, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:247:0x0590  */
    /* JADX WARN: Code duplicated, block: B:249:0x05a4  */
    /* JADX WARN: Code duplicated, block: B:253:0x05b1  */
    /* JADX WARN: Code duplicated, block: B:270:0x04ed A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:53:0x0174  */
    /* JADX WARN: Code duplicated, block: B:55:0x0187  */
    /* JADX WARN: Code duplicated, block: B:57:0x018c  */
    /* JADX WARN: Code duplicated, block: B:59:0x018f  */
    /* JADX WARN: Code duplicated, block: B:61:0x0194  */
    /* JADX WARN: Code duplicated, block: B:62:0x0197  */
    /* JADX WARN: Code duplicated, block: B:65:0x01b2  */
    /* JADX WARN: Code duplicated, block: B:67:0x01b5 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:68:0x01b7  */
    /* JADX WARN: Code duplicated, block: B:71:0x01bf A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:73:0x01c2  */
    /* JADX WARN: Code duplicated, block: B:75:0x01c8 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:83:0x01d6  */
    /* JADX WARN: Code duplicated, block: B:86:0x01f5  */
    /* JADX WARN: Code duplicated, block: B:88:0x020b  */
    /* JADX WARN: Code duplicated, block: B:90:0x020f  */
    /* JADX WARN: Code duplicated, block: B:91:0x0226  */
    /* JADX WARN: Code duplicated, block: B:93:0x023e A[LOOP:2: B:92:0x023c->B:93:0x023e, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:97:0x0263 A[LOOP:3: B:95:0x025d->B:97:0x0263, LOOP_END] */
    /* JADX WARN: Instruction removed from duplicated block: B:97:0x0263, please report this as an issue */
    public final void c() {
        String strConcat;
        String str;
        String str2;
        int i2;
        float f2;
        String str3;
        String str4;
        String str5;
        String str6;
        Object obj;
        String str7;
        CharSequence charSequence;
        float f3;
        String str8;
        Spanned spanned;
        HashSet hashSet;
        BackgroundColorSpan[] backgroundColorSpanArr;
        int length;
        int i3;
        HashMap map;
        Iterator it;
        float f4;
        SparseArray sparseArray;
        Object[] spans;
        int length2;
        int i4;
        String str9;
        int i5;
        StringBuilder sb;
        int i6;
        int i7;
        SpannedToHtmlConverter.HtmlAndCss htmlAndCss;
        Iterator it2;
        Iterator it3;
        Object obj2;
        boolean z;
        String str10;
        String str11;
        Object[] objArr;
        TextEmphasisSpan textEmphasisSpan;
        int i8;
        int i9;
        StringBuilder sb2;
        int i10;
        String str12;
        String strH;
        int i11;
        int style;
        String family;
        AbsoluteSizeSpan absoluteSizeSpan;
        float size;
        String str13;
        int spanStart;
        int spanEnd;
        SpannedToHtmlConverter.Transition transition;
        SpannedToHtmlConverter.Transition transition2;
        String str14;
        boolean z2;
        StringBuilder sb3 = new StringBuilder();
        String strA = HtmlUtils.a(this.f28429e.f28367a);
        int i12 = 0;
        String strB = b(this.f28430f, 0);
        float f5 = 1.2f;
        Float fValueOf = Float.valueOf(1.2f);
        CaptionStyleCompat captionStyleCompat = this.f28429e;
        int i13 = captionStyleCompat.d;
        int i14 = captionStyleCompat.f28370e;
        int i15 = 2;
        int i16 = 1;
        if (i13 == 1) {
            Object[] objArr2 = {HtmlUtils.a(i14)};
            int i17 = Util.f28451a;
            strConcat = String.format(Locale.US, "1px 1px 0 %1$s, 1px -1px 0 %1$s, -1px 1px 0 %1$s, -1px -1px 0 %1$s", objArr2);
        } else if (i13 == 2) {
            String strA2 = HtmlUtils.a(i14);
            int i18 = Util.f28451a;
            Locale locale = Locale.US;
            strConcat = "0.1em 0.12em 0.15em ".concat(strA2);
        } else if (i13 == 3) {
            String strA3 = HtmlUtils.a(i14);
            int i19 = Util.f28451a;
            Locale locale2 = Locale.US;
            strConcat = "0.06em 0.08em 0.15em ".concat(strA3);
        } else if (i13 != 4) {
            strConcat = "unset";
        } else {
            String strA4 = HtmlUtils.a(i14);
            int i20 = Util.f28451a;
            Locale locale3 = Locale.US;
            strConcat = "-0.05em -0.05em 0.15em ".concat(strA4);
        }
        Object[] objArr3 = {strA, strB, fValueOf, strConcat};
        int i21 = Util.f28451a;
        sb3.append(String.format(Locale.US, "<body><div style='-webkit-user-select:none;position:fixed;top:0;bottom:0;left:0;right:0;color:%s;font-size:%s;line-height:%.2f;text-shadow:%s;'>", objArr3));
        HashMap map2 = new HashMap();
        String strA5 = HtmlUtils.a(this.f28429e.f28368b);
        String str15 = "background-color:";
        StringBuilder sb4 = new StringBuilder("background-color:");
        sb4.append(strA5);
        String str16 = ";";
        sb4.append(";");
        map2.put(".default_bg,.default_bg *", sb4.toString());
        int i22 = 0;
        while (i22 < this.d.size()) {
            Cue cue = (Cue) this.d.get(i22);
            float f6 = cue.f28339f;
            int i23 = cue.m;
            float f7 = f6 != -3.4028235E38f ? f6 * 100.0f : 50.0f;
            float f8 = f5;
            int i24 = cue.g;
            int i25 = -100;
            int i26 = i24 != i16 ? i24 != i15 ? i12 : -100 : -50;
            float f9 = cue.f28337c;
            if (f9 != r15) {
                if (cue.d != i16) {
                    str = String.format(Locale.US, "%.2f%%", Float.valueOf(f9 * 100.0f));
                    int i27 = cue.f28338e;
                    if (i23 == i16) {
                        i25 = -(i27 != i16 ? i27 != i15 ? 0 : -100 : -50);
                    } else {
                        i25 = i27 != i16 ? i27 != i15 ? 0 : -100 : -50;
                    }
                } else {
                    if (f9 >= Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                        str2 = String.format(Locale.US, "%.2fem", Float.valueOf(f9 * f8));
                        i2 = 0;
                    } else {
                        str2 = String.format(Locale.US, "%.2fem", Float.valueOf(((-f9) - 1.0f) * f8));
                        i2 = i16;
                    }
                    i25 = 0;
                }
                f2 = cue.f28340h;
                if (f2 != -8388609) {
                    str3 = String.format(Locale.US, "%.2f%%", Float.valueOf(f2 * 100.0f));
                } else {
                    str3 = "fit-content";
                }
                String str17 = str3;
                if (i23 != i16) {
                    str4 = "vertical-rl";
                } else if (i23 != 2) {
                    str4 = "horizontal-tb";
                } else {
                    str4 = "vertical-lr";
                }
                String str18 = str4;
                String strB2 = b(cue.l, cue.f28343k);
                String strA6 = HtmlUtils.a(this.f28429e.f28369c);
                str5 = "right";
                if (i23 != i16) {
                    if (i2 != 0) {
                        str5 = "left";
                    }
                    str6 = str5;
                    obj = "top";
                } else if (i23 != 2) {
                    obj = "left";
                    str6 = i2 != 0 ? "bottom" : "top";
                } else {
                    if (i2 == 0) {
                        str5 = "left";
                    }
                    str6 = str5;
                    obj = "top";
                }
                if (i23 != 2 || i23 == 1) {
                    str7 = "height";
                    int i28 = i25;
                    i25 = i26;
                    i26 = i28;
                } else {
                    str7 = "width";
                }
                String str19 = str7;
                charSequence = cue.f28336b;
                f3 = getContext().getResources().getDisplayMetrics().density;
                Pattern pattern = SpannedToHtmlConverter.f28401a;
                str8 = "";
                if (charSequence == null) {
                    htmlAndCss = new SpannedToHtmlConverter.HtmlAndCss("", ImmutableMap.h());
                } else {
                    if (charSequence instanceof Spanned) {
                        spanned = (Spanned) charSequence;
                        hashSet = new HashSet();
                        backgroundColorSpanArr = (BackgroundColorSpan[]) spanned.getSpans(0, spanned.length(), BackgroundColorSpan.class);
                        length = backgroundColorSpanArr.length;
                        i3 = 0;
                        while (i3 < length) {
                            hashSet.add(Integer.valueOf(backgroundColorSpanArr[i3].getBackgroundColor()));
                            i3++;
                            i26 = i26;
                        }
                        i26 = i26;
                        map = new HashMap();
                        it = hashSet.iterator();
                        while (it.hasNext()) {
                            int iIntValue = ((Integer) it.next()).intValue();
                            String strK = pq0.k(iIntValue, "bg_");
                            int i29 = i22;
                            float f10 = f3;
                            String strL = d21.l(FileUtils.HIDDEN_PREFIX, strK, ",.", strK, " *");
                            String strA7 = HtmlUtils.a(iIntValue);
                            int i30 = Util.f28451a;
                            Locale locale4 = Locale.US;
                            map.put(strL, str15 + strA7 + str16);
                            i22 = i29;
                            f3 = f10;
                        }
                        i22 = i22;
                        f4 = f3;
                        sparseArray = new SparseArray();
                        spans = spanned.getSpans(0, spanned.length(), Object.class);
                        length2 = spans.length;
                        i4 = 0;
                        while (i4 < length2) {
                            obj2 = spans[i4];
                            z = obj2 instanceof StrikethroughSpan;
                            String strR = null;
                            if (z) {
                                str10 = str16;
                                str11 = str15;
                                strH = "<span style='text-decoration:line-through;'>";
                                objArr = spans;
                            } else {
                                str10 = str16;
                                if (obj2 instanceof ForegroundColorSpan) {
                                    String strA8 = HtmlUtils.a(((ForegroundColorSpan) obj2).getForegroundColor());
                                    int i31 = Util.f28451a;
                                    Locale locale5 = Locale.US;
                                    str11 = str15;
                                    objArr = spans;
                                    strH = fc.h("<span style='color:", strA8, ";'>");
                                } else {
                                    str11 = str15;
                                    objArr = spans;
                                    if (obj2 instanceof BackgroundColorSpan) {
                                        int backgroundColor = ((BackgroundColorSpan) obj2).getBackgroundColor();
                                        int i32 = Util.f28451a;
                                        Locale locale6 = Locale.US;
                                        strH = n00.m(backgroundColor, "<span class='bg_", "'>");
                                    } else if (obj2 instanceof HorizontalTextInVerticalContextSpan) {
                                        strH = "<span style='text-combine-upright:all;'>";
                                    } else if (obj2 instanceof AbsoluteSizeSpan) {
                                        absoluteSizeSpan = (AbsoluteSizeSpan) obj2;
                                        if (absoluteSizeSpan.getDip()) {
                                            size = absoluteSizeSpan.getSize();
                                        } else {
                                            size = absoluteSizeSpan.getSize() / f4;
                                        }
                                        Object[] objArr4 = {Float.valueOf(size)};
                                        int i33 = Util.f28451a;
                                        strH = String.format(Locale.US, "<span style='font-size:%.2fpx;'>", objArr4);
                                    } else if (obj2 instanceof RelativeSizeSpan) {
                                        Object[] objArr5 = {Float.valueOf(((RelativeSizeSpan) obj2).getSizeChange() * 100.0f)};
                                        int i34 = Util.f28451a;
                                        strH = String.format(Locale.US, "<span style='font-size:%.2f%%;'>", objArr5);
                                    } else if (obj2 instanceof TypefaceSpan) {
                                        family = ((TypefaceSpan) obj2).getFamily();
                                        if (family != null) {
                                            int i35 = Util.f28451a;
                                            Locale locale7 = Locale.US;
                                            strH = fc.h("<span style='font-family:\"", family, "\";'>");
                                        } else {
                                            strH = null;
                                        }
                                    } else if (obj2 instanceof StyleSpan) {
                                        style = ((StyleSpan) obj2).getStyle();
                                        if (style != 1) {
                                            strH = "<b>";
                                        } else if (style != 2) {
                                            strH = "<i>";
                                        } else if (style != 3) {
                                            strH = null;
                                        } else {
                                            strH = "<b><i>";
                                        }
                                    } else if (obj2 instanceof RubySpan) {
                                        i11 = ((RubySpan) obj2).f28355b;
                                        if (i11 != -1) {
                                            strH = "<ruby style='ruby-position:unset;'>";
                                        } else if (i11 != 1) {
                                            strH = "<ruby style='ruby-position:over;'>";
                                        } else if (i11 != 2) {
                                            strH = null;
                                        } else {
                                            strH = "<ruby style='ruby-position:under;'>";
                                        }
                                    } else if (obj2 instanceof UnderlineSpan) {
                                        strH = "<u>";
                                    } else if (obj2 instanceof TextEmphasisSpan) {
                                        textEmphasisSpan = (TextEmphasisSpan) obj2;
                                        i8 = textEmphasisSpan.f28356a;
                                        i9 = textEmphasisSpan.f28357b;
                                        sb2 = new StringBuilder();
                                        if (i9 != 1) {
                                            i10 = 2;
                                            if (i9 == 2) {
                                                sb2.append("open ");
                                            }
                                        } else {
                                            i10 = 2;
                                            sb2.append("filled ");
                                        }
                                        if (i8 != 0) {
                                            sb2.append("none");
                                        } else if (i8 != 1) {
                                            sb2.append("circle");
                                        } else if (i8 != i10) {
                                            sb2.append("dot");
                                        } else if (i8 != 3) {
                                            sb2.append("unset");
                                        } else {
                                            sb2.append("sesame");
                                        }
                                        String string = sb2.toString();
                                        if (textEmphasisSpan.f28358c != 2) {
                                            str12 = "over right";
                                        } else {
                                            str12 = "under left";
                                        }
                                        Object[] objArr6 = {string, str12};
                                        int i36 = Util.f28451a;
                                        strH = String.format(Locale.US, "<span style='-webkit-text-emphasis-style:%1$s;text-emphasis-style:%1$s;-webkit-text-emphasis-position:%2$s;text-emphasis-position:%2$s;display:inline-block;'>", objArr6);
                                    } else {
                                        strH = null;
                                    }
                                }
                            }
                            str13 = "</span>";
                            if (z && !(obj2 instanceof ForegroundColorSpan) && !(obj2 instanceof BackgroundColorSpan) && !(obj2 instanceof HorizontalTextInVerticalContextSpan) && !(obj2 instanceof AbsoluteSizeSpan) && !(obj2 instanceof RelativeSizeSpan) && !(obj2 instanceof TextEmphasisSpan)) {
                                if (!(obj2 instanceof TypefaceSpan)) {
                                    if (obj2 instanceof StyleSpan) {
                                        int style2 = ((StyleSpan) obj2).getStyle();
                                        if (style2 == 1) {
                                            strR = "</b>";
                                        } else if (style2 == 2) {
                                            strR = "</i>";
                                        } else if (style2 == 3) {
                                            strR = "</i></b>";
                                        }
                                    } else if (obj2 instanceof RubySpan) {
                                        strR = n00.r(SpannedToHtmlConverter.a(((RubySpan) obj2).f28354a), "</rt></ruby>", new StringBuilder("<rt>"));
                                    } else if (obj2 instanceof UnderlineSpan) {
                                        strR = "</u>";
                                    }
                                    str13 = strR;
                                } else if (((TypefaceSpan) obj2).getFamily() == null) {
                                    str13 = null;
                                }
                            }
                            spanStart = spanned.getSpanStart(obj2);
                            spanEnd = spanned.getSpanEnd(obj2);
                            if (strH != null) {
                                str13.getClass();
                                SpannedToHtmlConverter.SpanInfo spanInfo = new SpannedToHtmlConverter.SpanInfo(spanStart, spanEnd, strH, str13);
                                transition = (SpannedToHtmlConverter.Transition) sparseArray.get(spanStart);
                                if (transition == null) {
                                    transition = new SpannedToHtmlConverter.Transition();
                                    sparseArray.put(spanStart, transition);
                                }
                                transition.f28409a.add(spanInfo);
                                transition2 = (SpannedToHtmlConverter.Transition) sparseArray.get(spanEnd);
                                if (transition2 == null) {
                                    transition2 = new SpannedToHtmlConverter.Transition();
                                    sparseArray.put(spanEnd, transition2);
                                }
                                transition2.f28410b.add(spanInfo);
                            }
                            i4++;
                            spans = objArr;
                            length2 = length2;
                            str8 = str8;
                            str16 = str10;
                            str15 = str11;
                        }
                        str16 = str16;
                        str15 = str15;
                        str9 = str8;
                        i5 = 2;
                        sb = new StringBuilder(spanned.length());
                        i6 = 0;
                        i7 = 0;
                        while (i7 < sparseArray.size()) {
                            int iKeyAt = sparseArray.keyAt(i7);
                            sb.append(SpannedToHtmlConverter.a(spanned.subSequence(i6, iKeyAt)));
                            SpannedToHtmlConverter.Transition transition3 = (SpannedToHtmlConverter.Transition) sparseArray.get(iKeyAt);
                            ArrayList arrayList = transition3.f28410b;
                            ArrayList arrayList2 = transition3.f28409a;
                            Collections.sort(arrayList, SpannedToHtmlConverter.SpanInfo.f28405f);
                            it2 = transition3.f28410b.iterator();
                            while (it2.hasNext()) {
                                sb.append(((SpannedToHtmlConverter.SpanInfo) it2.next()).d);
                            }
                            Collections.sort(arrayList2, SpannedToHtmlConverter.SpanInfo.f28404e);
                            it3 = arrayList2.iterator();
                            while (it3.hasNext()) {
                                sb.append(((SpannedToHtmlConverter.SpanInfo) it3.next()).f28408c);
                            }
                            i7++;
                            i6 = iKeyAt;
                        }
                        sb.append(SpannedToHtmlConverter.a(spanned.subSequence(i6, spanned.length())));
                        htmlAndCss = new SpannedToHtmlConverter.HtmlAndCss(sb.toString(), map);
                    } else {
                        htmlAndCss = new SpannedToHtmlConverter.HtmlAndCss(SpannedToHtmlConverter.a(charSequence), ImmutableMap.h());
                    }
                    for (String str20 : map2.keySet()) {
                        str14 = (String) map2.put(str20, (String) map2.get(str20));
                        if (str14 != null || str14.equals(map2.get(str20))) {
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                        Assertions.b(z2);
                    }
                    sb3.append(String.format(Locale.US, "<div style='position:absolute;z-index:%s;%s:%.2f%%;%s:%s;%s:%s;text-align:%s;writing-mode:%s;font-size:%s;background-color:%s;transform:translate(%s%%,%s%%)%s;'>", Integer.valueOf(i22), obj, Float.valueOf(f7), str6, str2, str19, str17, "center", str18, strB2, strA6, Integer.valueOf(i26), Integer.valueOf(i25), str9));
                    sb3.append("<span class='default_bg'>");
                    sb3.append(htmlAndCss.f28402a);
                    sb3.append("</span></div>");
                    i22++;
                    i15 = i5;
                    f5 = f8;
                    str16 = str16;
                    str15 = str15;
                    i12 = 0;
                    i16 = 1;
                }
                str9 = "";
                i5 = 2;
                while (r3.hasNext()) {
                    str14 = (String) map2.put(str20, (String) map2.get(str20));
                    if (str14 != null) {
                        z2 = true;
                    } else {
                        z2 = true;
                    }
                    Assertions.b(z2);
                }
                sb3.append(String.format(Locale.US, "<div style='position:absolute;z-index:%s;%s:%.2f%%;%s:%s;%s:%s;text-align:%s;writing-mode:%s;font-size:%s;background-color:%s;transform:translate(%s%%,%s%%)%s;'>", Integer.valueOf(i22), obj, Float.valueOf(f7), str6, str2, str19, str17, "center", str18, strB2, strA6, Integer.valueOf(i26), Integer.valueOf(i25), str9));
                sb3.append("<span class='default_bg'>");
                sb3.append(htmlAndCss.f28402a);
                sb3.append("</span></div>");
                i22++;
                i15 = i5;
                f5 = f8;
                str16 = str16;
                str15 = str15;
                i12 = 0;
                i16 = 1;
            } else {
                str = String.format(Locale.US, "%.2f%%", Float.valueOf((1.0f - this.g) * 100.0f));
            }
            str2 = str;
            i2 = 0;
            f2 = cue.f28340h;
            if (f2 != -8388609) {
                str3 = String.format(Locale.US, "%.2f%%", Float.valueOf(f2 * 100.0f));
            } else {
                str3 = "fit-content";
            }
            String str110 = str3;
            if (i23 != i16) {
                str4 = "vertical-rl";
            } else if (i23 != 2) {
                str4 = "horizontal-tb";
            } else {
                str4 = "vertical-lr";
            }
            String str111 = str4;
            String strB3 = b(cue.l, cue.f28343k);
            String strA9 = HtmlUtils.a(this.f28429e.f28369c);
            str5 = "right";
            if (i23 != i16) {
                if (i2 != 0) {
                    str5 = "left";
                }
                str6 = str5;
                obj = "top";
            } else if (i23 != 2) {
                obj = "left";
                str6 = i2 != 0 ? "bottom" : "top";
            } else {
                if (i2 == 0) {
                    str5 = "left";
                }
                str6 = str5;
                obj = "top";
            }
            if (i23 != 2) {
                str7 = "height";
                int i210 = i25;
                i25 = i26;
                i26 = i210;
            } else {
                str7 = "height";
                int i211 = i25;
                i25 = i26;
                i26 = i211;
            }
            String str112 = str7;
            charSequence = cue.f28336b;
            f3 = getContext().getResources().getDisplayMetrics().density;
            Pattern pattern2 = SpannedToHtmlConverter.f28401a;
            str8 = "";
            if (charSequence == null) {
                htmlAndCss = new SpannedToHtmlConverter.HtmlAndCss("", ImmutableMap.h());
            } else {
                if (charSequence instanceof Spanned) {
                    htmlAndCss = new SpannedToHtmlConverter.HtmlAndCss(SpannedToHtmlConverter.a(charSequence), ImmutableMap.h());
                } else {
                    spanned = (Spanned) charSequence;
                    hashSet = new HashSet();
                    backgroundColorSpanArr = (BackgroundColorSpan[]) spanned.getSpans(0, spanned.length(), BackgroundColorSpan.class);
                    length = backgroundColorSpanArr.length;
                    i3 = 0;
                    while (i3 < length) {
                        hashSet.add(Integer.valueOf(backgroundColorSpanArr[i3].getBackgroundColor()));
                        i3++;
                        i26 = i26;
                    }
                    i26 = i26;
                    map = new HashMap();
                    it = hashSet.iterator();
                    while (it.hasNext()) {
                        int iIntValue2 = ((Integer) it.next()).intValue();
                        String strK2 = pq0.k(iIntValue2, "bg_");
                        int i212 = i22;
                        float f11 = f3;
                        String strL2 = d21.l(FileUtils.HIDDEN_PREFIX, strK2, ",.", strK2, " *");
                        String strA10 = HtmlUtils.a(iIntValue2);
                        int i37 = Util.f28451a;
                        Locale locale8 = Locale.US;
                        map.put(strL2, str15 + strA10 + str16);
                        i22 = i212;
                        f3 = f11;
                    }
                    i22 = i22;
                    f4 = f3;
                    sparseArray = new SparseArray();
                    spans = spanned.getSpans(0, spanned.length(), Object.class);
                    length2 = spans.length;
                    i4 = 0;
                    while (i4 < length2) {
                        obj2 = spans[i4];
                        z = obj2 instanceof StrikethroughSpan;
                        String strR2 = null;
                        if (z) {
                            str10 = str16;
                            str11 = str15;
                            strH = "<span style='text-decoration:line-through;'>";
                            objArr = spans;
                        } else {
                            str10 = str16;
                            if (obj2 instanceof ForegroundColorSpan) {
                                String strA11 = HtmlUtils.a(((ForegroundColorSpan) obj2).getForegroundColor());
                                int i38 = Util.f28451a;
                                Locale locale9 = Locale.US;
                                str11 = str15;
                                objArr = spans;
                                strH = fc.h("<span style='color:", strA11, ";'>");
                            } else {
                                str11 = str15;
                                objArr = spans;
                                if (obj2 instanceof BackgroundColorSpan) {
                                    int backgroundColor2 = ((BackgroundColorSpan) obj2).getBackgroundColor();
                                    int i39 = Util.f28451a;
                                    Locale locale10 = Locale.US;
                                    strH = n00.m(backgroundColor2, "<span class='bg_", "'>");
                                } else if (obj2 instanceof HorizontalTextInVerticalContextSpan) {
                                    strH = "<span style='text-combine-upright:all;'>";
                                } else if (obj2 instanceof AbsoluteSizeSpan) {
                                    absoluteSizeSpan = (AbsoluteSizeSpan) obj2;
                                    if (absoluteSizeSpan.getDip()) {
                                        size = absoluteSizeSpan.getSize();
                                    } else {
                                        size = absoluteSizeSpan.getSize() / f4;
                                    }
                                    Object[] objArr7 = {Float.valueOf(size)};
                                    int i310 = Util.f28451a;
                                    strH = String.format(Locale.US, "<span style='font-size:%.2fpx;'>", objArr7);
                                } else if (obj2 instanceof RelativeSizeSpan) {
                                    Object[] objArr8 = {Float.valueOf(((RelativeSizeSpan) obj2).getSizeChange() * 100.0f)};
                                    int i311 = Util.f28451a;
                                    strH = String.format(Locale.US, "<span style='font-size:%.2f%%;'>", objArr8);
                                } else if (obj2 instanceof TypefaceSpan) {
                                    family = ((TypefaceSpan) obj2).getFamily();
                                    if (family != null) {
                                        int i312 = Util.f28451a;
                                        Locale locale11 = Locale.US;
                                        strH = fc.h("<span style='font-family:\"", family, "\";'>");
                                    } else {
                                        strH = null;
                                    }
                                } else if (obj2 instanceof StyleSpan) {
                                    style = ((StyleSpan) obj2).getStyle();
                                    if (style != 1) {
                                        strH = "<b>";
                                    } else if (style != 2) {
                                        strH = "<i>";
                                    } else if (style != 3) {
                                        strH = null;
                                    } else {
                                        strH = "<b><i>";
                                    }
                                } else if (obj2 instanceof RubySpan) {
                                    i11 = ((RubySpan) obj2).f28355b;
                                    if (i11 != -1) {
                                        strH = "<ruby style='ruby-position:unset;'>";
                                    } else if (i11 != 1) {
                                        strH = "<ruby style='ruby-position:over;'>";
                                    } else if (i11 != 2) {
                                        strH = null;
                                    } else {
                                        strH = "<ruby style='ruby-position:under;'>";
                                    }
                                } else if (obj2 instanceof UnderlineSpan) {
                                    strH = "<u>";
                                } else if (obj2 instanceof TextEmphasisSpan) {
                                    textEmphasisSpan = (TextEmphasisSpan) obj2;
                                    i8 = textEmphasisSpan.f28356a;
                                    i9 = textEmphasisSpan.f28357b;
                                    sb2 = new StringBuilder();
                                    if (i9 != 1) {
                                        i10 = 2;
                                        if (i9 == 2) {
                                            sb2.append("open ");
                                        }
                                    } else {
                                        i10 = 2;
                                        sb2.append("filled ");
                                    }
                                    if (i8 != 0) {
                                        sb2.append("none");
                                    } else if (i8 != 1) {
                                        sb2.append("circle");
                                    } else if (i8 != i10) {
                                        sb2.append("dot");
                                    } else if (i8 != 3) {
                                        sb2.append("unset");
                                    } else {
                                        sb2.append("sesame");
                                    }
                                    String string2 = sb2.toString();
                                    if (textEmphasisSpan.f28358c != 2) {
                                        str12 = "over right";
                                    } else {
                                        str12 = "under left";
                                    }
                                    Object[] objArr9 = {string2, str12};
                                    int i313 = Util.f28451a;
                                    strH = String.format(Locale.US, "<span style='-webkit-text-emphasis-style:%1$s;text-emphasis-style:%1$s;-webkit-text-emphasis-position:%2$s;text-emphasis-position:%2$s;display:inline-block;'>", objArr9);
                                } else {
                                    strH = null;
                                }
                            }
                        }
                        str13 = "</span>";
                        if (z) {
                        }
                        spanStart = spanned.getSpanStart(obj2);
                        spanEnd = spanned.getSpanEnd(obj2);
                        if (strH != null) {
                            str13.getClass();
                            SpannedToHtmlConverter.SpanInfo spanInfo2 = new SpannedToHtmlConverter.SpanInfo(spanStart, spanEnd, strH, str13);
                            transition = (SpannedToHtmlConverter.Transition) sparseArray.get(spanStart);
                            if (transition == null) {
                                transition = new SpannedToHtmlConverter.Transition();
                                sparseArray.put(spanStart, transition);
                            }
                            transition.f28409a.add(spanInfo2);
                            transition2 = (SpannedToHtmlConverter.Transition) sparseArray.get(spanEnd);
                            if (transition2 == null) {
                                transition2 = new SpannedToHtmlConverter.Transition();
                                sparseArray.put(spanEnd, transition2);
                            }
                            transition2.f28410b.add(spanInfo2);
                        }
                        i4++;
                        spans = objArr;
                        length2 = length2;
                        str8 = str8;
                        str16 = str10;
                        str15 = str11;
                    }
                    str16 = str16;
                    str15 = str15;
                    str9 = str8;
                    i5 = 2;
                    sb = new StringBuilder(spanned.length());
                    i6 = 0;
                    i7 = 0;
                    while (i7 < sparseArray.size()) {
                        int iKeyAt2 = sparseArray.keyAt(i7);
                        sb.append(SpannedToHtmlConverter.a(spanned.subSequence(i6, iKeyAt2)));
                        SpannedToHtmlConverter.Transition transition4 = (SpannedToHtmlConverter.Transition) sparseArray.get(iKeyAt2);
                        ArrayList arrayList3 = transition4.f28410b;
                        ArrayList arrayList4 = transition4.f28409a;
                        Collections.sort(arrayList3, SpannedToHtmlConverter.SpanInfo.f28405f);
                        it2 = transition4.f28410b.iterator();
                        while (it2.hasNext()) {
                            sb.append(((SpannedToHtmlConverter.SpanInfo) it2.next()).d);
                        }
                        Collections.sort(arrayList4, SpannedToHtmlConverter.SpanInfo.f28404e);
                        it3 = arrayList4.iterator();
                        while (it3.hasNext()) {
                            sb.append(((SpannedToHtmlConverter.SpanInfo) it3.next()).f28408c);
                        }
                        i7++;
                        i6 = iKeyAt2;
                    }
                    sb.append(SpannedToHtmlConverter.a(spanned.subSequence(i6, spanned.length())));
                    htmlAndCss = new SpannedToHtmlConverter.HtmlAndCss(sb.toString(), map);
                }
                while (r3.hasNext()) {
                    str14 = (String) map2.put(str20, (String) map2.get(str20));
                    if (str14 != null) {
                        z2 = true;
                    } else {
                        z2 = true;
                    }
                    Assertions.b(z2);
                }
                sb3.append(String.format(Locale.US, "<div style='position:absolute;z-index:%s;%s:%.2f%%;%s:%s;%s:%s;text-align:%s;writing-mode:%s;font-size:%s;background-color:%s;transform:translate(%s%%,%s%%)%s;'>", Integer.valueOf(i22), obj, Float.valueOf(f7), str6, str2, str112, str110, "center", str111, strB3, strA9, Integer.valueOf(i26), Integer.valueOf(i25), str9));
                sb3.append("<span class='default_bg'>");
                sb3.append(htmlAndCss.f28402a);
                sb3.append("</span></div>");
                i22++;
                i15 = i5;
                f5 = f8;
                str16 = str16;
                str15 = str15;
                i12 = 0;
                i16 = 1;
            }
            str9 = "";
            i5 = 2;
            while (r3.hasNext()) {
                str14 = (String) map2.put(str20, (String) map2.get(str20));
                if (str14 != null) {
                    z2 = true;
                } else {
                    z2 = true;
                }
                Assertions.b(z2);
            }
            sb3.append(String.format(Locale.US, "<div style='position:absolute;z-index:%s;%s:%.2f%%;%s:%s;%s:%s;text-align:%s;writing-mode:%s;font-size:%s;background-color:%s;transform:translate(%s%%,%s%%)%s;'>", Integer.valueOf(i22), obj, Float.valueOf(f7), str6, str2, str112, str110, "center", str111, strB3, strA9, Integer.valueOf(i26), Integer.valueOf(i25), str9));
            sb3.append("<span class='default_bg'>");
            sb3.append(htmlAndCss.f28402a);
            sb3.append("</span></div>");
            i22++;
            i15 = i5;
            f5 = f8;
            str16 = str16;
            str15 = str15;
            i12 = 0;
            i16 = 1;
        }
        sb3.append("</div></body></html>");
        StringBuilder sb5 = new StringBuilder("<html><head><style>");
        for (String str21 : map2.keySet()) {
            sb5.append(str21);
            sb5.append("{");
            sb5.append((String) map2.get(str21));
            sb5.append("}");
        }
        sb5.append("</style></head>");
        sb3.insert(0, sb5.toString());
        this.f28428c.loadData(Base64.encodeToString(sb3.toString().getBytes(Charsets.f33477a), 1), HttpServer.MIME_HTML, "base64");
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i2, int i3, int i4, int i5) {
        super.onLayout(z, i2, i3, i4, i5);
        if (!z || this.d.isEmpty()) {
            return;
        }
        c();
    }

    public WebViewSubtitleOutput(Context context) {
        this(context, null);
    }
}
