package androidx.media3.extractor.text;

import androidx.media3.common.DataReader;
import androidx.media3.common.Format;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.util.Consumer;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.Util;
import androidx.media3.extractor.TrackOutput;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableList;
import defpackage.d21;
import defpackage.md;
import java.io.EOFException;

/* JADX INFO: loaded from: classes.dex */
final class SubtitleTranscodingTrackOutput implements TrackOutput {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final TrackOutput f16690a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final SubtitleParser.Factory f16691b;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public SubtitleParser f16695h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Format f16696i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f16697j;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final CueEncoder f16692c = new CueEncoder();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f16693e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f16694f = 0;
    public byte[] g = Util.f14243b;
    public final ParsableByteArray d = new ParsableByteArray();

    public SubtitleTranscodingTrackOutput(TrackOutput trackOutput, SubtitleParser.Factory factory) {
        this.f16690a = trackOutput;
        this.f16691b = factory;
    }

    @Override // androidx.media3.extractor.TrackOutput
    public final void a(ParsableByteArray parsableByteArray, int i2, int i3) {
        if (this.f16695h == null) {
            this.f16690a.a(parsableByteArray, i2, i3);
            return;
        }
        h(i2);
        parsableByteArray.k(this.f16694f, i2, this.g);
        this.f16694f += i2;
    }

    @Override // androidx.media3.extractor.TrackOutput
    public final void b(Format format) {
        format.o.getClass();
        String str = format.o;
        Preconditions.g(MimeTypes.i(str) == 3);
        boolean zEquals = format.equals(this.f16696i);
        SubtitleParser.Factory factory = this.f16691b;
        if (!zEquals) {
            this.f16696i = format;
            this.f16695h = factory.b(format) ? factory.c(format) : null;
        }
        SubtitleParser subtitleParser = this.f16695h;
        TrackOutput trackOutput = this.f16690a;
        if (subtitleParser == null) {
            trackOutput.b(format);
            return;
        }
        Format.Builder builderA = format.a();
        builderA.n = MimeTypes.p("application/x-media3-cues");
        builderA.f13771j = str;
        builderA.s = Long.MAX_VALUE;
        builderA.L = factory.a(format);
        d21.w(builderA, trackOutput);
    }

    @Override // androidx.media3.extractor.TrackOutput
    public final int d(DataReader dataReader, int i2, boolean z) throws EOFException {
        if (this.f16695h == null) {
            return this.f16690a.d(dataReader, i2, z);
        }
        h(i2);
        int i3 = dataReader.read(this.g, this.f16694f, i2);
        if (i3 != -1) {
            this.f16694f += i3;
            return i3;
        }
        if (z) {
            return -1;
        }
        md.e();
        return 0;
    }

    @Override // androidx.media3.extractor.TrackOutput
    public final void g(final long j2, final int i2, int i3, int i4, TrackOutput.CryptoData cryptoData) {
        int i5;
        if (this.f16695h == null) {
            this.f16690a.g(j2, i2, i3, i4, cryptoData);
            return;
        }
        Preconditions.h(cryptoData == null, "DRM on subtitles is not supported");
        int i6 = (this.f16694f - i4) - i3;
        try {
            i5 = i6;
            try {
                this.f16695h.a(this.g, i5, i3, SubtitleParser.OutputOptions.f16684c, new Consumer() { // from class: androidx.media3.extractor.text.c
                    @Override // androidx.media3.common.util.Consumer
                    public final void accept(Object obj) {
                        CuesWithTiming cuesWithTiming = (CuesWithTiming) obj;
                        SubtitleTranscodingTrackOutput subtitleTranscodingTrackOutput = this.f16699b;
                        subtitleTranscodingTrackOutput.f16696i.getClass();
                        CueEncoder cueEncoder = subtitleTranscodingTrackOutput.f16692c;
                        ImmutableList immutableList = cuesWithTiming.f16664a;
                        long j3 = cuesWithTiming.f16666c;
                        cueEncoder.getClass();
                        byte[] bArrA = CueEncoder.a(immutableList, j3);
                        ParsableByteArray parsableByteArray = subtitleTranscodingTrackOutput.d;
                        parsableByteArray.getClass();
                        parsableByteArray.L(bArrA.length, bArrA);
                        subtitleTranscodingTrackOutput.f16690a.f(bArrA.length, parsableByteArray);
                        long j4 = cuesWithTiming.f16665b;
                        Format format = subtitleTranscodingTrackOutput.f16696i;
                        long j5 = j2;
                        if (j4 == -9223372036854775807L) {
                            Preconditions.q(format.t == Long.MAX_VALUE);
                        } else {
                            long j6 = format.t;
                            j5 = j6 == Long.MAX_VALUE ? j5 + j4 : j4 + j6;
                        }
                        subtitleTranscodingTrackOutput.f16690a.g(j5, i2 | 1, bArrA.length, 0, null);
                    }
                });
            } catch (RuntimeException e2) {
                e = e2;
                RuntimeException runtimeException = e;
                if (!this.f16697j) {
                    throw runtimeException;
                }
                Log.h("Parsing subtitles failed, ignoring sample.", runtimeException);
            }
        } catch (RuntimeException e3) {
            e = e3;
            i5 = i6;
        }
        int i7 = i5 + i3;
        this.f16693e = i7;
        if (i7 == this.f16694f) {
            this.f16693e = 0;
            this.f16694f = 0;
        }
    }

    public final void h(int i2) {
        int length = this.g.length;
        int i3 = this.f16694f;
        if (length - i3 >= i2) {
            return;
        }
        int i4 = i3 - this.f16693e;
        int iMax = Math.max(i4 * 2, i2 + i4);
        byte[] bArr = this.g;
        byte[] bArr2 = iMax <= bArr.length ? bArr : new byte[iMax];
        System.arraycopy(bArr, this.f16693e, bArr2, 0, i4);
        this.f16693e = 0;
        this.f16694f = i4;
        this.g = bArr2;
    }
}
