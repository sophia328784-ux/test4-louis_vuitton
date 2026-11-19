package com.google.android.filament.android;

import android.graphics.Bitmap;
import com.google.android.filament.Engine;
import com.google.android.filament.Texture;
import defpackage.md;

/* JADX INFO: loaded from: classes2.dex */
public abstract class TextureHelper {

    /* JADX INFO: renamed from: com.google.android.filament.android.TextureHelper$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f28617a;

        static {
            int[] iArr = new int[Bitmap.Config.values().length];
            f28617a = iArr;
            try {
                iArr[Bitmap.Config.ALPHA_8.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f28617a[Bitmap.Config.RGB_565.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f28617a[Bitmap.Config.ARGB_4444.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f28617a[Bitmap.Config.ARGB_8888.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f28617a[Bitmap.Config.RGBA_F16.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f28617a[Bitmap.Config.HARDWARE.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    public static void a(Engine engine, Texture texture, Bitmap bitmap) {
        int i2;
        int iN = texture.n(0);
        int iL = texture.l(0);
        int i3 = AnonymousClass1.f28617a[bitmap.getConfig().ordinal()];
        int i4 = 1;
        if (i3 != 1) {
            if (i3 != 2) {
                i4 = 3;
                if (i3 == 3) {
                    i2 = 2;
                } else if (i3 == 5) {
                    i4 = 4;
                } else if (i3 == 6) {
                    i2 = 5;
                }
            }
            if (i2 != 2 || i2 == 5) {
                md.n("Unsupported config: ARGB_4444 or HARDWARE");
            } else {
                nSetBitmap(texture.getNativeObject(), engine.getNativeObject(), 0, 0, 0, iN, iL, bitmap, i2);
                return;
            }
        }
        i4 = 0;
        i2 = i4;
        if (i2 != 2) {
        }
        md.n("Unsupported config: ARGB_4444 or HARDWARE");
    }

    private static native void nSetBitmap(long j2, long j3, int i2, int i3, int i4, int i5, int i6, Bitmap bitmap, int i7);
}
