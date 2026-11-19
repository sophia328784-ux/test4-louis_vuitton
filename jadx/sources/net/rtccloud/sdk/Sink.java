package net.rtccloud.sdk;

import android.graphics.Bitmap;
import android.os.Looper;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.nio.ByteBuffer;
import net.rtccloud.sdk.internal.Preconditions;
import net.rtccloud.sdk.internal.RtccExceptions;
import net.rtccloud.sdk.util.OldLogger;

/* JADX INFO: loaded from: classes4.dex */
public abstract class Sink {
    public static final int FORMAT_BGR = 3;
    public static final int FORMAT_I420 = 4;
    public static final int FORMAT_RGB = 1;
    public static final int FORMAT_YUV = 2;
    public static final int ORIENTATION_0 = 0;
    public static final int ORIENTATION_180 = 180;
    public static final int ORIENTATION_270 = 270;
    public static final int ORIENTATION_90 = 90;
    public static final int STRIDE_UNKNOWN = 0;
    private static final OldLogger log = OldLogger.get(OldLogger.Internal.SINK);
    final Call call;
    private volatile boolean isTeardown = false;
    private final Rtcc rtcc;

    @Retention(RetentionPolicy.SOURCE)
    public @interface Format {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface Orientation {
    }

    public static class Progressivex extends Sink {
        public Progressivex(Rtcc rtcc, Call call) {
            super(rtcc, call);
        }

        public boolean push(Bitmap bitmap) {
            ensureBackgroundThread();
            if (!ensureCanSendMedia()) {
                return false;
            }
            if (bitmap == null) {
                throw RtccExceptions.newNullPointerException("[bitmap] must not be null");
            }
            if (bitmap.isRecycled()) {
                Sink.log.e("[bitmap] must not be recycled");
                return false;
            }
            ByteBuffer byteBufferAllocate = ByteBuffer.allocate(bitmap.getByteCount());
            bitmap.copyPixelsToBuffer(byteBufferAllocate);
            byteBufferAllocate.rewind();
            return Jni.nDCShareSend(byteBufferAllocate.array(), bitmap.getWidth(), bitmap.getHeight(), bitmap.getWidth() * 4, 3, -1);
        }

        public void stop() {
            Jni.nDCShareSendStop(-1);
        }

        public void stopDecoder() {
            Jni.nDCShareDecoderStop();
        }
    }

    public Sink(Rtcc rtcc, Call call) {
        this.rtcc = rtcc;
        this.call = call;
    }

    private boolean ensureNotTeardown() {
        if (!this.isTeardown) {
            return true;
        }
        log.i("Sink must not be [teardown]");
        return false;
    }

    public static double scalingFactor(int i2, int i3, int i4) {
        if (i2 <= 0 || i3 <= 0) {
            return 1.0d;
        }
        double dMax = Math.max(i2, i3);
        double dMin = Math.min(i2, i3);
        double d = dMax / dMin;
        double dSqrt = Math.sqrt(((double) i4) / d);
        return Math.min(dSqrt / dMin, (d * dSqrt) / dMax);
    }

    public Call call() {
        return this.call;
    }

    public void ensureBackgroundThread() {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            throw RtccExceptions.newIllegalStateException("[Sink] must be use from a background thread");
        }
    }

    public boolean ensureCanSendMedia() {
        if (ensureNotTeardown() && this.rtcc.status() == Rtcc.Status.CONNECTED) {
            return Preconditions.enforceCallStatus(log, this.call, Call.Status.ACTIVE);
        }
        return false;
    }

    public Rtcc rtcc() {
        return this.rtcc;
    }

    public void teardown() {
        this.isTeardown = true;
    }

    public static class Screenshare extends Sink {

        @Deprecated
        public static final int MAX_DIMENSION_HIGH = 1920;

        @Deprecated
        public static final int MAX_DIMENSION_LOW = 1080;
        public static final int MAX_RESOLUTION = 2073600;

        public Screenshare(Rtcc rtcc, Call call) {
            super(rtcc, call);
        }

        public boolean push(Bitmap bitmap) {
            ensureBackgroundThread();
            if (!ensureCanSendMedia()) {
                return false;
            }
            if (bitmap == null) {
                throw RtccExceptions.newNullPointerException("[bitmap] must not be null");
            }
            if (!this.call.screenshare().isSending()) {
                Sink.log.e("[Call] is not ready to send screenshare");
                return false;
            }
            if (bitmap.isRecycled()) {
                Sink.log.e("[bitmap] must not be recycled");
                return false;
            }
            if (Preconditions.enforceShareSize(Sink.log, bitmap.getWidth(), bitmap.getHeight())) {
                return Jni.nSendShareBitmap(bitmap, 0, 0, 3);
            }
            return false;
        }

        public boolean push(Bitmap bitmap, int i2, int i3, int i4) {
            ensureBackgroundThread();
            if (!ensureCanSendMedia()) {
                return false;
            }
            if (bitmap != null) {
                if (!this.call.screenshare().isSending()) {
                    Sink.log.e("[Call] is not ready to send screenshare");
                    return false;
                }
                if (bitmap.isRecycled()) {
                    Sink.log.e("[bitmap] must not be recycled");
                    return false;
                }
                if (Preconditions.enforceShareSize(Sink.log, bitmap.getWidth(), bitmap.getHeight())) {
                    return Jni.nSendShareBitmap(bitmap, i2, i3, i4);
                }
                return false;
            }
            throw RtccExceptions.newNullPointerException("[bitmap] must not be null");
        }

        public boolean push(ByteBuffer byteBuffer, int i2, int i3, int i4, int i5, int i6) {
            ensureBackgroundThread();
            if (!ensureCanSendMedia()) {
                return false;
            }
            if (byteBuffer != null) {
                if (!this.call.screenshare().isSending()) {
                    Sink.log.e("[Call] is not ready to send screenshare");
                    return false;
                }
                if (Preconditions.enforceShareSize(Sink.log, i2, i3)) {
                    return Jni.nSendShareByteBuffer(byteBuffer, i2, i3, i4, i5, i6);
                }
                return false;
            }
            throw RtccExceptions.newNullPointerException("[bitmap] must not be null");
        }

        public boolean push(byte[] bArr, int i2, int i3, int i4, int i5, int i6) {
            ensureBackgroundThread();
            if (!ensureCanSendMedia()) {
                return false;
            }
            if (bArr != null) {
                if (!this.call.screenshare().isSending()) {
                    Sink.log.e("[Call] is not ready to send screenshare");
                    return false;
                }
                if (Preconditions.enforceShareSize(Sink.log, i2, i3)) {
                    return Jni.nSendShareByteArray(bArr, i2, i3, i4, i5, i6);
                }
                return false;
            }
            throw RtccExceptions.newNullPointerException("[bitmap] must not be null");
        }
    }

    public static class Video extends Sink {

        @Deprecated
        public static final int MAX_DIMENSION_HIGH = 1280;

        @Deprecated
        public static final int MAX_DIMENSION_LOW = 720;
        public static final int MAX_RESOLUTION = 921600;

        public Video(Rtcc rtcc, Call call) {
            super(rtcc, call);
        }

        private byte[] compressJpeg(Bitmap bitmap) {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            int size = 32768;
            for (int i2 = 80; i2 > 5 && size >= 32768; i2 -= 10) {
                try {
                    byteArrayOutputStream.flush();
                    byteArrayOutputStream.reset();
                } catch (IOException unused) {
                    Sink.log.e("[thumbnail] error compressing jpeg");
                }
                bitmap.compress(Bitmap.CompressFormat.JPEG, i2, byteArrayOutputStream);
                size = byteArrayOutputStream.size();
            }
            return byteArrayOutputStream.toByteArray();
        }

        public boolean push(Bitmap bitmap) {
            ensureBackgroundThread();
            if (bitmap == null) {
                throw RtccExceptions.newNullPointerException("[bitmap] must not be null");
            }
            if (!ensureCanSendMedia()) {
                return false;
            }
            if (!this.call.video().isSending()) {
                Sink.log.e("[Call] is not ready to send video");
                return false;
            }
            if (bitmap.isRecycled()) {
                Sink.log.e("[bitmap] must not be recycled");
                return false;
            }
            if (Preconditions.enforceVideoSize(Sink.log, bitmap.getWidth(), bitmap.getHeight())) {
                return Jni.nSendVideoBitmap(bitmap, 0, 0, 3);
            }
            return false;
        }

        @Deprecated
        public boolean pushBGR(Bitmap bitmap) {
            return push(bitmap);
        }

        public boolean pushThumbnail(Bitmap bitmap, String str) {
            ensureBackgroundThread();
            if (bitmap == null) {
                throw RtccExceptions.newNullPointerException("[bitmap] must not be null");
            }
            if (!ensureCanSendMedia()) {
                return false;
            }
            if (this.call.video().isSending()) {
                byte[] bArrCompressJpeg = compressJpeg(bitmap);
                return Jni.nDCThumbnailSend(bArrCompressJpeg, bArrCompressJpeg.length, -1, str);
            }
            Sink.log.e("[Call] is not ready to send video");
            return false;
        }

        public boolean push(Bitmap bitmap, int i2, int i3, int i4) {
            ensureBackgroundThread();
            if (bitmap != null) {
                if (!ensureCanSendMedia()) {
                    return false;
                }
                if (!this.call.video().isSending()) {
                    Sink.log.e("[Call] is not ready to send video");
                    return false;
                }
                if (bitmap.isRecycled()) {
                    Sink.log.e("[bitmap] must not be recycled");
                    return false;
                }
                if (Preconditions.enforceVideoSize(Sink.log, bitmap.getWidth(), bitmap.getHeight())) {
                    return Jni.nSendVideoBitmap(bitmap, i2, i3, i4);
                }
                return false;
            }
            throw RtccExceptions.newNullPointerException("[bitmap] must not be null");
        }

        public boolean push(ByteBuffer byteBuffer, int i2, int i3, int i4, int i5, int i6) {
            ensureBackgroundThread();
            if (byteBuffer != null) {
                if (!ensureCanSendMedia()) {
                    return false;
                }
                if (!this.call.video().isSending()) {
                    Sink.log.e("[Call] is not ready to send video");
                    return false;
                }
                if (!Preconditions.enforceVideoSize(Sink.log, i2, i3)) {
                    return false;
                }
                if (i5 >= 0 && i5 <= 360) {
                    return Jni.nSendVideoByteBuffer(byteBuffer, i2, i3, i4, i5, i6);
                }
                Sink.log.e("[orientation] must be in range [0 - 360] but is [%d]", Integer.valueOf(i5));
                return false;
            }
            throw RtccExceptions.newNullPointerException("[data] must not be null");
        }

        public boolean push(byte[] bArr, int i2, int i3, int i4, int i5, int i6) {
            ensureBackgroundThread();
            if (bArr != null) {
                if (!ensureCanSendMedia()) {
                    return false;
                }
                if (!this.call.video().isSending()) {
                    Sink.log.e("[Call] is not ready to send video");
                    return false;
                }
                if (!Preconditions.enforceVideoSize(Sink.log, i2, i3)) {
                    return false;
                }
                if (i5 >= 0 && i5 <= 360) {
                    return Jni.nSendVideoByteArray(bArr, i2, i3, i4, i5, i6);
                }
                Sink.log.e("[orientation] must be in range [0 - 360] but is [%d]", Integer.valueOf(i5));
                return false;
            }
            throw RtccExceptions.newNullPointerException("[data] must not be null");
        }

        @Deprecated
        public boolean push(byte[] bArr, int i2, int i3, int i4) {
            return push(bArr, i2, i3, 0, i4, 3);
        }
    }
}
