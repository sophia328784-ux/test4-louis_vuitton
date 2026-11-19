package androidx.media3.extractor.ogg;

import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.extractor.ExtractorInput;
import com.google.common.base.Preconditions;
import java.io.EOFException;

/* JADX INFO: loaded from: classes.dex */
final class OggPacket {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final OggPageHeader f16639a = new OggPageHeader();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ParsableByteArray f16640b = new ParsableByteArray(new byte[65025], 0);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f16641c = -1;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f16642e;

    public final int a(int i2) {
        int i3;
        int i4 = 0;
        this.d = 0;
        do {
            int i5 = this.d;
            int i6 = i2 + i5;
            OggPageHeader oggPageHeader = this.f16639a;
            if (i6 >= oggPageHeader.f16645c) {
                break;
            }
            int[] iArr = oggPageHeader.f16647f;
            this.d = i5 + 1;
            i3 = iArr[i6];
            i4 += i3;
        } while (i3 == 255);
        return i4;
    }

    public final boolean b(ExtractorInput extractorInput) {
        int i2;
        Preconditions.q(extractorInput != null);
        boolean z = this.f16642e;
        ParsableByteArray parsableByteArray = this.f16640b;
        if (z) {
            this.f16642e = false;
            parsableByteArray.K(0);
        }
        while (!this.f16642e) {
            int i3 = this.f16641c;
            OggPageHeader oggPageHeader = this.f16639a;
            if (i3 < 0) {
                if (oggPageHeader.b(extractorInput, -1L) && oggPageHeader.a(extractorInput, true)) {
                    int iA = oggPageHeader.d;
                    if ((oggPageHeader.f16643a & 1) == 1 && parsableByteArray.f14196c == 0) {
                        iA += a(0);
                        i2 = this.d;
                    } else {
                        i2 = 0;
                    }
                    try {
                        extractorInput.m(iA);
                        this.f16641c = i2;
                    } catch (EOFException unused) {
                    }
                }
                return false;
            }
            int iA2 = a(this.f16641c);
            int i4 = this.f16641c + this.d;
            if (iA2 > 0) {
                parsableByteArray.c(parsableByteArray.f14196c + iA2);
                try {
                    extractorInput.readFully(parsableByteArray.f14194a, parsableByteArray.f14196c, iA2);
                    parsableByteArray.M(parsableByteArray.f14196c + iA2);
                    this.f16642e = oggPageHeader.f16647f[i4 + (-1)] != 255;
                } catch (EOFException unused2) {
                    return false;
                }
            }
            if (i4 == oggPageHeader.f16645c) {
                i4 = -1;
            }
            this.f16641c = i4;
        }
        return true;
    }
}
