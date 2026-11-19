package androidx.media3.extractor.text.webvtt;

import androidx.media3.common.text.Cue;
import androidx.media3.common.util.Util;
import androidx.media3.extractor.text.Subtitle;
import com.google.common.base.Preconditions;
import defpackage.x5;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
final class WebvttSubtitle implements Subtitle {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f16932b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long[] f16933c;
    public final long[] d;

    public WebvttSubtitle(List<WebvttCueInfo> list) {
        this.f16932b = Collections.unmodifiableList(new ArrayList(list));
        this.f16933c = new long[list.size() * 2];
        for (int i2 = 0; i2 < list.size(); i2++) {
            WebvttCueInfo webvttCueInfo = list.get(i2);
            int i3 = i2 * 2;
            long[] jArr = this.f16933c;
            jArr[i3] = webvttCueInfo.f16907b;
            jArr[i3 + 1] = webvttCueInfo.f16908c;
        }
        long[] jArr2 = this.f16933c;
        long[] jArrCopyOf = Arrays.copyOf(jArr2, jArr2.length);
        this.d = jArrCopyOf;
        Arrays.sort(jArrCopyOf);
    }

    @Override // androidx.media3.extractor.text.Subtitle
    public final int a(long j2) {
        long[] jArr = this.d;
        int iB = Util.b(jArr, j2, false);
        if (iB < jArr.length) {
            return iB;
        }
        return -1;
    }

    @Override // androidx.media3.extractor.text.Subtitle
    public final List b(long j2) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        int i2 = 0;
        while (true) {
            List list = this.f16932b;
            if (i2 >= list.size()) {
                break;
            }
            int i3 = i2 * 2;
            long[] jArr = this.f16933c;
            if (jArr[i3] <= j2 && j2 < jArr[i3 + 1]) {
                WebvttCueInfo webvttCueInfo = (WebvttCueInfo) list.get(i2);
                Cue cue = webvttCueInfo.f16906a;
                if (cue.f14096e == -3.4028235E38f) {
                    arrayList2.add(webvttCueInfo);
                } else {
                    arrayList.add(cue);
                }
            }
            i2++;
        }
        Collections.sort(arrayList2, new x5(16));
        for (int i4 = 0; i4 < arrayList2.size(); i4++) {
            Cue.Builder builderA = ((WebvttCueInfo) arrayList2.get(i4)).f16906a.a();
            builderA.f14105e = (-1) - i4;
            builderA.f14106f = 1;
            arrayList.add(builderA.a());
        }
        return arrayList;
    }

    @Override // androidx.media3.extractor.text.Subtitle
    public final long c(int i2) {
        Preconditions.g(i2 >= 0);
        long[] jArr = this.d;
        Preconditions.g(i2 < jArr.length);
        return jArr[i2];
    }

    @Override // androidx.media3.extractor.text.Subtitle
    public final int d() {
        return this.d.length;
    }
}
