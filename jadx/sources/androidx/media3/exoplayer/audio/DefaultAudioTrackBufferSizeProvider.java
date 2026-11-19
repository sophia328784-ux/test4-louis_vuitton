package androidx.media3.exoplayer.audio;

import androidx.media3.common.util.Util;
import androidx.media3.extractor.ExtractorUtil;
import com.google.common.base.Preconditions;
import com.google.common.math.IntMath;
import com.google.common.primitives.Ints;
import defpackage.ct0;
import java.math.RoundingMode;

/* JADX INFO: loaded from: classes.dex */
public class DefaultAudioTrackBufferSizeProvider implements DefaultAudioSink.AudioTrackBufferSizeProvider {

    public static class Builder {
    }

    @Override // androidx.media3.exoplayer.audio.DefaultAudioSink.AudioTrackBufferSizeProvider
    public final int a(int i2, int i3, int i4, int i5, int i6, int i7, double d) {
        int iJ;
        int i8;
        int iB;
        if (i4 != 0) {
            if (i4 == 1) {
                int iB2 = ExtractorUtil.b(i3);
                Preconditions.q(iB2 != -2147483647);
                iJ = Ints.b((50000000 * ((long) iB2)) / 1000000);
            } else {
                if (i4 != 2) {
                    ct0.c();
                    return 0;
                }
                if (i3 == 5) {
                    i8 = 500000;
                } else {
                    i8 = i3 == 8 ? 1000000 : 250000;
                }
                if (i7 != -1) {
                    RoundingMode roundingMode = RoundingMode.CEILING;
                    iB = IntMath.a(i7, 8);
                } else {
                    iB = ExtractorUtil.b(i3);
                    Preconditions.q(iB != -2147483647);
                }
                iJ = Ints.b((((long) i8) * ((long) iB)) / 1000000);
            }
        } else {
            long j2 = i6;
            long j3 = i5;
            iJ = Util.j(i2 * 4, Ints.b(((250000 * j2) * j3) / 1000000), Ints.b(((750000 * j2) * j3) / 1000000));
        }
        return (((Math.max(i2, (int) (((double) iJ) * d)) + i5) - 1) / i5) * i5;
    }
}
