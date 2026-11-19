package com.sightcall.universal.ui;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import android.view.animation.PathInterpolator;
import com.batch.android.q0.b;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
public class IndeterminateDrawable extends Drawable implements Animatable {
    private static final float EXTRA_PADDING_SAFE_ZONE = 0.5f;
    private final Animator animator;
    private final RectF drawingBounds;
    private float endAngle;
    private final float padding;
    private final Paint paint;
    private float rotation;
    private float startAngle;

    public static final class IndeterminateAnimatorFactory {
        private static final String END_ANGLE = "endAngle";
        private static final float END_ANGLE_MAX = 360.0f;
        private static final String ROTATION = "rotation";
        private static final int ROTATION_END_ANGLE = 719;
        private static final String START_ANGLE = "startAngle";
        private static final float START_ANGLE_MAX = 359.0f;

        private IndeterminateAnimatorFactory() {
        }

        private static Animator createAnimationAnimator(IndeterminateDrawable indeterminateDrawable, Builder builder) {
            ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(indeterminateDrawable, ROTATION, Call.Parameters.DEFAULT_CAMERA_ZOOM, 719.0f);
            objectAnimatorOfFloat.setDuration(builder.rotationDuration);
            objectAnimatorOfFloat.setRepeatMode(1);
            objectAnimatorOfFloat.setRepeatCount(-1);
            objectAnimatorOfFloat.setInterpolator(new LinearInterpolator());
            return objectAnimatorOfFloat;
        }

        private static Interpolator createEndInterpolator() {
            Path path = new Path();
            path.lineTo(IndeterminateDrawable.EXTRA_PADDING_SAFE_ZONE, 0.1f);
            path.cubicTo(0.7f, 0.15f, 0.6f, 0.75f, 1.0f, 1.0f);
            return new PathInterpolator(path);
        }

        public static Animator createIndeterminateDrawableAnimator(IndeterminateDrawable indeterminateDrawable, Builder builder) {
            AnimatorSet animatorSet = new AnimatorSet();
            animatorSet.playTogether(createStartAngleAnimator(indeterminateDrawable, builder), createSweepAngleAnimator(indeterminateDrawable, builder), createAnimationAnimator(indeterminateDrawable, builder));
            return animatorSet;
        }

        private static Animator createStartAngleAnimator(IndeterminateDrawable indeterminateDrawable, Builder builder) {
            ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(indeterminateDrawable, START_ANGLE, Call.Parameters.DEFAULT_CAMERA_ZOOM, START_ANGLE_MAX);
            objectAnimatorOfFloat.setDuration(builder.sweepDuration);
            objectAnimatorOfFloat.setRepeatCount(-1);
            objectAnimatorOfFloat.setRepeatMode(1);
            objectAnimatorOfFloat.setInterpolator(createStartInterpolator());
            return objectAnimatorOfFloat;
        }

        private static Interpolator createStartInterpolator() {
            Path path = new Path();
            path.cubicTo(0.3f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0.1f, 0.75f, IndeterminateDrawable.EXTRA_PADDING_SAFE_ZONE, 0.85f);
            path.lineTo(1.0f, 1.0f);
            return new PathInterpolator(path);
        }

        private static Animator createSweepAngleAnimator(IndeterminateDrawable indeterminateDrawable, Builder builder) {
            ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(indeterminateDrawable, END_ANGLE, Call.Parameters.DEFAULT_CAMERA_ZOOM, END_ANGLE_MAX);
            objectAnimatorOfFloat.setDuration(builder.sweepDuration);
            objectAnimatorOfFloat.setRepeatCount(-1);
            objectAnimatorOfFloat.setRepeatMode(1);
            objectAnimatorOfFloat.setInterpolator(createEndInterpolator());
            return objectAnimatorOfFloat;
        }
    }

    private IndeterminateDrawable(Builder builder) {
        this.drawingBounds = new RectF();
        Paint paint = builder.paint;
        this.paint = paint;
        this.padding = (paint.getStrokeWidth() / 2.0f) + builder.padding + EXTRA_PADDING_SAFE_ZONE;
        this.animator = IndeterminateAnimatorFactory.createIndeterminateDrawableAnimator(this, builder);
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        RectF rectF = this.drawingBounds;
        float f2 = this.rotation;
        float f3 = this.startAngle;
        canvas.drawArc(rectF, f2 + f3, this.endAngle - f3, false, this.paint);
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return this.paint.getAlpha();
    }

    @Override // android.graphics.drawable.Animatable
    public boolean isRunning() {
        return this.animator.isRunning();
    }

    public boolean isStarted() {
        return this.animator.isStarted();
    }

    @Override // android.graphics.drawable.Drawable
    public void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        this.drawingBounds.set(rect);
        float fWidth = rect.width();
        float fHeight = rect.height();
        float fMax = Math.max(Call.Parameters.DEFAULT_CAMERA_ZOOM, (fWidth - fHeight) / 2.0f);
        float fMax2 = Math.max(Call.Parameters.DEFAULT_CAMERA_ZOOM, (fHeight - fWidth) / 2.0f);
        RectF rectF = this.drawingBounds;
        float f2 = this.padding;
        rectF.inset(fMax + f2, f2 + fMax2);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i2) {
        this.paint.setAlpha(i2);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.paint.setColorFilter(colorFilter);
    }

    public void setEndAngle(float f2) {
        this.endAngle = f2;
        invalidateSelf();
    }

    public void setRotation(float f2) {
        this.rotation = f2;
        invalidateSelf();
    }

    public void setStartAngle(float f2) {
        this.startAngle = f2;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Animatable
    public void start() {
        if (this.animator.isStarted()) {
            return;
        }
        this.animator.start();
    }

    @Override // android.graphics.drawable.Animatable
    public void stop() {
        if (this.animator.isStarted()) {
            this.animator.end();
        }
    }

    /* JADX INFO: loaded from: classes3.dex */
    public static class Builder {
        private final DisplayMetrics displayMetrics;
        private final Paint paint;
        private float padding = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        private int sweepDuration = 1333;
        private int rotationDuration = 6665;

        public Builder(Context context) {
            DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
            this.displayMetrics = displayMetrics;
            Paint paint = new Paint(1);
            this.paint = paint;
            paint.setStyle(Paint.Style.STROKE);
            paint.setStrokeCap(Paint.Cap.ROUND);
            paint.setStrokeWidth(TypedValue.applyDimension(1, 4.0f, displayMetrics));
            new TypedValue();
            paint.setColor(b.v);
        }

        public IndeterminateDrawable build() {
            return new IndeterminateDrawable(this, 0);
        }

        public Builder color(int i2) {
            this.paint.setColor(i2);
            return this;
        }

        public Builder padding(int i2) {
            this.padding = TypedValue.applyDimension(1, i2, this.displayMetrics);
            return this;
        }

        public Builder rotationDuration(int i2) {
            this.rotationDuration = i2;
            return this;
        }

        public Builder strokeWidth(int i2) {
            this.paint.setStrokeWidth(TypedValue.applyDimension(1, i2, this.displayMetrics));
            return this;
        }

        public Builder sweepDuration(int i2) {
            this.sweepDuration = i2;
            return this;
        }

        public Builder padding(float f2) {
            this.padding = f2;
            return this;
        }

        public Builder strokeWidth(float f2) {
            this.paint.setStrokeWidth(f2);
            return this;
        }
    }

    public /* synthetic */ IndeterminateDrawable(Builder builder, int i2) {
        this(builder);
    }
}
