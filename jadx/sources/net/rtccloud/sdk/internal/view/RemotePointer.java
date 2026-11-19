package net.rtccloud.sdk.internal.view;

import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.util.TypedValue;
import net.rtccloud.sdk.Call;
import net.rtccloud.sdk.util.ViewUtils;

/* JADX INFO: loaded from: classes3.dex */
public class RemotePointer {
    private final float[] coordinates;
    public int flag;
    public final Paint paint;
    private final float radius;
    public float x;
    public float y;

    public RemotePointer(Resources resources) {
        Paint paint = new Paint(1);
        this.paint = paint;
        this.x = -1.0f;
        this.y = -1.0f;
        this.flag = -1;
        this.coordinates = new float[2];
        this.radius = TypedValue.applyDimension(1, 10.0f, resources.getDisplayMetrics());
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeWidth(TypedValue.applyDimension(1, 2.0f, resources.getDisplayMetrics()));
    }

    public void draw(Canvas canvas, int i2, int i3) {
        float f2 = this.x;
        if (f2 >= Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            float f3 = this.y;
            if (f3 >= Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                ViewUtils.remapRemoteCoordinates(this.coordinates, f2, f3, i2, i3);
                float[] fArr = this.coordinates;
                canvas.drawCircle(fArr[0], fArr[1], ((this.flag * 0.1f) + 1.0f) * this.radius, this.paint);
            }
        }
    }

    public boolean isValid() {
        return this.x >= Call.Parameters.DEFAULT_CAMERA_ZOOM && this.y >= Call.Parameters.DEFAULT_CAMERA_ZOOM;
    }

    public void set(float f2, float f3, int i2) {
        this.x = f2;
        this.y = f3;
        this.flag = i2;
    }

    public void teardown() {
        this.flag = -1;
        this.y = -1.0f;
        this.x = -1.0f;
    }

    public void draw(Canvas canvas, RectF rectF) {
        float f2 = this.x;
        if (f2 >= Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            float f3 = this.y;
            if (f3 >= Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                ViewUtils.remapRemoteCoordinates(this.coordinates, f2, f3, rectF);
                float[] fArr = this.coordinates;
                canvas.drawCircle(fArr[0], fArr[1], ((this.flag * 0.1f) + 1.0f) * this.radius, this.paint);
            }
        }
    }
}
