package androidx.cardview.widget;

import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;

/* JADX INFO: loaded from: classes2.dex */
class RoundRectDrawable extends Drawable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public float f3208a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Paint f3209b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final RectF f3210c;
    public final Rect d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public float f3211e;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public ColorStateList f3213h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public PorterDuffColorFilter f3214i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public ColorStateList f3215j;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f3212f = false;
    public boolean g = true;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public PorterDuff.Mode f3216k = PorterDuff.Mode.SRC_IN;

    public RoundRectDrawable(ColorStateList colorStateList, float f2) {
        this.f3208a = f2;
        Paint paint = new Paint(5);
        this.f3209b = paint;
        colorStateList = colorStateList == null ? ColorStateList.valueOf(0) : colorStateList;
        this.f3213h = colorStateList;
        paint.setColor(colorStateList.getColorForState(getState(), this.f3213h.getDefaultColor()));
        this.f3210c = new RectF();
        this.d = new Rect();
    }

    public final PorterDuffColorFilter a(ColorStateList colorStateList, PorterDuff.Mode mode) {
        if (colorStateList == null || mode == null) {
            return null;
        }
        return new PorterDuffColorFilter(colorStateList.getColorForState(getState(), 0), mode);
    }

    public final void b(Rect rect) {
        float f2;
        if (rect == null) {
            rect = getBounds();
        }
        float f3 = rect.left;
        float f4 = rect.top;
        float f5 = rect.right;
        float f6 = rect.bottom;
        RectF rectF = this.f3210c;
        rectF.set(f3, f4, f5, f6);
        Rect rect2 = this.d;
        rect2.set(rect);
        if (this.f3212f) {
            float f7 = this.f3211e;
            float f8 = this.f3208a;
            boolean z = this.g;
            if (z) {
                f2 = (float) (((1.0d - RoundRectDrawableWithShadow.f3217a) * ((double) f8)) + ((double) (1.5f * f7)));
            } else {
                int i2 = RoundRectDrawableWithShadow.f3218b;
                f2 = 1.5f * f7;
            }
            if (z) {
                f7 = (float) (((1.0d - RoundRectDrawableWithShadow.f3217a) * ((double) f8)) + ((double) f7));
            }
            rect2.inset((int) Math.ceil(f7), (int) Math.ceil(f2));
            rectF.set(rect2);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        boolean z;
        PorterDuffColorFilter porterDuffColorFilter = this.f3214i;
        Paint paint = this.f3209b;
        if (porterDuffColorFilter == null || paint.getColorFilter() != null) {
            z = false;
        } else {
            paint.setColorFilter(this.f3214i);
            z = true;
        }
        RectF rectF = this.f3210c;
        float f2 = this.f3208a;
        canvas.drawRoundRect(rectF, f2, f2, paint);
        if (z) {
            paint.setColorFilter(null);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public final void getOutline(Outline outline) {
        outline.setRoundRect(this.d, this.f3208a);
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean isStateful() {
        ColorStateList colorStateList = this.f3215j;
        if (colorStateList != null && colorStateList.isStateful()) {
            return true;
        }
        ColorStateList colorStateList2 = this.f3213h;
        return (colorStateList2 != null && colorStateList2.isStateful()) || super.isStateful();
    }

    @Override // android.graphics.drawable.Drawable
    public final void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        b(rect);
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean onStateChange(int[] iArr) {
        PorterDuff.Mode mode;
        ColorStateList colorStateList = this.f3213h;
        int colorForState = colorStateList.getColorForState(iArr, colorStateList.getDefaultColor());
        Paint paint = this.f3209b;
        boolean z = colorForState != paint.getColor();
        if (z) {
            paint.setColor(colorForState);
        }
        ColorStateList colorStateList2 = this.f3215j;
        if (colorStateList2 == null || (mode = this.f3216k) == null) {
            return z;
        }
        this.f3214i = a(colorStateList2, mode);
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i2) {
        this.f3209b.setAlpha(i2);
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
        this.f3209b.setColorFilter(colorFilter);
    }

    @Override // android.graphics.drawable.Drawable
    public final void setTintList(ColorStateList colorStateList) {
        this.f3215j = colorStateList;
        this.f3214i = a(colorStateList, this.f3216k);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public final void setTintMode(PorterDuff.Mode mode) {
        this.f3216k = mode;
        this.f3214i = a(this.f3215j, mode);
        invalidateSelf();
    }
}
