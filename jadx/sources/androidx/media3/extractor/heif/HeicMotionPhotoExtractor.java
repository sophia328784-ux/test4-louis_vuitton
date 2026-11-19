package androidx.media3.extractor.heif;

import androidx.media3.common.Format;
import androidx.media3.common.Metadata;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.ParserException;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.extractor.DefaultExtractorInput;
import androidx.media3.extractor.Extractor;
import androidx.media3.extractor.ExtractorInput;
import androidx.media3.extractor.ExtractorOutput;
import androidx.media3.extractor.PositionHolder;
import androidx.media3.extractor.SeekMap;
import androidx.media3.extractor.StartOffsetExtractorInput;
import androidx.media3.extractor.StartOffsetExtractorOutput;
import androidx.media3.extractor.TrackOutput;
import androidx.media3.extractor.metadata.MotionPhotoMetadata;
import androidx.media3.extractor.mp4.Mp4Extractor;
import androidx.media3.extractor.text.SubtitleParser;
import defpackage.d21;
import defpackage.r81;

/* JADX INFO: loaded from: classes.dex */
final class HeicMotionPhotoExtractor implements Extractor {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public ExtractorOutput f16307b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public ExtractorInput f16308c;
    public StartOffsetExtractorInput d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Mp4Extractor f16309e;
    public int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public long f16311h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f16312i;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ParsableByteArray f16306a = new ParsableByteArray(16);

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public long f16313j = -1;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f16310f = 0;

    @Override // androidx.media3.extractor.Extractor
    public final void a(long j2, long j3) {
        if (j2 != 0) {
            if (this.f16310f == 3) {
                Mp4Extractor mp4Extractor = this.f16309e;
                mp4Extractor.getClass();
                mp4Extractor.a(j2, j3);
                return;
            }
            return;
        }
        this.f16310f = 0;
        this.f16312i = 0;
        this.f16313j = -1L;
        if (this.f16309e != null) {
            this.f16309e = null;
        }
    }

    @Override // androidx.media3.extractor.Extractor
    public final void b(ExtractorOutput extractorOutput) {
        this.f16307b = extractorOutput;
    }

    @Override // androidx.media3.extractor.Extractor
    public final boolean d(ExtractorInput extractorInput) {
        return HeifSniffer.a((DefaultExtractorInput) extractorInput, true);
    }

    @Override // androidx.media3.extractor.Extractor
    public final int f(ExtractorInput extractorInput, PositionHolder positionHolder) throws ParserException {
        while (true) {
            int i2 = this.f16310f;
            if (i2 == 0) {
                int i3 = this.f16312i;
                ParsableByteArray parsableByteArray = this.f16306a;
                if (i3 == 0) {
                    if (!extractorInput.h(true, 0, 8, parsableByteArray.f14194a)) {
                        ExtractorOutput extractorOutput = this.f16307b;
                        extractorOutput.getClass();
                        extractorOutput.n();
                        this.f16307b.j(new SeekMap.Unseekable(-9223372036854775807L));
                        this.f16310f = 4;
                        return -1;
                    }
                    this.f16312i = 8;
                    parsableByteArray.N(0);
                    this.f16311h = parsableByteArray.C();
                    this.g = parsableByteArray.m();
                }
                if (this.f16311h == 1) {
                    extractorInput.readFully(parsableByteArray.f14194a, 8, 8);
                    this.f16312i += 8;
                    this.f16311h = parsableByteArray.G();
                }
                if (this.g == 1836086884) {
                    long position = extractorInput.getPosition();
                    this.f16313j = position;
                    long j2 = this.f16312i;
                    MotionPhotoMetadata motionPhotoMetadata = new MotionPhotoMetadata(0L, position - j2, -9223372036854775807L, position, this.f16311h - j2);
                    ExtractorOutput extractorOutput2 = this.f16307b;
                    extractorOutput2.getClass();
                    TrackOutput trackOutputR = extractorOutput2.r(1024, 4);
                    Format.Builder builder = new Format.Builder();
                    builder.m = MimeTypes.p("image/heic");
                    builder.f13772k = new Metadata(motionPhotoMetadata);
                    d21.w(builder, trackOutputR);
                    this.f16310f = 2;
                } else {
                    this.f16310f = 1;
                }
            } else if (i2 == 1) {
                extractorInput.m((int) (this.f16311h - ((long) this.f16312i)));
                this.f16312i = 0;
                this.f16310f = 0;
            } else {
                if (i2 != 2) {
                    if (i2 != 3) {
                        if (i2 == 4) {
                            return -1;
                        }
                        r81.b();
                        return 0;
                    }
                    if (this.d == null || extractorInput != this.f16308c) {
                        this.f16308c = extractorInput;
                        this.d = new StartOffsetExtractorInput(extractorInput, this.f16313j);
                    }
                    Mp4Extractor mp4Extractor = this.f16309e;
                    mp4Extractor.getClass();
                    int iF = mp4Extractor.f(this.d, positionHolder);
                    if (iF == 1) {
                        positionHolder.f16190a += this.f16313j;
                    }
                    return iF;
                }
                if (this.f16309e == null) {
                    this.f16309e = new Mp4Extractor(SubtitleParser.Factory.f16683a, 8);
                }
                StartOffsetExtractorInput startOffsetExtractorInput = new StartOffsetExtractorInput(extractorInput, this.f16313j);
                this.d = startOffsetExtractorInput;
                if (this.f16309e.d(startOffsetExtractorInput)) {
                    Mp4Extractor mp4Extractor2 = this.f16309e;
                    long j3 = this.f16313j;
                    ExtractorOutput extractorOutput3 = this.f16307b;
                    extractorOutput3.getClass();
                    mp4Extractor2.b(new StartOffsetExtractorOutput(j3, extractorOutput3));
                    this.f16310f = 3;
                } else {
                    ExtractorOutput extractorOutput4 = this.f16307b;
                    extractorOutput4.getClass();
                    extractorOutput4.n();
                    this.f16307b.j(new SeekMap.Unseekable(-9223372036854775807L));
                    this.f16310f = 4;
                }
            }
        }
    }

    @Override // androidx.media3.extractor.Extractor
    public final void release() {
        Mp4Extractor mp4Extractor = this.f16309e;
        if (mp4Extractor != null) {
            mp4Extractor.getClass();
            this.f16309e = null;
        }
    }
}
