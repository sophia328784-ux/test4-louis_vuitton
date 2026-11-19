package androidx.media3.extractor.mkv;

import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.extractor.DefaultExtractorInput;

/* JADX INFO: loaded from: classes.dex */
final class Sniffer {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ParsableByteArray f16453a = new ParsableByteArray(8);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f16454b;

    public final long a(DefaultExtractorInput defaultExtractorInput) {
        ParsableByteArray parsableByteArray = this.f16453a;
        int i2 = 0;
        defaultExtractorInput.i(false, 0, 1, parsableByteArray.f14194a);
        int i3 = parsableByteArray.f14194a[0] & 255;
        if (i3 == 0) {
            return Long.MIN_VALUE;
        }
        int i4 = 128;
        int i5 = 0;
        while ((i3 & i4) == 0) {
            i4 >>= 1;
            i5++;
        }
        int i6 = i3 & (~i4);
        defaultExtractorInput.i(false, 1, i5, parsableByteArray.f14194a);
        while (i2 < i5) {
            i2++;
            i6 = (parsableByteArray.f14194a[i2] & 255) + (i6 << 8);
        }
        this.f16454b = i5 + 1 + this.f16454b;
        return i6;
    }
}
