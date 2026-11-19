package androidx.camera.video.internal;

import java.nio.ByteBuffer;
import java.util.Locale;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public abstract class DebugUtils {
    public static String a(ByteBuffer byteBuffer) {
        if (byteBuffer == null) {
            return "null";
        }
        int iPosition = byteBuffer.position();
        try {
            int iRemaining = byteBuffer.remaining();
            byte[] bArr = new byte[iRemaining];
            byteBuffer.get(bArr);
            StringBuilder sb = new StringBuilder();
            for (int i2 = 0; i2 < iRemaining; i2++) {
                sb.append(String.format("%02X ", Byte.valueOf(bArr[i2])));
            }
            return sb.toString().trim();
        } finally {
            byteBuffer.position(iPosition);
        }
    }

    public static String b(long j2) {
        long j3 = j2 / 1000;
        long j4 = j3 / 3600000;
        TimeUnit timeUnit = TimeUnit.HOURS;
        long millis = (j3 - timeUnit.toMillis(j4)) / 60000;
        long millis2 = j3 - timeUnit.toMillis(j4);
        TimeUnit timeUnit2 = TimeUnit.MINUTES;
        long millis3 = (millis2 - timeUnit2.toMillis(millis)) / 1000;
        return String.format(Locale.US, "%02d:%02d:%02d.%03d", Long.valueOf(j4), Long.valueOf(millis), Long.valueOf(millis3), Long.valueOf(((j3 - timeUnit.toMillis(j4)) - timeUnit2.toMillis(millis)) - TimeUnit.SECONDS.toMillis(millis3)));
    }
}
