package androidx.media3.extractor;

import androidx.media3.common.DataReader;
import androidx.media3.common.Format;
import androidx.media3.common.util.ParsableByteArray;
import defpackage.md;
import java.io.EOFException;

/* JADX INFO: loaded from: classes.dex */
public final class DiscardingTrackOutput implements TrackOutput {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final byte[] f16135a = new byte[4096];

    @Override // androidx.media3.extractor.TrackOutput
    public final void a(ParsableByteArray parsableByteArray, int i2, int i3) {
        parsableByteArray.O(i2);
    }

    @Override // androidx.media3.extractor.TrackOutput
    public final void b(Format format) {
    }

    @Override // androidx.media3.extractor.TrackOutput
    public final int d(DataReader dataReader, int i2, boolean z) throws EOFException {
        byte[] bArr = this.f16135a;
        int i3 = dataReader.read(bArr, 0, Math.min(bArr.length, i2));
        if (i3 != -1) {
            return i3;
        }
        if (z) {
            return -1;
        }
        md.e();
        return 0;
    }

    @Override // androidx.media3.extractor.TrackOutput
    public final void g(long j2, int i2, int i3, int i4, TrackOutput.CryptoData cryptoData) {
    }
}
