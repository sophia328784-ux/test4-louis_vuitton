package androidx.camera.video.internal.utils;

import com.networkbench.agent.impl.NBSSpanMetricUnit;
import defpackage.md;
import java.text.DecimalFormat;
import kotlin.Metadata;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/camera/video/internal/utils/StorageUtil;", "", "camera-video_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public abstract class StorageUtil {
    public static final void a(long j2) {
        if (j2 < 0) {
            md.n("Bytes cannot be negative");
            return;
        }
        String[] strArr = {NBSSpanMetricUnit.Byte, NBSSpanMetricUnit.Kilobytes, NBSSpanMetricUnit.Megabytes, "GB", "TB"};
        DecimalFormat decimalFormat = new DecimalFormat("#.##");
        double d = j2;
        int i2 = 0;
        double d2 = d;
        while (d2 >= 1024.0d && i2 < 4) {
            d2 /= 1024.0d;
            i2++;
        }
        if (i2 == 0) {
            decimalFormat.format(d2);
            String str = strArr[i2];
            return;
        }
        StringBuilder sb = new StringBuilder();
        while (-1 < i2) {
            double dPow = Math.pow(1024.0d, i2);
            double dFloor = Math.floor(d / dPow);
            if (dFloor > 0.0d) {
                sb.append(decimalFormat.format(dFloor));
                sb.append(" ");
                sb.append(strArr[i2]);
                sb.append(" ");
                d -= dFloor * dPow;
            }
            i2--;
        }
        StringsKt.a0(sb).toString();
    }
}
