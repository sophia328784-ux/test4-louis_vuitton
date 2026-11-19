package androidx.media3.extractor;

import androidx.media3.common.Metadata;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.extractor.metadata.id3.Id3Decoder;
import defpackage.d20;
import java.io.EOFException;

/* JADX INFO: loaded from: classes.dex */
public final class Id3Peeker {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ParsableByteArray f16176a = new ParsableByteArray(10);

    public final Metadata a(ExtractorInput extractorInput, Id3Decoder.FramePredicate framePredicate, int i2) {
        ParsableByteArray parsableByteArray;
        int i3;
        int i4 = 0;
        Metadata metadataC = null;
        while (true) {
            int i5 = 0;
            while (true) {
                int i6 = i5 % 10;
                int i7 = i6 + 10;
                parsableByteArray = this.f16176a;
                if (i6 == 0 && i5 != 0) {
                    byte[] bArr = parsableByteArray.f14194a;
                    System.arraycopy(bArr, 10, bArr, 0, 9);
                }
                int i8 = i5 == 0 ? 10 : 1;
                try {
                    extractorInput.b(i7 - i8, i8, parsableByteArray.f14194a);
                    parsableByteArray.N(i6);
                    parsableByteArray.M(i7);
                    if (parsableByteArray.a() < 3) {
                        d20.b(parsableByteArray.f14195b, parsableByteArray.f14196c);
                        return null;
                    }
                    int iD = parsableByteArray.D();
                    i3 = parsableByteArray.f14195b - 3;
                    parsableByteArray.f14195b = i3;
                    if (iD == 4801587) {
                        break;
                    }
                    if (MpegAudioUtil.a(parsableByteArray.i()) == -1) {
                        if (i5 == 0) {
                            parsableByteArray.c(20);
                        }
                        i5++;
                        if (i5 > i2) {
                        }
                    }
                    extractorInput.g();
                    extractorInput.k(i4);
                    return metadataC;
                } catch (EOFException unused) {
                }
            }
            parsableByteArray.O(6);
            int iZ = parsableByteArray.z();
            int i9 = iZ + 10;
            if (metadataC == null) {
                byte[] bArr2 = new byte[i9];
                System.arraycopy(parsableByteArray.f14194a, i3, bArr2, 0, 10);
                extractorInput.b(10, iZ, bArr2);
                metadataC = new Id3Decoder(framePredicate).c(i9, bArr2);
            } else {
                extractorInput.k(iZ);
            }
            i4 += i9;
        }
    }
}
