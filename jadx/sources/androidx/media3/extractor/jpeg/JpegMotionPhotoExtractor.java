package androidx.media3.extractor.jpeg;

import androidx.media3.common.Format;
import androidx.media3.common.Metadata;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.ParserException;
import androidx.media3.common.util.Log;
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
import java.io.EOFException;
import java.io.InterruptedIOException;
import java.util.List;
import java.util.Objects;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes.dex */
final class JpegMotionPhotoExtractor implements Extractor {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public ExtractorOutput f16318b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f16319c;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f16320e;
    public MotionPhotoMetadata g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public ExtractorInput f16322h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public StartOffsetExtractorInput f16323i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Mp4Extractor f16324j;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ParsableByteArray f16317a = new ParsableByteArray(2);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public long f16321f = -1;

    @Override // androidx.media3.extractor.Extractor
    public final void a(long j2, long j3) {
        if (j2 == 0) {
            this.f16319c = 0;
            this.f16324j = null;
        } else if (this.f16319c == 5) {
            Mp4Extractor mp4Extractor = this.f16324j;
            mp4Extractor.getClass();
            mp4Extractor.a(j2, j3);
        }
    }

    @Override // androidx.media3.extractor.Extractor
    public final void b(ExtractorOutput extractorOutput) {
        this.f16318b = extractorOutput;
    }

    @Override // androidx.media3.extractor.Extractor
    public final boolean d(ExtractorInput extractorInput) throws EOFException, InterruptedIOException {
        String strV;
        DefaultExtractorInput defaultExtractorInput = (DefaultExtractorInput) extractorInput;
        ParsableByteArray parsableByteArray = this.f16317a;
        parsableByteArray.K(2);
        defaultExtractorInput.i(false, 0, 2, parsableByteArray.f14194a);
        if (parsableByteArray.H() == 65496) {
            while (true) {
                parsableByteArray.K(2);
                defaultExtractorInput.i(false, 0, 2, parsableByteArray.f14194a);
                int iH = parsableByteArray.H();
                this.d = iH;
                if (iH == 65498) {
                    break;
                }
                parsableByteArray.K(2);
                defaultExtractorInput.b(0, 2, parsableByteArray.f14194a);
                int iH2 = parsableByteArray.H() - 2;
                if (iH2 < 0) {
                    break;
                }
                if (this.d != 65505) {
                    defaultExtractorInput.n(iH2, false);
                } else {
                    parsableByteArray.K(iH2);
                    defaultExtractorInput.i(false, 0, iH2, parsableByteArray.f14194a);
                    if (Objects.equals(parsableByteArray.v(), "http://ns.adobe.com/xap/1.0/") && (strV = parsableByteArray.v()) != null) {
                        for (int i2 = 0; i2 < 4; i2++) {
                            if (strV.contains(XmpMotionPhotoDescriptionParser.f16330a[i2] + "=\"1\"")) {
                                return true;
                            }
                        }
                    }
                }
            }
        }
        return false;
    }

    /* JADX WARN: Code duplicated, block: B:51:0x00fe  */
    @Override // androidx.media3.extractor.Extractor
    public final int f(ExtractorInput extractorInput, PositionHolder positionHolder) throws ParserException {
        String strV;
        MotionPhotoDescription motionPhotoDescriptionA;
        MotionPhotoMetadata motionPhotoMetadata;
        long j2;
        int i2 = this.f16319c;
        long j3 = -1;
        ParsableByteArray parsableByteArray = this.f16317a;
        if (i2 == 0) {
            parsableByteArray.K(2);
            extractorInput.readFully(parsableByteArray.f14194a, 0, 2);
            int iH = parsableByteArray.H();
            this.d = iH;
            if (iH == 65498) {
                if (this.f16321f != -1) {
                    this.f16319c = 4;
                    return 0;
                }
                g();
                return 0;
            }
            if ((iH < 65488 || iH > 65497) && iH != 65281) {
                this.f16319c = 1;
            }
            return 0;
        }
        if (i2 == 1) {
            parsableByteArray.K(2);
            extractorInput.b(0, 2, parsableByteArray.f14194a);
            this.f16320e = parsableByteArray.H() - 2;
            extractorInput.m(2);
            this.f16319c = 2;
            return 0;
        }
        if (i2 != 2) {
            if (i2 != 4) {
                if (i2 != 5) {
                    if (i2 == 6) {
                        return -1;
                    }
                    r81.b();
                    return 0;
                }
                if (this.f16323i == null || extractorInput != this.f16322h) {
                    this.f16322h = extractorInput;
                    this.f16323i = new StartOffsetExtractorInput(extractorInput, this.f16321f);
                }
                Mp4Extractor mp4Extractor = this.f16324j;
                mp4Extractor.getClass();
                int iF = mp4Extractor.f(this.f16323i, positionHolder);
                if (iF == 1) {
                    positionHolder.f16190a += this.f16321f;
                }
                return iF;
            }
            long position = extractorInput.getPosition();
            long j4 = this.f16321f;
            if (position != j4) {
                positionHolder.f16190a = j4;
                return 1;
            }
            if (!extractorInput.i(true, 0, 1, parsableByteArray.f14194a)) {
                g();
                return 0;
            }
            extractorInput.g();
            if (this.f16324j == null) {
                this.f16324j = new Mp4Extractor(SubtitleParser.Factory.f16683a, 8);
            }
            StartOffsetExtractorInput startOffsetExtractorInput = new StartOffsetExtractorInput(extractorInput, this.f16321f);
            this.f16323i = startOffsetExtractorInput;
            if (!this.f16324j.d(startOffsetExtractorInput)) {
                g();
                return 0;
            }
            Mp4Extractor mp4Extractor2 = this.f16324j;
            long j5 = this.f16321f;
            ExtractorOutput extractorOutput = this.f16318b;
            extractorOutput.getClass();
            mp4Extractor2.b(new StartOffsetExtractorOutput(j5, extractorOutput));
            MotionPhotoMetadata motionPhotoMetadata2 = this.g;
            motionPhotoMetadata2.getClass();
            ExtractorOutput extractorOutput2 = this.f16318b;
            extractorOutput2.getClass();
            TrackOutput trackOutputR = extractorOutput2.r(1024, 4);
            Format.Builder builder = new Format.Builder();
            builder.m = MimeTypes.p("image/jpeg");
            builder.f13772k = new Metadata(motionPhotoMetadata2);
            d21.w(builder, trackOutputR);
            this.f16319c = 5;
            return 0;
        }
        if (this.d == 65505) {
            ParsableByteArray parsableByteArray2 = new ParsableByteArray(this.f16320e);
            extractorInput.readFully(parsableByteArray2.f14194a, 0, this.f16320e);
            if (this.g == null && "http://ns.adobe.com/xap/1.0/".equals(parsableByteArray2.v()) && (strV = parsableByteArray2.v()) != null) {
                long length = extractorInput.getLength();
                if (length == -1) {
                    motionPhotoMetadata = null;
                } else {
                    try {
                        motionPhotoDescriptionA = XmpMotionPhotoDescriptionParser.a(strV);
                    } catch (ParserException | NumberFormatException | XmlPullParserException unused) {
                        Log.g("Ignoring unexpected XMP metadata");
                        motionPhotoDescriptionA = null;
                    }
                    if (motionPhotoDescriptionA == null) {
                        motionPhotoMetadata = null;
                    } else {
                        List list = motionPhotoDescriptionA.f16326b;
                        if (list.size() < 2) {
                            motionPhotoMetadata = null;
                        } else {
                            int size = list.size() - 1;
                            long j6 = -1;
                            long j7 = -1;
                            long j8 = -1;
                            long j9 = -1;
                            while (size >= 0) {
                                MotionPhotoDescription.ContainerItem containerItem = (MotionPhotoDescription.ContainerItem) list.get(size);
                                long j10 = j3;
                                boolean z = containerItem.f16327a.equals("video/mp4") || containerItem.f16327a.equals("video/quicktime");
                                if (size == 0) {
                                    length -= containerItem.f16329c;
                                    j2 = 0;
                                } else {
                                    j2 = length - containerItem.f16328b;
                                }
                                long j11 = length;
                                length = j2;
                                if (z && length != j11) {
                                    j9 = j11 - length;
                                    j8 = length;
                                }
                                if (size == 0) {
                                    j7 = j11;
                                    j6 = length;
                                }
                                size--;
                                j3 = j10;
                            }
                            long j12 = j3;
                            if (j8 == j12 || j9 == j12 || j6 == j12 || j7 == j12) {
                                motionPhotoMetadata = null;
                            } else {
                                motionPhotoMetadata = new MotionPhotoMetadata(j6, j7, motionPhotoDescriptionA.f16325a, j8, j9);
                            }
                        }
                    }
                }
                this.g = motionPhotoMetadata;
                if (motionPhotoMetadata != null) {
                    this.f16321f = motionPhotoMetadata.d;
                }
            }
        } else {
            extractorInput.m(this.f16320e);
        }
        this.f16319c = 0;
        return 0;
    }

    public final void g() {
        ExtractorOutput extractorOutput = this.f16318b;
        extractorOutput.getClass();
        extractorOutput.n();
        this.f16318b.j(new SeekMap.Unseekable(-9223372036854775807L));
        this.f16319c = 6;
    }

    @Override // androidx.media3.extractor.Extractor
    public final void release() {
        Mp4Extractor mp4Extractor = this.f16324j;
        if (mp4Extractor != null) {
            mp4Extractor.getClass();
        }
    }
}
