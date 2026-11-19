package androidx.media3.extractor.ts;

import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.extractor.DefaultExtractorInput;
import androidx.media3.extractor.Extractor;
import androidx.media3.extractor.ExtractorInput;
import androidx.media3.extractor.ExtractorOutput;
import androidx.media3.extractor.PositionHolder;
import androidx.media3.extractor.SeekMap;
import java.io.EOFException;
import java.io.InterruptedIOException;

/* JADX INFO: loaded from: classes.dex */
public final class Ac4Extractor implements Extractor {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Ac4Reader f16946a = new Ac4Reader("audio/ac4");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ParsableByteArray f16947b = new ParsableByteArray(16384);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f16948c;

    @Override // androidx.media3.extractor.Extractor
    public final void a(long j2, long j3) {
        this.f16948c = false;
        this.f16946a.c();
    }

    @Override // androidx.media3.extractor.Extractor
    public final void b(ExtractorOutput extractorOutput) {
        this.f16946a.e(extractorOutput, new TsPayloadReader.TrackIdGenerator(0, 1));
        extractorOutput.n();
        extractorOutput.j(new SeekMap.Unseekable(-9223372036854775807L));
    }

    @Override // androidx.media3.extractor.Extractor
    public final boolean d(ExtractorInput extractorInput) throws EOFException, InterruptedIOException {
        DefaultExtractorInput defaultExtractorInput;
        int i2;
        ParsableByteArray parsableByteArray = new ParsableByteArray(10);
        int i3 = 0;
        while (true) {
            defaultExtractorInput = (DefaultExtractorInput) extractorInput;
            defaultExtractorInput.i(false, 0, 10, parsableByteArray.f14194a);
            parsableByteArray.N(0);
            if (parsableByteArray.D() != 4801587) {
                break;
            }
            parsableByteArray.O(3);
            int iZ = parsableByteArray.z();
            i3 += iZ + 10;
            defaultExtractorInput.n(iZ, false);
        }
        defaultExtractorInput.f16125f = 0;
        defaultExtractorInput.n(i3, false);
        int i4 = 0;
        int i5 = i3;
        while (true) {
            int i6 = 7;
            defaultExtractorInput.i(false, 0, 7, parsableByteArray.f14194a);
            parsableByteArray.N(0);
            int iH = parsableByteArray.H();
            if (iH == 44096 || iH == 44097) {
                i4++;
                if (i4 >= 4) {
                    return true;
                }
                byte[] bArr = parsableByteArray.f14194a;
                if (bArr.length < 7) {
                    i2 = -1;
                } else {
                    int i7 = ((bArr[2] & 255) << 8) | (bArr[3] & 255);
                    if (i7 == 65535) {
                        i7 = ((bArr[4] & 255) << 16) | ((bArr[5] & 255) << 8) | (bArr[6] & 255);
                    } else {
                        i6 = 4;
                    }
                    if (iH == 44097) {
                        i6 += 2;
                    }
                    i2 = i7 + i6;
                }
                if (i2 == -1) {
                    break;
                }
                defaultExtractorInput.n(i2 - 7, false);
            } else {
                defaultExtractorInput.f16125f = 0;
                i5++;
                if (i5 - i3 >= 8192) {
                    break;
                }
                defaultExtractorInput.n(i5, false);
                i4 = 0;
            }
        }
        return false;
    }

    @Override // androidx.media3.extractor.Extractor
    public final int f(ExtractorInput extractorInput, PositionHolder positionHolder) {
        ParsableByteArray parsableByteArray = this.f16947b;
        int i2 = extractorInput.read(parsableByteArray.f14194a, 0, 16384);
        if (i2 == -1) {
            return -1;
        }
        parsableByteArray.N(0);
        parsableByteArray.M(i2);
        boolean z = this.f16948c;
        Ac4Reader ac4Reader = this.f16946a;
        if (!z) {
            ac4Reader.n = 0L;
            this.f16948c = true;
        }
        ac4Reader.a(parsableByteArray);
        return 0;
    }

    @Override // androidx.media3.extractor.Extractor
    public final void release() {
    }
}
