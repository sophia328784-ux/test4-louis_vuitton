package androidx.media3.common.util;

import android.media.MediaFormat;
import defpackage.pq0;
import java.nio.ByteBuffer;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public abstract class MediaFormatUtil {
    public static void a(MediaFormat mediaFormat, String str, int i2) {
        if (i2 != -1) {
            mediaFormat.setInteger(str, i2);
        }
    }

    public static void b(MediaFormat mediaFormat, List list) {
        for (int i2 = 0; i2 < list.size(); i2++) {
            mediaFormat.setByteBuffer(pq0.k(i2, "csd-"), ByteBuffer.wrap((byte[]) list.get(i2)));
        }
    }
}
