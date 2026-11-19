package androidx.media3.exoplayer.hls;

import android.net.Uri;
import android.text.TextUtils;
import androidx.media3.common.FileTypes;
import androidx.media3.common.Format;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.util.TimestampAdjuster;
import androidx.media3.extractor.DefaultExtractorInput;
import androidx.media3.extractor.Extractor;
import androidx.media3.extractor.mp3.Mp3Extractor;
import androidx.media3.extractor.mp4.FragmentedMp4Extractor;
import androidx.media3.extractor.text.DefaultSubtitleParserFactory;
import androidx.media3.extractor.text.SubtitleParser;
import androidx.media3.extractor.ts.Ac3Extractor;
import androidx.media3.extractor.ts.Ac4Extractor;
import androidx.media3.extractor.ts.AdtsExtractor;
import androidx.media3.extractor.ts.DefaultTsPayloadReaderFactory;
import androidx.media3.extractor.ts.TsExtractor;
import com.google.common.collect.ImmutableList;
import com.google.common.primitives.Ints;
import java.io.EOFException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class DefaultHlsExtractorFactory implements HlsExtractorFactory {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final int[] f15128f = {8, 13, 11, 2, 0, 1, 7};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f15129a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public SubtitleParser.Factory f15130b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f15131c;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f15132e;

    public DefaultHlsExtractorFactory(int i2, boolean z) {
        this.f15129a = i2;
        this.f15132e = z;
        this.f15130b = new DefaultSubtitleParserFactory();
    }

    public static void c(int i2, ArrayList arrayList) {
        if (Ints.e(i2, 0, 7, f15128f) == -1 || arrayList.contains(Integer.valueOf(i2))) {
            return;
        }
        arrayList.add(Integer.valueOf(i2));
    }

    @Override // androidx.media3.exoplayer.hls.HlsExtractorFactory
    public final Format a(Format format) {
        if (!this.f15131c || !this.f15130b.b(format)) {
            return format;
        }
        Format.Builder builderA = format.a();
        String str = format.f13763k;
        builderA.n = MimeTypes.p("application/x-media3-cues");
        builderA.L = this.f15130b.a(format);
        StringBuilder sb = new StringBuilder();
        sb.append(format.o);
        sb.append(str != null ? " ".concat(str) : "");
        builderA.f13771j = sb.toString();
        builderA.s = Long.MAX_VALUE;
        return new Format(builderA);
    }

    @Override // androidx.media3.exoplayer.hls.HlsExtractorFactory
    public final BundledHlsMediaChunkExtractor b(Uri uri, Format format, List list, TimestampAdjuster timestampAdjuster, Map map, DefaultExtractorInput defaultExtractorInput) {
        BundledHlsMediaChunkExtractor bundledHlsMediaChunkExtractor;
        Extractor ac3Extractor;
        boolean zD;
        SubtitleParser.Factory factory;
        int i2;
        Extractor fragmentedMp4Extractor;
        List listSingletonList;
        Format format2 = format;
        int iA = FileTypes.a(format2.o);
        List list2 = (List) map.get("Content-Type");
        int iA2 = FileTypes.a((list2 == null || list2.isEmpty()) ? null : (String) list2.get(0));
        int iB = FileTypes.b(uri);
        int i3 = 7;
        ArrayList arrayList = new ArrayList(7);
        c(iA, arrayList);
        c(iA2, arrayList);
        c(iB, arrayList);
        for (int i4 = 0; i4 < 7; i4++) {
            c(f15128f[i4], arrayList);
        }
        defaultExtractorInput.f16125f = 0;
        int i5 = 0;
        Extractor extractor = null;
        while (i5 < arrayList.size()) {
            int iIntValue = ((Integer) arrayList.get(i5)).intValue();
            if (iIntValue == 0) {
                ac3Extractor = new Ac3Extractor();
            } else if (iIntValue == 1) {
                ac3Extractor = new Ac4Extractor();
            } else if (iIntValue == 2) {
                ac3Extractor = new AdtsExtractor();
            } else if (iIntValue != i3) {
                SubtitleParser.Factory factory2 = SubtitleParser.Factory.f16683a;
                if (iIntValue == 8) {
                    SubtitleParser.Factory factory3 = this.f15130b;
                    boolean z = this.f15131c;
                    int i6 = this.d;
                    if (z) {
                        factory = factory3;
                        i2 = 4;
                    } else {
                        i2 = 36;
                        factory = factory2;
                    }
                    byte[] bArr = FragmentedMp4Extractor.P;
                    int i7 = (i6 & 1) != 0 ? 64 : 0;
                    if ((i6 & 2) != 0) {
                        i7 |= 128;
                    }
                    fragmentedMp4Extractor = new FragmentedMp4Extractor(factory, i2 | i7, timestampAdjuster, null, list != null ? list : ImmutableList.x(), null);
                } else if (iIntValue != 11) {
                    ac3Extractor = iIntValue != 13 ? null : new WebvttExtractor(format2.d, timestampAdjuster, this.f15130b, this.f15131c);
                } else {
                    SubtitleParser.Factory factory4 = this.f15130b;
                    boolean z2 = this.f15131c;
                    int i8 = this.f15129a;
                    int i9 = i8 | 16;
                    if (list != null) {
                        i9 = i8 | 48;
                        listSingletonList = list;
                    } else if (this.f15132e) {
                        Format.Builder builder = new Format.Builder();
                        builder.n = MimeTypes.p("application/cea-608");
                        listSingletonList = Collections.singletonList(new Format(builder));
                    } else {
                        listSingletonList = Collections.EMPTY_LIST;
                    }
                    String str = format2.f13763k;
                    if (!TextUtils.isEmpty(str)) {
                        if (MimeTypes.c(str, "audio/mp4a-latm") == null) {
                            i9 |= 2;
                        }
                        if (MimeTypes.c(str, "video/avc") == null) {
                            i9 |= 4;
                        }
                    }
                    fragmentedMp4Extractor = new TsExtractor(2, !z2 ? 1 : 0, !z2 ? factory2 : factory4, timestampAdjuster, new DefaultTsPayloadReaderFactory(i9, listSingletonList), 112800);
                }
                ac3Extractor = fragmentedMp4Extractor;
            } else {
                ac3Extractor = new Mp3Extractor(0, 0L);
            }
            ac3Extractor.getClass();
            Extractor extractor2 = ac3Extractor;
            try {
                zD = extractor2.d(defaultExtractorInput);
                defaultExtractorInput.f16125f = 0;
            } catch (EOFException unused) {
                defaultExtractorInput.f16125f = 0;
                zD = false;
            } catch (Throwable th) {
                defaultExtractorInput.f16125f = 0;
                throw th;
            }
            if (zD) {
                bundledHlsMediaChunkExtractor = new BundledHlsMediaChunkExtractor(extractor2, format, timestampAdjuster, this.f15130b, this.f15131c);
                return bundledHlsMediaChunkExtractor;
            }
            if (extractor == null && (iIntValue == iA || iIntValue == iA2 || iIntValue == iB || iIntValue == 11)) {
                extractor = extractor2;
            }
            i5++;
            format2 = format;
            i3 = 7;
        }
        extractor.getClass();
        bundledHlsMediaChunkExtractor = new BundledHlsMediaChunkExtractor(extractor, format, timestampAdjuster, this.f15130b, this.f15131c);
        return bundledHlsMediaChunkExtractor;
    }

    public DefaultHlsExtractorFactory() {
        this(0, true);
        this.d = 3;
    }
}
