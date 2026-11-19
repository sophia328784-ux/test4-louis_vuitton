package androidx.media3.extractor.heif;

import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.extractor.DefaultExtractorInput;
import java.io.EOFException;
import java.io.InterruptedIOException;

/* JADX INFO: loaded from: classes.dex */
abstract class HeifSniffer {
    public static boolean a(DefaultExtractorInput defaultExtractorInput, boolean z) throws EOFException, InterruptedIOException {
        int i2;
        ParsableByteArray parsableByteArray = new ParsableByteArray(16);
        boolean z2 = true;
        while (true) {
            parsableByteArray.K(8);
            if (!defaultExtractorInput.i(true, 0, 8, parsableByteArray.f14194a)) {
                break;
            }
            long jC = parsableByteArray.C();
            int iM = parsableByteArray.m();
            if (jC != 1) {
                i2 = 8;
            } else {
                if (!defaultExtractorInput.i(true, 8, 8, parsableByteArray.f14194a)) {
                    break;
                }
                jC = parsableByteArray.G();
                i2 = 16;
            }
            long j2 = i2;
            if (jC < j2) {
                break;
            }
            int i3 = (int) (jC - j2);
            if (z2) {
                if (iM != 1718909296 || i3 < 8) {
                    break;
                }
                parsableByteArray.K(4);
                defaultExtractorInput.i(false, 0, 4, parsableByteArray.f14194a);
                if (parsableByteArray.m() != 1751476579) {
                    break;
                }
                if (!z) {
                    return true;
                }
                defaultExtractorInput.n(i3 - 4, false);
                z2 = false;
            } else {
                if (iM == 1836086884) {
                    return true;
                }
                if (i3 != 0) {
                    defaultExtractorInput.n(i3, false);
                }
            }
        }
        return false;
    }
}
