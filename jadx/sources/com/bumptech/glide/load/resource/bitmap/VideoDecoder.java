package com.bumptech.glide.load.resource.bitmap;

import android.content.res.AssetFileDescriptor;
import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.media.MediaDataSource;
import android.media.MediaExtractor;
import android.media.MediaMetadataRetriever;
import android.os.Build;
import android.os.ParcelFileDescriptor;
import android.util.Log;
import com.bumptech.glide.load.Option;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.ResourceDecoder;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import defpackage.d21;
import defpackage.md;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.security.MessageDigest;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class VideoDecoder<T> implements ResourceDecoder<T, Bitmap> {
    public static final Option d = new Option("com.bumptech.glide.load.resource.bitmap.VideoBitmapDecode.TargetFrame", -1L, new Option.CacheKeyUpdater<Long>() { // from class: com.bumptech.glide.load.resource.bitmap.VideoDecoder.1

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final ByteBuffer f24823a = ByteBuffer.allocate(8);

        @Override // com.bumptech.glide.load.Option.CacheKeyUpdater
        public final void a(byte[] bArr, Object obj, MessageDigest messageDigest) {
            Long l = (Long) obj;
            messageDigest.update(bArr);
            synchronized (this.f24823a) {
                this.f24823a.position(0);
                messageDigest.update(this.f24823a.putLong(l.longValue()).array());
            }
        }
    });

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final Option f24818e = new Option("com.bumptech.glide.load.resource.bitmap.VideoBitmapDecode.FrameOption", 2, new Option.CacheKeyUpdater<Integer>() { // from class: com.bumptech.glide.load.resource.bitmap.VideoDecoder.2

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final ByteBuffer f24824a = ByteBuffer.allocate(4);

        @Override // com.bumptech.glide.load.Option.CacheKeyUpdater
        public final void a(byte[] bArr, Object obj, MessageDigest messageDigest) {
            Integer num = (Integer) obj;
            if (num == null) {
                return;
            }
            messageDigest.update(bArr);
            synchronized (this.f24824a) {
                this.f24824a.position(0);
                messageDigest.update(this.f24824a.putInt(num.intValue()).array());
            }
        }
    });

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final MediaMetadataRetrieverFactory f24819f = new MediaMetadataRetrieverFactory();
    public static final List g = Collections.unmodifiableList(Arrays.asList("TP1A", "TD1A.220804.031"));

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final MediaInitializer f24820a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final BitmapPool f24821b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final MediaMetadataRetrieverFactory f24822c = f24819f;

    public static final class AssetFileDescriptorInitializer implements MediaInitializer<AssetFileDescriptor> {
        @Override // com.bumptech.glide.load.resource.bitmap.VideoDecoder.MediaInitializer
        public final void a(MediaExtractor mediaExtractor, Object obj) throws IOException {
            AssetFileDescriptor assetFileDescriptor = (AssetFileDescriptor) obj;
            mediaExtractor.setDataSource(assetFileDescriptor.getFileDescriptor(), assetFileDescriptor.getStartOffset(), assetFileDescriptor.getLength());
        }

        @Override // com.bumptech.glide.load.resource.bitmap.VideoDecoder.MediaInitializer
        public final void b(MediaMetadataRetriever mediaMetadataRetriever, Object obj) {
            AssetFileDescriptor assetFileDescriptor = (AssetFileDescriptor) obj;
            mediaMetadataRetriever.setDataSource(assetFileDescriptor.getFileDescriptor(), assetFileDescriptor.getStartOffset(), assetFileDescriptor.getLength());
        }
    }

    public static final class ByteBufferInitializer implements MediaInitializer<ByteBuffer> {

        /* JADX INFO: renamed from: com.bumptech.glide.load.resource.bitmap.VideoDecoder$ByteBufferInitializer$1, reason: invalid class name */
        class AnonymousClass1 extends MediaDataSource {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final /* synthetic */ ByteBuffer f24825b;

            public AnonymousClass1(ByteBuffer byteBuffer) {
                this.f24825b = byteBuffer;
            }

            @Override // java.io.Closeable, java.lang.AutoCloseable
            public final void close() {
            }

            @Override // android.media.MediaDataSource
            public final long getSize() {
                return this.f24825b.limit();
            }

            @Override // android.media.MediaDataSource
            public final int readAt(long j2, byte[] bArr, int i2, int i3) {
                ByteBuffer byteBuffer = this.f24825b;
                if (j2 >= byteBuffer.limit()) {
                    return -1;
                }
                byteBuffer.position((int) j2);
                int iMin = Math.min(i3, byteBuffer.remaining());
                byteBuffer.get(bArr, i2, iMin);
                return iMin;
            }
        }

        @Override // com.bumptech.glide.load.resource.bitmap.VideoDecoder.MediaInitializer
        public final void a(MediaExtractor mediaExtractor, Object obj) throws IOException {
            mediaExtractor.setDataSource(new AnonymousClass1((ByteBuffer) obj));
        }

        @Override // com.bumptech.glide.load.resource.bitmap.VideoDecoder.MediaInitializer
        public final void b(MediaMetadataRetriever mediaMetadataRetriever, Object obj) {
            mediaMetadataRetriever.setDataSource(new AnonymousClass1((ByteBuffer) obj));
        }
    }

    public interface MediaInitializer<T> {
        void a(MediaExtractor mediaExtractor, Object obj);

        void b(MediaMetadataRetriever mediaMetadataRetriever, Object obj);
    }

    public static class MediaMetadataRetrieverFactory {
    }

    public static final class ParcelFileDescriptorInitializer implements MediaInitializer<ParcelFileDescriptor> {
        @Override // com.bumptech.glide.load.resource.bitmap.VideoDecoder.MediaInitializer
        public final void a(MediaExtractor mediaExtractor, Object obj) throws IOException {
            mediaExtractor.setDataSource(((ParcelFileDescriptor) obj).getFileDescriptor());
        }

        @Override // com.bumptech.glide.load.resource.bitmap.VideoDecoder.MediaInitializer
        public final void b(MediaMetadataRetriever mediaMetadataRetriever, Object obj) {
            mediaMetadataRetriever.setDataSource(((ParcelFileDescriptor) obj).getFileDescriptor());
        }
    }

    public static final class VideoDecoderException extends RuntimeException {
        private static final long serialVersionUID = -2556382523004027815L;
    }

    public VideoDecoder(BitmapPool bitmapPool, MediaInitializer mediaInitializer) {
        this.f24821b = bitmapPool;
        this.f24820a = mediaInitializer;
    }

    public static VideoDecoder c(BitmapPool bitmapPool) {
        return new VideoDecoder(bitmapPool, new AssetFileDescriptorInitializer());
    }

    public static VideoDecoder d(BitmapPool bitmapPool) {
        return new VideoDecoder(bitmapPool, new ByteBufferInitializer());
    }

    public static VideoDecoder f(BitmapPool bitmapPool) {
        return new VideoDecoder(bitmapPool, new ParcelFileDescriptorInitializer());
    }

    @Override // com.bumptech.glide.load.ResourceDecoder
    public final boolean a(Object obj, Options options) {
        return true;
    }

    @Override // com.bumptech.glide.load.ResourceDecoder
    public final Resource b(Object obj, int i2, int i3, Options options) throws IOException {
        long jLongValue = ((Long) options.c(d)).longValue();
        if (jLongValue < 0 && jLongValue != -1) {
            md.n(d21.g(jLongValue, "Requested frame must be non-negative, or DEFAULT_FRAME, given: "));
            return null;
        }
        Integer num = (Integer) options.c(f24818e);
        if (num == null) {
            num = 2;
        }
        DownsampleStrategy downsampleStrategy = (DownsampleStrategy) options.c(DownsampleStrategy.f24772f);
        if (downsampleStrategy == null) {
            downsampleStrategy = DownsampleStrategy.f24771e;
        }
        DownsampleStrategy downsampleStrategy2 = downsampleStrategy;
        this.f24822c.getClass();
        MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
        try {
            this.f24820a.b(mediaMetadataRetriever, obj);
            return BitmapResource.c(e(obj, mediaMetadataRetriever, jLongValue, num.intValue(), i2, i3, downsampleStrategy2), this.f24821b);
        } finally {
            mediaMetadataRetriever.close();
        }
    }

    /* JADX WARN: Code duplicated, block: B:37:0x0096  */
    /* JADX WARN: Code duplicated, block: B:42:0x00b8  */
    /* JADX WARN: Code duplicated, block: B:53:0x00e7  */
    /* JADX WARN: Code duplicated, block: B:55:0x00ed A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:59:0x0107 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:60:0x0109 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:67:0x0156 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:68:0x0157  */
    public final Bitmap e(Object obj, MediaMetadataRetriever mediaMetadataRetriever, long j2, int i2, int i3, int i4, DownsampleStrategy downsampleStrategy) {
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        MediaExtractor mediaExtractor;
        String str = Build.DEVICE;
        Bitmap bitmapCreateBitmap = null;
        if (str != null && str.matches(".+_cheets|cheets_.+")) {
            try {
                if ("video/webm".equals(mediaMetadataRetriever.extractMetadata(12))) {
                    mediaExtractor = new MediaExtractor();
                    try {
                        this.f24820a.a(mediaExtractor, obj);
                        int trackCount = mediaExtractor.getTrackCount();
                        for (int i10 = 0; i10 < trackCount; i10++) {
                            if ("video/x-vnd.on2.vp8".equals(mediaExtractor.getTrackFormat(i10).getString("mime"))) {
                                mediaExtractor.release();
                                md.k("Cannot decode VP8 video on CrOS.");
                                return null;
                            }
                        }
                    } catch (Throwable unused) {
                        try {
                            Log.isLoggable("VideoDecoder", 3);
                            if (mediaExtractor != null) {
                            }
                            if (i3 != Integer.MIN_VALUE) {
                                try {
                                    i7 = Integer.parseInt(mediaMetadataRetriever.extractMetadata(18));
                                    i8 = Integer.parseInt(mediaMetadataRetriever.extractMetadata(19));
                                    i9 = Integer.parseInt(mediaMetadataRetriever.extractMetadata(24));
                                    if (i9 != 90) {
                                        i8 = i7;
                                        i7 = i8;
                                    } else {
                                        i8 = i7;
                                        i7 = i8;
                                    }
                                    float fB = downsampleStrategy.b(i7, i8, i3, i4);
                                    bitmapCreateBitmap = mediaMetadataRetriever.getScaledFrameAtTime(j2, i2, Math.round(i7 * fB), Math.round(fB * i8));
                                } catch (Throwable unused2) {
                                    Log.isLoggable("VideoDecoder", 3);
                                }
                            }
                            if (bitmapCreateBitmap == null) {
                                bitmapCreateBitmap = mediaMetadataRetriever.getFrameAtTime(j2, i2);
                            }
                            if (Build.MODEL.startsWith("Pixel")) {
                                i5 = Build.VERSION.SDK_INT;
                                if (i5 >= 30) {
                                    try {
                                        String strExtractMetadata = mediaMetadataRetriever.extractMetadata(36);
                                        String strExtractMetadata2 = mediaMetadataRetriever.extractMetadata(35);
                                        i6 = Integer.parseInt(strExtractMetadata);
                                        int i11 = Integer.parseInt(strExtractMetadata2);
                                        if (i6 != 7) {
                                            Log.isLoggable("VideoDecoder", 3);
                                            Matrix matrix = new Matrix();
                                            matrix.postRotate(180.0f, bitmapCreateBitmap.getWidth() / 2.0f, bitmapCreateBitmap.getHeight() / 2.0f);
                                            bitmapCreateBitmap = Bitmap.createBitmap(bitmapCreateBitmap, 0, 0, bitmapCreateBitmap.getWidth(), bitmapCreateBitmap.getHeight(), matrix, true);
                                        } else {
                                            Log.isLoggable("VideoDecoder", 3);
                                            Matrix matrix2 = new Matrix();
                                            matrix2.postRotate(180.0f, bitmapCreateBitmap.getWidth() / 2.0f, bitmapCreateBitmap.getHeight() / 2.0f);
                                            bitmapCreateBitmap = Bitmap.createBitmap(bitmapCreateBitmap, 0, 0, bitmapCreateBitmap.getWidth(), bitmapCreateBitmap.getHeight(), matrix2, true);
                                        }
                                    } catch (NumberFormatException unused3) {
                                        Log.isLoggable("VideoDecoder", 3);
                                    }
                                }
                            } else {
                                i5 = Build.VERSION.SDK_INT;
                                if (i5 >= 30) {
                                    String strExtractMetadata3 = mediaMetadataRetriever.extractMetadata(36);
                                    String strExtractMetadata4 = mediaMetadataRetriever.extractMetadata(35);
                                    i6 = Integer.parseInt(strExtractMetadata3);
                                    int i12 = Integer.parseInt(strExtractMetadata4);
                                    if (i6 != 7) {
                                        Log.isLoggable("VideoDecoder", 3);
                                        Matrix matrix3 = new Matrix();
                                        matrix3.postRotate(180.0f, bitmapCreateBitmap.getWidth() / 2.0f, bitmapCreateBitmap.getHeight() / 2.0f);
                                        bitmapCreateBitmap = Bitmap.createBitmap(bitmapCreateBitmap, 0, 0, bitmapCreateBitmap.getWidth(), bitmapCreateBitmap.getHeight(), matrix3, true);
                                    } else {
                                        Log.isLoggable("VideoDecoder", 3);
                                        Matrix matrix4 = new Matrix();
                                        matrix4.postRotate(180.0f, bitmapCreateBitmap.getWidth() / 2.0f, bitmapCreateBitmap.getHeight() / 2.0f);
                                        bitmapCreateBitmap = Bitmap.createBitmap(bitmapCreateBitmap, 0, 0, bitmapCreateBitmap.getWidth(), bitmapCreateBitmap.getHeight(), matrix4, true);
                                    }
                                }
                            }
                            if (bitmapCreateBitmap != null) {
                                return bitmapCreateBitmap;
                            }
                            throw new VideoDecoderException("MediaMetadataRetriever failed to retrieve a frame without throwing, check the adb logs for .*MetadataRetriever.* prior to this exception for details");
                        } catch (Throwable th) {
                            if (mediaExtractor != null) {
                                mediaExtractor.release();
                            }
                            throw th;
                        }
                    }
                    mediaExtractor.release();
                }
            } catch (Throwable unused4) {
                mediaExtractor = null;
            }
        }
        if (i3 != Integer.MIN_VALUE && i4 != Integer.MIN_VALUE && downsampleStrategy != DownsampleStrategy.d) {
            i7 = Integer.parseInt(mediaMetadataRetriever.extractMetadata(18));
            i8 = Integer.parseInt(mediaMetadataRetriever.extractMetadata(19));
            i9 = Integer.parseInt(mediaMetadataRetriever.extractMetadata(24));
            if (i9 != 90 || i9 == 270) {
                i8 = i7;
                i7 = i8;
            }
            float fB2 = downsampleStrategy.b(i7, i8, i3, i4);
            bitmapCreateBitmap = mediaMetadataRetriever.getScaledFrameAtTime(j2, i2, Math.round(i7 * fB2), Math.round(fB2 * i8));
        }
        if (bitmapCreateBitmap == null) {
            bitmapCreateBitmap = mediaMetadataRetriever.getFrameAtTime(j2, i2);
        }
        if (Build.MODEL.startsWith("Pixel") || Build.VERSION.SDK_INT != 33) {
            i5 = Build.VERSION.SDK_INT;
            if (i5 >= 30 && i5 < 33) {
                String strExtractMetadata5 = mediaMetadataRetriever.extractMetadata(36);
                String strExtractMetadata6 = mediaMetadataRetriever.extractMetadata(35);
                i6 = Integer.parseInt(strExtractMetadata5);
                int i13 = Integer.parseInt(strExtractMetadata6);
                if ((i6 != 7 || i6 == 6) && i13 == 6 && Math.abs(Integer.parseInt(mediaMetadataRetriever.extractMetadata(24))) == 180) {
                    Log.isLoggable("VideoDecoder", 3);
                    Matrix matrix5 = new Matrix();
                    matrix5.postRotate(180.0f, bitmapCreateBitmap.getWidth() / 2.0f, bitmapCreateBitmap.getHeight() / 2.0f);
                    bitmapCreateBitmap = Bitmap.createBitmap(bitmapCreateBitmap, 0, 0, bitmapCreateBitmap.getWidth(), bitmapCreateBitmap.getHeight(), matrix5, true);
                }
            }
        } else {
            Iterator it = g.iterator();
            do {
                if (it.hasNext()) {
                }
            } while (!Build.ID.startsWith((String) it.next()));
            String strExtractMetadata7 = mediaMetadataRetriever.extractMetadata(36);
            String strExtractMetadata8 = mediaMetadataRetriever.extractMetadata(35);
            i6 = Integer.parseInt(strExtractMetadata7);
            int i14 = Integer.parseInt(strExtractMetadata8);
            if (i6 != 7) {
                Log.isLoggable("VideoDecoder", 3);
                Matrix matrix6 = new Matrix();
                matrix6.postRotate(180.0f, bitmapCreateBitmap.getWidth() / 2.0f, bitmapCreateBitmap.getHeight() / 2.0f);
                bitmapCreateBitmap = Bitmap.createBitmap(bitmapCreateBitmap, 0, 0, bitmapCreateBitmap.getWidth(), bitmapCreateBitmap.getHeight(), matrix6, true);
            } else {
                Log.isLoggable("VideoDecoder", 3);
                Matrix matrix7 = new Matrix();
                matrix7.postRotate(180.0f, bitmapCreateBitmap.getWidth() / 2.0f, bitmapCreateBitmap.getHeight() / 2.0f);
                bitmapCreateBitmap = Bitmap.createBitmap(bitmapCreateBitmap, 0, 0, bitmapCreateBitmap.getWidth(), bitmapCreateBitmap.getHeight(), matrix7, true);
            }
        }
        if (bitmapCreateBitmap != null) {
            return bitmapCreateBitmap;
        }
        throw new VideoDecoderException("MediaMetadataRetriever failed to retrieve a frame without throwing, check the adb logs for .*MetadataRetriever.* prior to this exception for details");
    }
}
