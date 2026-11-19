package androidx.media3.ui;

import android.content.Context;
import android.text.Layout;
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
import androidx.media3.common.text.Cue;
import androidx.media3.common.text.HorizontalTextInVerticalContextSpan;
import androidx.media3.common.text.RubySpan;
import androidx.media3.common.text.TextEmphasisSpan;
import androidx.media3.common.util.Util;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableMap;
import com.linkplay.medialib.server.HttpServer;
import com.sightcall.universal.media.offline.FileUtils;
import defpackage.d21;
import defpackage.fc;
import defpackage.n00;
import defpackage.pq0;
import java.nio.charset.StandardCharsets;
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
final class WebViewSubtitleOutput extends FrameLayout implements SubtitleView.Output {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final CanvasSubtitleOutput f18070b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final WebView f18071c;
    public List d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public CaptionStyleCompat f18072e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public float f18073f;
    public int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public float f18074h;

    /* JADX INFO: renamed from: androidx.media3.ui.WebViewSubtitleOutput$1, reason: invalid class name */
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

    /* JADX INFO: renamed from: androidx.media3.ui.WebViewSubtitleOutput$2, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass2 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f18075a;

        static {
            int[] iArr = new int[Layout.Alignment.values().length];
            f18075a = iArr;
            try {
                iArr[Layout.Alignment.ALIGN_NORMAL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f18075a[Layout.Alignment.ALIGN_OPPOSITE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f18075a[Layout.Alignment.ALIGN_CENTER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public WebViewSubtitleOutput(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.d = Collections.EMPTY_LIST;
        this.f18072e = CaptionStyleCompat.g;
        this.f18073f = 0.0533f;
        this.g = 0;
        this.f18074h = 0.08f;
        CanvasSubtitleOutput canvasSubtitleOutput = new CanvasSubtitleOutput(context, attributeSet);
        this.f18070b = canvasSubtitleOutput;
        AnonymousClass1 anonymousClass1 = new AnonymousClass1(context, attributeSet);
        this.f18071c = anonymousClass1;
        anonymousClass1.setBackgroundColor(0);
        anonymousClass1.getSettings().setAllowContentAccess(false);
        addView(canvasSubtitleOutput);
        addView(anonymousClass1);
    }

    @Override // androidx.media3.ui.SubtitleView.Output
    public final void a(List list, CaptionStyleCompat captionStyleCompat, float f2, int i2, float f3) {
        this.f18072e = captionStyleCompat;
        this.f18073f = f2;
        this.g = i2;
        this.f18074h = f3;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (int i3 = 0; i3 < list.size(); i3++) {
            Cue cue = (Cue) list.get(i3);
            if (cue.d != null) {
                arrayList.add(cue);
            } else {
                arrayList2.add(cue);
            }
        }
        if (!this.d.isEmpty() || !arrayList2.isEmpty()) {
            this.d = arrayList2;
            c();
        }
        this.f18070b.a(arrayList, captionStyleCompat, f2, i2, f3);
        invalidate();
    }

    public final String b(float f2, int i2) {
        float fB = SubtitleViewUtils.b(i2, getHeight(), (getHeight() - getPaddingTop()) - getPaddingBottom(), f2);
        if (fB == -3.4028235E38f) {
            return "unset";
        }
        Object[] objArr = {Float.valueOf(fB / getContext().getResources().getDisplayMetrics().density)};
        String str = Util.f14242a;
        return String.format(Locale.US, "%.2fpx", objArr);
    }

    /* JADX WARN: Code duplicated, block: B:101:0x0249  */
    /* JADX WARN: Code duplicated, block: B:103:0x024f  */
    /* JADX WARN: Code duplicated, block: B:104:0x0264  */
    /* JADX WARN: Code duplicated, block: B:106:0x0282 A[LOOP:2: B:105:0x0280->B:106:0x0282, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:110:0x02a5 A[LOOP:3: B:108:0x029f->B:110:0x02a5, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:113:0x02fa  */
    /* JADX WARN: Code duplicated, block: B:115:0x0306  */
    /* JADX WARN: Code duplicated, block: B:118:0x0316  */
    /* JADX WARN: Code duplicated, block: B:120:0x031c  */
    /* JADX WARN: Code duplicated, block: B:121:0x0334  */
    /* JADX WARN: Code duplicated, block: B:123:0x033a  */
    /* JADX WARN: Code duplicated, block: B:124:0x0350  */
    /* JADX WARN: Code duplicated, block: B:126:0x0356  */
    /* JADX WARN: Code duplicated, block: B:127:0x0359  */
    /* JADX WARN: Code duplicated, block: B:129:0x035d  */
    /* JADX WARN: Code duplicated, block: B:131:0x0366  */
    /* JADX WARN: Code duplicated, block: B:132:0x036c  */
    /* JADX WARN: Code duplicated, block: B:134:0x0386  */
    /* JADX WARN: Code duplicated, block: B:136:0x038a  */
    /* JADX WARN: Code duplicated, block: B:137:0x03a7  */
    /* JADX WARN: Code duplicated, block: B:139:0x03ab  */
    /* JADX WARN: Code duplicated, block: B:141:0x03b4  */
    /* JADX WARN: Code duplicated, block: B:142:0x03c2  */
    /* JADX WARN: Code duplicated, block: B:143:0x03c8  */
    /* JADX WARN: Code duplicated, block: B:145:0x03cc  */
    /* JADX WARN: Code duplicated, block: B:147:0x03d6  */
    /* JADX WARN: Code duplicated, block: B:149:0x03d9  */
    /* JADX WARN: Code duplicated, block: B:152:0x03dd  */
    /* JADX WARN: Code duplicated, block: B:153:0x03e1  */
    /* JADX WARN: Code duplicated, block: B:154:0x03e5  */
    /* JADX WARN: Code duplicated, block: B:155:0x03e9  */
    /* JADX WARN: Code duplicated, block: B:157:0x03ed  */
    /* JADX WARN: Code duplicated, block: B:159:0x03f5  */
    /* JADX WARN: Code duplicated, block: B:161:0x03f8  */
    /* JADX WARN: Code duplicated, block: B:164:0x03fc  */
    /* JADX WARN: Code duplicated, block: B:165:0x0400  */
    /* JADX WARN: Code duplicated, block: B:166:0x0404  */
    /* JADX WARN: Code duplicated, block: B:167:0x0408  */
    /* JADX WARN: Code duplicated, block: B:169:0x040c  */
    /* JADX WARN: Code duplicated, block: B:170:0x0410  */
    /* JADX WARN: Code duplicated, block: B:172:0x0414  */
    /* JADX WARN: Code duplicated, block: B:174:0x0425  */
    /* JADX WARN: Code duplicated, block: B:177:0x0429  */
    /* JADX WARN: Code duplicated, block: B:178:0x042f  */
    /* JADX WARN: Code duplicated, block: B:180:0x0437  */
    /* JADX WARN: Code duplicated, block: B:182:0x043a A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:183:0x043c  */
    /* JADX WARN: Code duplicated, block: B:185:0x043f  */
    /* JADX WARN: Code duplicated, block: B:186:0x0443  */
    /* JADX WARN: Code duplicated, block: B:187:0x0449  */
    /* JADX WARN: Code duplicated, block: B:188:0x044f  */
    /* JADX WARN: Code duplicated, block: B:189:0x0455  */
    /* JADX WARN: Code duplicated, block: B:192:0x0463  */
    /* JADX WARN: Code duplicated, block: B:193:0x0466  */
    /* JADX WARN: Code duplicated, block: B:196:0x0479  */
    /* JADX WARN: Code duplicated, block: B:208:0x0491  */
    /* JADX WARN: Code duplicated, block: B:238:0x04f6  */
    /* JADX WARN: Code duplicated, block: B:240:0x0506  */
    /* JADX WARN: Code duplicated, block: B:243:0x051b  */
    /* JADX WARN: Code duplicated, block: B:249:0x054c  */
    /* JADX WARN: Code duplicated, block: B:252:0x0578 A[LOOP:6: B:250:0x0572->B:252:0x0578, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:256:0x0593 A[LOOP:7: B:254:0x058d->B:256:0x0593, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:262:0x05cb  */
    /* JADX WARN: Code duplicated, block: B:264:0x05df  */
    /* JADX WARN: Code duplicated, block: B:268:0x05ec  */
    /* JADX WARN: Code duplicated, block: B:272:0x0607  */
    /* JADX WARN: Code duplicated, block: B:274:0x060a  */
    /* JADX WARN: Code duplicated, block: B:278:0x0611  */
    /* JADX WARN: Code duplicated, block: B:281:0x0630  */
    /* JADX WARN: Code duplicated, block: B:284:0x0653  */
    /* JADX WARN: Code duplicated, block: B:286:0x065e  */
    /* JADX WARN: Code duplicated, block: B:288:0x0661  */
    /* JADX WARN: Code duplicated, block: B:289:0x0664  */
    /* JADX WARN: Code duplicated, block: B:290:0x0667  */
    /* JADX WARN: Code duplicated, block: B:292:0x0685  */
    /* JADX WARN: Code duplicated, block: B:310:0x0528 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:53:0x0176  */
    /* JADX WARN: Code duplicated, block: B:55:0x0189  */
    /* JADX WARN: Code duplicated, block: B:58:0x0196  */
    /* JADX WARN: Code duplicated, block: B:59:0x019b  */
    /* JADX WARN: Code duplicated, block: B:61:0x01a5  */
    /* JADX WARN: Code duplicated, block: B:63:0x01a8  */
    /* JADX WARN: Code duplicated, block: B:65:0x01ac  */
    /* JADX WARN: Code duplicated, block: B:66:0x01af  */
    /* JADX WARN: Code duplicated, block: B:68:0x01b5 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:69:0x01b7  */
    /* JADX WARN: Code duplicated, block: B:71:0x01bc  */
    /* JADX WARN: Code duplicated, block: B:72:0x01bf  */
    /* JADX WARN: Code duplicated, block: B:75:0x01ce  */
    /* JADX WARN: Code duplicated, block: B:76:0x01d1  */
    /* JADX WARN: Code duplicated, block: B:79:0x01e4  */
    /* JADX WARN: Code duplicated, block: B:81:0x01e7 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:82:0x01e9  */
    /* JADX WARN: Code duplicated, block: B:85:0x01ef A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:87:0x01f2  */
    /* JADX WARN: Code duplicated, block: B:89:0x01f8 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:96:0x0208  */
    /* JADX WARN: Code duplicated, block: B:99:0x0230  */
    /* JADX WARN: Instruction removed from duplicated block: B:110:0x02a5, please report this as an issue */
    public final void c() {
        String strConcat;
        String str;
        String str2;
        int i2;
        float f2;
        String str3;
        Layout.Alignment alignment;
        String str4;
        int i3;
        int i4;
        Object obj;
        int i5;
        String str5;
        int i6;
        String str6;
        String str7;
        int i7;
        String str8;
        Object obj2;
        int i8;
        CharSequence charSequence;
        float f3;
        String str9;
        String str10;
        Spanned spanned;
        HashSet hashSet;
        BackgroundColorSpan[] backgroundColorSpanArr;
        int length;
        int i9;
        HashMap map;
        Iterator it;
        String str11;
        SparseArray sparseArray;
        Object[] spans;
        int length2;
        int i10;
        StringBuilder sb;
        int i11;
        int i12;
        SpannedToHtmlConverter.HtmlAndCss htmlAndCss;
        Iterator it2;
        Iterator it3;
        Object obj3;
        boolean z;
        boolean z2;
        int i13;
        TextEmphasisSpan textEmphasisSpan;
        int i14;
        int i15;
        StringBuilder sb2;
        int i16;
        String str12;
        String strH;
        int i17;
        int style;
        String family;
        AbsoluteSizeSpan absoluteSizeSpan;
        float size;
        String str13;
        int spanStart;
        int spanEnd;
        SpannedToHtmlConverter.Transition transition;
        SpannedToHtmlConverter.Transition transition2;
        float f4;
        String str14;
        Layout.Alignment alignment2;
        String str15;
        int i18;
        int i19;
        String str16;
        String str17;
        String str18;
        boolean z3;
        WebViewSubtitleOutput webViewSubtitleOutput = this;
        StringBuilder sb3 = new StringBuilder();
        String strA = HtmlUtils.a(webViewSubtitleOutput.f18072e.f17965a);
        String strB = webViewSubtitleOutput.b(webViewSubtitleOutput.f18073f, webViewSubtitleOutput.g);
        float f5 = 1.2f;
        Float fValueOf = Float.valueOf(1.2f);
        CaptionStyleCompat captionStyleCompat = webViewSubtitleOutput.f18072e;
        int i20 = captionStyleCompat.d;
        int i21 = captionStyleCompat.f17968e;
        int i22 = 2;
        int i23 = 1;
        if (i20 == 1) {
            Object[] objArr = {HtmlUtils.a(i21)};
            String str19 = Util.f14242a;
            strConcat = String.format(Locale.US, "1px 1px 0 %1$s, 1px -1px 0 %1$s, -1px 1px 0 %1$s, -1px -1px 0 %1$s", objArr);
        } else if (i20 == 2) {
            String strA2 = HtmlUtils.a(i21);
            String str20 = Util.f14242a;
            Locale locale = Locale.US;
            strConcat = "0.1em 0.12em 0.15em ".concat(strA2);
        } else if (i20 == 3) {
            String strA3 = HtmlUtils.a(i21);
            String str21 = Util.f14242a;
            Locale locale2 = Locale.US;
            strConcat = "0.06em 0.08em 0.15em ".concat(strA3);
        } else if (i20 != 4) {
            strConcat = "unset";
        } else {
            String strA4 = HtmlUtils.a(i21);
            String str22 = Util.f14242a;
            Locale locale3 = Locale.US;
            strConcat = "-0.05em -0.05em 0.15em ".concat(strA4);
        }
        Object[] objArr2 = {strA, strB, fValueOf, strConcat};
        String str23 = Util.f14242a;
        sb3.append(String.format(Locale.US, "<body><div style='-webkit-user-select:none;position:fixed;top:0;bottom:0;left:0;right:0;color:%s;font-size:%s;line-height:%.2f;text-shadow:%s;'>", objArr2));
        HashMap map2 = new HashMap();
        String strA5 = HtmlUtils.a(webViewSubtitleOutput.f18072e.f17966b);
        String str24 = "background-color:";
        StringBuilder sb4 = new StringBuilder("background-color:");
        sb4.append(strA5);
        String str25 = ";";
        sb4.append(";");
        map2.put(".default_bg,.default_bg *", sb4.toString());
        int i24 = 0;
        while (i24 < webViewSubtitleOutput.d.size()) {
            Cue cue = (Cue) webViewSubtitleOutput.d.get(i24);
            float f6 = cue.f14098h;
            int i25 = cue.p;
            float f7 = f6 != -3.4028235E38f ? f6 * 100.0f : 50.0f;
            float f8 = f5;
            int i26 = cue.f14099i;
            int i27 = -100;
            int i28 = i26 != i23 ? i26 != i22 ? 0 : -100 : -50;
            float f9 = cue.f14096e;
            if (f9 != r15) {
                if (cue.f14097f != i23) {
                    str = String.format(Locale.US, "%.2f%%", Float.valueOf(f9 * 100.0f));
                    int i29 = cue.g;
                    if (i25 == i23) {
                        i27 = -(i29 != i23 ? i29 != i22 ? 0 : -100 : -50);
                    } else {
                        i27 = i29 != i23 ? i29 != i22 ? 0 : -100 : -50;
                    }
                } else {
                    if (f9 >= Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                        str2 = String.format(Locale.US, "%.2fem", Float.valueOf(f9 * f8));
                        i2 = 0;
                    } else {
                        str2 = String.format(Locale.US, "%.2fem", Float.valueOf(((-f9) - 1.0f) * f8));
                        i2 = i23;
                    }
                    i27 = 0;
                }
                f2 = cue.f14100j;
                if (f2 != -8388609) {
                    str3 = String.format(Locale.US, "%.2f%%", Float.valueOf(f2 * 100.0f));
                } else {
                    str3 = "fit-content";
                }
                String str26 = str3;
                alignment = cue.f14094b;
                str4 = "end";
                if (alignment == null) {
                    i5 = i23;
                    obj = "center";
                    i4 = 2;
                } else {
                    i3 = AnonymousClass2.f18075a[alignment.ordinal()];
                    if (i3 != i23) {
                        i4 = 2;
                        if (i3 != 2) {
                            obj = "center";
                        } else {
                            obj = "end";
                        }
                    } else {
                        i4 = 2;
                        obj = "start";
                    }
                    i5 = 1;
                }
                if (i25 != i5) {
                    str5 = "vertical-rl";
                } else if (i25 != i4) {
                    str5 = "horizontal-tb";
                } else {
                    str5 = "vertical-lr";
                }
                String str27 = str5;
                String strB2 = webViewSubtitleOutput.b(cue.o, cue.n);
                if (cue.l) {
                    i6 = cue.m;
                } else {
                    i6 = webViewSubtitleOutput.f18072e.f17967c;
                }
                String strA6 = HtmlUtils.a(i6);
                str6 = "right";
                str7 = "left";
                i7 = i28;
                if (i25 != 1) {
                    if (i2 != 0) {
                        str6 = "left";
                    }
                    str8 = str6;
                    str7 = "top";
                } else if (i25 != 2) {
                    str8 = i2 != 0 ? "bottom" : "top";
                } else {
                    if (i2 == 0) {
                        str6 = "left";
                    }
                    str8 = str6;
                    str7 = "top";
                }
                if (i25 != 2 || i25 == 1) {
                    obj2 = "height";
                    i8 = i27;
                    i27 = i7;
                } else {
                    obj2 = "width";
                    i8 = i7;
                }
                charSequence = cue.f14093a;
                f3 = webViewSubtitleOutput.getContext().getResources().getDisplayMetrics().density;
                Pattern pattern = SpannedToHtmlConverter.f18043a;
                int i30 = i8;
                int i31 = i24;
                str9 = "";
                if (charSequence == null) {
                    str10 = "start";
                    htmlAndCss = new SpannedToHtmlConverter.HtmlAndCss("", ImmutableMap.h());
                } else {
                    str10 = "start";
                    if (charSequence instanceof Spanned) {
                        str9 = "";
                        spanned = (Spanned) charSequence;
                        hashSet = new HashSet();
                        backgroundColorSpanArr = (BackgroundColorSpan[]) spanned.getSpans(0, spanned.length(), BackgroundColorSpan.class);
                        length = backgroundColorSpanArr.length;
                        i9 = 0;
                        while (i9 < length) {
                            hashSet.add(Integer.valueOf(backgroundColorSpanArr[i9].getBackgroundColor()));
                            i9++;
                            backgroundColorSpanArr = backgroundColorSpanArr;
                        }
                        map = new HashMap();
                        it = hashSet.iterator();
                        while (it.hasNext()) {
                            int iIntValue = ((Integer) it.next()).intValue();
                            String strK = pq0.k(iIntValue, "bg_");
                            Iterator it4 = it;
                            String strL = d21.l(FileUtils.HIDDEN_PREFIX, strK, ",.", strK, " *");
                            String strA7 = HtmlUtils.a(iIntValue);
                            String str28 = Util.f14242a;
                            Locale locale4 = Locale.US;
                            map.put(strL, str24 + strA7 + str25);
                            it = it4;
                            str4 = str4;
                        }
                        str11 = str4;
                        sparseArray = new SparseArray();
                        spans = spanned.getSpans(0, spanned.length(), Object.class);
                        i10 = 0;
                        for (length2 = spans.length; i10 < length2; length2 = i13) {
                            String str29 = str25;
                            obj3 = spans[i10];
                            String str30 = str24;
                            z = obj3 instanceof StrikethroughSpan;
                            String strR = null;
                            if (z) {
                                z2 = z;
                                strH = "<span style='text-decoration:line-through;'>";
                            } else {
                                z2 = z;
                                if (obj3 instanceof ForegroundColorSpan) {
                                    String strA8 = HtmlUtils.a(((ForegroundColorSpan) obj3).getForegroundColor());
                                    String str31 = Util.f14242a;
                                    Locale locale5 = Locale.US;
                                    strH = fc.h("<span style='color:", strA8, ";'>");
                                } else {
                                    spans = spans;
                                    if (obj3 instanceof BackgroundColorSpan) {
                                        int backgroundColor = ((BackgroundColorSpan) obj3).getBackgroundColor();
                                        String str32 = Util.f14242a;
                                        Locale locale6 = Locale.US;
                                        i13 = length2;
                                        strH = n00.m(backgroundColor, "<span class='bg_", "'>");
                                    } else {
                                        i13 = length2;
                                        if (obj3 instanceof HorizontalTextInVerticalContextSpan) {
                                            strH = "<span style='text-combine-upright:all;'>";
                                        } else if (obj3 instanceof AbsoluteSizeSpan) {
                                            absoluteSizeSpan = (AbsoluteSizeSpan) obj3;
                                            if (absoluteSizeSpan.getDip()) {
                                                size = absoluteSizeSpan.getSize();
                                            } else {
                                                size = absoluteSizeSpan.getSize() / f3;
                                            }
                                            Object[] objArr3 = {Float.valueOf(size)};
                                            String str33 = Util.f14242a;
                                            strH = String.format(Locale.US, "<span style='font-size:%.2fpx;'>", objArr3);
                                        } else if (obj3 instanceof RelativeSizeSpan) {
                                            Object[] objArr4 = {Float.valueOf(((RelativeSizeSpan) obj3).getSizeChange() * 100.0f)};
                                            String str34 = Util.f14242a;
                                            strH = String.format(Locale.US, "<span style='font-size:%.2f%%;'>", objArr4);
                                        } else if (obj3 instanceof TypefaceSpan) {
                                            family = ((TypefaceSpan) obj3).getFamily();
                                            if (family != null) {
                                                String str35 = Util.f14242a;
                                                Locale locale7 = Locale.US;
                                                strH = fc.h("<span style='font-family:\"", family, "\";'>");
                                            } else {
                                                strH = null;
                                            }
                                        } else if (obj3 instanceof StyleSpan) {
                                            style = ((StyleSpan) obj3).getStyle();
                                            if (style != 1) {
                                                strH = "<b>";
                                            } else if (style != 2) {
                                                strH = "<i>";
                                            } else if (style != 3) {
                                                strH = null;
                                            } else {
                                                strH = "<b><i>";
                                            }
                                        } else if (obj3 instanceof RubySpan) {
                                            i17 = ((RubySpan) obj3).f14122b;
                                            if (i17 != -1) {
                                                strH = "<ruby style='ruby-position:unset;'>";
                                            } else if (i17 != 1) {
                                                strH = "<ruby style='ruby-position:over;'>";
                                            } else if (i17 != 2) {
                                                strH = null;
                                            } else {
                                                strH = "<ruby style='ruby-position:under;'>";
                                            }
                                        } else if (obj3 instanceof UnderlineSpan) {
                                            strH = "<u>";
                                        } else if (obj3 instanceof TextEmphasisSpan) {
                                            textEmphasisSpan = (TextEmphasisSpan) obj3;
                                            i14 = textEmphasisSpan.f14125a;
                                            i15 = textEmphasisSpan.f14126b;
                                            sb2 = new StringBuilder();
                                            if (i15 != 1) {
                                                i16 = 2;
                                                if (i15 == 2) {
                                                    sb2.append("open ");
                                                }
                                            } else {
                                                i16 = 2;
                                                sb2.append("filled ");
                                            }
                                            if (i14 != 0) {
                                                sb2.append("none");
                                            } else if (i14 != 1) {
                                                sb2.append("circle");
                                            } else if (i14 != i16) {
                                                sb2.append("dot");
                                            } else if (i14 != 3) {
                                                sb2.append("unset");
                                            } else {
                                                sb2.append("sesame");
                                            }
                                            String string = sb2.toString();
                                            if (textEmphasisSpan.f14127c != 2) {
                                                str12 = "over right";
                                            } else {
                                                str12 = "under left";
                                            }
                                            Object[] objArr5 = {string, str12};
                                            String str36 = Util.f14242a;
                                            strH = String.format(Locale.US, "<span style='-webkit-text-emphasis-style:%1$s;text-emphasis-style:%1$s;-webkit-text-emphasis-position:%2$s;text-emphasis-position:%2$s;display:inline-block;'>", objArr5);
                                        } else {
                                            strH = null;
                                        }
                                    }
                                }
                                if (z2 && !(obj3 instanceof ForegroundColorSpan) && !(obj3 instanceof BackgroundColorSpan) && !(obj3 instanceof HorizontalTextInVerticalContextSpan) && !(obj3 instanceof AbsoluteSizeSpan) && !(obj3 instanceof RelativeSizeSpan) && !(obj3 instanceof TextEmphasisSpan)) {
                                    if (obj3 instanceof TypefaceSpan) {
                                        str13 = ((TypefaceSpan) obj3).getFamily() != null ? "</span>" : null;
                                    } else {
                                        if (obj3 instanceof StyleSpan) {
                                            int style2 = ((StyleSpan) obj3).getStyle();
                                            if (style2 == 1) {
                                                strR = "</b>";
                                            } else if (style2 == 2) {
                                                strR = "</i>";
                                            } else if (style2 == 3) {
                                                strR = "</i></b>";
                                            }
                                        } else if (obj3 instanceof RubySpan) {
                                            strR = n00.r(SpannedToHtmlConverter.a(((RubySpan) obj3).f14121a), "</rt></ruby>", new StringBuilder("<rt>"));
                                        } else if (obj3 instanceof UnderlineSpan) {
                                            strR = "</u>";
                                        }
                                        str13 = strR;
                                    }
                                }
                                spanStart = spanned.getSpanStart(obj3);
                                spanEnd = spanned.getSpanEnd(obj3);
                                if (strH != null) {
                                    str13.getClass();
                                    SpannedToHtmlConverter.SpanInfo spanInfo = new SpannedToHtmlConverter.SpanInfo(spanStart, spanEnd, strH, str13);
                                    transition = (SpannedToHtmlConverter.Transition) sparseArray.get(spanStart);
                                    if (transition == null) {
                                        transition = new SpannedToHtmlConverter.Transition();
                                        sparseArray.put(spanStart, transition);
                                    }
                                    transition.f18051a.add(spanInfo);
                                    transition2 = (SpannedToHtmlConverter.Transition) sparseArray.get(spanEnd);
                                    if (transition2 == null) {
                                        transition2 = new SpannedToHtmlConverter.Transition();
                                        sparseArray.put(spanEnd, transition2);
                                    }
                                    transition2.f18052b.add(spanInfo);
                                }
                                i10++;
                                str25 = str29;
                                str24 = str30;
                                spans = spans;
                            }
                            i13 = length2;
                            str13 = z2 ? "</span>" : "</span>";
                            spanStart = spanned.getSpanStart(obj3);
                            spanEnd = spanned.getSpanEnd(obj3);
                            if (strH != null) {
                                str13.getClass();
                                SpannedToHtmlConverter.SpanInfo spanInfo2 = new SpannedToHtmlConverter.SpanInfo(spanStart, spanEnd, strH, str13);
                                transition = (SpannedToHtmlConverter.Transition) sparseArray.get(spanStart);
                                if (transition == null) {
                                    transition = new SpannedToHtmlConverter.Transition();
                                    sparseArray.put(spanStart, transition);
                                }
                                transition.f18051a.add(spanInfo2);
                                transition2 = (SpannedToHtmlConverter.Transition) sparseArray.get(spanEnd);
                                if (transition2 == null) {
                                    transition2 = new SpannedToHtmlConverter.Transition();
                                    sparseArray.put(spanEnd, transition2);
                                }
                                transition2.f18052b.add(spanInfo2);
                            }
                            i10++;
                            str25 = str29;
                            str24 = str30;
                            spans = spans;
                        }
                        str25 = str25;
                        str24 = str24;
                        sb = new StringBuilder(spanned.length());
                        i11 = 0;
                        i12 = 0;
                        while (i12 < sparseArray.size()) {
                            int iKeyAt = sparseArray.keyAt(i12);
                            sb.append(SpannedToHtmlConverter.a(spanned.subSequence(i11, iKeyAt)));
                            SpannedToHtmlConverter.Transition transition3 = (SpannedToHtmlConverter.Transition) sparseArray.get(iKeyAt);
                            ArrayList arrayList = transition3.f18052b;
                            ArrayList arrayList2 = transition3.f18051a;
                            Collections.sort(arrayList, SpannedToHtmlConverter.SpanInfo.f18047f);
                            it2 = transition3.f18052b.iterator();
                            while (it2.hasNext()) {
                                sb.append(((SpannedToHtmlConverter.SpanInfo) it2.next()).d);
                            }
                            Collections.sort(arrayList2, SpannedToHtmlConverter.SpanInfo.f18046e);
                            it3 = arrayList2.iterator();
                            while (it3.hasNext()) {
                                sb.append(((SpannedToHtmlConverter.SpanInfo) it3.next()).f18050c);
                            }
                            i12++;
                            i11 = iKeyAt;
                        }
                        sb.append(SpannedToHtmlConverter.a(spanned.subSequence(i11, spanned.length())));
                        htmlAndCss = new SpannedToHtmlConverter.HtmlAndCss(sb.toString(), map);
                    } else {
                        htmlAndCss = new SpannedToHtmlConverter.HtmlAndCss(SpannedToHtmlConverter.a(charSequence), ImmutableMap.h());
                    }
                    for (String str37 : map2.keySet()) {
                        str18 = (String) map2.put(str37, (String) map2.get(str37));
                        if (str18 != null || str18.equals(map2.get(str37))) {
                            z3 = true;
                        } else {
                            z3 = false;
                        }
                        Preconditions.q(z3);
                    }
                    Integer numValueOf = Integer.valueOf(i31);
                    Float fValueOf2 = Float.valueOf(f7);
                    Integer numValueOf2 = Integer.valueOf(i30);
                    Integer numValueOf3 = Integer.valueOf(i27);
                    f4 = cue.q;
                    if (f4 != Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                        if (i25 != 2 || i25 == 1) {
                            str17 = "skewY";
                        } else {
                            str17 = "skewX";
                        }
                        Object[] objArr6 = {str17, Float.valueOf(f4)};
                        String str38 = Util.f14242a;
                        str14 = String.format(Locale.US, "%s(%.2fdeg)", objArr6);
                    } else {
                        str14 = str9;
                    }
                    sb3.append(String.format(Locale.US, "<div style='position:absolute;z-index:%s;%s:%.2f%%;%s:%s;%s:%s;text-align:%s;writing-mode:%s;font-size:%s;background-color:%s;transform:translate(%s%%,%s%%)%s;'>", numValueOf, str7, fValueOf2, str8, str2, obj2, str26, obj, str27, strB2, strA6, numValueOf2, numValueOf3, str14));
                    sb3.append("<span class='default_bg'>");
                    alignment2 = cue.f14095c;
                    str15 = htmlAndCss.f18044a;
                    if (alignment2 != null) {
                        i19 = AnonymousClass2.f18075a[alignment2.ordinal()];
                        if (i19 != 1) {
                            i18 = 2;
                            if (i19 != 2) {
                                str16 = "center";
                            } else {
                                str16 = str11;
                            }
                        } else {
                            i18 = 2;
                            str16 = str10;
                        }
                        sb3.append("<span style='display:inline-block; text-align:" + str16 + ";'>");
                        sb3.append(str15);
                        sb3.append("</span>");
                    } else {
                        i18 = 2;
                        sb3.append(str15);
                    }
                    sb3.append("</span></div>");
                    i24 = i31 + 1;
                    webViewSubtitleOutput = this;
                    i22 = i18;
                    f5 = f8;
                    str25 = str25;
                    str24 = str24;
                    i23 = 1;
                }
                str11 = "end";
                while (r0.hasNext()) {
                    str18 = (String) map2.put(str37, (String) map2.get(str37));
                    if (str18 != null) {
                        z3 = true;
                    } else {
                        z3 = true;
                    }
                    Preconditions.q(z3);
                }
                Integer numValueOf4 = Integer.valueOf(i31);
                Float fValueOf3 = Float.valueOf(f7);
                Integer numValueOf5 = Integer.valueOf(i30);
                Integer numValueOf6 = Integer.valueOf(i27);
                f4 = cue.q;
                if (f4 != Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                    if (i25 != 2) {
                        str17 = "skewY";
                    } else {
                        str17 = "skewY";
                    }
                    Object[] objArr7 = {str17, Float.valueOf(f4)};
                    String str39 = Util.f14242a;
                    str14 = String.format(Locale.US, "%s(%.2fdeg)", objArr7);
                } else {
                    str14 = str9;
                }
                sb3.append(String.format(Locale.US, "<div style='position:absolute;z-index:%s;%s:%.2f%%;%s:%s;%s:%s;text-align:%s;writing-mode:%s;font-size:%s;background-color:%s;transform:translate(%s%%,%s%%)%s;'>", numValueOf4, str7, fValueOf3, str8, str2, obj2, str26, obj, str27, strB2, strA6, numValueOf5, numValueOf6, str14));
                sb3.append("<span class='default_bg'>");
                alignment2 = cue.f14095c;
                str15 = htmlAndCss.f18044a;
                if (alignment2 != null) {
                    i19 = AnonymousClass2.f18075a[alignment2.ordinal()];
                    if (i19 != 1) {
                        i18 = 2;
                        if (i19 != 2) {
                            str16 = "center";
                        } else {
                            str16 = str11;
                        }
                    } else {
                        i18 = 2;
                        str16 = str10;
                    }
                    sb3.append("<span style='display:inline-block; text-align:" + str16 + ";'>");
                    sb3.append(str15);
                    sb3.append("</span>");
                } else {
                    i18 = 2;
                    sb3.append(str15);
                }
                sb3.append("</span></div>");
                i24 = i31 + 1;
                webViewSubtitleOutput = this;
                i22 = i18;
                f5 = f8;
                str25 = str25;
                str24 = str24;
                i23 = 1;
            } else {
                str = String.format(Locale.US, "%.2f%%", Float.valueOf((1.0f - webViewSubtitleOutput.f18074h) * 100.0f));
            }
            str2 = str;
            i2 = 0;
            f2 = cue.f14100j;
            if (f2 != -8388609) {
                str3 = String.format(Locale.US, "%.2f%%", Float.valueOf(f2 * 100.0f));
            } else {
                str3 = "fit-content";
            }
            String str210 = str3;
            alignment = cue.f14094b;
            str4 = "end";
            if (alignment == null) {
                i5 = i23;
                obj = "center";
                i4 = 2;
            } else {
                i3 = AnonymousClass2.f18075a[alignment.ordinal()];
                if (i3 != i23) {
                    i4 = 2;
                    if (i3 != 2) {
                        obj = "center";
                    } else {
                        obj = "end";
                    }
                } else {
                    i4 = 2;
                    obj = "start";
                }
                i5 = 1;
            }
            if (i25 != i5) {
                str5 = "vertical-rl";
            } else if (i25 != i4) {
                str5 = "horizontal-tb";
            } else {
                str5 = "vertical-lr";
            }
            String str211 = str5;
            String strB3 = webViewSubtitleOutput.b(cue.o, cue.n);
            if (cue.l) {
                i6 = cue.m;
            } else {
                i6 = webViewSubtitleOutput.f18072e.f17967c;
            }
            String strA9 = HtmlUtils.a(i6);
            str6 = "right";
            str7 = "left";
            i7 = i28;
            if (i25 != 1) {
                if (i2 != 0) {
                    str6 = "left";
                }
                str8 = str6;
                str7 = "top";
            } else if (i25 != 2) {
                str8 = i2 != 0 ? "bottom" : "top";
            } else {
                if (i2 == 0) {
                    str6 = "left";
                }
                str8 = str6;
                str7 = "top";
            }
            if (i25 != 2) {
                obj2 = "height";
                i8 = i27;
                i27 = i7;
            } else {
                obj2 = "height";
                i8 = i27;
                i27 = i7;
            }
            charSequence = cue.f14093a;
            f3 = webViewSubtitleOutput.getContext().getResources().getDisplayMetrics().density;
            Pattern pattern2 = SpannedToHtmlConverter.f18043a;
            int i32 = i8;
            int i33 = i24;
            str9 = "";
            if (charSequence == null) {
                str10 = "start";
                htmlAndCss = new SpannedToHtmlConverter.HtmlAndCss("", ImmutableMap.h());
            } else {
                str10 = "start";
                if (charSequence instanceof Spanned) {
                    htmlAndCss = new SpannedToHtmlConverter.HtmlAndCss(SpannedToHtmlConverter.a(charSequence), ImmutableMap.h());
                } else {
                    str9 = "";
                    spanned = (Spanned) charSequence;
                    hashSet = new HashSet();
                    backgroundColorSpanArr = (BackgroundColorSpan[]) spanned.getSpans(0, spanned.length(), BackgroundColorSpan.class);
                    length = backgroundColorSpanArr.length;
                    i9 = 0;
                    while (i9 < length) {
                        hashSet.add(Integer.valueOf(backgroundColorSpanArr[i9].getBackgroundColor()));
                        i9++;
                        backgroundColorSpanArr = backgroundColorSpanArr;
                    }
                    map = new HashMap();
                    it = hashSet.iterator();
                    while (it.hasNext()) {
                        int iIntValue2 = ((Integer) it.next()).intValue();
                        String strK2 = pq0.k(iIntValue2, "bg_");
                        Iterator it5 = it;
                        String strL2 = d21.l(FileUtils.HIDDEN_PREFIX, strK2, ",.", strK2, " *");
                        String strA10 = HtmlUtils.a(iIntValue2);
                        String str212 = Util.f14242a;
                        Locale locale8 = Locale.US;
                        map.put(strL2, str24 + strA10 + str25);
                        it = it5;
                        str4 = str4;
                    }
                    str11 = str4;
                    sparseArray = new SparseArray();
                    spans = spanned.getSpans(0, spanned.length(), Object.class);
                    i10 = 0;
                    while (i10 < length2) {
                        String str213 = str25;
                        obj3 = spans[i10];
                        String str310 = str24;
                        z = obj3 instanceof StrikethroughSpan;
                        String strR2 = null;
                        if (z) {
                            z2 = z;
                            strH = "<span style='text-decoration:line-through;'>";
                        } else {
                            z2 = z;
                            if (obj3 instanceof ForegroundColorSpan) {
                                String strA11 = HtmlUtils.a(((ForegroundColorSpan) obj3).getForegroundColor());
                                String str311 = Util.f14242a;
                                Locale locale9 = Locale.US;
                                strH = fc.h("<span style='color:", strA11, ";'>");
                            } else {
                                spans = spans;
                                if (obj3 instanceof BackgroundColorSpan) {
                                    int backgroundColor2 = ((BackgroundColorSpan) obj3).getBackgroundColor();
                                    String str312 = Util.f14242a;
                                    Locale locale10 = Locale.US;
                                    i13 = length2;
                                    strH = n00.m(backgroundColor2, "<span class='bg_", "'>");
                                } else {
                                    i13 = length2;
                                    if (obj3 instanceof HorizontalTextInVerticalContextSpan) {
                                        strH = "<span style='text-combine-upright:all;'>";
                                    } else if (obj3 instanceof AbsoluteSizeSpan) {
                                        absoluteSizeSpan = (AbsoluteSizeSpan) obj3;
                                        if (absoluteSizeSpan.getDip()) {
                                            size = absoluteSizeSpan.getSize();
                                        } else {
                                            size = absoluteSizeSpan.getSize() / f3;
                                        }
                                        Object[] objArr8 = {Float.valueOf(size)};
                                        String str313 = Util.f14242a;
                                        strH = String.format(Locale.US, "<span style='font-size:%.2fpx;'>", objArr8);
                                    } else if (obj3 instanceof RelativeSizeSpan) {
                                        Object[] objArr9 = {Float.valueOf(((RelativeSizeSpan) obj3).getSizeChange() * 100.0f)};
                                        String str314 = Util.f14242a;
                                        strH = String.format(Locale.US, "<span style='font-size:%.2f%%;'>", objArr9);
                                    } else if (obj3 instanceof TypefaceSpan) {
                                        family = ((TypefaceSpan) obj3).getFamily();
                                        if (family != null) {
                                            String str315 = Util.f14242a;
                                            Locale locale11 = Locale.US;
                                            strH = fc.h("<span style='font-family:\"", family, "\";'>");
                                        } else {
                                            strH = null;
                                        }
                                    } else if (obj3 instanceof StyleSpan) {
                                        style = ((StyleSpan) obj3).getStyle();
                                        if (style != 1) {
                                            strH = "<b>";
                                        } else if (style != 2) {
                                            strH = "<i>";
                                        } else if (style != 3) {
                                            strH = null;
                                        } else {
                                            strH = "<b><i>";
                                        }
                                    } else if (obj3 instanceof RubySpan) {
                                        i17 = ((RubySpan) obj3).f14122b;
                                        if (i17 != -1) {
                                            strH = "<ruby style='ruby-position:unset;'>";
                                        } else if (i17 != 1) {
                                            strH = "<ruby style='ruby-position:over;'>";
                                        } else if (i17 != 2) {
                                            strH = null;
                                        } else {
                                            strH = "<ruby style='ruby-position:under;'>";
                                        }
                                    } else if (obj3 instanceof UnderlineSpan) {
                                        strH = "<u>";
                                    } else if (obj3 instanceof TextEmphasisSpan) {
                                        textEmphasisSpan = (TextEmphasisSpan) obj3;
                                        i14 = textEmphasisSpan.f14125a;
                                        i15 = textEmphasisSpan.f14126b;
                                        sb2 = new StringBuilder();
                                        if (i15 != 1) {
                                            i16 = 2;
                                            if (i15 == 2) {
                                                sb2.append("open ");
                                            }
                                        } else {
                                            i16 = 2;
                                            sb2.append("filled ");
                                        }
                                        if (i14 != 0) {
                                            sb2.append("none");
                                        } else if (i14 != 1) {
                                            sb2.append("circle");
                                        } else if (i14 != i16) {
                                            sb2.append("dot");
                                        } else if (i14 != 3) {
                                            sb2.append("unset");
                                        } else {
                                            sb2.append("sesame");
                                        }
                                        String string2 = sb2.toString();
                                        if (textEmphasisSpan.f14127c != 2) {
                                            str12 = "over right";
                                        } else {
                                            str12 = "under left";
                                        }
                                        Object[] objArr10 = {string2, str12};
                                        String str316 = Util.f14242a;
                                        strH = String.format(Locale.US, "<span style='-webkit-text-emphasis-style:%1$s;text-emphasis-style:%1$s;-webkit-text-emphasis-position:%2$s;text-emphasis-position:%2$s;display:inline-block;'>", objArr10);
                                    } else {
                                        strH = null;
                                    }
                                }
                            }
                            if (z2) {
                            }
                            spanStart = spanned.getSpanStart(obj3);
                            spanEnd = spanned.getSpanEnd(obj3);
                            if (strH != null) {
                                str13.getClass();
                                SpannedToHtmlConverter.SpanInfo spanInfo3 = new SpannedToHtmlConverter.SpanInfo(spanStart, spanEnd, strH, str13);
                                transition = (SpannedToHtmlConverter.Transition) sparseArray.get(spanStart);
                                if (transition == null) {
                                    transition = new SpannedToHtmlConverter.Transition();
                                    sparseArray.put(spanStart, transition);
                                }
                                transition.f18051a.add(spanInfo3);
                                transition2 = (SpannedToHtmlConverter.Transition) sparseArray.get(spanEnd);
                                if (transition2 == null) {
                                    transition2 = new SpannedToHtmlConverter.Transition();
                                    sparseArray.put(spanEnd, transition2);
                                }
                                transition2.f18052b.add(spanInfo3);
                            }
                            i10++;
                            str25 = str213;
                            str24 = str310;
                            spans = spans;
                        }
                        i13 = length2;
                        if (z2) {
                        }
                        spanStart = spanned.getSpanStart(obj3);
                        spanEnd = spanned.getSpanEnd(obj3);
                        if (strH != null) {
                            str13.getClass();
                            SpannedToHtmlConverter.SpanInfo spanInfo4 = new SpannedToHtmlConverter.SpanInfo(spanStart, spanEnd, strH, str13);
                            transition = (SpannedToHtmlConverter.Transition) sparseArray.get(spanStart);
                            if (transition == null) {
                                transition = new SpannedToHtmlConverter.Transition();
                                sparseArray.put(spanStart, transition);
                            }
                            transition.f18051a.add(spanInfo4);
                            transition2 = (SpannedToHtmlConverter.Transition) sparseArray.get(spanEnd);
                            if (transition2 == null) {
                                transition2 = new SpannedToHtmlConverter.Transition();
                                sparseArray.put(spanEnd, transition2);
                            }
                            transition2.f18052b.add(spanInfo4);
                        }
                        i10++;
                        str25 = str213;
                        str24 = str310;
                        spans = spans;
                    }
                    str25 = str25;
                    str24 = str24;
                    sb = new StringBuilder(spanned.length());
                    i11 = 0;
                    i12 = 0;
                    while (i12 < sparseArray.size()) {
                        int iKeyAt2 = sparseArray.keyAt(i12);
                        sb.append(SpannedToHtmlConverter.a(spanned.subSequence(i11, iKeyAt2)));
                        SpannedToHtmlConverter.Transition transition4 = (SpannedToHtmlConverter.Transition) sparseArray.get(iKeyAt2);
                        ArrayList arrayList3 = transition4.f18052b;
                        ArrayList arrayList4 = transition4.f18051a;
                        Collections.sort(arrayList3, SpannedToHtmlConverter.SpanInfo.f18047f);
                        it2 = transition4.f18052b.iterator();
                        while (it2.hasNext()) {
                            sb.append(((SpannedToHtmlConverter.SpanInfo) it2.next()).d);
                        }
                        Collections.sort(arrayList4, SpannedToHtmlConverter.SpanInfo.f18046e);
                        it3 = arrayList4.iterator();
                        while (it3.hasNext()) {
                            sb.append(((SpannedToHtmlConverter.SpanInfo) it3.next()).f18050c);
                        }
                        i12++;
                        i11 = iKeyAt2;
                    }
                    sb.append(SpannedToHtmlConverter.a(spanned.subSequence(i11, spanned.length())));
                    htmlAndCss = new SpannedToHtmlConverter.HtmlAndCss(sb.toString(), map);
                }
                while (r0.hasNext()) {
                    str18 = (String) map2.put(str37, (String) map2.get(str37));
                    if (str18 != null) {
                        z3 = true;
                    } else {
                        z3 = true;
                    }
                    Preconditions.q(z3);
                }
                Integer numValueOf7 = Integer.valueOf(i33);
                Float fValueOf4 = Float.valueOf(f7);
                Integer numValueOf8 = Integer.valueOf(i32);
                Integer numValueOf9 = Integer.valueOf(i27);
                f4 = cue.q;
                if (f4 != Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                    if (i25 != 2) {
                        str17 = "skewY";
                    } else {
                        str17 = "skewY";
                    }
                    Object[] objArr11 = {str17, Float.valueOf(f4)};
                    String str317 = Util.f14242a;
                    str14 = String.format(Locale.US, "%s(%.2fdeg)", objArr11);
                } else {
                    str14 = str9;
                }
                sb3.append(String.format(Locale.US, "<div style='position:absolute;z-index:%s;%s:%.2f%%;%s:%s;%s:%s;text-align:%s;writing-mode:%s;font-size:%s;background-color:%s;transform:translate(%s%%,%s%%)%s;'>", numValueOf7, str7, fValueOf4, str8, str2, obj2, str210, obj, str211, strB3, strA9, numValueOf8, numValueOf9, str14));
                sb3.append("<span class='default_bg'>");
                alignment2 = cue.f14095c;
                str15 = htmlAndCss.f18044a;
                if (alignment2 != null) {
                    i19 = AnonymousClass2.f18075a[alignment2.ordinal()];
                    if (i19 != 1) {
                        i18 = 2;
                        if (i19 != 2) {
                            str16 = "center";
                        } else {
                            str16 = str11;
                        }
                    } else {
                        i18 = 2;
                        str16 = str10;
                    }
                    sb3.append("<span style='display:inline-block; text-align:" + str16 + ";'>");
                    sb3.append(str15);
                    sb3.append("</span>");
                } else {
                    i18 = 2;
                    sb3.append(str15);
                }
                sb3.append("</span></div>");
                i24 = i33 + 1;
                webViewSubtitleOutput = this;
                i22 = i18;
                f5 = f8;
                str25 = str25;
                str24 = str24;
                i23 = 1;
            }
            str11 = "end";
            while (r0.hasNext()) {
                str18 = (String) map2.put(str37, (String) map2.get(str37));
                if (str18 != null) {
                    z3 = true;
                } else {
                    z3 = true;
                }
                Preconditions.q(z3);
            }
            Integer numValueOf10 = Integer.valueOf(i33);
            Float fValueOf5 = Float.valueOf(f7);
            Integer numValueOf11 = Integer.valueOf(i32);
            Integer numValueOf12 = Integer.valueOf(i27);
            f4 = cue.q;
            if (f4 != Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                if (i25 != 2) {
                    str17 = "skewY";
                } else {
                    str17 = "skewY";
                }
                Object[] objArr12 = {str17, Float.valueOf(f4)};
                String str318 = Util.f14242a;
                str14 = String.format(Locale.US, "%s(%.2fdeg)", objArr12);
            } else {
                str14 = str9;
            }
            sb3.append(String.format(Locale.US, "<div style='position:absolute;z-index:%s;%s:%.2f%%;%s:%s;%s:%s;text-align:%s;writing-mode:%s;font-size:%s;background-color:%s;transform:translate(%s%%,%s%%)%s;'>", numValueOf10, str7, fValueOf5, str8, str2, obj2, str210, obj, str211, strB3, strA9, numValueOf11, numValueOf12, str14));
            sb3.append("<span class='default_bg'>");
            alignment2 = cue.f14095c;
            str15 = htmlAndCss.f18044a;
            if (alignment2 != null) {
                i19 = AnonymousClass2.f18075a[alignment2.ordinal()];
                if (i19 != 1) {
                    i18 = 2;
                    if (i19 != 2) {
                        str16 = "center";
                    } else {
                        str16 = str11;
                    }
                } else {
                    i18 = 2;
                    str16 = str10;
                }
                sb3.append("<span style='display:inline-block; text-align:" + str16 + ";'>");
                sb3.append(str15);
                sb3.append("</span>");
            } else {
                i18 = 2;
                sb3.append(str15);
            }
            sb3.append("</span></div>");
            i24 = i33 + 1;
            webViewSubtitleOutput = this;
            i22 = i18;
            f5 = f8;
            str25 = str25;
            str24 = str24;
            i23 = 1;
        }
        sb3.append("</div></body></html>");
        StringBuilder sb5 = new StringBuilder();
        sb5.append("<html><head><style>");
        for (String str40 : map2.keySet()) {
            sb5.append(str40);
            sb5.append("{");
            sb5.append((String) map2.get(str40));
            sb5.append("}");
        }
        sb5.append("</style></head>");
        sb3.insert(0, (CharSequence) sb5);
        this.f18071c.loadData(Base64.encodeToString(sb3.toString().getBytes(StandardCharsets.UTF_8), 1), HttpServer.MIME_HTML, "base64");
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
