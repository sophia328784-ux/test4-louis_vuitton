package com.vuitton.core.infrastructure.perfectcorp;

import android.graphics.ImageFormat;
import android.graphics.Rect;
import android.media.Image;
import com.google.common.base.Preconditions;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes3.dex */
abstract class Camera2ImageUtil {
    public static byte[] a(Image image) {
        int i2;
        int i3 = 0;
        int i4 = 1;
        Preconditions.h(image.getFormat() == 35, "Unsupported image format " + image.getFormat());
        Rect cropRect = image.getCropRect();
        int iWidth = cropRect.width();
        int iHeight = cropRect.height();
        Image.Plane[] planes = image.getPlanes();
        byte[] bArr = new byte[planes[0].getRowStride()];
        int i5 = iWidth * iHeight;
        byte[] bArr2 = new byte[(ImageFormat.getBitsPerPixel(image.getFormat()) * i5) / 8];
        int i6 = 0;
        int i7 = 0;
        int i8 = 1;
        while (i6 < planes.length) {
            if (i6 != 0) {
                if (i6 == i4) {
                    i7 = i5 + 1;
                } else if (i6 == 2) {
                    i7 = i5;
                }
                i8 = 2;
            } else {
                i7 = i3;
                i8 = i4;
            }
            ByteBuffer buffer = planes[i6].getBuffer();
            int rowStride = planes[i6].getRowStride();
            int pixelStride = planes[i6].getPixelStride();
            int i9 = i6 == 0 ? i3 : i4;
            int i10 = iWidth >> i9;
            int i11 = iHeight >> i9;
            int i12 = iWidth;
            buffer.position(((cropRect.left >> i9) * pixelStride) + ((cropRect.top >> i9) * rowStride));
            int i13 = 0;
            while (i13 < i11) {
                if (pixelStride == 1 && i8 == 1) {
                    buffer.get(bArr2, i7, i10);
                    i7 += i10;
                    i2 = i10;
                } else {
                    i2 = ((i10 - 1) * pixelStride) + 1;
                    buffer.get(bArr, 0, i2);
                    for (int i14 = 0; i14 < i10; i14++) {
                        bArr2[i7] = bArr[i14 * pixelStride];
                        i7 += i8;
                    }
                }
                if (i13 < i11 - 1) {
                    buffer.position((buffer.position() + rowStride) - i2);
                }
                i13++;
                cropRect = cropRect;
            }
            i6++;
            i4 = 1;
            iWidth = i12;
            i3 = 0;
        }
        return bArr2;
    }
}
