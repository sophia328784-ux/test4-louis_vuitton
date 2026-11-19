package androidx.camera.core.imagecapture;

import android.graphics.Bitmap;
import androidx.camera.core.processing.Operation;
import androidx.camera.core.processing.Packet;

/* JADX INFO: loaded from: classes.dex */
public class Bitmap2JpegBytes implements Operation<In, Packet<byte[]>> {

    public static class Api34Impl {
        public static boolean a(Bitmap bitmap) {
            return bitmap.hasGainmap();
        }
    }

    public static abstract class In {
        public abstract int a();

        public abstract Packet b();
    }
}
