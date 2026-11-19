package com.bumptech.glide.load.resource.bitmap;

import android.util.Log;
import com.bumptech.glide.load.ImageHeaderParser;
import com.bumptech.glide.load.engine.bitmap_recycle.ArrayPool;
import com.bumptech.glide.util.Preconditions;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.Charset;

/* JADX INFO: loaded from: classes2.dex */
public final class DefaultImageHeaderParser implements ImageHeaderParser {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final byte[] f24762a = "Exif\u0000\u0000".getBytes(Charset.forName("UTF-8"));

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final byte[] f24763b = "MPF".getBytes(Charset.forName("UTF-8"));

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final int[] f24764c = {0, 1, 1, 2, 4, 8, 1, 1, 2, 4, 8, 4, 8};

    public static final class ByteBufferReader implements Reader {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final ByteBuffer f24765a;

        public ByteBufferReader(ByteBuffer byteBuffer) {
            this.f24765a = byteBuffer;
            byteBuffer.order(ByteOrder.BIG_ENDIAN);
        }

        @Override // com.bumptech.glide.load.resource.bitmap.DefaultImageHeaderParser.Reader
        public final int a() {
            return c() | (c() << 8);
        }

        @Override // com.bumptech.glide.load.resource.bitmap.DefaultImageHeaderParser.Reader
        public final int b(int i2, byte[] bArr) {
            ByteBuffer byteBuffer = this.f24765a;
            int iMin = Math.min(i2, byteBuffer.remaining());
            if (iMin == 0) {
                return -1;
            }
            byteBuffer.get(bArr, 0, iMin);
            return iMin;
        }

        @Override // com.bumptech.glide.load.resource.bitmap.DefaultImageHeaderParser.Reader
        public final short c() throws Reader.EndOfFileException {
            ByteBuffer byteBuffer = this.f24765a;
            if (byteBuffer.remaining() >= 1) {
                return (short) (byteBuffer.get() & 255);
            }
            throw new Reader.EndOfFileException();
        }

        @Override // com.bumptech.glide.load.resource.bitmap.DefaultImageHeaderParser.Reader
        public final long skip(long j2) {
            ByteBuffer byteBuffer = this.f24765a;
            int iMin = (int) Math.min(byteBuffer.remaining(), j2);
            byteBuffer.position(byteBuffer.position() + iMin);
            return iMin;
        }
    }

    public static final class RandomAccessReader {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final ByteBuffer f24766a;

        public RandomAccessReader(byte[] bArr, int i2) {
            this.f24766a = (ByteBuffer) ByteBuffer.wrap(bArr).order(ByteOrder.BIG_ENDIAN).limit(i2);
        }

        public final short a(int i2) {
            ByteBuffer byteBuffer = this.f24766a;
            if (byteBuffer.remaining() - i2 >= 2) {
                return byteBuffer.getShort(i2);
            }
            return (short) -1;
        }
    }

    public interface Reader {

        public static final class EndOfFileException extends IOException {
            private static final long serialVersionUID = 1;

            public EndOfFileException() {
                super("Unexpectedly reached end of a file");
            }
        }

        int a();

        int b(int i2, byte[] bArr);

        short c();

        long skip(long j2);
    }

    public static final class StreamReader implements Reader {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final InputStream f24767a;

        public StreamReader(InputStream inputStream) {
            this.f24767a = inputStream;
        }

        @Override // com.bumptech.glide.load.resource.bitmap.DefaultImageHeaderParser.Reader
        public final int a() {
            return c() | (c() << 8);
        }

        @Override // com.bumptech.glide.load.resource.bitmap.DefaultImageHeaderParser.Reader
        public final int b(int i2, byte[] bArr) throws Reader.EndOfFileException {
            int i3 = 0;
            int i4 = 0;
            while (i3 < i2 && (i4 = this.f24767a.read(bArr, i3, i2 - i3)) != -1) {
                i3 += i4;
            }
            if (i3 == 0 && i4 == -1) {
                throw new Reader.EndOfFileException();
            }
            return i3;
        }

        @Override // com.bumptech.glide.load.resource.bitmap.DefaultImageHeaderParser.Reader
        public final short c() throws IOException {
            int i2 = this.f24767a.read();
            if (i2 != -1) {
                return (short) i2;
            }
            throw new Reader.EndOfFileException();
        }

        @Override // com.bumptech.glide.load.resource.bitmap.DefaultImageHeaderParser.Reader
        public final long skip(long j2) throws IOException {
            if (j2 < 0) {
                return 0L;
            }
            long j3 = j2;
            while (j3 > 0) {
                InputStream inputStream = this.f24767a;
                long jSkip = inputStream.skip(j3);
                if (jSkip > 0) {
                    j3 -= jSkip;
                } else {
                    if (inputStream.read() == -1) {
                        break;
                    }
                    j3--;
                }
            }
            return j2 - j3;
        }
    }

    public static int g(Reader reader, ArrayPool arrayPool) {
        try {
            int iA = reader.a();
            if ((iA & 65496) != 65496 && iA != 19789 && iA != 18761) {
                Log.isLoggable("DfltImageHeaderParser", 3);
                return -1;
            }
            int iK = k(reader, 225);
            if (iK == -1) {
                Log.isLoggable("DfltImageHeaderParser", 3);
                return -1;
            }
            byte[] bArr = (byte[]) arrayPool.c(iK, byte[].class);
            try {
                return l(reader, bArr, iK);
            } finally {
                arrayPool.put(bArr);
            }
        } catch (Reader.EndOfFileException unused) {
            return -1;
        }
    }

    public static ImageHeaderParser.ImageType h(Reader reader) {
        try {
            int iA = reader.a();
            if (iA == 65496) {
                return ImageHeaderParser.ImageType.JPEG;
            }
            int iC = (iA << 8) | reader.c();
            if (iC == 4671814) {
                return ImageHeaderParser.ImageType.GIF;
            }
            int iC2 = (iC << 8) | reader.c();
            if (iC2 == -1991225785) {
                reader.skip(21L);
                try {
                    return reader.c() >= 3 ? ImageHeaderParser.ImageType.PNG_A : ImageHeaderParser.ImageType.PNG;
                } catch (Reader.EndOfFileException unused) {
                    return ImageHeaderParser.ImageType.PNG;
                }
            }
            if (iC2 == 1380533830) {
                reader.skip(4L);
                if (((reader.a() << 16) | reader.a()) != 1464156752) {
                    return ImageHeaderParser.ImageType.UNKNOWN;
                }
                int iA2 = (reader.a() << 16) | reader.a();
                if ((iA2 & (-256)) != 1448097792) {
                    return ImageHeaderParser.ImageType.UNKNOWN;
                }
                int i2 = iA2 & 255;
                if (i2 != 88) {
                    if (i2 != 76) {
                        return ImageHeaderParser.ImageType.WEBP;
                    }
                    reader.skip(4L);
                    return (reader.c() & 8) != 0 ? ImageHeaderParser.ImageType.WEBP_A : ImageHeaderParser.ImageType.WEBP;
                }
                reader.skip(4L);
                short sC = reader.c();
                if ((sC & 2) != 0) {
                    return ImageHeaderParser.ImageType.ANIMATED_WEBP;
                }
                return (sC & 16) != 0 ? ImageHeaderParser.ImageType.WEBP_A : ImageHeaderParser.ImageType.WEBP;
            }
            if (((reader.a() << 16) | reader.a()) != 1718909296) {
                return ImageHeaderParser.ImageType.UNKNOWN;
            }
            int iA3 = (reader.a() << 16) | reader.a();
            if (iA3 == 1635150195) {
                return ImageHeaderParser.ImageType.ANIMATED_AVIF;
            }
            int i3 = 0;
            boolean z = iA3 == 1635150182;
            reader.skip(4L);
            int i4 = iC2 - 16;
            if (i4 % 4 == 0) {
                while (i3 < 5 && i4 > 0) {
                    int iA4 = (reader.a() << 16) | reader.a();
                    if (iA4 == 1635150195) {
                        return ImageHeaderParser.ImageType.ANIMATED_AVIF;
                    }
                    if (iA4 == 1635150182) {
                        z = true;
                    }
                    i3++;
                    i4 -= 4;
                }
            }
            return z ? ImageHeaderParser.ImageType.AVIF : ImageHeaderParser.ImageType.UNKNOWN;
        } catch (Reader.EndOfFileException unused2) {
            return ImageHeaderParser.ImageType.UNKNOWN;
        }
    }

    public static boolean i(Reader reader, ArrayPool arrayPool) {
        boolean zJ;
        if (h(reader) != ImageHeaderParser.ImageType.JPEG) {
            return false;
        }
        int iK = k(reader, 226);
        while (iK > 0) {
            byte[] bArr = (byte[]) arrayPool.c(iK, byte[].class);
            try {
                if (reader.b(iK, bArr) != iK) {
                    Log.isLoggable("DfltImageHeaderParser", 3);
                    zJ = false;
                } else {
                    zJ = j(iK, bArr, f24763b);
                }
                if (zJ) {
                    arrayPool.put(bArr);
                    return true;
                }
                arrayPool.put(bArr);
                iK = k(reader, 226);
            } catch (Throwable th) {
                arrayPool.put(bArr);
                throw th;
            }
        }
        Log.isLoggable("DfltImageHeaderParser", 2);
        return false;
    }

    public static boolean j(int i2, byte[] bArr, byte[] bArr2) {
        boolean z = (bArr == null || bArr2 == null || i2 <= bArr2.length) ? false : true;
        if (z) {
            for (int i3 = 0; i3 < bArr2.length; i3++) {
                if (bArr[i3] != bArr2[i3]) {
                    return false;
                }
            }
        }
        return z;
    }

    public static int k(Reader reader, int i2) {
        while (reader.c() == 255) {
            short sC = reader.c();
            if (sC == 218) {
                return -1;
            }
            if (sC == 217) {
                Log.isLoggable("DfltImageHeaderParser", 3);
                return -1;
            }
            int iA = reader.a() - 2;
            if (sC == i2) {
                return iA;
            }
            long j2 = iA;
            if (reader.skip(j2) != j2) {
                Log.isLoggable("DfltImageHeaderParser", 3);
                return -1;
            }
        }
        Log.isLoggable("DfltImageHeaderParser", 3);
        return -1;
    }

    public static int l(Reader reader, byte[] bArr, int i2) {
        ByteOrder byteOrder;
        if (reader.b(i2, bArr) != i2) {
            Log.isLoggable("DfltImageHeaderParser", 3);
            return -1;
        }
        if (!j(i2, bArr, f24762a)) {
            Log.isLoggable("DfltImageHeaderParser", 3);
            return -1;
        }
        RandomAccessReader randomAccessReader = new RandomAccessReader(bArr, i2);
        short sA = randomAccessReader.a(6);
        if (sA == 18761) {
            byteOrder = ByteOrder.LITTLE_ENDIAN;
        } else if (sA != 19789) {
            Log.isLoggable("DfltImageHeaderParser", 3);
            byteOrder = ByteOrder.BIG_ENDIAN;
        } else {
            byteOrder = ByteOrder.BIG_ENDIAN;
        }
        ByteBuffer byteBuffer = randomAccessReader.f24766a;
        byteBuffer.order(byteOrder);
        int i3 = byteBuffer.remaining() - 10 >= 4 ? byteBuffer.getInt(10) : -1;
        short sA2 = randomAccessReader.a(i3 + 6);
        for (int i4 = 0; i4 < sA2; i4++) {
            int i5 = (i4 * 12) + i3 + 8;
            if (randomAccessReader.a(i5) == 274) {
                short sA3 = randomAccessReader.a(i5 + 2);
                if (sA3 < 1 || sA3 > 12) {
                    Log.isLoggable("DfltImageHeaderParser", 3);
                } else {
                    int i6 = i5 + 4;
                    int i7 = byteBuffer.remaining() - i6 >= 4 ? byteBuffer.getInt(i6) : -1;
                    if (i7 < 0) {
                        Log.isLoggable("DfltImageHeaderParser", 3);
                    } else {
                        Log.isLoggable("DfltImageHeaderParser", 3);
                        int i8 = i7 + f24764c[sA3];
                        if (i8 > 4) {
                            Log.isLoggable("DfltImageHeaderParser", 3);
                        } else {
                            int i9 = i5 + 8;
                            if (i9 < 0 || i9 > byteBuffer.remaining()) {
                                Log.isLoggable("DfltImageHeaderParser", 3);
                            } else {
                                if (i8 >= 0 && i8 + i9 <= byteBuffer.remaining()) {
                                    return randomAccessReader.a(i9);
                                }
                                Log.isLoggable("DfltImageHeaderParser", 3);
                            }
                        }
                    }
                }
            }
        }
        return -1;
    }

    @Override // com.bumptech.glide.load.ImageHeaderParser
    public final ImageHeaderParser.ImageType a(ByteBuffer byteBuffer) {
        Preconditions.c(byteBuffer, "Argument must not be null");
        return h(new ByteBufferReader(byteBuffer));
    }

    @Override // com.bumptech.glide.load.ImageHeaderParser
    public final boolean b(ByteBuffer byteBuffer, ArrayPool arrayPool) {
        Preconditions.c(byteBuffer, "Argument must not be null");
        ByteBufferReader byteBufferReader = new ByteBufferReader(byteBuffer);
        Preconditions.c(arrayPool, "Argument must not be null");
        return i(byteBufferReader, arrayPool);
    }

    @Override // com.bumptech.glide.load.ImageHeaderParser
    public final int c(ByteBuffer byteBuffer, ArrayPool arrayPool) {
        Preconditions.c(byteBuffer, "Argument must not be null");
        ByteBufferReader byteBufferReader = new ByteBufferReader(byteBuffer);
        Preconditions.c(arrayPool, "Argument must not be null");
        return g(byteBufferReader, arrayPool);
    }

    @Override // com.bumptech.glide.load.ImageHeaderParser
    public final ImageHeaderParser.ImageType d(InputStream inputStream) {
        return h(new StreamReader(inputStream));
    }

    @Override // com.bumptech.glide.load.ImageHeaderParser
    public final int e(InputStream inputStream, ArrayPool arrayPool) {
        StreamReader streamReader = new StreamReader(inputStream);
        Preconditions.c(arrayPool, "Argument must not be null");
        return g(streamReader, arrayPool);
    }

    @Override // com.bumptech.glide.load.ImageHeaderParser
    public final boolean f(InputStream inputStream, ArrayPool arrayPool) {
        StreamReader streamReader = new StreamReader(inputStream);
        Preconditions.c(arrayPool, "Argument must not be null");
        return i(streamReader, arrayPool);
    }
}
