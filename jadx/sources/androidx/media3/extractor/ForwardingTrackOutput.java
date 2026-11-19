package androidx.media3.extractor;

import androidx.media3.common.DataReader;
import androidx.media3.common.Format;
import androidx.media3.common.util.ParsableByteArray;

/* JADX INFO: loaded from: classes.dex */
public class ForwardingTrackOutput implements TrackOutput {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final TrackOutput f16163a;

    public ForwardingTrackOutput(TrackOutput trackOutput) {
        this.f16163a = trackOutput;
    }

    @Override // androidx.media3.extractor.TrackOutput
    public void a(ParsableByteArray parsableByteArray, int i2, int i3) {
        this.f16163a.a(parsableByteArray, i2, i3);
    }

    @Override // androidx.media3.extractor.TrackOutput
    public final void b(Format format) {
        this.f16163a.b(format);
    }

    @Override // androidx.media3.extractor.TrackOutput
    public int c(DataReader dataReader, int i2, boolean z) {
        return this.f16163a.c(dataReader, i2, z);
    }

    @Override // androidx.media3.extractor.TrackOutput
    public int d(DataReader dataReader, int i2, boolean z) {
        return this.f16163a.d(dataReader, i2, z);
    }

    @Override // androidx.media3.extractor.TrackOutput
    public final void e(long j2) {
        this.f16163a.e(j2);
    }

    @Override // androidx.media3.extractor.TrackOutput
    public void f(int i2, ParsableByteArray parsableByteArray) {
        this.f16163a.f(i2, parsableByteArray);
    }

    @Override // androidx.media3.extractor.TrackOutput
    public void g(long j2, int i2, int i3, int i4, TrackOutput.CryptoData cryptoData) {
        this.f16163a.g(j2, i2, i3, i4, cryptoData);
    }
}
