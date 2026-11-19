package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Build;
import android.os.ParcelFileDescriptor;
import android.util.Log;
import com.bumptech.glide.load.ImageHeaderParser;
import com.bumptech.glide.load.ImageHeaderParserUtils;
import com.bumptech.glide.load.data.InputStreamRewinder;
import com.bumptech.glide.load.data.ParcelFileDescriptorRewinder;
import com.bumptech.glide.load.engine.bitmap_recycle.ArrayPool;
import com.bumptech.glide.util.ByteBufferUtil;
import com.bumptech.glide.util.GlideSuppliers;
import com.bumptech.glide.util.MarkEnforcingInputStream;
import com.bumptech.glide.util.Preconditions;
import java.io.FileDescriptor;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
interface ImageReader {

    public static final class ByteBufferReader implements ImageReader {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final ByteBuffer f24792a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final List f24793b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final ArrayPool f24794c;

        public ByteBufferReader(ArrayPool arrayPool, ByteBuffer byteBuffer, List list) {
            this.f24792a = byteBuffer;
            this.f24793b = list;
            this.f24794c = arrayPool;
        }

        @Override // com.bumptech.glide.load.resource.bitmap.ImageReader
        public final Bitmap a(BitmapFactory.Options options) {
            return GlideBitmapFactory.a(ByteBufferUtil.f(ByteBufferUtil.c(this.f24792a)), options, this);
        }

        @Override // com.bumptech.glide.load.resource.bitmap.ImageReader
        public final boolean b() {
            return ImageHeaderParserUtils.i(this.f24794c, ByteBufferUtil.c(this.f24792a), this.f24793b);
        }

        @Override // com.bumptech.glide.load.resource.bitmap.ImageReader
        public final void c() {
        }

        @Override // com.bumptech.glide.load.resource.bitmap.ImageReader
        public final int d() {
            return ImageHeaderParserUtils.a(this.f24794c, ByteBufferUtil.c(this.f24792a), this.f24793b);
        }

        @Override // com.bumptech.glide.load.resource.bitmap.ImageReader
        public final ImageHeaderParser.ImageType e() {
            return ImageHeaderParserUtils.g(this.f24793b, ByteBufferUtil.c(this.f24792a));
        }
    }

    public static final class InputStreamImageReader implements ImageReader {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final InputStreamRewinder f24795a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final ArrayPool f24796b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final List f24797c;

        public InputStreamImageReader(MarkEnforcingInputStream markEnforcingInputStream, List list, ArrayPool arrayPool) {
            Preconditions.c(arrayPool, "Argument must not be null");
            this.f24796b = arrayPool;
            Preconditions.c(list, "Argument must not be null");
            this.f24797c = list;
            this.f24795a = new InputStreamRewinder(markEnforcingInputStream, arrayPool);
        }

        @Override // com.bumptech.glide.load.resource.bitmap.ImageReader
        public final Bitmap a(BitmapFactory.Options options) {
            RecyclableBufferedInputStream recyclableBufferedInputStream = this.f24795a.f24416a;
            recyclableBufferedInputStream.reset();
            return GlideBitmapFactory.a(recyclableBufferedInputStream, options, this);
        }

        @Override // com.bumptech.glide.load.resource.bitmap.ImageReader
        public final boolean b() {
            RecyclableBufferedInputStream recyclableBufferedInputStream = this.f24795a.f24416a;
            recyclableBufferedInputStream.reset();
            return ImageHeaderParserUtils.k(this.f24797c, recyclableBufferedInputStream, this.f24796b);
        }

        @Override // com.bumptech.glide.load.resource.bitmap.ImageReader
        public final void c() {
            RecyclableBufferedInputStream recyclableBufferedInputStream = this.f24795a.f24416a;
            synchronized (recyclableBufferedInputStream) {
                recyclableBufferedInputStream.d = recyclableBufferedInputStream.f24805b.length;
            }
        }

        @Override // com.bumptech.glide.load.resource.bitmap.ImageReader
        public final int d() {
            RecyclableBufferedInputStream recyclableBufferedInputStream = this.f24795a.f24416a;
            recyclableBufferedInputStream.reset();
            return ImageHeaderParserUtils.c(this.f24797c, recyclableBufferedInputStream, this.f24796b);
        }

        @Override // com.bumptech.glide.load.resource.bitmap.ImageReader
        public final ImageHeaderParser.ImageType e() {
            RecyclableBufferedInputStream recyclableBufferedInputStream = this.f24795a.f24416a;
            recyclableBufferedInputStream.reset();
            return ImageHeaderParserUtils.f(this.f24797c, recyclableBufferedInputStream, this.f24796b);
        }
    }

    public static final class ParcelFileDescriptorImageReader implements ImageReader {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final ArrayPool f24798a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final List f24799b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final ParcelFileDescriptorRewinder f24800c;

        public ParcelFileDescriptorImageReader(ParcelFileDescriptor parcelFileDescriptor, List list, ArrayPool arrayPool) {
            Preconditions.c(arrayPool, "Argument must not be null");
            this.f24798a = arrayPool;
            Preconditions.c(list, "Argument must not be null");
            this.f24799b = list;
            this.f24800c = new ParcelFileDescriptorRewinder(parcelFileDescriptor);
        }

        @Override // com.bumptech.glide.load.resource.bitmap.ImageReader
        public final Bitmap a(BitmapFactory.Options options) throws Throwable {
            boolean zB;
            FileDescriptor fileDescriptor = this.f24800c.c().getFileDescriptor();
            int i2 = Build.VERSION.SDK_INT;
            Bitmap bitmap = null;
            if (i2 == 34) {
                GlideSuppliers.GlideSupplier glideSupplier = GlideBitmapFactory.GainmapDecoderWorkaroundStateCalculator.f24787a;
                if ((i2 == 34 && options.inPreferredConfig == Bitmap.Config.HARDWARE) ? ((Boolean) GlideBitmapFactory.GainmapDecoderWorkaroundStateCalculator.f24787a.get()).booleanValue() : false) {
                    try {
                        zB = b();
                        Log.isLoggable("GlideBitmapFactory", 2);
                    } catch (IOException unused) {
                        Log.isLoggable("GlideBitmapFactory", 2);
                        zB = false;
                    }
                    if (zB) {
                        Bitmap.Config config = options.inPreferredConfig;
                        Bitmap.Config config2 = Bitmap.Config.HARDWARE;
                        Preconditions.a(config == config2, "");
                        options.inPreferredConfig = Bitmap.Config.ARGB_8888;
                        try {
                            Bitmap bitmapDecodeFileDescriptor = BitmapFactory.decodeFileDescriptor(fileDescriptor, null, options);
                            if (bitmapDecodeFileDescriptor == null) {
                                if (bitmapDecodeFileDescriptor != null) {
                                    bitmapDecodeFileDescriptor.recycle();
                                }
                                options.inPreferredConfig = config2;
                                return null;
                            }
                            try {
                                Bitmap bitmapB = GlideBitmapFactory.b(bitmapDecodeFileDescriptor);
                                bitmapDecodeFileDescriptor.recycle();
                                options.inPreferredConfig = config2;
                                return bitmapB;
                            } catch (Throwable th) {
                                th = th;
                                bitmap = bitmapDecodeFileDescriptor;
                                if (bitmap != null) {
                                    bitmap.recycle();
                                }
                                options.inPreferredConfig = Bitmap.Config.HARDWARE;
                                throw th;
                            }
                        } catch (Throwable th2) {
                            th = th2;
                        }
                    }
                }
            }
            return BitmapFactory.decodeFileDescriptor(fileDescriptor, null, options);
        }

        @Override // com.bumptech.glide.load.resource.bitmap.ImageReader
        public final boolean b() {
            return ImageHeaderParserUtils.j(this.f24799b, this.f24800c, this.f24798a);
        }

        @Override // com.bumptech.glide.load.resource.bitmap.ImageReader
        public final void c() {
        }

        @Override // com.bumptech.glide.load.resource.bitmap.ImageReader
        public final int d() {
            return ImageHeaderParserUtils.b(this.f24799b, this.f24800c, this.f24798a);
        }

        @Override // com.bumptech.glide.load.resource.bitmap.ImageReader
        public final ImageHeaderParser.ImageType e() {
            return ImageHeaderParserUtils.e(this.f24799b, this.f24800c, this.f24798a);
        }
    }

    Bitmap a(BitmapFactory.Options options);

    boolean b();

    void c();

    int d();

    ImageHeaderParser.ImageType e();
}
