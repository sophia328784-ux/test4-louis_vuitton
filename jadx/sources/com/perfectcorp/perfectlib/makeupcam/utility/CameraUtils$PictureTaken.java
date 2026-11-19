package com.perfectcorp.perfectlib.makeupcam.utility;

import android.graphics.Bitmap;

/* JADX INFO: loaded from: classes3.dex */
public abstract class CameraUtils$PictureTaken {
    public static byte[] a(Bitmap bitmap) {
        int i2;
        int i3;
        int i4;
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        int i5 = width * height;
        int[] iArr = new int[i5];
        bitmap.getPixels(iArr, 0, width, 0, 0, width, height);
        int i6 = ((((width + 1) & (-2)) * ((height + 1) & (-2))) * 3) / 2;
        byte[] bArr = new byte[i6];
        int i7 = i5;
        int i8 = 0;
        int i9 = 0;
        int i10 = 0;
        while (i8 < height) {
            int i11 = 0;
            while (i11 < width && i10 < i5) {
                int i12 = iArr[i10];
                int i13 = i8;
                double d = (i12 >> 16) & 255;
                double d2 = (i12 >> 8) & 255;
                double d3 = i12 & 255;
                int[] iArr2 = iArr;
                byte[] bArr2 = bArr;
                int i14 = (int) ((0.114d * d3) + (0.587d * d2) + (0.2999d * d));
                int i15 = width;
                int i16 = (int) ((d3 * 0.5d) + (((-0.169d) * d) - (0.331d * d2)) + 128.0d);
                int i17 = (int) ((((d * 0.5d) - (d2 * 0.419d)) - (d3 * 0.081d)) + 128.0d);
                int i18 = i9 + 1;
                if (i14 < 0) {
                    i14 = 0;
                } else if (i14 > 255) {
                    i14 = 255;
                }
                bArr2[i9] = (byte) i14;
                if (i13 % 2 == 0 && i11 % 2 == 0 && (i2 = i7 + 1) < i6) {
                    if (i17 < 0) {
                        i17 = 0;
                        i3 = 255;
                    } else {
                        i3 = 255;
                        if (i17 > 255) {
                            i17 = 255;
                        }
                    }
                    bArr2[i7] = (byte) i17;
                    i7 += 2;
                    if (i16 < 0) {
                        i4 = 0;
                    } else {
                        i4 = i16 > i3 ? i3 : i16;
                    }
                    bArr2[i2] = (byte) i4;
                }
                i10++;
                i11++;
                i9 = i18;
                iArr = iArr2;
                bArr = bArr2;
                i8 = i13;
                width = i15;
            }
            i8++;
            iArr = iArr;
            bArr = bArr;
            width = width;
        }
        return bArr;
    }
}
