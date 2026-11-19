package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import android.os.SystemClock;
import android.util.Log;
import com.bumptech.glide.load.EncodeStrategy;
import com.bumptech.glide.load.Option;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.ResourceEncoder;
import com.bumptech.glide.load.data.BufferedOutputStream;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.load.engine.bitmap_recycle.ArrayPool;
import com.bumptech.glide.util.LogTime;
import com.bumptech.glide.util.Util;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
public class BitmapEncoder implements ResourceEncoder<Bitmap> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Option f24752b = Option.a(90, "com.bumptech.glide.load.resource.bitmap.BitmapEncoder.CompressionQuality");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Option f24753c = new Option("com.bumptech.glide.load.resource.bitmap.BitmapEncoder.CompressionFormat", null, Option.f24396e);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ArrayPool f24754a;

    @Deprecated
    public BitmapEncoder() {
        this.f24754a = null;
    }

    @Override // com.bumptech.glide.load.Encoder
    public final boolean a(Object obj, File file, Options options) throws Throwable {
        boolean z;
        Bitmap bitmap = (Bitmap) ((Resource) obj).get();
        Option option = f24753c;
        Bitmap.CompressFormat compressFormat = (Bitmap.CompressFormat) options.c(option);
        if (compressFormat == null) {
            compressFormat = bitmap.hasAlpha() ? Bitmap.CompressFormat.PNG : Bitmap.CompressFormat.JPEG;
        }
        bitmap.getWidth();
        bitmap.getHeight();
        int i2 = LogTime.f24987a;
        SystemClock.elapsedRealtimeNanos();
        int iIntValue = ((Integer) options.c(f24752b)).intValue();
        OutputStream bufferedOutputStream = null;
        try {
            try {
                try {
                    FileOutputStream fileOutputStream = new FileOutputStream(file);
                    ArrayPool arrayPool = this.f24754a;
                    if (arrayPool != null) {
                        try {
                            bufferedOutputStream = new BufferedOutputStream(fileOutputStream, arrayPool);
                        } catch (IOException unused) {
                            bufferedOutputStream = fileOutputStream;
                            Log.isLoggable("BitmapEncoder", 3);
                            if (bufferedOutputStream != null) {
                                try {
                                    bufferedOutputStream.close();
                                } catch (IOException unused2) {
                                }
                            }
                            z = false;
                        } catch (Throwable th) {
                            th = th;
                            bufferedOutputStream = fileOutputStream;
                            if (bufferedOutputStream != null) {
                                try {
                                    bufferedOutputStream.close();
                                } catch (IOException unused3) {
                                }
                            }
                            throw th;
                        }
                    } else {
                        bufferedOutputStream = fileOutputStream;
                    }
                    bitmap.compress(compressFormat, iIntValue, bufferedOutputStream);
                    bufferedOutputStream.close();
                    try {
                        bufferedOutputStream.close();
                    } catch (IOException unused4) {
                    }
                    z = true;
                } catch (Throwable th2) {
                    throw th2;
                }
            } catch (IOException unused5) {
            }
            if (Log.isLoggable("BitmapEncoder", 2)) {
                Objects.toString(compressFormat);
                Util.c(bitmap);
                SystemClock.elapsedRealtimeNanos();
                Objects.toString(options.c(option));
                bitmap.hasAlpha();
            }
            return z;
        } catch (Throwable th3) {
            th = th3;
        }
    }

    @Override // com.bumptech.glide.load.ResourceEncoder
    public final EncodeStrategy b(Options options) {
        return EncodeStrategy.TRANSFORMED;
    }

    public BitmapEncoder(ArrayPool arrayPool) {
        this.f24754a = arrayPool;
    }
}
