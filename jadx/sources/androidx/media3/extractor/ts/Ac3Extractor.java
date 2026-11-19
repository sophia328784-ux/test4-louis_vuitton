package androidx.media3.extractor.ts;

import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.extractor.Ac3Util;
import androidx.media3.extractor.DefaultExtractorInput;
import androidx.media3.extractor.Extractor;
import androidx.media3.extractor.ExtractorInput;
import androidx.media3.extractor.ExtractorOutput;
import androidx.media3.extractor.PositionHolder;
import androidx.media3.extractor.SeekMap;
import com.batch.android.x0.h;
import java.io.EOFException;
import java.io.InterruptedIOException;

/* JADX INFO: loaded from: classes.dex */
public final class Ac3Extractor implements Extractor {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Ac3Reader f16934a = new Ac3Reader("audio/ac3");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ParsableByteArray f16935b = new ParsableByteArray(2786);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f16936c;

    @Override // androidx.media3.extractor.Extractor
    public final void a(long j2, long j3) {
        this.f16936c = false;
        this.f16934a.c();
    }

    @Override // androidx.media3.extractor.Extractor
    public final void b(ExtractorOutput extractorOutput) {
        this.f16934a.e(extractorOutput, new TsPayloadReader.TrackIdGenerator(0, 1));
        extractorOutput.n();
        extractorOutput.j(new SeekMap.Unseekable(-9223372036854775807L));
    }

    @Override // androidx.media3.extractor.Extractor
    public final boolean d(ExtractorInput extractorInput) throws EOFException, InterruptedIOException {
        DefaultExtractorInput defaultExtractorInput;
        int iA;
        ParsableByteArray parsableByteArray = new ParsableByteArray(10);
        int i2 = 0;
        while (true) {
            defaultExtractorInput = (DefaultExtractorInput) extractorInput;
            defaultExtractorInput.i(false, 0, 10, parsableByteArray.f14194a);
            parsableByteArray.N(0);
            if (parsableByteArray.D() != 4801587) {
                break;
            }
            parsableByteArray.O(3);
            int iZ = parsableByteArray.z();
            i2 += iZ + 10;
            defaultExtractorInput.n(iZ, false);
        }
        defaultExtractorInput.f16125f = 0;
        defaultExtractorInput.n(i2, false);
        int i3 = 0;
        int i4 = i2;
        while (true) {
            defaultExtractorInput.i(false, 0, 6, parsableByteArray.f14194a);
            parsableByteArray.N(0);
            if (parsableByteArray.H() != 2935) {
                defaultExtractorInput.f16125f = 0;
                i4++;
                if (i4 - i2 >= 8192) {
                    break;
                }
                defaultExtractorInput.n(i4, false);
                i3 = 0;
            } else {
                i3++;
                if (i3 >= 4) {
                    return true;
                }
                byte[] bArr = parsableByteArray.f14194a;
                if (bArr.length < 6) {
                    iA = -1;
                } else if (((bArr[5] & 248) >> 3) > 10) {
                    iA = ((((bArr[2] & 7) << 8) | (bArr[3] & 255)) + 1) * 2;
                } else {
                    byte b2 = bArr[4];
                    iA = Ac3Util.a((b2 & h.a.f24176e) >> 6, b2 & 63);
                }
                if (iA == -1) {
                    break;
                }
                defaultExtractorInput.n(iA - 6, false);
            }
        }
        return false;
    }

    @Override // androidx.media3.extractor.Extractor
    public final int f(ExtractorInput extractorInput, PositionHolder positionHolder) {
        ParsableByteArray parsableByteArray = this.f16935b;
        int i2 = extractorInput.read(parsableByteArray.f14194a, 0, 2786);
        if (i2 == -1) {
            return -1;
        }
        parsableByteArray.N(0);
        parsableByteArray.M(i2);
        boolean z = this.f16936c;
        Ac3Reader ac3Reader = this.f16934a;
        if (!z) {
            ac3Reader.n = 0L;
            this.f16936c = true;
        }
        ac3Reader.a(parsableByteArray);
        return 0;
    }

    @Override // androidx.media3.extractor.Extractor
    public final void release() {
    }
}
