package com.sightcall.universal.internal.view;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.CornerPathEffect;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.view.View;
import androidx.core.content.ContextCompat;
import com.sightcall.universal.R;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes3.dex */
class Collimator {
    private final Paint backgroundPaint;
    private float cornerLength;
    private final Paint cornersPaint;
    private final Paint edgesPaint;
    private float ratio = Call.Parameters.DEFAULT_CAMERA_ZOOM;
    private float safeArea = Call.Parameters.DEFAULT_CAMERA_ZOOM;
    private boolean show = false;
    private final Rect rect = new Rect();
    private final Path corners = new Path();

    public Collimator() {
        int i2 = 1;
        this.edgesPaint = new Paint(i2) { // from class: com.sightcall.universal.internal.view.Collimator.1
            {
                setStyle(Paint.Style.STROKE);
                setStrokeCap(Paint.Cap.ROUND);
                setStrokeJoin(Paint.Join.ROUND);
            }
        };
        this.cornersPaint = new Paint(i2) { // from class: com.sightcall.universal.internal.view.Collimator.2
            {
                setStyle(Paint.Style.STROKE);
                setStrokeCap(Paint.Cap.SQUARE);
                setStrokeJoin(Paint.Join.ROUND);
            }
        };
        this.backgroundPaint = new Paint(i2) { // from class: com.sightcall.universal.internal.view.Collimator.3
            {
                setStyle(Paint.Style.FILL);
            }
        };
    }

    public void draw(Canvas canvas) {
        if (this.show && isValid()) {
            int width = canvas.getWidth();
            int height = canvas.getHeight();
            float f2 = width;
            canvas.drawRect(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, f2, this.rect.top, this.backgroundPaint);
            Rect rect = this.rect;
            canvas.drawRect(Call.Parameters.DEFAULT_CAMERA_ZOOM, rect.top, rect.left, rect.bottom + 1, this.backgroundPaint);
            Rect rect2 = this.rect;
            canvas.drawRect(rect2.right + 1, rect2.top, f2, rect2.bottom + 1, this.backgroundPaint);
            canvas.drawRect(Call.Parameters.DEFAULT_CAMERA_ZOOM, this.rect.bottom + 1, f2, height, this.backgroundPaint);
            canvas.drawRect(this.rect, this.edgesPaint);
            canvas.drawPath(this.corners, this.cornersPaint);
        }
    }

    public void init(View view) {
        Context context = view.getContext();
        Resources resources = context.getResources();
        this.edgesPaint.setStrokeWidth(resources.getDimension(R.dimen.universal_collimator_edge_stroke_width));
        this.edgesPaint.setPathEffect(new CornerPathEffect(resources.getDimension(R.dimen.universal_collimator_corner_stroke_width)));
        this.edgesPaint.setColor(ContextCompat.getColor(context, com.sightcall.graphik.R.color.universal_collimator_edge));
        this.cornersPaint.setStrokeWidth(resources.getDimension(R.dimen.universal_collimator_corner_stroke_width));
        this.cornersPaint.setPathEffect(new CornerPathEffect(resources.getDimension(R.dimen.universal_collimator_corner_stroke_width)));
        this.cornersPaint.setColor(ContextCompat.getColor(context, com.sightcall.graphik.R.color.universal_collimator_corner));
        this.cornerLength = resources.getDimension(R.dimen.universal_collimator_corner_length);
        this.backgroundPaint.setColor(ContextCompat.getColor(context, com.sightcall.graphik.R.color.universal_collimator_background));
        updateRect(view.getWidth(), view.getHeight());
    }

    public boolean isValid() {
        if (this.ratio <= Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            return false;
        }
        float f2 = this.safeArea;
        return f2 >= Call.Parameters.DEFAULT_CAMERA_ZOOM && f2 < 1.0f && this.rect.width() > 0 && this.rect.height() > 0;
    }

    public void ratio(float f2) {
        this.ratio = Math.abs(f2);
    }

    public void safeArea(float f2) {
        this.safeArea = Math.abs(f2);
    }

    public void show(boolean z) {
        this.show = z;
    }

    public void updateRect(int i2, int i3) {
        float f2 = i2;
        float f3 = i3;
        RectF rectF = f2 / this.ratio <= f3 ? new RectF(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, f2, f2 / this.ratio) : new RectF(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, this.ratio * f3, f3);
        rectF.inset(rectF.width() * this.safeArea, rectF.height() * this.safeArea);
        rectF.offsetTo((f2 - rectF.width()) / 2.0f, (f3 - rectF.height()) / 2.0f);
        rectF.roundOut(this.rect);
        int iMin = Math.min(this.rect.height() / 2, (int) this.cornerLength);
        int iMin2 = Math.min(this.rect.width() / 2, (int) this.cornerLength);
        this.corners.reset();
        Path path = this.corners;
        Rect rect = this.rect;
        path.moveTo(rect.left, rect.top + iMin);
        Path path2 = this.corners;
        Rect rect2 = this.rect;
        path2.lineTo(rect2.left, rect2.top);
        Path path3 = this.corners;
        Rect rect3 = this.rect;
        path3.lineTo(rect3.left + iMin2, rect3.top);
        Path path4 = this.corners;
        Rect rect4 = this.rect;
        path4.moveTo(rect4.right - iMin2, rect4.top);
        Path path5 = this.corners;
        Rect rect5 = this.rect;
        path5.lineTo(rect5.right, rect5.top);
        Path path6 = this.corners;
        Rect rect6 = this.rect;
        path6.lineTo(rect6.right, rect6.top + iMin);
        Path path7 = this.corners;
        Rect rect7 = this.rect;
        path7.moveTo(rect7.right, rect7.bottom - iMin);
        Path path8 = this.corners;
        Rect rect8 = this.rect;
        path8.lineTo(rect8.right, rect8.bottom);
        Path path9 = this.corners;
        Rect rect9 = this.rect;
        path9.lineTo(rect9.right - iMin2, rect9.bottom);
        Path path10 = this.corners;
        Rect rect10 = this.rect;
        path10.moveTo(rect10.left + iMin2, rect10.bottom);
        Path path11 = this.corners;
        Rect rect11 = this.rect;
        path11.lineTo(rect11.left, rect11.bottom);
        Path path12 = this.corners;
        Rect rect12 = this.rect;
        path12.lineTo(rect12.left, rect12.bottom - iMin);
    }

    public float ratio() {
        return this.ratio;
    }

    public float safeArea() {
        return this.safeArea;
    }
}
