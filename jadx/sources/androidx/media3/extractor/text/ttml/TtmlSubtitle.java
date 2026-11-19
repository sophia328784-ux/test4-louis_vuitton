package androidx.media3.extractor.text.ttml;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.text.SpannableStringBuilder;
import android.util.Base64;
import android.util.Pair;
import androidx.media3.common.text.Cue;
import androidx.media3.common.util.Util;
import androidx.media3.extractor.text.Subtitle;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
import java.util.TreeSet;

/* JADX INFO: loaded from: classes.dex */
final class TtmlSubtitle implements Subtitle {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final TtmlNode f16869b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long[] f16870c;
    public final Map d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Map f16871e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Map f16872f;

    public TtmlSubtitle(TtmlNode ttmlNode, Map<String, TtmlStyle> map, Map<String, TtmlRegion> map2, Map<String, String> map3) {
        this.f16869b = ttmlNode;
        this.f16871e = map2;
        this.f16872f = map3;
        this.d = map != null ? Collections.unmodifiableMap(map) : Collections.EMPTY_MAP;
        ttmlNode.getClass();
        TreeSet treeSet = new TreeSet();
        int i2 = 0;
        ttmlNode.d(treeSet, false);
        long[] jArr = new long[treeSet.size()];
        Iterator it = treeSet.iterator();
        while (it.hasNext()) {
            jArr[i2] = ((Long) it.next()).longValue();
            i2++;
        }
        this.f16870c = jArr;
    }

    @Override // androidx.media3.extractor.text.Subtitle
    public final int a(long j2) {
        long[] jArr = this.f16870c;
        int iB = Util.b(jArr, j2, false);
        if (iB < jArr.length) {
            return iB;
        }
        return -1;
    }

    @Override // androidx.media3.extractor.text.Subtitle
    public final List b(long j2) {
        TtmlNode ttmlNode = this.f16869b;
        ttmlNode.getClass();
        ArrayList<Pair> arrayList = new ArrayList();
        ttmlNode.g(j2, ttmlNode.f16836h, arrayList);
        TreeMap treeMap = new TreeMap();
        ttmlNode.i(j2, false, ttmlNode.f16836h, treeMap);
        String str = ttmlNode.f16836h;
        Map map = this.d;
        Map map2 = this.f16871e;
        ttmlNode.h(j2, map, map2, str, treeMap);
        ArrayList arrayList2 = new ArrayList();
        for (Pair pair : arrayList) {
            String str2 = (String) this.f16872f.get(pair.second);
            if (str2 != null) {
                byte[] bArrDecode = Base64.decode(str2, 0);
                Bitmap bitmapDecodeByteArray = BitmapFactory.decodeByteArray(bArrDecode, 0, bArrDecode.length);
                TtmlRegion ttmlRegion = (TtmlRegion) map2.get(pair.first);
                ttmlRegion.getClass();
                Cue.Builder builder = new Cue.Builder();
                builder.f14103b = bitmapDecodeByteArray;
                builder.f14102a = null;
                builder.f14107h = ttmlRegion.f16853b;
                builder.f14108i = 0;
                builder.f14105e = ttmlRegion.f16854c;
                builder.f14106f = 0;
                builder.g = ttmlRegion.f16855e;
                builder.l = ttmlRegion.f16856f;
                builder.m = ttmlRegion.g;
                builder.p = ttmlRegion.f16859j;
                arrayList2.add(builder.a());
            }
        }
        for (Map.Entry entry : treeMap.entrySet()) {
            TtmlRegion ttmlRegion2 = (TtmlRegion) map2.get(entry.getKey());
            ttmlRegion2.getClass();
            Cue.Builder builder2 = (Cue.Builder) entry.getValue();
            CharSequence charSequence = builder2.f14102a;
            charSequence.getClass();
            SpannableStringBuilder spannableStringBuilder = (SpannableStringBuilder) charSequence;
            for (DeleteTextSpan deleteTextSpan : (DeleteTextSpan[]) spannableStringBuilder.getSpans(0, spannableStringBuilder.length(), DeleteTextSpan.class)) {
                spannableStringBuilder.replace(spannableStringBuilder.getSpanStart(deleteTextSpan), spannableStringBuilder.getSpanEnd(deleteTextSpan), (CharSequence) "");
            }
            for (int i2 = 0; i2 < spannableStringBuilder.length(); i2++) {
                if (spannableStringBuilder.charAt(i2) == ' ') {
                    int i3 = i2 + 1;
                    int i4 = i3;
                    while (i4 < spannableStringBuilder.length() && spannableStringBuilder.charAt(i4) == ' ') {
                        i4++;
                    }
                    int i5 = i4 - i3;
                    if (i5 > 0) {
                        spannableStringBuilder.delete(i2, i5 + i2);
                    }
                }
            }
            if (spannableStringBuilder.length() > 0 && spannableStringBuilder.charAt(0) == ' ') {
                spannableStringBuilder.delete(0, 1);
            }
            for (int i6 = 0; i6 < spannableStringBuilder.length() - 1; i6++) {
                if (spannableStringBuilder.charAt(i6) == '\n') {
                    int i7 = i6 + 1;
                    if (spannableStringBuilder.charAt(i7) == ' ') {
                        spannableStringBuilder.delete(i7, i6 + 2);
                    }
                }
            }
            if (spannableStringBuilder.length() > 0 && spannableStringBuilder.charAt(spannableStringBuilder.length() - 1) == ' ') {
                spannableStringBuilder.delete(spannableStringBuilder.length() - 1, spannableStringBuilder.length());
            }
            for (int i8 = 0; i8 < spannableStringBuilder.length() - 1; i8++) {
                if (spannableStringBuilder.charAt(i8) == ' ') {
                    int i9 = i8 + 1;
                    if (spannableStringBuilder.charAt(i9) == '\n') {
                        spannableStringBuilder.delete(i8, i9);
                    }
                }
            }
            if (spannableStringBuilder.length() > 0 && spannableStringBuilder.charAt(spannableStringBuilder.length() - 1) == '\n') {
                spannableStringBuilder.delete(spannableStringBuilder.length() - 1, spannableStringBuilder.length());
            }
            float f2 = ttmlRegion2.f16854c;
            int i10 = ttmlRegion2.d;
            builder2.f14105e = f2;
            builder2.f14106f = i10;
            builder2.g = ttmlRegion2.f16855e;
            builder2.f14107h = ttmlRegion2.f16853b;
            builder2.l = ttmlRegion2.f16856f;
            float f3 = ttmlRegion2.f16858i;
            int i11 = ttmlRegion2.f16857h;
            builder2.f14110k = f3;
            builder2.f14109j = i11;
            builder2.p = ttmlRegion2.f16859j;
            arrayList2.add(builder2.a());
        }
        return arrayList2;
    }

    @Override // androidx.media3.extractor.text.Subtitle
    public final long c(int i2) {
        return this.f16870c[i2];
    }

    @Override // androidx.media3.extractor.text.Subtitle
    public final int d() {
        return this.f16870c.length;
    }
}
