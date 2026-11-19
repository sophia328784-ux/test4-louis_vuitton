package androidx.media3.extractor;

import androidx.media3.common.util.ParsableByteArray;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public abstract class FlacMetadataReader {

    public static final class FlacStreamMetadataHolder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public FlacStreamMetadata f16147a;

        public FlacStreamMetadataHolder(FlacStreamMetadata flacStreamMetadata) {
            this.f16147a = flacStreamMetadata;
        }
    }

    public static FlacStreamMetadata.SeekTable a(ParsableByteArray parsableByteArray) {
        parsableByteArray.O(1);
        int iD = parsableByteArray.D();
        long j2 = ((long) parsableByteArray.f14195b) + ((long) iD);
        int i2 = iD / 18;
        long[] jArrCopyOf = new long[i2];
        long[] jArrCopyOf2 = new long[i2];
        for (int i3 = 0; i3 < i2; i3++) {
            long jU = parsableByteArray.u();
            if (jU == -1) {
                jArrCopyOf = Arrays.copyOf(jArrCopyOf, i3);
                jArrCopyOf2 = Arrays.copyOf(jArrCopyOf2, i3);
                break;
            }
            jArrCopyOf[i3] = jU;
            jArrCopyOf2[i3] = parsableByteArray.u();
            parsableByteArray.O(2);
        }
        parsableByteArray.O((int) (j2 - ((long) parsableByteArray.f14195b)));
        return new FlacStreamMetadata.SeekTable(jArrCopyOf, jArrCopyOf2);
    }
}
