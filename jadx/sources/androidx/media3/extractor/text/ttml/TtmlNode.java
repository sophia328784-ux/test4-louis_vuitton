package androidx.media3.extractor.text.ttml;

import android.text.Layout;
import android.text.SpannableStringBuilder;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.BackgroundColorSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.RelativeSizeSpan;
import android.text.style.StrikethroughSpan;
import android.text.style.StyleSpan;
import android.text.style.TypefaceSpan;
import android.text.style.UnderlineSpan;
import android.util.Pair;
import androidx.media3.common.text.Cue;
import androidx.media3.common.text.HorizontalTextInVerticalContextSpan;
import androidx.media3.common.text.RubySpan;
import androidx.media3.common.text.SpanUtil;
import androidx.media3.common.text.TextEmphasisSpan;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.Util;
import defpackage.md;
import defpackage.zy0;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.TreeMap;
import java.util.TreeSet;

/* JADX INFO: loaded from: classes.dex */
final class TtmlNode {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f16831a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f16832b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f16833c;
    public final long d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final long f16834e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final TtmlStyle f16835f;
    public final String[] g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f16836h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final String f16837i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final TtmlNode f16838j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final HashMap f16839k;
    public final HashMap l;
    public ArrayList m;

    public TtmlNode(String str, String str2, long j2, long j3, TtmlStyle ttmlStyle, String[] strArr, String str3, String str4, TtmlNode ttmlNode) {
        this.f16831a = str;
        this.f16832b = str2;
        this.f16837i = str4;
        this.f16835f = ttmlStyle;
        this.g = strArr;
        this.f16833c = str2 != null;
        this.d = j2;
        this.f16834e = j3;
        str3.getClass();
        this.f16836h = str3;
        this.f16838j = ttmlNode;
        this.f16839k = new HashMap();
        this.l = new HashMap();
    }

    public static TtmlNode a(String str) {
        return new TtmlNode(null, str.replaceAll("\r\n", "\n").replaceAll(" *\n *", "\n").replaceAll("\n", " ").replaceAll("[ \t\\x0B\f\r]+", " "), -9223372036854775807L, -9223372036854775807L, null, null, "", null, null);
    }

    public static SpannableStringBuilder e(String str, TreeMap treeMap) {
        if (!treeMap.containsKey(str)) {
            Cue.Builder builder = new Cue.Builder();
            builder.b(new SpannableStringBuilder());
            treeMap.put(str, builder);
        }
        CharSequence charSequence = ((Cue.Builder) treeMap.get(str)).f14102a;
        charSequence.getClass();
        return (SpannableStringBuilder) charSequence;
    }

    public final TtmlNode b(int i2) {
        ArrayList arrayList = this.m;
        if (arrayList != null) {
            return (TtmlNode) arrayList.get(i2);
        }
        zy0.b();
        return null;
    }

    public final int c() {
        ArrayList arrayList = this.m;
        if (arrayList == null) {
            return 0;
        }
        return arrayList.size();
    }

    public final void d(TreeSet treeSet, boolean z) {
        String str = this.f16831a;
        boolean zEquals = "p".equals(str);
        boolean zEquals2 = "div".equals(str);
        if (z || zEquals || (zEquals2 && this.f16837i != null)) {
            long j2 = this.d;
            if (j2 != -9223372036854775807L) {
                treeSet.add(Long.valueOf(j2));
            }
            long j3 = this.f16834e;
            if (j3 != -9223372036854775807L) {
                treeSet.add(Long.valueOf(j3));
            }
        }
        if (this.m == null) {
            return;
        }
        for (int i2 = 0; i2 < this.m.size(); i2++) {
            ((TtmlNode) this.m.get(i2)).d(treeSet, z || zEquals);
        }
    }

    public final boolean f(long j2) {
        long j3 = this.d;
        long j4 = this.f16834e;
        if (j3 == -9223372036854775807L && j4 == -9223372036854775807L) {
            return true;
        }
        if (j3 <= j2 && j4 == -9223372036854775807L) {
            return true;
        }
        if (j3 != -9223372036854775807L || j2 >= j4) {
            return j3 <= j2 && j2 < j4;
        }
        return true;
    }

    public final void g(long j2, String str, ArrayList arrayList) {
        String str2;
        String str3 = this.f16836h;
        if (!"".equals(str3)) {
            str = str3;
        }
        if (f(j2) && "div".equals(this.f16831a) && (str2 = this.f16837i) != null) {
            arrayList.add(new Pair(str, str2));
            return;
        }
        for (int i2 = 0; i2 < c(); i2++) {
            b(i2).g(j2, str, arrayList);
        }
    }

    /* JADX WARN: Code duplicated, block: B:143:0x0206  */
    /* JADX WARN: Code duplicated, block: B:146:0x0214  */
    /* JADX WARN: Code duplicated, block: B:148:0x0217  */
    /* JADX WARN: Code duplicated, block: B:150:0x021a  */
    /* JADX WARN: Code duplicated, block: B:151:0x0220  */
    /* JADX WARN: Code duplicated, block: B:153:0x0233  */
    /* JADX WARN: Code duplicated, block: B:165:0x0265  */
    /* JADX WARN: Code duplicated, block: B:168:0x027d  */
    /* JADX WARN: Code duplicated, block: B:169:0x028c  */
    /* JADX WARN: Code duplicated, block: B:172:0x02a6  */
    /* JADX WARN: Code duplicated, block: B:174:0x02af  */
    /* JADX WARN: Code duplicated, block: B:177:0x02ba  */
    /* JADX WARN: Code duplicated, block: B:180:0x02c0  */
    /* JADX WARN: Code duplicated, block: B:193:0x02c9 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:194:0x02c9 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:43:0x00b1  */
    /* JADX WARN: Code duplicated, block: B:44:0x00b4  */
    /* JADX WARN: Code duplicated, block: B:47:0x00ba  */
    /* JADX WARN: Code duplicated, block: B:48:0x00bc  */
    public final void h(long j2, Map map, Map map2, String str, TreeMap treeMap) {
        Iterator it;
        int i2;
        TtmlNode ttmlNode;
        int i3;
        TtmlStyle ttmlStyleA;
        int i4;
        float f2;
        float f3;
        float f4;
        Layout.Alignment alignment;
        Layout.Alignment alignment2;
        RelativeSizeSpan[] relativeSizeSpanArr;
        int length;
        float sizeChange;
        int i5;
        RelativeSizeSpan relativeSizeSpan;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        Map map3 = map;
        if (f(j2)) {
            String str2 = this.f16836h;
            String str3 = "".equals(str2) ? str : str2;
            Iterator it2 = this.l.entrySet().iterator();
            while (it2.hasNext()) {
                Map.Entry entry = (Map.Entry) it2.next();
                String str4 = (String) entry.getKey();
                HashMap map4 = this.f16839k;
                int iIntValue = map4.containsKey(str4) ? ((Integer) map4.get(str4)).intValue() : 0;
                int iIntValue2 = ((Integer) entry.getValue()).intValue();
                if (iIntValue != iIntValue2) {
                    Cue.Builder builder = (Cue.Builder) treeMap.get(str4);
                    builder.getClass();
                    TtmlRegion ttmlRegion = (TtmlRegion) map2.get(str3);
                    ttmlRegion.getClass();
                    int i11 = ttmlRegion.f16859j;
                    TtmlStyle ttmlStyleA2 = TtmlRenderUtil.a(this.f16835f, this.g, map3);
                    SpannableStringBuilder spannableStringBuilder = (SpannableStringBuilder) builder.f14102a;
                    if (spannableStringBuilder == null) {
                        spannableStringBuilder = new SpannableStringBuilder();
                        builder.b(spannableStringBuilder);
                    }
                    if (ttmlStyleA2 != null) {
                        int i12 = ttmlStyleA2.f16865h;
                        int i13 = 1;
                        if (((i12 == -1 && ttmlStyleA2.f16866i == -1) ? -1 : (i12 == 1 ? (char) 1 : (char) 0) | (ttmlStyleA2.f16866i == 1 ? (char) 2 : (char) 0)) != -1) {
                            int i14 = ttmlStyleA2.f16865h;
                            if (i14 != -1) {
                                if (i14 == i13) {
                                    i8 = i13;
                                } else {
                                    i8 = 0;
                                }
                                if (ttmlStyleA2.f16866i == i13) {
                                    i9 = 2;
                                } else {
                                    i9 = 0;
                                }
                                i10 = i8 | i9;
                            } else if (ttmlStyleA2.f16866i == -1) {
                                i10 = -1;
                                i13 = 1;
                            } else {
                                i13 = 1;
                                if (i14 == i13) {
                                    i8 = i13;
                                } else {
                                    i8 = 0;
                                }
                                if (ttmlStyleA2.f16866i == i13) {
                                    i9 = 2;
                                } else {
                                    i9 = 0;
                                }
                                i10 = i8 | i9;
                            }
                            StyleSpan styleSpan = new StyleSpan(i10);
                            i2 = 33;
                            spannableStringBuilder.setSpan(styleSpan, iIntValue, iIntValue2, 33);
                        } else {
                            i2 = 33;
                        }
                        if (ttmlStyleA2.f16864f == i13) {
                            spannableStringBuilder.setSpan(new StrikethroughSpan(), iIntValue, iIntValue2, i2);
                        }
                        if (ttmlStyleA2.g == i13) {
                            spannableStringBuilder.setSpan(new UnderlineSpan(), iIntValue, iIntValue2, i2);
                        }
                        if (ttmlStyleA2.f16862c) {
                            if (!ttmlStyleA2.f16862c) {
                                md.k("Font color has not been defined.");
                                return;
                            }
                            SpanUtil.a(spannableStringBuilder, new ForegroundColorSpan(ttmlStyleA2.f16861b), iIntValue, iIntValue2);
                        }
                        if (ttmlStyleA2.f16863e) {
                            if (!ttmlStyleA2.f16863e) {
                                md.k("Background color has not been defined.");
                                return;
                            }
                            SpanUtil.a(spannableStringBuilder, new BackgroundColorSpan(ttmlStyleA2.d), iIntValue, iIntValue2);
                        }
                        if (ttmlStyleA2.f16860a != null) {
                            SpanUtil.a(spannableStringBuilder, new TypefaceSpan(ttmlStyleA2.f16860a), iIntValue, iIntValue2);
                        }
                        TextEmphasis textEmphasis = ttmlStyleA2.r;
                        if (textEmphasis != null) {
                            int i15 = textEmphasis.f16828a;
                            if (i15 == -1) {
                                i15 = (i11 == 2 || i11 == 1) ? 3 : 1;
                                i7 = 1;
                            } else {
                                i7 = textEmphasis.f16829b;
                            }
                            int i16 = textEmphasis.f16830c;
                            if (i16 == -2) {
                                i16 = 1;
                            }
                            SpanUtil.a(spannableStringBuilder, new TextEmphasisSpan(i15, i7, i16), iIntValue, iIntValue2);
                        }
                        int i17 = ttmlStyleA2.m;
                        if (i17 == 2) {
                            TtmlNode ttmlNode2 = this.f16838j;
                            while (true) {
                                if (ttmlNode2 == null) {
                                    ttmlNode2 = null;
                                    break;
                                }
                                TtmlStyle ttmlStyleA3 = TtmlRenderUtil.a(ttmlNode2.f16835f, ttmlNode2.g, map3);
                                if (ttmlStyleA3 != null && ttmlStyleA3.m == 1) {
                                    break;
                                } else {
                                    ttmlNode2 = ttmlNode2.f16838j;
                                }
                            }
                            if (ttmlNode2 != null) {
                                ArrayDeque arrayDeque = new ArrayDeque();
                                arrayDeque.push(ttmlNode2);
                                while (true) {
                                    if (arrayDeque.isEmpty()) {
                                        ttmlNode = null;
                                        break;
                                    }
                                    TtmlNode ttmlNode3 = (TtmlNode) arrayDeque.pop();
                                    TtmlStyle ttmlStyleA4 = TtmlRenderUtil.a(ttmlNode3.f16835f, ttmlNode3.g, map3);
                                    if (ttmlStyleA4 != null && ttmlStyleA4.m == 3) {
                                        ttmlNode = ttmlNode3;
                                        break;
                                    }
                                    for (int iC = ttmlNode3.c() - 1; iC >= 0; iC--) {
                                        arrayDeque.push(ttmlNode3.b(iC));
                                    }
                                }
                                if (ttmlNode != null) {
                                    if (ttmlNode.c() == 1) {
                                        i3 = 0;
                                        if (ttmlNode.b(0).f16832b != null) {
                                            String str5 = ttmlNode.b(0).f16832b;
                                            String str6 = Util.f14242a;
                                            TtmlStyle ttmlStyleA5 = TtmlRenderUtil.a(ttmlNode.f16835f, ttmlNode.g, map3);
                                            int i18 = ttmlStyleA5 != null ? ttmlStyleA5.n : -1;
                                            if (i18 == -1 && (ttmlStyleA = TtmlRenderUtil.a(ttmlNode2.f16835f, ttmlNode2.g, map3)) != null) {
                                                i18 = ttmlStyleA.n;
                                            }
                                            spannableStringBuilder.setSpan(new RubySpan(str5, i18), iIntValue, iIntValue2, 33);
                                        }
                                    } else {
                                        i3 = 0;
                                    }
                                    Log.f("Skipping rubyText node without exactly one text child.");
                                }
                            }
                            if (ttmlStyleA2.q == 1) {
                                SpanUtil.a(spannableStringBuilder, new HorizontalTextInVerticalContextSpan(), iIntValue, iIntValue2);
                            }
                            i4 = ttmlStyleA2.f16867j;
                            f2 = 100.0f;
                            if (i4 != 1) {
                                it = it2;
                                f3 = 100.0f;
                                SpanUtil.a(spannableStringBuilder, new AbsoluteSizeSpan((int) ttmlStyleA2.f16868k, true), iIntValue, iIntValue2);
                            } else if (i4 != 2) {
                                it = it2;
                                f3 = 100.0f;
                                SpanUtil.a(spannableStringBuilder, new RelativeSizeSpan(ttmlStyleA2.f16868k), iIntValue, iIntValue2);
                            } else if (i4 != 3) {
                                it = it2;
                                f3 = 100.0f;
                            } else {
                                float f5 = ttmlStyleA2.f16868k / 100.0f;
                                relativeSizeSpanArr = (RelativeSizeSpan[]) spannableStringBuilder.getSpans(iIntValue, iIntValue2, RelativeSizeSpan.class);
                                length = relativeSizeSpanArr.length;
                                int i19 = i3;
                                sizeChange = f5;
                                i5 = i19;
                                while (i5 < length) {
                                    float f6 = f2;
                                    relativeSizeSpan = relativeSizeSpanArr[i5];
                                    Iterator it3 = it2;
                                    if (spannableStringBuilder.getSpanStart(relativeSizeSpan) <= iIntValue && spannableStringBuilder.getSpanEnd(relativeSizeSpan) >= iIntValue2) {
                                        sizeChange = relativeSizeSpan.getSizeChange() * sizeChange;
                                    }
                                    if (spannableStringBuilder.getSpanStart(relativeSizeSpan) == iIntValue || spannableStringBuilder.getSpanEnd(relativeSizeSpan) != iIntValue2) {
                                        i6 = i5;
                                    } else {
                                        i6 = i5;
                                        if (spannableStringBuilder.getSpanFlags(relativeSizeSpan) == 33) {
                                            spannableStringBuilder.removeSpan(relativeSizeSpan);
                                        }
                                    }
                                    i5 = i6 + 1;
                                    f2 = f6;
                                    it2 = it3;
                                }
                                it = it2;
                                f3 = f2;
                                spannableStringBuilder.setSpan(new RelativeSizeSpan(sizeChange), iIntValue, iIntValue2, 33);
                            }
                            if ("p".equals(this.f16831a)) {
                                f4 = ttmlStyleA2.s;
                                if (f4 != Float.MAX_VALUE) {
                                    builder.q = (f4 * (-90.0f)) / f3;
                                }
                                alignment = ttmlStyleA2.o;
                                if (alignment != null) {
                                    builder.f14104c = alignment;
                                }
                                alignment2 = ttmlStyleA2.p;
                                if (alignment2 != null) {
                                    builder.d = alignment2;
                                }
                            }
                        } else if (i17 == 3 || i17 == 4) {
                            spannableStringBuilder.setSpan(new DeleteTextSpan(), iIntValue, iIntValue2, 33);
                        }
                        i3 = 0;
                        if (ttmlStyleA2.q == 1) {
                            SpanUtil.a(spannableStringBuilder, new HorizontalTextInVerticalContextSpan(), iIntValue, iIntValue2);
                        }
                        i4 = ttmlStyleA2.f16867j;
                        f2 = 100.0f;
                        if (i4 != 1) {
                            it = it2;
                            f3 = 100.0f;
                            SpanUtil.a(spannableStringBuilder, new AbsoluteSizeSpan((int) ttmlStyleA2.f16868k, true), iIntValue, iIntValue2);
                        } else if (i4 != 2) {
                            it = it2;
                            f3 = 100.0f;
                            SpanUtil.a(spannableStringBuilder, new RelativeSizeSpan(ttmlStyleA2.f16868k), iIntValue, iIntValue2);
                        } else if (i4 != 3) {
                            it = it2;
                            f3 = 100.0f;
                        } else {
                            float f7 = ttmlStyleA2.f16868k / 100.0f;
                            relativeSizeSpanArr = (RelativeSizeSpan[]) spannableStringBuilder.getSpans(iIntValue, iIntValue2, RelativeSizeSpan.class);
                            length = relativeSizeSpanArr.length;
                            int i110 = i3;
                            sizeChange = f7;
                            i5 = i110;
                            while (i5 < length) {
                                float f8 = f2;
                                relativeSizeSpan = relativeSizeSpanArr[i5];
                                Iterator it4 = it2;
                                if (spannableStringBuilder.getSpanStart(relativeSizeSpan) <= iIntValue) {
                                    sizeChange = relativeSizeSpan.getSizeChange() * sizeChange;
                                }
                                if (spannableStringBuilder.getSpanStart(relativeSizeSpan) == iIntValue) {
                                    i6 = i5;
                                } else {
                                    i6 = i5;
                                }
                                i5 = i6 + 1;
                                f2 = f8;
                                it2 = it4;
                            }
                            it = it2;
                            f3 = f2;
                            spannableStringBuilder.setSpan(new RelativeSizeSpan(sizeChange), iIntValue, iIntValue2, 33);
                        }
                        if ("p".equals(this.f16831a)) {
                            f4 = ttmlStyleA2.s;
                            if (f4 != Float.MAX_VALUE) {
                                builder.q = (f4 * (-90.0f)) / f3;
                            }
                            alignment = ttmlStyleA2.o;
                            if (alignment != null) {
                                builder.f14104c = alignment;
                            }
                            alignment2 = ttmlStyleA2.p;
                            if (alignment2 != null) {
                                builder.d = alignment2;
                            }
                        }
                    }
                    it2 = it;
                }
                it = it2;
                it2 = it;
            }
            int i20 = 0;
            while (i20 < c()) {
                b(i20).h(j2, map3, map2, str3, treeMap);
                i20++;
                map3 = map;
            }
        }
    }

    public final void i(long j2, boolean z, String str, TreeMap treeMap) {
        HashMap map = this.f16839k;
        map.clear();
        HashMap map2 = this.l;
        map2.clear();
        String str2 = this.f16831a;
        if ("metadata".equals(str2)) {
            return;
        }
        String str3 = this.f16836h;
        String str4 = "".equals(str3) ? str : str3;
        if (this.f16833c && z) {
            SpannableStringBuilder spannableStringBuilderE = e(str4, treeMap);
            String str5 = this.f16832b;
            str5.getClass();
            spannableStringBuilderE.append((CharSequence) str5);
            return;
        }
        if ("br".equals(str2) && z) {
            e(str4, treeMap).append('\n');
            return;
        }
        if (f(j2)) {
            for (Map.Entry entry : treeMap.entrySet()) {
                String str6 = (String) entry.getKey();
                CharSequence charSequence = ((Cue.Builder) entry.getValue()).f14102a;
                charSequence.getClass();
                map.put(str6, Integer.valueOf(charSequence.length()));
            }
            boolean zEquals = "p".equals(str2);
            for (int i2 = 0; i2 < c(); i2++) {
                b(i2).i(j2, z || zEquals, str4, treeMap);
            }
            if (zEquals) {
                SpannableStringBuilder spannableStringBuilderE2 = e(str4, treeMap);
                int length = spannableStringBuilderE2.length() - 1;
                while (length >= 0 && spannableStringBuilderE2.charAt(length) == ' ') {
                    length--;
                }
                if (length >= 0 && spannableStringBuilderE2.charAt(length) != '\n') {
                    spannableStringBuilderE2.append('\n');
                }
            }
            for (Map.Entry entry2 : treeMap.entrySet()) {
                String str7 = (String) entry2.getKey();
                CharSequence charSequence2 = ((Cue.Builder) entry2.getValue()).f14102a;
                charSequence2.getClass();
                map2.put(str7, Integer.valueOf(charSequence2.length()));
            }
        }
    }
}
