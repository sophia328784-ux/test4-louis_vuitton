package com.google.android.material.floatingactionbutton;

import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.LinearGradient;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import androidx.core.graphics.ColorUtils;
import com.google.android.material.drawable.DrawableUtils;
import com.google.android.material.shape.CornerSize;
import com.google.android.material.shape.ShapeAppearanceModel;
import com.google.android.material.shape.ShapeAppearancePathProvider;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes2.dex */
class BorderDrawable extends Drawable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Paint f32625b;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public float f32629h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f32630i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f32631j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f32632k;
    public int l;
    public int m;
    public ShapeAppearanceModel o;
    public ColorStateList p;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ShapeAppearancePathProvider f32624a = ShapeAppearancePathProvider.b();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Path f32626c = new Path();
    public final Rect d = new Rect();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final RectF f32627e = new RectF();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final RectF f32628f = new RectF();
    public final BorderState g = new BorderState();
    public boolean n = true;

    public class BorderState extends Drawable.ConstantState {
        public BorderState() {
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public final int getChangingConfigurations() {
            return 0;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public final Drawable newDrawable() {
            return BorderDrawable.this;
        }
    }

    public BorderDrawable(ShapeAppearanceModel shapeAppearanceModel) {
        this.o = shapeAppearanceModel;
        Paint paint = new Paint(1);
        this.f32625b = paint;
        paint.setStyle(Paint.Style.STROKE);
    }

    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        boolean z = this.n;
        Rect rect = this.d;
        Paint paint = this.f32625b;
        if (z) {
            copyBounds(rect);
            float fHeight = this.f32629h / rect.height();
            paint.setShader(new LinearGradient(Call.Parameters.DEFAULT_CAMERA_ZOOM, rect.top, Call.Parameters.DEFAULT_CAMERA_ZOOM, rect.bottom, new int[]{ColorUtils.c(this.f32630i, this.m), ColorUtils.c(this.f32631j, this.m), ColorUtils.c(ColorUtils.e(this.f32631j, 0), this.m), ColorUtils.c(ColorUtils.e(this.l, 0), this.m), ColorUtils.c(this.l, this.m), ColorUtils.c(this.f32632k, this.m)}, new float[]{Call.Parameters.DEFAULT_CAMERA_ZOOM, fHeight, 0.5f, 0.5f, 1.0f - fHeight, 1.0f}, Shader.TileMode.CLAMP));
            this.n = false;
        }
        float strokeWidth = paint.getStrokeWidth() / 2.0f;
        copyBounds(rect);
        RectF rectF = this.f32627e;
        rectF.set(rect);
        CornerSize cornerSize = this.o.f32962e;
        Rect bounds = getBounds();
        RectF rectF2 = this.f32628f;
        rectF2.set(bounds);
        float fMin = Math.min(cornerSize.a(rectF2), rectF.width() / 2.0f);
        ShapeAppearanceModel shapeAppearanceModel = this.o;
        rectF2.set(getBounds());
        if (shapeAppearanceModel.g(rectF2)) {
            rectF.inset(strokeWidth, strokeWidth);
            canvas.drawRoundRect(rectF, fMin, fMin, paint);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable.ConstantState getConstantState() {
        return this.g;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        return this.f32629h > Call.Parameters.DEFAULT_CAMERA_ZOOM ? -3 : -2;
    }

    @Override // android.graphics.drawable.Drawable
    public final void getOutline(Outline outline) {
        ShapeAppearanceModel shapeAppearanceModel = this.o;
        Rect bounds = getBounds();
        RectF rectF = this.f32628f;
        rectF.set(bounds);
        if (shapeAppearanceModel.g(rectF)) {
            CornerSize cornerSize = this.o.f32962e;
            rectF.set(getBounds());
            outline.setRoundRect(getBounds(), cornerSize.a(rectF));
            return;
        }
        Rect rect = this.d;
        copyBounds(rect);
        RectF rectF2 = this.f32627e;
        rectF2.set(rect);
        ShapeAppearanceModel shapeAppearanceModel2 = this.o;
        ShapeAppearancePathProvider shapeAppearancePathProvider = this.f32624a;
        Path path = this.f32626c;
        shapeAppearancePathProvider.a(shapeAppearanceModel2, null, 1.0f, rectF2, null, path);
        DrawableUtils.e(outline, path);
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean getPadding(Rect rect) {
        ShapeAppearanceModel shapeAppearanceModel = this.o;
        Rect bounds = getBounds();
        RectF rectF = this.f32628f;
        rectF.set(bounds);
        if (!shapeAppearanceModel.g(rectF)) {
            return true;
        }
        int iRound = Math.round(this.f32629h);
        rect.set(iRound, iRound, iRound, iRound);
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean isStateful() {
        ColorStateList colorStateList = this.p;
        return (colorStateList != null && colorStateList.isStateful()) || super.isStateful();
    }

    @Override // android.graphics.drawable.Drawable
    public final void onBoundsChange(Rect rect) {
        this.n = true;
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean onStateChange(int[] iArr) {
        int colorForState;
        ColorStateList colorStateList = this.p;
        if (colorStateList != null && (colorForState = colorStateList.getColorForState(iArr, this.m)) != this.m) {
            this.n = true;
            this.m = colorForState;
        }
        if (this.n) {
            invalidateSelf();
        }
        return this.n;
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i2) {
        this.f32625b.setAlpha(i2);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
        this.f32625b.setColorFilter(colorFilter);
        invalidateSelf();
    }
}
