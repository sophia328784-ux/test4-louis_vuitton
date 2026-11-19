package androidx.media3.extractor.avif;

import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.extractor.DefaultExtractorInput;
import androidx.media3.extractor.Extractor;
import androidx.media3.extractor.ExtractorInput;
import androidx.media3.extractor.ExtractorOutput;
import androidx.media3.extractor.PositionHolder;
import androidx.media3.extractor.SingleSampleExtractor;
import java.io.EOFException;
import java.io.InterruptedIOException;

/* JADX INFO: loaded from: classes.dex */
public final class AvifExtractor implements Extractor {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ParsableByteArray f16272a = new ParsableByteArray(4);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final SingleSampleExtractor f16273b = new SingleSampleExtractor(-1, -1, "image/avif");

    @Override // androidx.media3.extractor.Extractor
    public final void a(long j2, long j3) {
        this.f16273b.a(j2, j3);
    }

    @Override // androidx.media3.extractor.Extractor
    public final void b(ExtractorOutput extractorOutput) {
        this.f16273b.b(extractorOutput);
    }

    @Override // androidx.media3.extractor.Extractor
    public final boolean d(ExtractorInput extractorInput) throws EOFException, InterruptedIOException {
        DefaultExtractorInput defaultExtractorInput = (DefaultExtractorInput) extractorInput;
        defaultExtractorInput.n(4, false);
        ParsableByteArray parsableByteArray = this.f16272a;
        parsableByteArray.K(4);
        defaultExtractorInput.i(false, 0, 4, parsableByteArray.f14194a);
        if (parsableByteArray.C() == 1718909296) {
            parsableByteArray.K(4);
            defaultExtractorInput.i(false, 0, 4, parsableByteArray.f14194a);
            if (parsableByteArray.C() == 1635150182) {
                return true;
            }
        }
        return false;
    }

    @Override // androidx.media3.extractor.Extractor
    public final int f(ExtractorInput extractorInput, PositionHolder positionHolder) {
        return this.f16273b.f(extractorInput, positionHolder);
    }

    @Override // androidx.media3.extractor.Extractor
    public final void release() {
    }
}
