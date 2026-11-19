package com.bumptech.glide.load;

import com.bumptech.glide.load.data.ParcelFileDescriptorRewinder;
import com.bumptech.glide.load.engine.bitmap_recycle.ArrayPool;
import com.bumptech.glide.load.resource.bitmap.RecyclableBufferedInputStream;
import com.bumptech.glide.util.ByteBufferUtil;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public abstract class ImageHeaderParserUtils {

    public interface JpegMpfReader {
        boolean a(ImageHeaderParser imageHeaderParser);
    }

    public interface OrientationReader {
        int a(ImageHeaderParser imageHeaderParser);
    }

    public interface TypeReader {
        ImageHeaderParser.ImageType a(ImageHeaderParser imageHeaderParser);
    }

    public static int a(final ArrayPool arrayPool, final ByteBuffer byteBuffer, List list) {
        if (byteBuffer == null) {
            return -1;
        }
        return d(list, new OrientationReader() { // from class: com.bumptech.glide.load.ImageHeaderParserUtils.4
            @Override // com.bumptech.glide.load.ImageHeaderParserUtils.OrientationReader
            public final int a(ImageHeaderParser imageHeaderParser) {
                ByteBuffer byteBuffer2 = byteBuffer;
                try {
                    return imageHeaderParser.c(byteBuffer2, arrayPool);
                } finally {
                    ByteBufferUtil.c(byteBuffer2);
                }
            }
        });
    }

    public static int b(List list, final ParcelFileDescriptorRewinder parcelFileDescriptorRewinder, final ArrayPool arrayPool) {
        return d(list, new OrientationReader() { // from class: com.bumptech.glide.load.ImageHeaderParserUtils.6
            @Override // com.bumptech.glide.load.ImageHeaderParserUtils.OrientationReader
            public final int a(ImageHeaderParser imageHeaderParser) throws Throwable {
                ArrayPool arrayPool2 = arrayPool;
                ParcelFileDescriptorRewinder parcelFileDescriptorRewinder2 = parcelFileDescriptorRewinder;
                RecyclableBufferedInputStream recyclableBufferedInputStream = null;
                try {
                    RecyclableBufferedInputStream recyclableBufferedInputStream2 = new RecyclableBufferedInputStream(new FileInputStream(parcelFileDescriptorRewinder2.c().getFileDescriptor()), arrayPool2);
                    try {
                        int iE = imageHeaderParser.e(recyclableBufferedInputStream2, arrayPool2);
                        recyclableBufferedInputStream2.release();
                        parcelFileDescriptorRewinder2.c();
                        return iE;
                    } catch (Throwable th) {
                        th = th;
                        recyclableBufferedInputStream = recyclableBufferedInputStream2;
                        if (recyclableBufferedInputStream != null) {
                            recyclableBufferedInputStream.release();
                        }
                        parcelFileDescriptorRewinder2.c();
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            }
        });
    }

    public static int c(List list, final InputStream inputStream, final ArrayPool arrayPool) {
        if (inputStream == null) {
            return -1;
        }
        if (!inputStream.markSupported()) {
            inputStream = new RecyclableBufferedInputStream(inputStream, arrayPool);
        }
        inputStream.mark(5242880);
        return d(list, new OrientationReader() { // from class: com.bumptech.glide.load.ImageHeaderParserUtils.5
            @Override // com.bumptech.glide.load.ImageHeaderParserUtils.OrientationReader
            public final int a(ImageHeaderParser imageHeaderParser) throws IOException {
                InputStream inputStream2 = inputStream;
                try {
                    return imageHeaderParser.e(inputStream2, arrayPool);
                } finally {
                    inputStream2.reset();
                }
            }
        });
    }

    public static int d(List list, OrientationReader orientationReader) {
        int size = list.size();
        for (int i2 = 0; i2 < size; i2++) {
            int iA = orientationReader.a((ImageHeaderParser) list.get(i2));
            if (iA != -1) {
                return iA;
            }
        }
        return -1;
    }

    public static ImageHeaderParser.ImageType e(List list, final ParcelFileDescriptorRewinder parcelFileDescriptorRewinder, final ArrayPool arrayPool) {
        return h(list, new TypeReader() { // from class: com.bumptech.glide.load.ImageHeaderParserUtils.3
            @Override // com.bumptech.glide.load.ImageHeaderParserUtils.TypeReader
            public final ImageHeaderParser.ImageType a(ImageHeaderParser imageHeaderParser) throws Throwable {
                ParcelFileDescriptorRewinder parcelFileDescriptorRewinder2 = parcelFileDescriptorRewinder;
                RecyclableBufferedInputStream recyclableBufferedInputStream = null;
                try {
                    RecyclableBufferedInputStream recyclableBufferedInputStream2 = new RecyclableBufferedInputStream(new FileInputStream(parcelFileDescriptorRewinder2.c().getFileDescriptor()), arrayPool);
                    try {
                        ImageHeaderParser.ImageType imageTypeD = imageHeaderParser.d(recyclableBufferedInputStream2);
                        recyclableBufferedInputStream2.release();
                        parcelFileDescriptorRewinder2.c();
                        return imageTypeD;
                    } catch (Throwable th) {
                        th = th;
                        recyclableBufferedInputStream = recyclableBufferedInputStream2;
                        if (recyclableBufferedInputStream != null) {
                            recyclableBufferedInputStream.release();
                        }
                        parcelFileDescriptorRewinder2.c();
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            }
        });
    }

    public static ImageHeaderParser.ImageType f(List list, final InputStream inputStream, ArrayPool arrayPool) {
        if (inputStream == null) {
            return ImageHeaderParser.ImageType.UNKNOWN;
        }
        if (!inputStream.markSupported()) {
            inputStream = new RecyclableBufferedInputStream(inputStream, arrayPool);
        }
        inputStream.mark(5242880);
        return h(list, new TypeReader() { // from class: com.bumptech.glide.load.ImageHeaderParserUtils.1
            @Override // com.bumptech.glide.load.ImageHeaderParserUtils.TypeReader
            public final ImageHeaderParser.ImageType a(ImageHeaderParser imageHeaderParser) throws IOException {
                InputStream inputStream2 = inputStream;
                try {
                    return imageHeaderParser.d(inputStream2);
                } finally {
                    inputStream2.reset();
                }
            }
        });
    }

    public static ImageHeaderParser.ImageType g(List list, final ByteBuffer byteBuffer) {
        return byteBuffer == null ? ImageHeaderParser.ImageType.UNKNOWN : h(list, new TypeReader() { // from class: com.bumptech.glide.load.ImageHeaderParserUtils.2
            @Override // com.bumptech.glide.load.ImageHeaderParserUtils.TypeReader
            public final ImageHeaderParser.ImageType a(ImageHeaderParser imageHeaderParser) {
                ByteBuffer byteBuffer2 = byteBuffer;
                try {
                    return imageHeaderParser.a(byteBuffer2);
                } finally {
                    ByteBufferUtil.c(byteBuffer2);
                }
            }
        });
    }

    public static ImageHeaderParser.ImageType h(List list, TypeReader typeReader) {
        int size = list.size();
        for (int i2 = 0; i2 < size; i2++) {
            ImageHeaderParser.ImageType imageTypeA = typeReader.a((ImageHeaderParser) list.get(i2));
            if (imageTypeA != ImageHeaderParser.ImageType.UNKNOWN) {
                return imageTypeA;
            }
        }
        return ImageHeaderParser.ImageType.UNKNOWN;
    }

    public static boolean i(final ArrayPool arrayPool, final ByteBuffer byteBuffer, List list) {
        if (byteBuffer == null) {
            return false;
        }
        return l(list, new JpegMpfReader() { // from class: com.bumptech.glide.load.ImageHeaderParserUtils.7
            @Override // com.bumptech.glide.load.ImageHeaderParserUtils.JpegMpfReader
            public final boolean a(ImageHeaderParser imageHeaderParser) {
                ByteBuffer byteBuffer2 = byteBuffer;
                try {
                    return imageHeaderParser.b(byteBuffer2, arrayPool);
                } finally {
                    ByteBufferUtil.c(byteBuffer2);
                }
            }
        });
    }

    public static boolean j(List list, final ParcelFileDescriptorRewinder parcelFileDescriptorRewinder, final ArrayPool arrayPool) {
        return l(list, new JpegMpfReader() { // from class: com.bumptech.glide.load.ImageHeaderParserUtils.9
            @Override // com.bumptech.glide.load.ImageHeaderParserUtils.JpegMpfReader
            public final boolean a(ImageHeaderParser imageHeaderParser) throws Throwable {
                ArrayPool arrayPool2 = arrayPool;
                ParcelFileDescriptorRewinder parcelFileDescriptorRewinder2 = parcelFileDescriptorRewinder;
                RecyclableBufferedInputStream recyclableBufferedInputStream = null;
                try {
                    RecyclableBufferedInputStream recyclableBufferedInputStream2 = new RecyclableBufferedInputStream(new FileInputStream(parcelFileDescriptorRewinder2.c().getFileDescriptor()), arrayPool2);
                    try {
                        boolean zF = imageHeaderParser.f(recyclableBufferedInputStream2, arrayPool2);
                        recyclableBufferedInputStream2.release();
                        parcelFileDescriptorRewinder2.c();
                        return zF;
                    } catch (Throwable th) {
                        th = th;
                        recyclableBufferedInputStream = recyclableBufferedInputStream2;
                        if (recyclableBufferedInputStream != null) {
                            recyclableBufferedInputStream.release();
                        }
                        parcelFileDescriptorRewinder2.c();
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            }
        });
    }

    public static boolean k(List list, final InputStream inputStream, final ArrayPool arrayPool) {
        if (inputStream == null) {
            return false;
        }
        if (!inputStream.markSupported()) {
            inputStream = new RecyclableBufferedInputStream(inputStream, arrayPool);
        }
        inputStream.mark(5242880);
        return l(list, new JpegMpfReader() { // from class: com.bumptech.glide.load.ImageHeaderParserUtils.8
            @Override // com.bumptech.glide.load.ImageHeaderParserUtils.JpegMpfReader
            public final boolean a(ImageHeaderParser imageHeaderParser) throws IOException {
                InputStream inputStream2 = inputStream;
                try {
                    return imageHeaderParser.f(inputStream2, arrayPool);
                } finally {
                    inputStream2.reset();
                }
            }
        });
    }

    public static boolean l(List list, JpegMpfReader jpegMpfReader) {
        int size = list.size();
        for (int i2 = 0; i2 < size; i2++) {
            if (jpegMpfReader.a((ImageHeaderParser) list.get(i2))) {
                return true;
            }
        }
        return false;
    }
}
