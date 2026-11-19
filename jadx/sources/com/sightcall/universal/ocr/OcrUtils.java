package com.sightcall.universal.ocr;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.view.WindowManager;
import com.sightcall.universal.Universal;
import net.rtccloud.sdk.Call;
import net.rtccloud.sdk.VideoModule;
import net.rtccloud.sdk.util.CameraUtils;

/* JADX INFO: loaded from: classes3.dex */
final class OcrUtils {
    private OcrUtils() {
    }

    private static Bitmap crop(Bitmap bitmap, Rect rect, RectF rectF, Matrix matrix, boolean z) {
        int iWidth = rect.width();
        int iHeight = rect.height();
        float f2 = iHeight;
        int iHeight2 = (int) ((rectF.height() * f2) / f2);
        float f3 = iWidth;
        int iWidth2 = (int) ((rectF.width() * f3) / f3);
        return Bitmap.createBitmap(bitmap, (int) ((iWidth - iWidth2) / 2.0f), (int) ((iHeight - iHeight2) / 2.0f), iWidth2, iHeight2, matrix, true);
    }

    public static Bitmap extractBitmap(VideoModule.CameraSource cameraSource, Bitmap bitmap, float f2, float f3) {
        Matrix matrixFindRotationMatrix = findRotationMatrix(Universal.context(), cameraSource);
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        int internalPreviewCorrection = CameraUtils.getInternalPreviewCorrection(cameraSource, ((WindowManager) Universal.context().getSystemService("window")).getDefaultDisplay());
        boolean z = internalPreviewCorrection == 90 || internalPreviewCorrection == 270;
        Rect rect = new Rect(0, 0, width, height);
        if (z) {
            rect.set(0, 0, rect.height(), rect.width());
        }
        if (z) {
            f2 = 1.0f / f2;
        }
        RectF rectF = new RectF();
        float f4 = width;
        float f5 = f4 / f2;
        float f6 = height;
        if (f5 > f6) {
            rectF.set(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, f2 * f6, f6);
        } else {
            rectF.set(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, f4, f5);
        }
        if (z) {
            rect.set(0, 0, rect.height(), rect.width());
        }
        rectF.inset(rectF.width() * f3, rectF.height() * f3);
        rectF.offsetTo((f4 - rectF.width()) / 2.0f, (f6 - rectF.height()) / 2.0f);
        return crop(bitmap, rect, rectF, matrixFindRotationMatrix, z);
    }

    private static Matrix findRotationMatrix(Context context, VideoModule.CameraSource cameraSource) {
        int internalPreviewCorrection = CameraUtils.getInternalPreviewCorrection(cameraSource, ((WindowManager) context.getSystemService("window")).getDefaultDisplay());
        Universal.logger().d("findRotationMatrix: " + internalPreviewCorrection);
        Matrix matrix = new Matrix();
        if (internalPreviewCorrection == 90) {
            matrix.preRotate(90.0f);
            return matrix;
        }
        if (internalPreviewCorrection == 180) {
            matrix.preRotate(180.0f);
            return matrix;
        }
        if (internalPreviewCorrection != 270) {
            return matrix;
        }
        matrix.preRotate(270.0f);
        return matrix;
    }
}
