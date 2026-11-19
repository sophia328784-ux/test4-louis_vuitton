package androidx.media3.extractor;

import androidx.media3.common.util.Log;
import androidx.media3.common.util.ParsableByteArray;
import com.google.common.base.Preconditions;

/* JADX INFO: loaded from: classes.dex */
public abstract class CeaUtil {
    public static void a(long j2, ParsableByteArray parsableByteArray, TrackOutput[] trackOutputArr) {
        int i2;
        int iA;
        while (true) {
            if (parsableByteArray.a() <= 1) {
                return;
            }
            int i3 = 0;
            while (true) {
                if (parsableByteArray.a() == 0) {
                    i2 = -1;
                    break;
                }
                int iA2 = parsableByteArray.A();
                i3 += iA2;
                if (iA2 != 255) {
                    i2 = i3;
                    break;
                }
            }
            int i4 = 0;
            do {
                if (parsableByteArray.a() == 0) {
                    i4 = -1;
                    break;
                } else {
                    iA = parsableByteArray.A();
                    i4 += iA;
                }
            } while (iA == 255);
            int i5 = parsableByteArray.f14195b + i4;
            if (i4 == -1 || i4 > parsableByteArray.a()) {
                Log.g("Skipping remainder of malformed SEI NAL unit.");
                i5 = parsableByteArray.f14196c;
            } else if (i2 == 4 && i4 >= 8) {
                int iA3 = parsableByteArray.A();
                int iH = parsableByteArray.H();
                int iM = iH == 49 ? parsableByteArray.m() : 0;
                int iA4 = parsableByteArray.A();
                if (iH == 47) {
                    parsableByteArray.O(1);
                }
                boolean z = iA3 == 181 && (iH == 49 || iH == 47) && iA4 == 3;
                if (iH == 49) {
                    z &= iM == 1195456820;
                }
                if (z) {
                    b(j2, parsableByteArray, trackOutputArr);
                }
            }
            parsableByteArray.N(i5);
        }
    }

    public static void b(long j2, ParsableByteArray parsableByteArray, TrackOutput[] trackOutputArr) {
        int iA = parsableByteArray.A();
        if ((iA & 64) != 0) {
            parsableByteArray.O(1);
            int i2 = (iA & 31) * 3;
            int i3 = parsableByteArray.f14195b;
            for (TrackOutput trackOutput : trackOutputArr) {
                parsableByteArray.N(i3);
                trackOutput.f(i2, parsableByteArray);
                Preconditions.q(j2 != -9223372036854775807L);
                trackOutput.g(j2, 1, i2, 0, null);
            }
        }
    }
}
