package androidx.media3.extractor.ogg;

import androidx.media3.common.ParserException;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.extractor.ExtractorInput;
import com.google.common.base.Preconditions;
import java.io.EOFException;

/* JADX INFO: loaded from: classes.dex */
final class OggPageHeader {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f16643a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public long f16644b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f16645c;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f16646e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int[] f16647f = new int[255];
    public final ParsableByteArray g = new ParsableByteArray(255);

    public final boolean a(ExtractorInput extractorInput, boolean z) throws ParserException, EOFException {
        boolean zI;
        boolean zI2;
        this.f16643a = 0;
        this.f16644b = 0L;
        this.f16645c = 0;
        this.d = 0;
        this.f16646e = 0;
        ParsableByteArray parsableByteArray = this.g;
        parsableByteArray.K(27);
        try {
            zI = extractorInput.i(z, 0, 27, parsableByteArray.f14194a);
        } catch (EOFException e2) {
            if (!z) {
                throw e2;
            }
            zI = false;
        }
        if (zI && parsableByteArray.C() == 1332176723) {
            if (parsableByteArray.A() == 0) {
                this.f16643a = parsableByteArray.A();
                this.f16644b = parsableByteArray.p();
                parsableByteArray.r();
                parsableByteArray.r();
                parsableByteArray.r();
                int iA = parsableByteArray.A();
                this.f16645c = iA;
                this.d = iA + 27;
                parsableByteArray.K(iA);
                try {
                    zI2 = extractorInput.i(z, 0, this.f16645c, parsableByteArray.f14194a);
                } catch (EOFException e3) {
                    if (!z) {
                        throw e3;
                    }
                    zI2 = false;
                }
                if (zI2) {
                    for (int i2 = 0; i2 < this.f16645c; i2++) {
                        int iA2 = parsableByteArray.A();
                        this.f16647f[i2] = iA2;
                        this.f16646e += iA2;
                    }
                    return true;
                }
            } else if (!z) {
                throw ParserException.c("unsupported bit stream revision");
            }
        }
        return false;
    }

    public final boolean b(ExtractorInput extractorInput, long j2) {
        boolean zI;
        Preconditions.g(extractorInput.getPosition() == extractorInput.j());
        ParsableByteArray parsableByteArray = this.g;
        parsableByteArray.K(4);
        while (true) {
            if (j2 != -1 && extractorInput.getPosition() + 4 >= j2) {
                break;
            }
            try {
                zI = extractorInput.i(true, 0, 4, parsableByteArray.f14194a);
            } catch (EOFException unused) {
                zI = false;
            }
            if (!zI) {
                break;
            }
            parsableByteArray.N(0);
            if (parsableByteArray.C() == 1332176723) {
                extractorInput.g();
                return true;
            }
            extractorInput.m(1);
        }
        do {
            if (j2 != -1 && extractorInput.getPosition() >= j2) {
                break;
            }
        } while (extractorInput.l(1) != -1);
        return false;
    }
}
