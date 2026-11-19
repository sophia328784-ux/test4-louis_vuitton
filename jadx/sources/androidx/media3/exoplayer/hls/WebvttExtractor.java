package androidx.media3.exoplayer.hls;

import android.text.TextUtils;
import androidx.media3.common.Format;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.ParserException;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.TimestampAdjuster;
import androidx.media3.common.util.Util;
import androidx.media3.extractor.DefaultExtractorInput;
import androidx.media3.extractor.Extractor;
import androidx.media3.extractor.ExtractorInput;
import androidx.media3.extractor.ExtractorOutput;
import androidx.media3.extractor.PositionHolder;
import androidx.media3.extractor.SeekMap;
import androidx.media3.extractor.TrackOutput;
import androidx.media3.extractor.text.SubtitleParser;
import androidx.media3.extractor.text.SubtitleTranscodingExtractorOutput;
import androidx.media3.extractor.text.webvtt.WebvttCueParser;
import androidx.media3.extractor.text.webvtt.WebvttParserUtil;
import defpackage.d21;
import java.math.RoundingMode;
import java.nio.charset.StandardCharsets;
import java.util.Arrays;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes.dex */
public final class WebvttExtractor implements Extractor {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final Pattern f15199i = Pattern.compile("LOCAL:([^,]+)");

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final Pattern f15200j = Pattern.compile("MPEGTS:(-?\\d+)");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f15201a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final TimestampAdjuster f15202b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ParsableByteArray f15203c;
    public final SubtitleParser.Factory d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f15204e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public ExtractorOutput f15205f;
    public byte[] g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f15206h;

    public WebvttExtractor(String str, TimestampAdjuster timestampAdjuster, SubtitleParser.Factory factory, boolean z) {
        this.f15201a = str;
        this.f15202b = timestampAdjuster;
        this.f15203c = new ParsableByteArray();
        this.g = new byte[1024];
        this.d = factory;
        this.f15204e = z;
    }

    @Override // androidx.media3.extractor.Extractor
    public final void a(long j2, long j3) {
        throw new IllegalStateException();
    }

    @Override // androidx.media3.extractor.Extractor
    public final void b(ExtractorOutput extractorOutput) {
        if (this.f15204e) {
            extractorOutput = new SubtitleTranscodingExtractorOutput(extractorOutput, this.d);
        }
        this.f15205f = extractorOutput;
        extractorOutput.j(new SeekMap.Unseekable(-9223372036854775807L));
    }

    @Override // androidx.media3.extractor.Extractor
    public final boolean d(ExtractorInput extractorInput) {
        DefaultExtractorInput defaultExtractorInput = (DefaultExtractorInput) extractorInput;
        defaultExtractorInput.i(false, 0, 6, this.g);
        byte[] bArr = this.g;
        ParsableByteArray parsableByteArray = this.f15203c;
        parsableByteArray.L(6, bArr);
        if (WebvttParserUtil.a(parsableByteArray)) {
            return true;
        }
        defaultExtractorInput.i(false, 6, 3, this.g);
        parsableByteArray.L(9, this.g);
        return WebvttParserUtil.a(parsableByteArray);
    }

    @Override // androidx.media3.extractor.Extractor
    public final int f(ExtractorInput extractorInput, PositionHolder positionHolder) throws ParserException {
        String strN;
        this.f15205f.getClass();
        int length = (int) extractorInput.getLength();
        int i2 = this.f15206h;
        byte[] bArr = this.g;
        if (i2 == bArr.length) {
            this.g = Arrays.copyOf(bArr, ((length != -1 ? length : bArr.length) * 3) / 2);
        }
        byte[] bArr2 = this.g;
        int i3 = this.f15206h;
        int i4 = extractorInput.read(bArr2, i3, bArr2.length - i3);
        if (i4 != -1) {
            int i5 = this.f15206h + i4;
            this.f15206h = i5;
            if (length == -1 || i5 != length) {
                return 0;
            }
        }
        ParsableByteArray parsableByteArray = new ParsableByteArray(this.g);
        WebvttParserUtil.d(parsableByteArray);
        String strN2 = parsableByteArray.n(StandardCharsets.UTF_8);
        long jZ = 0;
        long jC = 0;
        while (true) {
            Matcher matcher = null;
            if (TextUtils.isEmpty(strN2)) {
                while (true) {
                    String strN3 = parsableByteArray.n(StandardCharsets.UTF_8);
                    if (strN3 == null) {
                        break;
                    }
                    if (WebvttParserUtil.f16931a.matcher(strN3).matches()) {
                        do {
                            strN = parsableByteArray.n(StandardCharsets.UTF_8);
                            if (strN == null) {
                                break;
                            }
                        } while (!strN.isEmpty());
                    } else {
                        Matcher matcher2 = WebvttCueParser.f16909a.matcher(strN3);
                        if (matcher2.matches()) {
                            matcher = matcher2;
                            break;
                        }
                    }
                }
                if (matcher == null) {
                    g(0L);
                    return -1;
                }
                String strGroup = matcher.group(1);
                strGroup.getClass();
                long jC2 = WebvttParserUtil.c(strGroup);
                String str = Util.f14242a;
                long jB = this.f15202b.b(Util.Z((jZ + jC2) - jC, 90000L, 1000000L, RoundingMode.DOWN) % 8589934592L);
                TrackOutput trackOutputG = g(jB - jC2);
                byte[] bArr3 = this.g;
                int i6 = this.f15206h;
                ParsableByteArray parsableByteArray2 = this.f15203c;
                parsableByteArray2.L(i6, bArr3);
                trackOutputG.f(this.f15206h, parsableByteArray2);
                trackOutputG.g(jB, 1, this.f15206h, 0, null);
                return -1;
            }
            if (strN2.startsWith("X-TIMESTAMP-MAP")) {
                Matcher matcher3 = f15199i.matcher(strN2);
                if (!matcher3.find()) {
                    throw ParserException.a(null, "X-TIMESTAMP-MAP doesn't contain local timestamp: ".concat(strN2));
                }
                Matcher matcher4 = f15200j.matcher(strN2);
                if (!matcher4.find()) {
                    throw ParserException.a(null, "X-TIMESTAMP-MAP doesn't contain media timestamp: ".concat(strN2));
                }
                String strGroup2 = matcher3.group(1);
                strGroup2.getClass();
                jC = WebvttParserUtil.c(strGroup2);
                String strGroup3 = matcher4.group(1);
                strGroup3.getClass();
                long j2 = Long.parseLong(strGroup3);
                String str2 = Util.f14242a;
                jZ = Util.Z(j2, 1000000L, 90000L, RoundingMode.DOWN);
            }
            strN2 = parsableByteArray.n(StandardCharsets.UTF_8);
        }
    }

    public final TrackOutput g(long j2) {
        TrackOutput trackOutputR = this.f15205f.r(0, 3);
        Format.Builder builder = new Format.Builder();
        builder.n = MimeTypes.p("text/vtt");
        builder.d = this.f15201a;
        builder.s = j2;
        d21.w(builder, trackOutputR);
        this.f15205f.n();
        return trackOutputR;
    }

    @Override // androidx.media3.extractor.Extractor
    public final void release() {
    }

    @Deprecated
    public WebvttExtractor(String str, TimestampAdjuster timestampAdjuster) {
        this(str, timestampAdjuster, SubtitleParser.Factory.f16683a, false);
    }
}
