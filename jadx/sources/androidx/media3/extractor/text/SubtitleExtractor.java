package androidx.media3.extractor.text;

import androidx.media3.common.Format;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.ParserException;
import androidx.media3.common.util.Consumer;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.Util;
import androidx.media3.extractor.Extractor;
import androidx.media3.extractor.ExtractorInput;
import androidx.media3.extractor.ExtractorOutput;
import androidx.media3.extractor.IndexSeekMap;
import androidx.media3.extractor.PositionHolder;
import androidx.media3.extractor.TrackOutput;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableList;
import com.google.common.primitives.Ints;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;

/* JADX INFO: loaded from: classes.dex */
public class SubtitleExtractor implements Extractor {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final SubtitleParser f16669a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Format f16671c;
    public final ArrayList d;
    public TrackOutput g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f16674h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f16675i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public long[] f16676j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public long f16677k;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final CueEncoder f16670b = new CueEncoder();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public byte[] f16673f = Util.f14243b;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ParsableByteArray f16672e = new ParsableByteArray();

    public static class Sample implements Comparable<Sample> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final long f16678b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final byte[] f16679c;

        public Sample(long j2, byte[] bArr) {
            this.f16678b = j2;
            this.f16679c = bArr;
        }

        @Override // java.lang.Comparable
        public final int compareTo(Sample sample) {
            return Long.compare(this.f16678b, sample.f16678b);
        }
    }

    public SubtitleExtractor(SubtitleParser subtitleParser, Format format) {
        Format format2;
        this.f16669a = subtitleParser;
        if (format != null) {
            Format.Builder builderA = format.a();
            builderA.n = MimeTypes.p("application/x-media3-cues");
            builderA.f13771j = format.o;
            builderA.L = subtitleParser.c();
            format2 = new Format(builderA);
        } else {
            format2 = null;
        }
        this.f16671c = format2;
        this.d = new ArrayList();
        this.f16675i = 0;
        this.f16676j = Util.f14244c;
        this.f16677k = -9223372036854775807L;
    }

    @Override // androidx.media3.extractor.Extractor
    public final void a(long j2, long j3) {
        int i2 = this.f16675i;
        Preconditions.q((i2 == 0 || i2 == 5) ? false : true);
        this.f16677k = j3;
        if (this.f16675i == 2) {
            this.f16675i = 1;
        }
        if (this.f16675i == 4) {
            this.f16675i = 3;
        }
    }

    @Override // androidx.media3.extractor.Extractor
    public final void b(ExtractorOutput extractorOutput) {
        Preconditions.q(this.f16675i == 0);
        TrackOutput trackOutputR = extractorOutput.r(0, 3);
        this.g = trackOutputR;
        Format format = this.f16671c;
        if (format != null) {
            trackOutputR.b(format);
            extractorOutput.n();
            extractorOutput.j(new IndexSeekMap(new long[]{0}, new long[]{0}, -9223372036854775807L));
        }
        this.f16675i = 1;
    }

    @Override // androidx.media3.extractor.Extractor
    public final boolean d(ExtractorInput extractorInput) {
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:35:0x0084 A[Catch: RuntimeException -> 0x00cc, TryCatch #0 {RuntimeException -> 0x00cc, blocks: (B:33:0x007e, B:35:0x0084, B:38:0x008f, B:39:0x00b0, B:41:0x00b6, B:42:0x00c5, B:37:0x008c), top: B:67:0x007e }] */
    /* JADX WARN: Code duplicated, block: B:37:0x008c A[Catch: RuntimeException -> 0x00cc, TryCatch #0 {RuntimeException -> 0x00cc, blocks: (B:33:0x007e, B:35:0x0084, B:38:0x008f, B:39:0x00b0, B:41:0x00b6, B:42:0x00c5, B:37:0x008c), top: B:67:0x007e }] */
    /* JADX WARN: Code duplicated, block: B:41:0x00b6 A[Catch: RuntimeException -> 0x00cc, LOOP:1: B:39:0x00b0->B:41:0x00b6, LOOP_END, TryCatch #0 {RuntimeException -> 0x00cc, blocks: (B:33:0x007e, B:35:0x0084, B:38:0x008f, B:39:0x00b0, B:41:0x00b6, B:42:0x00c5, B:37:0x008c), top: B:67:0x007e }] */
    /* JADX WARN: Code duplicated, block: B:67:0x007e A[EXC_TOP_SPLITTER, PHI: r22
      0x007e: PHI (r22v4 int) = (r22v5 int), (r22v6 int) binds: [B:32:0x007c, B:29:0x0077] A[DONT_GENERATE, DONT_INLINE], SYNTHETIC] */
    @Override // androidx.media3.extractor.Extractor
    public final int f(ExtractorInput extractorInput, PositionHolder positionHolder) throws ParserException {
        int i2;
        long j2;
        SubtitleParser.OutputOptions outputOptions;
        int i3;
        int i4 = this.f16675i;
        Preconditions.q((i4 == 0 || i4 == 5) ? false : true);
        if (this.f16675i == 1) {
            int iB = extractorInput.getLength() != -1 ? Ints.b(extractorInput.getLength()) : 1024;
            if (iB > this.f16673f.length) {
                this.f16673f = new byte[iB];
            }
            this.f16674h = 0;
            this.f16675i = 2;
        }
        int i5 = this.f16675i;
        ArrayList arrayList = this.d;
        if (i5 == 2) {
            byte[] bArr = this.f16673f;
            if (bArr.length == this.f16674h) {
                this.f16673f = Arrays.copyOf(bArr, bArr.length + 1024);
            }
            byte[] bArr2 = this.f16673f;
            int i6 = this.f16674h;
            int i7 = extractorInput.read(bArr2, i6, bArr2.length - i6);
            if (i7 != -1) {
                this.f16674h += i7;
            }
            long length = extractorInput.getLength();
            if (length != -1) {
                i2 = 0;
                if (this.f16674h == length) {
                    try {
                        j2 = this.f16677k;
                        if (j2 != -9223372036854775807L) {
                            outputOptions = new SubtitleParser.OutputOptions(j2, true);
                        } else {
                            outputOptions = SubtitleParser.OutputOptions.f16684c;
                        }
                        this.f16669a.a(this.f16673f, 0, this.f16674h, outputOptions, new Consumer() { // from class: androidx.media3.extractor.text.b
                            @Override // androidx.media3.common.util.Consumer
                            public final void accept(Object obj) {
                                CuesWithTiming cuesWithTiming = (CuesWithTiming) obj;
                                long j3 = cuesWithTiming.f16665b;
                                SubtitleExtractor subtitleExtractor = this.f16698b;
                                CueEncoder cueEncoder = subtitleExtractor.f16670b;
                                ImmutableList immutableList = cuesWithTiming.f16664a;
                                long j4 = cuesWithTiming.f16666c;
                                cueEncoder.getClass();
                                SubtitleExtractor.Sample sample = new SubtitleExtractor.Sample(j3, CueEncoder.a(immutableList, j4));
                                subtitleExtractor.d.add(sample);
                                long j5 = subtitleExtractor.f16677k;
                                if (j5 == -9223372036854775807L || cuesWithTiming.d >= j5) {
                                    subtitleExtractor.g(sample);
                                }
                            }
                        });
                        Collections.sort(arrayList);
                        this.f16676j = new long[arrayList.size()];
                        for (i3 = i2; i3 < arrayList.size(); i3++) {
                            this.f16676j[i3] = ((Sample) arrayList.get(i3)).f16678b;
                        }
                        this.f16673f = Util.f14243b;
                        this.f16675i = 4;
                    } catch (RuntimeException e2) {
                        throw ParserException.a(e2, "SubtitleParser failed.");
                    }
                }
            } else {
                i2 = 0;
            }
            if (i7 == -1) {
                j2 = this.f16677k;
                if (j2 != -9223372036854775807L) {
                    outputOptions = new SubtitleParser.OutputOptions(j2, true);
                } else {
                    outputOptions = SubtitleParser.OutputOptions.f16684c;
                }
                this.f16669a.a(this.f16673f, 0, this.f16674h, outputOptions, new Consumer() { // from class: androidx.media3.extractor.text.b
                    @Override // androidx.media3.common.util.Consumer
                    public final void accept(Object obj) {
                        CuesWithTiming cuesWithTiming = (CuesWithTiming) obj;
                        long j3 = cuesWithTiming.f16665b;
                        SubtitleExtractor subtitleExtractor = this.f16698b;
                        CueEncoder cueEncoder = subtitleExtractor.f16670b;
                        ImmutableList immutableList = cuesWithTiming.f16664a;
                        long j4 = cuesWithTiming.f16666c;
                        cueEncoder.getClass();
                        SubtitleExtractor.Sample sample = new SubtitleExtractor.Sample(j3, CueEncoder.a(immutableList, j4));
                        subtitleExtractor.d.add(sample);
                        long j5 = subtitleExtractor.f16677k;
                        if (j5 == -9223372036854775807L || cuesWithTiming.d >= j5) {
                            subtitleExtractor.g(sample);
                        }
                    }
                });
                Collections.sort(arrayList);
                this.f16676j = new long[arrayList.size()];
                while (i3 < arrayList.size()) {
                    this.f16676j[i3] = ((Sample) arrayList.get(i3)).f16678b;
                }
                this.f16673f = Util.f14243b;
                this.f16675i = 4;
            }
        } else {
            i2 = 0;
        }
        if (this.f16675i == 3) {
            if (extractorInput.l(extractorInput.getLength() != -1 ? Ints.b(extractorInput.getLength()) : 1024) == -1) {
                long j3 = this.f16677k;
                for (int iF = j3 == -9223372036854775807L ? i2 : Util.f(this.f16676j, j3, true); iF < arrayList.size(); iF++) {
                    g((Sample) arrayList.get(iF));
                }
                this.f16675i = 4;
            }
        }
        if (this.f16675i == 4) {
            return -1;
        }
        return i2;
    }

    public final void g(Sample sample) {
        this.g.getClass();
        byte[] bArr = sample.f16679c;
        int length = bArr.length;
        ParsableByteArray parsableByteArray = this.f16672e;
        parsableByteArray.getClass();
        parsableByteArray.L(bArr.length, bArr);
        this.g.f(length, parsableByteArray);
        this.g.g(sample.f16678b, 1, length, 0, null);
    }

    @Override // androidx.media3.extractor.Extractor
    public final void release() {
        if (this.f16675i == 5) {
            return;
        }
        this.f16669a.reset();
        this.f16675i = 5;
    }
}
