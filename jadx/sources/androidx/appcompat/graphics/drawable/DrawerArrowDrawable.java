package androidx.appcompat.graphics.drawable;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import androidx.appcompat.R$styleable;
import com.vuitton.android.R;
import defpackage.tr;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
public class DrawerArrowDrawable extends Drawable {
    public static final float l = (float) Math.toRadians(45.0d);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Paint f890a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final float f891b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final float f892c;
    public final float d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final float f893e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f894f;
    public final Path g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f895h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public float f896i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final float f897j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final int f898k;

    @Retention(RetentionPolicy.SOURCE)
    public @interface ArrowDirection {
    }

    public DrawerArrowDrawable(Context context) {
        Paint paint = new Paint();
        this.f890a = paint;
        this.g = new Path();
        this.f898k = 2;
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeJoin(Paint.Join.MITER);
        paint.setStrokeCap(Paint.Cap.BUTT);
        paint.setAntiAlias(true);
        TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(null, R$styleable.n, R.attr.drawerArrowStyle, R.style.Base_Widget_AppCompat_DrawerArrowToggle);
        int color = typedArrayObtainStyledAttributes.getColor(3, 0);
        if (color != paint.getColor()) {
            paint.setColor(color);
            invalidateSelf();
        }
        float dimension = typedArrayObtainStyledAttributes.getDimension(7, Call.Parameters.DEFAULT_CAMERA_ZOOM);
        if (paint.getStrokeWidth() != dimension) {
            paint.setStrokeWidth(dimension);
            this.f897j = (float) (Math.cos(l) * ((double) (dimension / 2.0f)));
            invalidateSelf();
        }
        boolean z = typedArrayObtainStyledAttributes.getBoolean(6, true);
        if (this.f894f != z) {
            this.f894f = z;
            invalidateSelf();
        }
        float fRound = Math.round(typedArrayObtainStyledAttributes.getDimension(5, Call.Parameters.DEFAULT_CAMERA_ZOOM));
        if (fRound != this.f893e) {
            this.f893e = fRound;
            invalidateSelf();
        }
        this.f895h = typedArrayObtainStyledAttributes.getDimensionPixelSize(4, 0);
        this.f892c = Math.round(typedArrayObtainStyledAttributes.getDimension(2, Call.Parameters.DEFAULT_CAMERA_ZOOM));
        this.f891b = Math.round(typedArrayObtainStyledAttributes.getDimension(0, Call.Parameters.DEFAULT_CAMERA_ZOOM));
        this.d = typedArrayObtainStyledAttributes.getDimension(1, Call.Parameters.DEFAULT_CAMERA_ZOOM);
        typedArrayObtainStyledAttributes.recycle();
    }

    public static float a(float f2, float f3, float f4) {
        return tr.a(f3, f2, f4, f2);
    }

    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        Rect bounds = getBounds();
        boolean z = false;
        int i2 = this.f898k;
        if (i2 != 0 && (i2 == 1 || (i2 == 3 ? getLayoutDirection() == 0 : getLayoutDirection() == 1))) {
            z = true;
        }
        float f2 = this.f891b;
        float fSqrt = (float) Math.sqrt(f2 * f2 * 2.0f);
        float f3 = this.f896i;
        float f4 = this.f892c;
        float fA = a(f4, fSqrt, f3);
        float fA2 = a(f4, this.d, this.f896i);
        float f5 = this.f896i;
        float f6 = this.f897j;
        float fRound = Math.round(a(Call.Parameters.DEFAULT_CAMERA_ZOOM, f6, f5));
        float fA3 = a(Call.Parameters.DEFAULT_CAMERA_ZOOM, l, this.f896i);
        float fA4 = a(z ? 0.0f : -180.0f, z ? 180.0f : 0.0f, this.f896i);
        double d = fA;
        double d2 = fA3;
        float fRound2 = Math.round(Math.cos(d2) * d);
        float fRound3 = Math.round(Math.sin(d2) * d);
        Path path = this.g;
        path.rewind();
        Paint paint = this.f890a;
        float strokeWidth = paint.getStrokeWidth();
        float f7 = this.f893e;
        float fA5 = a(strokeWidth + f7, -f6, this.f896i);
        float f8 = (-fA2) / 2.0f;
        path.moveTo(f8 + fRound, Call.Parameters.DEFAULT_CAMERA_ZOOM);
        path.rLineTo(fA2 - (fRound * 2.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM);
        path.moveTo(f8, fA5);
        path.rLineTo(fRound2, fRound3);
        path.moveTo(f8, -fA5);
        path.rLineTo(fRound2, -fRound3);
        path.close();
        canvas.save();
        float strokeWidth2 = paint.getStrokeWidth();
        canvas.translate(bounds.centerX(), (strokeWidth2 * 1.5f) + f7 + ((((int) ((bounds.height() - (3.0f * strokeWidth2)) - (f7 * 2.0f))) / 4) * 2));
        if (this.f894f) {
            canvas.rotate(fA4 * (z ? -1 : 1));
        } else if (z) {
            canvas.rotate(180.0f);
        }
        canvas.drawPath(path, paint);
        canvas.restore();
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicHeight() {
        return this.f895h;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicWidth() {
        return this.f895h;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i2) {
        Paint paint = this.f890a;
        if (i2 != paint.getAlpha()) {
            paint.setAlpha(i2);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
        this.f890a.setColorFilter(colorFilter);
        invalidateSelf();
    }

    public void setProgress(float f2) {
        if (this.f896i != f2) {
            this.f896i = f2;
            invalidateSelf();
        }
    }
}
