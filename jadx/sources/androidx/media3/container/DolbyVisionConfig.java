package androidx.media3.container;

import androidx.media3.common.util.ParsableByteArray;
import com.sightcall.universal.media.offline.FileUtils;
import defpackage.d21;
import defpackage.n00;

/* JADX INFO: loaded from: classes.dex */
public final class DolbyVisionConfig {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f14272a;

    public DolbyVisionConfig(String str) {
        this.f14272a = str;
    }

    public static DolbyVisionConfig a(ParsableByteArray parsableByteArray) {
        String str;
        parsableByteArray.O(2);
        int iA = parsableByteArray.A();
        int i2 = iA >> 1;
        int iA2 = ((parsableByteArray.A() >> 3) & 31) | ((iA & 1) << 5);
        if (i2 == 4 || i2 == 5 || i2 == 7 || i2 == 8) {
            str = "dvhe";
        } else if (i2 == 9) {
            str = "dvav";
        } else {
            if (i2 != 10) {
                return null;
            }
            str = "dav1";
        }
        StringBuilder sbT = n00.t(str);
        String str2 = FileUtils.HIDDEN_PREFIX;
        sbT.append(i2 < 10 ? ".0" : FileUtils.HIDDEN_PREFIX);
        sbT.append(i2);
        if (iA2 < 10) {
            str2 = ".0";
        }
        return new DolbyVisionConfig(d21.f(iA2, str2, sbT));
    }
}
