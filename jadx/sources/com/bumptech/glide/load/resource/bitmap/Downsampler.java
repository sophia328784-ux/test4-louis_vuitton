package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.ColorSpace;
import android.graphics.Matrix;
import android.os.SystemClock;
import android.util.DisplayMetrics;
import android.util.Log;
import com.bumptech.glide.load.DecodeFormat;
import com.bumptech.glide.load.ImageHeaderParser;
import com.bumptech.glide.load.Option;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.PreferredColorSpace;
import com.bumptech.glide.load.engine.bitmap_recycle.ArrayPool;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import com.bumptech.glide.util.LogTime;
import com.bumptech.glide.util.Preconditions;
import defpackage.fc;
import defpackage.md;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.Arrays;
import java.util.Collections;
import java.util.EnumSet;
import java.util.HashSet;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes2.dex */
public final class Downsampler {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final Option f24773f = Option.a(DecodeFormat.DEFAULT, "com.bumptech.glide.load.resource.bitmap.Downsampler.DecodeFormat");
    public static final Option g = new Option("com.bumptech.glide.load.resource.bitmap.Downsampler.PreferredColorSpace", null, Option.f24396e);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final Option f24774h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final Option f24775i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final Set f24776j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final DecodeCallbacks f24777k;
    public static final Set l;
    public static final ArrayDeque m;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final BitmapPool f24778a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final DisplayMetrics f24779b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ArrayPool f24780c;
    public final List d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final HardwareConfigState f24781e = HardwareConfigState.a();

    /* JADX INFO: renamed from: com.bumptech.glide.load.resource.bitmap.Downsampler$1, reason: invalid class name */
    public class AnonymousClass1 implements DecodeCallbacks {
        @Override // com.bumptech.glide.load.resource.bitmap.Downsampler.DecodeCallbacks
        public final void a(Bitmap bitmap, BitmapPool bitmapPool) {
        }

        @Override // com.bumptech.glide.load.resource.bitmap.Downsampler.DecodeCallbacks
        public final void b() {
        }
    }

    public interface DecodeCallbacks {
        void a(Bitmap bitmap, BitmapPool bitmapPool);

        void b();
    }

    static {
        DownsampleStrategy downsampleStrategy = DownsampleStrategy.f24768a;
        Boolean bool = Boolean.FALSE;
        f24774h = Option.a(bool, "com.bumptech.glide.load.resource.bitmap.Downsampler.FixBitmapSize");
        f24775i = Option.a(bool, "com.bumptech.glide.load.resource.bitmap.Downsampler.AllowHardwareDecode");
        f24776j = Collections.unmodifiableSet(new HashSet(Arrays.asList("image/vnd.wap.wbmp", "image/x-ico")));
        f24777k = new AnonymousClass1();
        l = Collections.unmodifiableSet(EnumSet.of(ImageHeaderParser.ImageType.JPEG, ImageHeaderParser.ImageType.PNG_A, ImageHeaderParser.ImageType.PNG));
        m = new ArrayDeque(0);
    }

    public Downsampler(List<ImageHeaderParser> list, DisplayMetrics displayMetrics, BitmapPool bitmapPool, ArrayPool arrayPool) {
        this.d = list;
        Preconditions.c(displayMetrics, "Argument must not be null");
        this.f24779b = displayMetrics;
        Preconditions.c(bitmapPool, "Argument must not be null");
        this.f24778a = bitmapPool;
        Preconditions.c(arrayPool, "Argument must not be null");
        this.f24780c = arrayPool;
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:?, code lost:
    
        throw r4;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.graphics.Bitmap c(com.bumptech.glide.load.resource.bitmap.ImageReader r8, android.graphics.BitmapFactory.Options r9, com.bumptech.glide.load.resource.bitmap.Downsampler.DecodeCallbacks r10, com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool r11) {
        /*
            boolean r0 = r9.inJustDecodeBounds
            if (r0 != 0) goto La
            r10.b()
            r8.c()
        La:
            int r0 = r9.outWidth
            int r1 = r9.outHeight
            java.lang.String r2 = r9.outMimeType
            java.util.concurrent.locks.Lock r3 = com.bumptech.glide.load.resource.bitmap.TransformationUtils.f24816b
            r3.lock()
            android.graphics.Bitmap r8 = r8.a(r9)     // Catch: java.lang.IllegalArgumentException -> L1d java.lang.Throwable -> L5e
            r3.unlock()
            return r8
        L1d:
            r3 = move-exception
            java.io.IOException r4 = new java.io.IOException     // Catch: java.lang.Throwable -> L5e
            java.lang.String r5 = "Exception decoding bitmap, outWidth: "
            java.lang.String r6 = ", outHeight: "
            java.lang.String r7 = ", outMimeType: "
            java.lang.StringBuilder r0 = defpackage.fc.p(r0, r1, r5, r6, r7)     // Catch: java.lang.Throwable -> L5e
            r0.append(r2)     // Catch: java.lang.Throwable -> L5e
            java.lang.String r1 = ", inBitmap: "
            r0.append(r1)     // Catch: java.lang.Throwable -> L5e
            android.graphics.Bitmap r1 = r9.inBitmap     // Catch: java.lang.Throwable -> L5e
            java.lang.String r1 = d(r1)     // Catch: java.lang.Throwable -> L5e
            r0.append(r1)     // Catch: java.lang.Throwable -> L5e
            java.lang.String r0 = r0.toString()     // Catch: java.lang.Throwable -> L5e
            r4.<init>(r0, r3)     // Catch: java.lang.Throwable -> L5e
            java.lang.String r0 = "Downsampler"
            r1 = 3
            android.util.Log.isLoggable(r0, r1)     // Catch: java.lang.Throwable -> L5e
            android.graphics.Bitmap r0 = r9.inBitmap     // Catch: java.lang.Throwable -> L5e
            if (r0 == 0) goto L5d
            r11.d(r0)     // Catch: java.io.IOException -> L5c java.lang.Throwable -> L5e
            r0 = 0
            r9.inBitmap = r0     // Catch: java.io.IOException -> L5c java.lang.Throwable -> L5e
            android.graphics.Bitmap r8 = c(r8, r9, r10, r11)     // Catch: java.io.IOException -> L5c java.lang.Throwable -> L5e
            java.util.concurrent.locks.Lock r9 = com.bumptech.glide.load.resource.bitmap.TransformationUtils.f24816b
            r9.unlock()
            return r8
        L5c:
            throw r4     // Catch: java.lang.Throwable -> L5e
        L5d:
            throw r4     // Catch: java.lang.Throwable -> L5e
        L5e:
            r8 = move-exception
            java.util.concurrent.locks.Lock r9 = com.bumptech.glide.load.resource.bitmap.TransformationUtils.f24816b
            r9.unlock()
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.load.resource.bitmap.Downsampler.c(com.bumptech.glide.load.resource.bitmap.ImageReader, android.graphics.BitmapFactory$Options, com.bumptech.glide.load.resource.bitmap.Downsampler$DecodeCallbacks, com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool):android.graphics.Bitmap");
    }

    public static String d(Bitmap bitmap) {
        if (bitmap == null) {
            return null;
        }
        return "[" + bitmap.getWidth() + "x" + bitmap.getHeight() + "] " + bitmap.getConfig() + (" (" + bitmap.getAllocationByteCount() + ")");
    }

    public static void e(BitmapFactory.Options options) {
        options.inTempStorage = null;
        options.inDither = false;
        options.inScaled = false;
        options.inSampleSize = 1;
        options.inPreferredConfig = null;
        options.inJustDecodeBounds = false;
        options.inDensity = 0;
        options.inTargetDensity = 0;
        options.inPreferredColorSpace = null;
        options.outColorSpace = null;
        options.outConfig = null;
        options.outWidth = 0;
        options.outHeight = 0;
        options.outMimeType = null;
        options.inBitmap = null;
        options.inMutable = true;
    }

    public final BitmapResource a(ImageReader imageReader, int i2, int i3, Options options, DecodeCallbacks decodeCallbacks) {
        ArrayDeque arrayDeque;
        BitmapFactory.Options options2;
        byte[] bArr = (byte[]) this.f24780c.c(65536, byte[].class);
        synchronized (Downsampler.class) {
            arrayDeque = m;
            synchronized (arrayDeque) {
                options2 = (BitmapFactory.Options) arrayDeque.poll();
            }
            if (options2 == null) {
                options2 = new BitmapFactory.Options();
                e(options2);
            }
        }
        options2.inTempStorage = bArr;
        DecodeFormat decodeFormat = (DecodeFormat) options.c(f24773f);
        PreferredColorSpace preferredColorSpace = (PreferredColorSpace) options.c(g);
        DownsampleStrategy downsampleStrategy = (DownsampleStrategy) options.c(DownsampleStrategy.f24772f);
        boolean zBooleanValue = ((Boolean) options.c(f24774h)).booleanValue();
        Option option = f24775i;
        try {
            BitmapResource bitmapResourceC = BitmapResource.c(b(imageReader, options2, downsampleStrategy, decodeFormat, preferredColorSpace, options.c(option) != null && ((Boolean) options.c(option)).booleanValue(), i2, i3, zBooleanValue, decodeCallbacks), this.f24778a);
            e(options2);
            synchronized (arrayDeque) {
                arrayDeque.offer(options2);
            }
            return bitmapResourceC;
        } finally {
            e(options2);
            ArrayDeque arrayDeque2 = m;
            synchronized (arrayDeque2) {
                arrayDeque2.offer(options2);
                this.f24780c.put(bArr);
            }
        }
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public final Bitmap b(ImageReader imageReader, BitmapFactory.Options options, DownsampleStrategy downsampleStrategy, DecodeFormat decodeFormat, PreferredColorSpace preferredColorSpace, boolean z, int i2, int i3, boolean z2, DecodeCallbacks decodeCallbacks) {
        char c2;
        boolean z3;
        int i4;
        boolean zHasAlpha;
        int i5;
        Bitmap bitmapCreateBitmap;
        ColorSpace colorSpace;
        Bitmap.Config config;
        int i6;
        int i7;
        int iFloor;
        int iFloor2;
        int i8 = LogTime.f24987a;
        SystemClock.elapsedRealtimeNanos();
        options.inJustDecodeBounds = true;
        BitmapPool bitmapPool = this.f24778a;
        c(imageReader, options, decodeCallbacks, bitmapPool);
        options.inJustDecodeBounds = false;
        int[] iArr = {options.outWidth, options.outHeight};
        int i9 = iArr[0];
        int i10 = iArr[1];
        boolean z4 = (i9 == -1 || i10 == -1) ? false : z;
        int iD = imageReader.d();
        switch (iD) {
            case 3:
            case 4:
                c2 = 180;
                break;
            case 5:
            case 6:
                c2 = 'Z';
                break;
            case 7:
            case 8:
                c2 = 270;
                break;
            default:
                c2 = 0;
                break;
        }
        switch (iD) {
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
                z3 = true;
                break;
            default:
                z3 = false;
                break;
        }
        int i11 = i2;
        if (i11 == Integer.MIN_VALUE) {
            i11 = (c2 == 'Z' || c2 == 270) ? i10 : i9;
        }
        if (i3 == -2147483648) {
            i3 = (c2 == 'Z' || c2 == 270) ? i9 : i10;
        }
        ImageHeaderParser.ImageType imageTypeE = imageReader.e();
        if (i9 <= 0 || i10 <= 0) {
            i4 = i9;
            if (Log.isLoggable("Downsampler", 3)) {
                Objects.toString(imageTypeE);
            }
        } else {
            if (c2 == 'Z' || c2 == 270) {
                i6 = i10;
                i7 = i9;
            } else {
                i7 = i10;
                i6 = i9;
            }
            float fB = downsampleStrategy.b(i6, i7, i11, i3);
            if (fB <= Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                StringBuilder sb = new StringBuilder("Cannot scale with factor: ");
                sb.append(fB);
                sb.append(" from: ");
                sb.append(downsampleStrategy);
                sb.append(", source: [");
                fc.x(i9, i10, "x", "], target: [", sb);
                sb.append(i11);
                sb.append("x");
                sb.append(i3);
                sb.append("]");
                throw new IllegalArgumentException(sb.toString());
            }
            DownsampleStrategy.SampleSizeRounding sampleSizeRoundingA = downsampleStrategy.a(i6, i7, i11, i3);
            if (sampleSizeRoundingA == null) {
                md.n("Cannot round with null rounding");
                return null;
            }
            float f2 = i6;
            float f3 = i7;
            int i12 = i6 / ((int) (((double) (fB * f2)) + 0.5d));
            int i13 = i7 / ((int) (((double) (fB * f3)) + 0.5d));
            DownsampleStrategy.SampleSizeRounding sampleSizeRounding = DownsampleStrategy.SampleSizeRounding.MEMORY;
            int iMax = Math.max(1, Integer.highestOneBit(sampleSizeRoundingA == sampleSizeRounding ? Math.max(i12, i13) : Math.min(i12, i13)));
            if (sampleSizeRoundingA == sampleSizeRounding && iMax < 1.0f / fB) {
                iMax <<= 1;
            }
            options.inSampleSize = iMax;
            if (imageTypeE == ImageHeaderParser.ImageType.JPEG) {
                float fMin = Math.min(iMax, 8);
                iFloor = (int) Math.ceil(f2 / fMin);
                iFloor2 = (int) Math.ceil(f3 / fMin);
                int i14 = iMax / 8;
                if (i14 > 0) {
                    iFloor /= i14;
                    iFloor2 /= i14;
                }
            } else if (imageTypeE == ImageHeaderParser.ImageType.PNG || imageTypeE == ImageHeaderParser.ImageType.PNG_A) {
                float f4 = iMax;
                iFloor = (int) Math.floor(f2 / f4);
                iFloor2 = (int) Math.floor(f3 / f4);
            } else if (imageTypeE.isWebp()) {
                float f5 = iMax;
                iFloor = Math.round(f2 / f5);
                iFloor2 = Math.round(f3 / f5);
            } else if (i6 % iMax == 0 && i7 % iMax == 0) {
                iFloor = i6 / iMax;
                iFloor2 = i7 / iMax;
            } else {
                options.inJustDecodeBounds = true;
                c(imageReader, options, decodeCallbacks, bitmapPool);
                options.inJustDecodeBounds = false;
                int[] iArr2 = {options.outWidth, options.outHeight};
                iFloor = iArr2[0];
                iFloor2 = iArr2[1];
            }
            double dB = downsampleStrategy.b(iFloor, iFloor2, i11, i3);
            int iRound = (int) Math.round((dB <= 1.0d ? dB : 1.0d / dB) * 2.147483647E9d);
            int i15 = (int) ((((double) iRound) * dB) + 0.5d);
            options.inTargetDensity = (int) (((dB / ((double) (i15 / iRound))) * ((double) i15)) + 0.5d);
            if (dB > 1.0d) {
                dB = 1.0d / dB;
            }
            int iRound2 = (int) Math.round(dB * 2.147483647E9d);
            options.inDensity = iRound2;
            int i16 = options.inTargetDensity;
            if (i16 <= 0 || iRound2 <= 0 || i16 == iRound2) {
                options.inTargetDensity = 0;
                options.inDensity = 0;
            } else {
                options.inScaled = true;
            }
            Log.isLoggable("Downsampler", 2);
            i4 = i9;
            i10 = i10;
        }
        boolean zB = this.f24781e.b(i11, i3, z4, z3);
        if (zB) {
            options.inPreferredConfig = Bitmap.Config.HARDWARE;
            zHasAlpha = false;
            options.inMutable = false;
        } else {
            zHasAlpha = false;
        }
        if (!zB) {
            if (decodeFormat != DecodeFormat.PREFER_ARGB_8888) {
                try {
                    zHasAlpha = imageReader.e().hasAlpha();
                } catch (IOException unused) {
                    if (Log.isLoggable("Downsampler", 3)) {
                        Objects.toString(decodeFormat);
                    }
                }
                Bitmap.Config config2 = zHasAlpha ? Bitmap.Config.ARGB_8888 : Bitmap.Config.RGB_565;
                options.inPreferredConfig = config2;
                if (config2 == Bitmap.Config.RGB_565) {
                    options.inDither = true;
                }
            } else {
                options.inPreferredConfig = Bitmap.Config.ARGB_8888;
            }
        }
        if (i4 < 0 || i10 < 0 || !z2) {
            int i17 = options.inTargetDensity;
            float f6 = (i17 <= 0 || (i5 = options.inDensity) <= 0 || i17 == i5) ? 1.0f : i17 / i5;
            float f7 = options.inSampleSize;
            int iCeil = (int) Math.ceil(i4 / f7);
            int iCeil2 = (int) Math.ceil(i10 / f7);
            int iRound3 = Math.round(iCeil * f6);
            i3 = Math.round(iCeil2 * f6);
            Log.isLoggable("Downsampler", 2);
            i11 = iRound3;
        }
        if (i11 > 0 && i3 > 0 && (config = options.inPreferredConfig) != Bitmap.Config.HARDWARE) {
            Bitmap.Config config3 = options.outConfig;
            if (config3 != null) {
                config = config3;
            }
            options.inBitmap = bitmapPool.c(i11, i3, config);
        }
        if (preferredColorSpace != null) {
            options.inPreferredColorSpace = ColorSpace.get((preferredColorSpace == PreferredColorSpace.DISPLAY_P3 && (colorSpace = options.outColorSpace) != null && colorSpace.isWideGamut()) ? ColorSpace.Named.DISPLAY_P3 : ColorSpace.Named.SRGB);
        }
        Bitmap bitmapC = c(imageReader, options, decodeCallbacks, bitmapPool);
        decodeCallbacks.a(bitmapC, bitmapPool);
        if (Log.isLoggable("Downsampler", 2)) {
            d(bitmapC);
            d(options.inBitmap);
            Thread.currentThread().getName();
            SystemClock.elapsedRealtimeNanos();
        }
        if (bitmapC == null) {
            return null;
        }
        bitmapC.setDensity(this.f24779b.densityDpi);
        switch (iD) {
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
                Matrix matrix = new Matrix();
                switch (iD) {
                    case 2:
                        matrix.setScale(-1.0f, 1.0f);
                        break;
                    case 3:
                        matrix.setRotate(180.0f);
                        break;
                    case 4:
                        matrix.setRotate(180.0f);
                        matrix.postScale(-1.0f, 1.0f);
                        break;
                    case 5:
                        matrix.setRotate(90.0f);
                        matrix.postScale(-1.0f, 1.0f);
                        break;
                    case 6:
                        matrix.setRotate(90.0f);
                        break;
                    case 7:
                        matrix.setRotate(-90.0f);
                        matrix.postScale(-1.0f, 1.0f);
                        break;
                    case 8:
                        matrix.setRotate(-90.0f);
                        break;
                }
                bitmapCreateBitmap = Bitmap.createBitmap(bitmapC, 0, 0, bitmapC.getWidth(), bitmapC.getHeight(), matrix, true);
                break;
            default:
                bitmapCreateBitmap = bitmapC;
                break;
        }
        if (!bitmapC.equals(bitmapCreateBitmap)) {
            bitmapPool.d(bitmapC);
        }
        return bitmapCreateBitmap;
    }
}
