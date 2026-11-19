package com.google.ar.core;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorMatrix;
import android.graphics.ColorMatrixColorFilter;
import android.graphics.Paint;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.channels.Channels;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes2.dex */
public class AugmentedImageDatabase {
    long nativeHandle;
    private final long nativeSymbolTableHandle;
    private final Session session;

    public AugmentedImageDatabase(Session session, long j2) {
        this.session = session;
        this.nativeHandle = j2;
        this.nativeSymbolTableHandle = session.nativeSymbolTableHandle;
    }

    public static ByteBuffer convertBitmapToGrayscaleDirectBuffer(Bitmap bitmap) {
        ColorMatrix colorMatrix = new ColorMatrix();
        colorMatrix.setSaturation(Call.Parameters.DEFAULT_CAMERA_ZOOM);
        ColorMatrixColorFilter colorMatrixColorFilter = new ColorMatrixColorFilter(colorMatrix);
        Paint paint = new Paint();
        paint.setColorFilter(colorMatrixColorFilter);
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(bitmap.getWidth(), bitmap.getHeight(), Bitmap.Config.ARGB_8888);
        new Canvas(bitmapCreateBitmap).drawBitmap(bitmap, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, paint);
        ByteBuffer byteBufferAllocateDirect = ByteBuffer.allocateDirect(bitmap.getHeight() * bitmap.getWidth());
        for (int i2 = 0; i2 < bitmap.getHeight(); i2++) {
            for (int i3 = 0; i3 < bitmap.getWidth(); i3++) {
                byteBufferAllocateDirect.put((bitmap.getWidth() * i2) + i3, (byte) Color.red(bitmapCreateBitmap.getPixel(i3, i2)));
            }
        }
        return byteBufferAllocateDirect;
    }

    public static AugmentedImageDatabase deserialize(Session session, InputStream inputStream) throws IOException {
        return new AugmentedImageDatabase(session, nativeDeserialize(session.nativeWrapperHandle, loadDirectByteBuffer(inputStream)));
    }

    private static ByteBuffer loadDirectByteBuffer(InputStream inputStream) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(Math.max(32, inputStream.available()));
        byte[] bArr = new byte[8192];
        while (true) {
            int i2 = inputStream.read(bArr);
            if (i2 == -1) {
                byte[] byteArray = byteArrayOutputStream.toByteArray();
                ByteBuffer byteBufferAllocateDirect = ByteBuffer.allocateDirect(byteArray.length);
                byteBufferAllocateDirect.put(byteArray);
                return byteBufferAllocateDirect;
            }
            byteArrayOutputStream.write(bArr, 0, i2);
        }
    }

    private native int nativeAddImage(long j2, long j3, String str, ByteBuffer byteBuffer, int i2, int i3, int i4);

    private native int nativeAddImageWithPhysicalSize(long j2, long j3, String str, ByteBuffer byteBuffer, int i2, int i3, int i4, float f2);

    private static native long nativeCreate(long j2);

    private static native long nativeDeserialize(long j2, ByteBuffer byteBuffer);

    private native int nativeGetNumImages(long j2, long j3);

    private native void nativeReleaseDatabase(long j2, long j3);

    private native ByteBuffer nativeSerialize(long j2, long j3);

    public int addImage(String str, Bitmap bitmap, float f2) {
        Session session = this.session;
        return nativeAddImageWithPhysicalSize(session.nativeWrapperHandle, this.nativeHandle, str, convertBitmapToGrayscaleDirectBuffer(bitmap), bitmap.getWidth(), bitmap.getHeight(), bitmap.getWidth(), f2);
    }

    public void finalize() throws Throwable {
        long j2 = this.nativeHandle;
        if (j2 != 0) {
            nativeReleaseDatabase(this.nativeSymbolTableHandle, j2);
        }
        super.finalize();
    }

    public int getNumImages() {
        return nativeGetNumImages(this.session.nativeWrapperHandle, this.nativeHandle);
    }

    public void serialize(OutputStream outputStream) throws IOException {
        Channels.newChannel(outputStream).write(nativeSerialize(this.session.nativeWrapperHandle, this.nativeHandle));
    }

    public AugmentedImageDatabase(Session session) {
        this(session, nativeCreate(session.nativeWrapperHandle));
    }

    public int addImage(String str, Bitmap bitmap) {
        Session session = this.session;
        return nativeAddImage(session.nativeWrapperHandle, this.nativeHandle, str, convertBitmapToGrayscaleDirectBuffer(bitmap), bitmap.getWidth(), bitmap.getHeight(), bitmap.getWidth());
    }
}
