package com.canhub.cropper;

import android.content.ContentResolver;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapRegionDecoder;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.net.Uri;
import android.os.Build;
import android.util.Pair;
import androidx.exifinterface.media.ExifInterface;
import com.canhub.cropper.utils.GetUriForFileKt;
import defpackage.fc;
import defpackage.r81;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import javax.microedition.khronos.egl.EGL;
import javax.microedition.khronos.egl.EGL10;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.egl.EGLContext;
import javax.microedition.khronos.egl.EGLDisplay;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.io.CloseableKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.math.MathKt;
import kotlin.text.StringsKt;
import net.rtccloud.sdk.Call;
import net.rtccloud.sdk.Sink;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\bÀ\u0002\u0018\u00002\u00020\u0001:\u0002\u0002\u0003¨\u0006\u0004"}, d2 = {"Lcom/canhub/cropper/BitmapUtils;", "", "BitmapSampled", "RotateBitmapResult", "cropper_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public abstract class BitmapUtils {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Rect f25037a = new Rect();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final RectF f25038b = new RectF();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final RectF f25039c = new RectF();
    public static final float[] d = new float[6];

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final float[] f25040e = new float[6];

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static int f25041f;
    public static Pair g;

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001B\u0019\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/canhub/cropper/BitmapUtils$BitmapSampled;", "", "Landroid/graphics/Bitmap;", "bitmap", "", "sampleSize", "<init>", "(Landroid/graphics/Bitmap;I)V", "cropper_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class BitmapSampled {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Bitmap f25042a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f25043b;

        public BitmapSampled(Bitmap bitmap, int i2) {
            this.f25042a = bitmap;
            this.f25043b = i2;
        }
    }

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\b\u0000\u0018\u00002\u00020\u0001B)\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\b\u001a\u00020\u0006¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/canhub/cropper/BitmapUtils$RotateBitmapResult;", "", "Landroid/graphics/Bitmap;", "bitmap", "", "degrees", "", "flipHorizontally", "flipVertically", "<init>", "(Landroid/graphics/Bitmap;IZZ)V", "cropper_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class RotateBitmapResult {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Bitmap f25044a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f25045b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final boolean f25046c;
        public final boolean d;

        public RotateBitmapResult(Bitmap bitmap, int i2, boolean z, boolean z2) {
            this.f25044a = bitmap;
            this.f25045b = i2;
            this.f25046c = z;
            this.d = z2;
        }
    }

    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f25047a;

        static {
            int[] iArr = new int[Bitmap.CompressFormat.values().length];
            try {
                iArr[Bitmap.CompressFormat.JPEG.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[Bitmap.CompressFormat.PNG.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f25047a = iArr;
        }
    }

    public static int a(int i2, int i3) {
        int i4 = 1;
        if (f25041f == 0) {
            int iMax = 2048;
            try {
                EGL egl = EGLContext.getEGL();
                egl.getClass();
                EGL10 egl10 = (EGL10) egl;
                EGLDisplay eGLDisplayEglGetDisplay = egl10.eglGetDisplay(EGL10.EGL_DEFAULT_DISPLAY);
                egl10.eglInitialize(eGLDisplayEglGetDisplay, new int[2]);
                int[] iArr = new int[1];
                egl10.eglGetConfigs(eGLDisplayEglGetDisplay, null, 0, iArr);
                int i5 = iArr[0];
                EGLConfig[] eGLConfigArr = new EGLConfig[i5];
                egl10.eglGetConfigs(eGLDisplayEglGetDisplay, eGLConfigArr, i5, iArr);
                int[] iArr2 = new int[1];
                int i6 = iArr[0];
                int i7 = 0;
                for (int i8 = 0; i8 < i6; i8++) {
                    egl10.eglGetConfigAttrib(eGLDisplayEglGetDisplay, eGLConfigArr[i8], 12332, iArr2);
                    int i9 = iArr2[0];
                    if (i7 < i9) {
                        i7 = i9;
                    }
                }
                egl10.eglTerminate(eGLDisplayEglGetDisplay);
                iMax = Math.max(i7, 2048);
            } catch (Exception unused) {
            }
            f25041f = iMax;
        }
        if (f25041f > 0) {
            while (true) {
                int i10 = i3 / i4;
                int i11 = f25041f;
                if (i10 <= i11 && i2 / i4 <= i11) {
                    break;
                }
                i4 *= 2;
            }
        }
        return i4;
    }

    public static int b(int i2, int i3, int i4, int i5) {
        int i6 = 1;
        if (i3 <= i5 && i2 <= i4) {
            return 1;
        }
        while ((i3 / 2) / i6 > i5 && (i2 / 2) / i6 > i4) {
            i6 *= 2;
        }
        return i6;
    }

    public static BitmapSampled c(Context context, Uri uri, float[] fArr, int i2, int i3, int i4, boolean z, int i5, int i6, int i7, int i8, boolean z2, boolean z3) {
        context.getClass();
        fArr.getClass();
        int i9 = 1;
        do {
            try {
                uri.getClass();
                return d(context, uri, fArr, i2, i3, i4, z, i5, i6, i7, i8, z2, z3, i9);
            } catch (OutOfMemoryError e2) {
                i9 *= 2;
            }
        } while (i9 <= 16);
        throw new RuntimeException("Failed to handle OOM by sampling (" + i9 + "): " + uri + "\r\n" + e2.getMessage(), e2);
    }

    /* JADX WARN: Code duplicated, block: B:19:0x0045  */
    /* JADX WARN: Code duplicated, block: B:24:0x0057  */
    /* JADX WARN: Code duplicated, block: B:25:0x0059  */
    /* JADX WARN: Code duplicated, block: B:28:0x005d  */
    /* JADX WARN: Code duplicated, block: B:33:0x007e A[Catch: OutOfMemoryError -> 0x0082, TRY_LEAVE, TryCatch #8 {OutOfMemoryError -> 0x0082, blocks: (B:31:0x0071, B:33:0x007e), top: B:91:0x0071 }] */
    /* JADX WARN: Code duplicated, block: B:39:0x0088 A[Catch: OutOfMemoryError -> 0x0097, TRY_LEAVE, TryCatch #3 {OutOfMemoryError -> 0x0097, blocks: (B:37:0x0084, B:39:0x0088), top: B:83:0x0084 }] */
    /* JADX WARN: Code duplicated, block: B:49:0x00a7  */
    /* JADX WARN: Code duplicated, block: B:54:0x00d6 A[Catch: all -> 0x00e1, TRY_LEAVE, TryCatch #1 {all -> 0x00e1, blocks: (B:52:0x00cc, B:54:0x00d6), top: B:79:0x00cc }] */
    /* JADX WARN: Code duplicated, block: B:62:0x00fe A[Catch: Exception -> 0x0102, OutOfMemoryError -> 0x0104, TryCatch #10 {Exception -> 0x0102, OutOfMemoryError -> 0x0104, blocks: (B:50:0x00aa, B:60:0x00f8, B:62:0x00fe, B:68:0x0107, B:69:0x010a), top: B:95:0x00aa }] */
    /* JADX WARN: Code duplicated, block: B:79:0x00cc A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:89:0x004b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    public static BitmapSampled d(Context context, Uri uri, float[] fArr, int i2, int i3, int i4, boolean z, int i5, int i6, int i7, int i8, boolean z2, boolean z3, int i9) throws Throwable {
        Uri uri2;
        Bitmap bitmap;
        Bitmap bitmapCreateBitmap;
        int i10;
        BitmapFactory.Options options;
        Bitmap bitmapH;
        Bitmap bitmap2;
        int length;
        float[] fArr2;
        int i11;
        Bitmap bitmap3;
        int i12;
        Rect rectM = m(fArr, i3, i4, z, i5, i6);
        int iWidth = i7 > 0 ? i7 : rectM.width();
        int iHeight = i8 > 0 ? i8 : rectM.height();
        Bitmap bitmapF = null;
        try {
            BitmapSampled bitmapSampledJ = j(context, uri, rectM, iWidth, iHeight, i9);
            uri2 = uri;
            try {
                bitmap = bitmapSampledJ.f25042a;
                try {
                    bitmapCreateBitmap = bitmap;
                    i10 = bitmapSampledJ.f25043b;
                } catch (Exception unused) {
                    bitmapCreateBitmap = bitmap;
                    i10 = 1;
                }
            } catch (Exception unused2) {
                bitmap = null;
                bitmapCreateBitmap = bitmap;
                i10 = 1;
                if (bitmapCreateBitmap == null) {
                    try {
                        options = new BitmapFactory.Options();
                        int iB = b(rectM.width(), rectM.height(), iWidth, iHeight) * i9;
                        options.inSampleSize = iB;
                        ContentResolver contentResolver = context.getContentResolver();
                        contentResolver.getClass();
                        bitmapH = h(contentResolver, uri2, options);
                        if (bitmapH != null) {
                            try {
                                length = fArr.length;
                                fArr2 = new float[length];
                                System.arraycopy(fArr, 0, fArr2, 0, fArr.length);
                                for (i11 = 0; i11 < length; i11++) {
                                    fArr2[i11] = fArr2[i11] / options.inSampleSize;
                                }
                                bitmap2 = bitmapH;
                                try {
                                    bitmapF = f(bitmap2, fArr2, i2, z, i5, i6, 1.0f, z2, z3);
                                    if (!Intrinsics.c(bitmapF, bitmap2)) {
                                        bitmap2.recycle();
                                    }
                                } catch (Throwable th) {
                                    th = th;
                                    bitmap2.recycle();
                                    throw th;
                                }
                            } catch (Throwable th2) {
                                th = th2;
                                bitmap2 = bitmapH;
                            }
                        }
                        return new BitmapSampled(bitmapF, iB);
                    } catch (Exception e2) {
                        throw new CropException.FailedToLoadBitmap(uri2, e2.getMessage());
                    } catch (OutOfMemoryError e3) {
                        if (0 != 0) {
                            bitmapF.recycle();
                        }
                        throw e3;
                    }
                }
                if (i2 > 0) {
                    Matrix matrix = new Matrix();
                    matrix.setRotate(i2);
                    if (z2) {
                        i12 = -1;
                    } else {
                        i12 = 1;
                    }
                    matrix.postScale(i12, z3 ? -1 : 1);
                    bitmap3 = bitmapCreateBitmap;
                    bitmapCreateBitmap = Bitmap.createBitmap(bitmap3, 0, 0, bitmapCreateBitmap.getWidth(), bitmapCreateBitmap.getHeight(), matrix, false);
                    bitmapCreateBitmap.getClass();
                    if (!bitmapCreateBitmap.equals(bitmap3)) {
                        bitmap3.recycle();
                    }
                    if (i2 % 90 != 0) {
                        bitmapCreateBitmap = g(bitmapCreateBitmap, fArr, rectM, i2, z, i5, i6);
                    }
                    return new BitmapSampled(bitmapCreateBitmap, i10);
                }
                try {
                    Matrix matrix2 = new Matrix();
                    matrix2.setRotate(i2);
                    if (z2) {
                        i12 = -1;
                    } else {
                        i12 = 1;
                    }
                    matrix2.postScale(i12, z3 ? -1 : 1);
                    bitmap3 = bitmapCreateBitmap;
                    try {
                        bitmapCreateBitmap = Bitmap.createBitmap(bitmap3, 0, 0, bitmapCreateBitmap.getWidth(), bitmapCreateBitmap.getHeight(), matrix2, false);
                        bitmapCreateBitmap.getClass();
                        if (!bitmapCreateBitmap.equals(bitmap3)) {
                            bitmap3.recycle();
                        }
                        try {
                            if (i2 % 90 != 0) {
                                bitmapCreateBitmap = g(bitmapCreateBitmap, fArr, rectM, i2, z, i5, i6);
                            }
                            return new BitmapSampled(bitmapCreateBitmap, i10);
                        } catch (OutOfMemoryError e4) {
                            e = e4;
                            bitmapCreateBitmap.recycle();
                            throw e;
                        }
                    } catch (OutOfMemoryError e5) {
                        e = e5;
                        bitmapCreateBitmap = bitmap3;
                        bitmapCreateBitmap.recycle();
                        throw e;
                    }
                } catch (OutOfMemoryError e6) {
                    e = e6;
                    bitmap3 = bitmapCreateBitmap;
                }
                bitmapCreateBitmap.recycle();
                throw e;
            }
        } catch (Exception unused3) {
            uri2 = uri;
        }
        if (bitmapCreateBitmap == null) {
            if (i2 > 0 || z2 || z3) {
                Matrix matrix3 = new Matrix();
                matrix3.setRotate(i2);
                if (z2) {
                    i12 = -1;
                } else {
                    i12 = 1;
                }
                matrix3.postScale(i12, z3 ? -1 : 1);
                bitmap3 = bitmapCreateBitmap;
                bitmapCreateBitmap = Bitmap.createBitmap(bitmap3, 0, 0, bitmapCreateBitmap.getWidth(), bitmapCreateBitmap.getHeight(), matrix3, false);
                bitmapCreateBitmap.getClass();
                if (!bitmapCreateBitmap.equals(bitmap3)) {
                    bitmap3.recycle();
                }
            }
            if (i2 % 90 != 0) {
                bitmapCreateBitmap = g(bitmapCreateBitmap, fArr, rectM, i2, z, i5, i6);
            }
            return new BitmapSampled(bitmapCreateBitmap, i10);
        }
        options = new BitmapFactory.Options();
        int iB2 = b(rectM.width(), rectM.height(), iWidth, iHeight) * i9;
        options.inSampleSize = iB2;
        ContentResolver contentResolver2 = context.getContentResolver();
        contentResolver2.getClass();
        bitmapH = h(contentResolver2, uri2, options);
        if (bitmapH != null) {
            length = fArr.length;
            fArr2 = new float[length];
            System.arraycopy(fArr, 0, fArr2, 0, fArr.length);
            while (i11 < length) {
                fArr2[i11] = fArr2[i11] / options.inSampleSize;
            }
            bitmap2 = bitmapH;
            bitmapF = f(bitmap2, fArr2, i2, z, i5, i6, 1.0f, z2, z3);
            if (!Intrinsics.c(bitmapF, bitmap2)) {
                bitmap2.recycle();
            }
        }
        return new BitmapSampled(bitmapF, iB2);
    }

    public static BitmapSampled e(Bitmap bitmap, float[] fArr, int i2, boolean z, int i3, int i4, boolean z2, boolean z3) {
        fArr.getClass();
        int i5 = 1;
        do {
            try {
                bitmap.getClass();
                return new BitmapSampled(f(bitmap, fArr, i2, z, i3, i4, 1.0f / i5, z2, z3), i5);
            } catch (OutOfMemoryError e2) {
                i5 *= 2;
            }
        } while (i5 <= 8);
        throw e2;
    }

    public static Bitmap f(Bitmap bitmap, float[] fArr, int i2, boolean z, int i3, int i4, float f2, boolean z2, boolean z3) {
        Rect rectM = m(fArr, bitmap.getWidth(), bitmap.getHeight(), z, i3, i4);
        Matrix matrix = new Matrix();
        matrix.setRotate(i2, bitmap.getWidth() / 2.0f, bitmap.getHeight() / 2.0f);
        matrix.postScale(z2 ? -f2 : f2, z3 ? -f2 : f2);
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(bitmap, rectM.left, rectM.top, rectM.width(), rectM.height(), matrix, true);
        bitmapCreateBitmap.getClass();
        if (bitmapCreateBitmap.equals(bitmap)) {
            bitmapCreateBitmap = bitmap.copy(bitmap.getConfig(), false);
        }
        Bitmap bitmap2 = bitmapCreateBitmap;
        return i2 % 90 != 0 ? g(bitmap2, fArr, rectM, i2, z, i3, i4) : bitmap2;
    }

    public static Bitmap g(Bitmap bitmap, float[] fArr, Rect rect, int i2, boolean z, int i3, int i4) {
        int iAbs;
        int iAbs2;
        int iAbs3;
        if (i2 % 90 == 0) {
            return bitmap;
        }
        double radians = Math.toRadians(i2);
        int i5 = (i2 < 90 || (181 <= i2 && i2 < 270)) ? rect.left : rect.right;
        int iAbs4 = 0;
        int i6 = 0;
        while (true) {
            if (i6 >= fArr.length) {
                iAbs = 0;
                iAbs2 = 0;
                iAbs3 = 0;
                break;
            }
            float f2 = fArr[i6];
            if (f2 >= i5 - 1 && f2 <= i5 + 1) {
                int i7 = i6 + 1;
                iAbs4 = (int) Math.abs(Math.sin(radians) * ((double) (rect.bottom - fArr[i7])));
                iAbs2 = (int) Math.abs(Math.cos(radians) * ((double) (fArr[i7] - rect.top)));
                iAbs3 = (int) Math.abs(((double) (fArr[i7] - rect.top)) / Math.sin(radians));
                iAbs = (int) Math.abs(((double) (rect.bottom - fArr[i7])) / Math.cos(radians));
                break;
            }
            i6 += 2;
        }
        rect.set(iAbs4, iAbs2, iAbs3 + iAbs4, iAbs + iAbs2);
        if (z) {
            k(rect, i3, i4);
        }
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(bitmap, rect.left, rect.top, rect.width(), rect.height());
        if (!Intrinsics.c(bitmap, bitmapCreateBitmap)) {
            bitmap.recycle();
        }
        return bitmapCreateBitmap;
    }

    public static Bitmap h(ContentResolver contentResolver, Uri uri, BitmapFactory.Options options) throws CropException.FailedToDecodeImage, FileNotFoundException {
        do {
            InputStream inputStreamOpenInputStream = contentResolver.openInputStream(uri);
            try {
                try {
                    Bitmap bitmapDecodeStream = BitmapFactory.decodeStream(inputStreamOpenInputStream, f25037a, options);
                    CloseableKt.a(inputStreamOpenInputStream, null);
                    return bitmapDecodeStream;
                } catch (OutOfMemoryError unused) {
                    options.inSampleSize *= 2;
                    CloseableKt.a(inputStreamOpenInputStream, null);
                }
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    CloseableKt.a(inputStreamOpenInputStream, th);
                    throw th2;
                }
            }
        } while (options.inSampleSize <= 512);
        throw new CropException.FailedToDecodeImage(uri);
    }

    public static BitmapSampled i(Context context, Uri uri, int i2, int i3) {
        context.getClass();
        uri.getClass();
        try {
            ContentResolver contentResolver = context.getContentResolver();
            contentResolver.getClass();
            InputStream inputStreamOpenInputStream = contentResolver.openInputStream(uri);
            try {
                BitmapFactory.Options options = new BitmapFactory.Options();
                options.inJustDecodeBounds = true;
                BitmapFactory.decodeStream(inputStreamOpenInputStream, f25037a, options);
                options.inJustDecodeBounds = false;
                CloseableKt.a(inputStreamOpenInputStream, null);
                int i4 = options.outWidth;
                if (i4 == -1 && options.outHeight == -1) {
                    throw new RuntimeException("File is not a picture");
                }
                options.inSampleSize = Math.max(b(i4, options.outHeight, i2, i3), a(options.outWidth, options.outHeight));
                return new BitmapSampled(h(contentResolver, uri, options), options.inSampleSize);
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    CloseableKt.a(inputStreamOpenInputStream, th);
                    throw th2;
                }
            }
        } catch (Exception e2) {
            throw new CropException.FailedToLoadBitmap(uri, e2.getMessage());
        }
    }

    public static BitmapSampled j(Context context, Uri uri, Rect rect, int i2, int i3, int i4) throws CropException.FailedToLoadBitmap {
        BitmapRegionDecoder bitmapRegionDecoderNewInstance;
        int i5;
        try {
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inSampleSize = i4 * b(rect.width(), rect.height(), i2, i3);
            InputStream inputStreamOpenInputStream = context.getContentResolver().openInputStream(uri);
            try {
                if (Build.VERSION.SDK_INT >= 31) {
                    inputStreamOpenInputStream.getClass();
                    bitmapRegionDecoderNewInstance = BitmapRegionDecoder.newInstance(inputStreamOpenInputStream);
                } else {
                    inputStreamOpenInputStream.getClass();
                    bitmapRegionDecoderNewInstance = BitmapRegionDecoder.newInstance(inputStreamOpenInputStream, false);
                }
                do {
                    try {
                        try {
                            bitmapRegionDecoderNewInstance.getClass();
                            BitmapSampled bitmapSampled = new BitmapSampled(bitmapRegionDecoderNewInstance.decodeRegion(rect, options), options.inSampleSize);
                            bitmapRegionDecoderNewInstance.recycle();
                            CloseableKt.a(inputStreamOpenInputStream, null);
                            return bitmapSampled;
                        } catch (OutOfMemoryError unused) {
                            i5 = options.inSampleSize * 2;
                            options.inSampleSize = i5;
                        }
                    } catch (Throwable th) {
                        if (bitmapRegionDecoderNewInstance != null) {
                            bitmapRegionDecoderNewInstance.recycle();
                        }
                        throw th;
                    }
                } while (i5 <= 512);
                if (bitmapRegionDecoderNewInstance != null) {
                    bitmapRegionDecoderNewInstance.recycle();
                }
                CloseableKt.a(inputStreamOpenInputStream, null);
                return new BitmapSampled(null, 1);
            } catch (Throwable th2) {
                try {
                    throw th2;
                } catch (Throwable th3) {
                    CloseableKt.a(inputStreamOpenInputStream, th2);
                    throw th3;
                }
            }
        } catch (Exception e2) {
            throw new CropException.FailedToLoadBitmap(uri, e2.getMessage());
        }
    }

    public static void k(Rect rect, int i2, int i3) {
        if (i2 != i3 || rect.width() == rect.height()) {
            return;
        }
        if (rect.height() > rect.width()) {
            rect.bottom -= rect.height() - rect.width();
        } else {
            rect.right -= rect.width() - rect.height();
        }
    }

    public static float l(float[] fArr) {
        fArr.getClass();
        return Math.max(Math.max(Math.max(fArr[1], fArr[3]), fArr[5]), fArr[7]);
    }

    public static Rect m(float[] fArr, int i2, int i3, boolean z, int i4, int i5) {
        fArr.getClass();
        Rect rect = new Rect(MathKt.c(Math.max(Call.Parameters.DEFAULT_CAMERA_ZOOM, n(fArr))), MathKt.c(Math.max(Call.Parameters.DEFAULT_CAMERA_ZOOM, p(fArr))), MathKt.c(Math.min(i2, o(fArr))), MathKt.c(Math.min(i3, l(fArr))));
        if (z) {
            k(rect, i4, i5);
        }
        return rect;
    }

    public static float n(float[] fArr) {
        fArr.getClass();
        return Math.min(Math.min(Math.min(fArr[0], fArr[2]), fArr[4]), fArr[6]);
    }

    public static float o(float[] fArr) {
        fArr.getClass();
        return Math.max(Math.max(Math.max(fArr[0], fArr[2]), fArr[4]), fArr[6]);
    }

    public static float p(float[] fArr) {
        fArr.getClass();
        return Math.min(Math.min(Math.min(fArr[1], fArr[3]), fArr[5]), fArr[7]);
    }

    public static RotateBitmapResult q(Bitmap bitmap, Context context, Uri uri) {
        int i2;
        context.getClass();
        uri.getClass();
        ExifInterface exifInterface = null;
        try {
            InputStream inputStreamOpenInputStream = context.getContentResolver().openInputStream(uri);
            if (inputStreamOpenInputStream != null) {
                try {
                    ExifInterface exifInterface2 = new ExifInterface(inputStreamOpenInputStream);
                    inputStreamOpenInputStream.close();
                    exifInterface = exifInterface2;
                } catch (Throwable th) {
                    try {
                        throw th;
                    } catch (Throwable th2) {
                        CloseableKt.a(inputStreamOpenInputStream, th);
                        throw th2;
                    }
                }
            }
        } catch (Throwable unused) {
        }
        if (exifInterface == null) {
            return new RotateBitmapResult(bitmap, 0, false, false);
        }
        int iE = exifInterface.e(1, "Orientation");
        if (iE == 3) {
            i2 = Sink.ORIENTATION_180;
        } else if (iE == 5 || iE == 6 || iE == 7) {
            i2 = 90;
        } else {
            i2 = iE != 8 ? 0 : Sink.ORIENTATION_270;
        }
        return new RotateBitmapResult(bitmap, i2, iE == 2 || iE == 5, iE == 4 || iE == 7);
    }

    public static Bitmap r(Bitmap bitmap, int i2, int i3, CropImageView.RequestSizeOptions requestSizeOptions) {
        Bitmap bitmapCreateScaledBitmap;
        requestSizeOptions.getClass();
        if (i2 > 0 && i3 > 0) {
            try {
                CropImageView.RequestSizeOptions requestSizeOptions2 = CropImageView.RequestSizeOptions.RESIZE_FIT;
                if (requestSizeOptions == requestSizeOptions2 || requestSizeOptions == CropImageView.RequestSizeOptions.RESIZE_INSIDE || requestSizeOptions == CropImageView.RequestSizeOptions.RESIZE_EXACT) {
                    if (requestSizeOptions == CropImageView.RequestSizeOptions.RESIZE_EXACT) {
                        bitmap.getClass();
                        bitmapCreateScaledBitmap = Bitmap.createScaledBitmap(bitmap, i2, i3, false);
                    } else {
                        bitmap.getClass();
                        float width = bitmap.getWidth();
                        float height = bitmap.getHeight();
                        float fMax = Math.max(width / i2, height / i3);
                        bitmapCreateScaledBitmap = (fMax > 1.0f || requestSizeOptions == requestSizeOptions2) ? Bitmap.createScaledBitmap(bitmap, (int) (width / fMax), (int) (height / fMax), false) : null;
                    }
                    if (bitmapCreateScaledBitmap != null) {
                        if (!bitmapCreateScaledBitmap.equals(bitmap)) {
                            bitmap.recycle();
                        }
                        return bitmapCreateScaledBitmap;
                    }
                }
            } catch (Exception unused) {
            }
        }
        bitmap.getClass();
        return bitmap;
    }

    public static Uri s(Context context, Bitmap bitmap, Bitmap.CompressFormat compressFormat, int i2, Uri uri) throws IOException {
        String str;
        Uri uriA;
        List listP;
        context.getClass();
        bitmap.getClass();
        compressFormat.getClass();
        if (uri == null) {
            try {
                int i3 = WhenMappings.f25047a[compressFormat.ordinal()];
                if (i3 != 1) {
                    str = i3 != 2 ? ".webp" : ".png";
                } else {
                    str = ".jpg";
                }
                File fileCreateTempFile = File.createTempFile("cropped", str, context.getCacheDir());
                fileCreateTempFile.getClass();
                uriA = GetUriForFileKt.a(context, fileCreateTempFile);
            } catch (IOException e2) {
                r81.g("Failed to create temp file for output image", e2);
                return null;
            }
        } else {
            uriA = uri;
        }
        if (uri != null) {
            if (!Intrinsics.c(uri.getScheme(), "content")) {
                throw new SecurityException(fc.h("Only content:// URIs are allowed for security reasons. Received: ", uri.getScheme(), "://"));
            }
            String path = uri.getPath();
            if (path == null) {
                path = uri.toString();
                path.getClass();
            }
            int i4 = WhenMappings.f25047a[compressFormat.ordinal()];
            if (i4 != 1) {
                listP = i4 != 2 ? CollectionsKt.O(".webp") : CollectionsKt.O(".png");
            } else {
                listP = CollectionsKt.P(".jpg", ".jpeg");
            }
            List list = listP;
            if (!(list instanceof Collection) || !list.isEmpty()) {
                Iterator it = list.iterator();
                do {
                    if (it.hasNext()) {
                    }
                } while (!StringsKt.p(path, (String) it.next(), true));
            }
            throw new SecurityException("File extension does not match compress format. Expected one of: " + CollectionsKt.K(list, ", ", null, null, null, 62) + ", Format: " + compressFormat + ", Path: " + path);
        }
        OutputStream outputStreamOpenOutputStream = context.getContentResolver().openOutputStream(uriA, "wt");
        outputStreamOpenOutputStream.getClass();
        try {
            bitmap.compress(compressFormat, i2, outputStreamOpenOutputStream);
            outputStreamOpenOutputStream.close();
            return uriA;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                CloseableKt.a(outputStreamOpenOutputStream, th);
                throw th2;
            }
        }
    }
}
