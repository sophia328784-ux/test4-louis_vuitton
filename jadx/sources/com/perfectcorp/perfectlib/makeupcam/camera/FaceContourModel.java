package com.perfectcorp.perfectlib.makeupcam.camera;

import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.Point;
import android.text.TextUtils;
import com.perfectcorp.common.PfCommons;
import com.perfectcorp.common.utility.MoreCollections;
import com.perfectcorp.perfectlib.makeupcam.utility.BitmapUtils;
import defpackage.a61;
import java.nio.ByteBuffer;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public abstract class FaceContourModel {
    public static byte[] a(Bitmap bitmap) {
        try {
            return EyeModel.b(bitmap);
        } catch (Throwable unused) {
            int width = bitmap.getWidth();
            int height = bitmap.getHeight();
            int rowBytes = bitmap.getRowBytes();
            if (bitmap.getConfig() != Bitmap.Config.ARGB_8888 && rowBytes / width != 4) {
                a61.i(rowBytes, width, bitmap.getConfig());
                return null;
            }
            ByteBuffer byteBufferAllocate = ByteBuffer.allocate(width * height);
            for (int i2 = 0; i2 < height; i2++) {
                for (int i3 = 0; i3 < width; i3++) {
                    byteBufferAllocate.put((byte) Color.red(bitmap.getPixel(i3, i2)));
                }
            }
            return byteBufferAllocate.array();
        }
    }

    public static Bitmap b(LiveSettingCtrl liveSettingCtrl, FaceContourPayload.Setting setting) {
        int i2;
        if (setting == null) {
            return null;
        }
        String str = setting.d;
        if (TextUtils.isEmpty(str) || (i2 = setting.f40645i) < 0) {
            return null;
        }
        List listF = liveSettingCtrl.f(str);
        String str2 = MoreCollections.a(listF) ? null : ((YMKPrimitiveData.Mask) listF.get(i2)).f40803b;
        if (TextUtils.isEmpty(str2)) {
            return null;
        }
        Bitmap bitmapA = BitmapUtils.a(PfCommons.b(), str2, BitmapUtils.f40998b);
        Objects.requireNonNull(bitmapA);
        Bitmap.Config config = bitmapA.getConfig();
        Bitmap.Config config2 = Bitmap.Config.ALPHA_8;
        if (config == config2) {
            return bitmapA;
        }
        byte[] bArrA = a(bitmapA);
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(bitmapA.getWidth(), bitmapA.getHeight(), config2);
        bitmapA.recycle();
        bitmapCreateBitmap.copyPixelsFromBuffer(ByteBuffer.wrap(bArrA));
        return bitmapCreateBitmap;
    }

    public static FaceContourProfile c(Bitmap bitmap, Point point) {
        if (bitmap == null || point == null) {
            return null;
        }
        FaceContourProfile faceContourProfile = new FaceContourProfile();
        faceContourProfile.m_height = bitmap.getHeight();
        faceContourProfile.m_width = bitmap.getWidth();
        faceContourProfile.m_stride = bitmap.getRowBytes();
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(bitmap.getHeight() * bitmap.getRowBytes());
        bitmap.copyPixelsToBuffer(byteBufferAllocate);
        faceContourProfile.m_data = byteBufferAllocate.array();
        Point point2 = faceContourProfile.m_roi_start;
        point2.x = point.x;
        point2.y = point.y;
        return faceContourProfile;
    }

    public static Point d(LiveSettingCtrl liveSettingCtrl, FaceContourPayload.Setting setting) {
        if (setting != null) {
            int i2 = setting.f40645i;
            String str = setting.d;
            if (!TextUtils.isEmpty(str) && i2 >= 0) {
                List listF = liveSettingCtrl.f(str);
                return MoreCollections.a(listF) ? new Point() : ((YMKPrimitiveData.Mask) listF.get(i2)).w;
            }
        }
        return new Point();
    }
}
