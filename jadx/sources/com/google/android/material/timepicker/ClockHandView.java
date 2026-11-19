package com.google.android.material.timepicker;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import com.google.android.material.R$styleable;
import com.google.android.material.animation.AnimationUtils;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.math.MathUtils;
import com.google.android.material.motion.MotionUtils;
import com.vuitton.android.R;
import java.util.ArrayList;
import java.util.Iterator;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes2.dex */
class ClockHandView extends View {
    public static final /* synthetic */ int o = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ValueAnimator f33237b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f33238c;
    public final ArrayList d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f33239e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final float f33240f;
    public final Paint g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final RectF f33241h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f33242i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public float f33243j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f33244k;
    public double l;
    public int m;
    public int n;

    /* JADX INFO: renamed from: com.google.android.material.timepicker.ClockHandView$1, reason: invalid class name */
    class AnonymousClass1 extends AnimatorListenerAdapter {
        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationCancel(Animator animator) {
            animator.end();
        }
    }

    public interface OnActionUpListener {
    }

    public interface OnRotateListener {
        void a(float f2);
    }

    public ClockHandView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        ValueAnimator valueAnimator = new ValueAnimator();
        this.f33237b = valueAnimator;
        this.d = new ArrayList();
        Paint paint = new Paint();
        this.g = paint;
        this.f33241h = new RectF();
        this.n = 1;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.l, i2, R.style.Widget_MaterialComponents_TimePicker_Clock);
        MotionUtils.c(context, R.attr.motionDurationLong2, 200);
        MotionUtils.d(context, R.attr.motionEasingEmphasizedInterpolator, AnimationUtils.f32228b);
        this.m = typedArrayObtainStyledAttributes.getDimensionPixelSize(1, 0);
        this.f33239e = typedArrayObtainStyledAttributes.getDimensionPixelSize(2, 0);
        Resources resources = getResources();
        this.f33242i = resources.getDimensionPixelSize(R.dimen.material_clock_hand_stroke_width);
        this.f33240f = resources.getDimensionPixelSize(R.dimen.material_clock_hand_center_dot_radius);
        int color = typedArrayObtainStyledAttributes.getColor(0, 0);
        paint.setAntiAlias(true);
        paint.setColor(color);
        a(Call.Parameters.DEFAULT_CAMERA_ZOOM);
        ViewConfiguration.get(context).getScaledTouchSlop();
        setImportantForAccessibility(2);
        typedArrayObtainStyledAttributes.recycle();
        valueAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.timepicker.a
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                int i3 = ClockHandView.o;
                this.f33250a.b(((Float) valueAnimator2.getAnimatedValue()).floatValue(), true);
            }
        });
        valueAnimator.addListener(new AnonymousClass1());
    }

    public final void a(float f2) {
        this.f33237b.cancel();
        b(f2, false);
    }

    public final void b(float f2, boolean z) {
        float f3 = f2 % 360.0f;
        this.f33243j = f3;
        this.l = Math.toRadians(f3 - 90.0f);
        int height = getHeight() / 2;
        int width = getWidth() / 2;
        int i2 = this.n;
        int iRound = this.m;
        if (i2 == 2) {
            iRound = Math.round(iRound * 0.66f);
        }
        float f4 = width;
        float f5 = iRound;
        float fCos = (((float) Math.cos(this.l)) * f5) + f4;
        float fSin = (f5 * ((float) Math.sin(this.l))) + height;
        float f6 = this.f33239e;
        this.f33241h.set(fCos - f6, fSin - f6, fCos + f6, fSin + f6);
        Iterator it = this.d.iterator();
        while (it.hasNext()) {
            ((OnRotateListener) it.next()).a(f3);
        }
        invalidate();
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int height = getHeight() / 2;
        int width = getWidth() / 2;
        int i2 = this.n;
        int iRound = this.m;
        if (i2 == 2) {
            iRound = Math.round(iRound * 0.66f);
        }
        float f2 = width;
        float f3 = iRound;
        float fCos = (((float) Math.cos(this.l)) * f3) + f2;
        float f4 = height;
        float fSin = (f3 * ((float) Math.sin(this.l))) + f4;
        Paint paint = this.g;
        paint.setStrokeWidth(Call.Parameters.DEFAULT_CAMERA_ZOOM);
        int i3 = this.f33239e;
        canvas.drawCircle(fCos, fSin, i3, paint);
        double dSin = Math.sin(this.l);
        double d = iRound - i3;
        paint.setStrokeWidth(this.f33242i);
        canvas.drawLine(f2, f4, width + ((int) (Math.cos(this.l) * d)), height + ((int) (d * dSin)), paint);
        canvas.drawCircle(f2, f4, this.f33240f, paint);
    }

    @Override // android.view.View
    public final void onLayout(boolean z, int i2, int i3, int i4, int i5) {
        super.onLayout(z, i2, i3, i4, i5);
        if (this.f33237b.isRunning()) {
            return;
        }
        a(this.f33243j);
    }

    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        boolean z;
        boolean z2;
        int actionMasked = motionEvent.getActionMasked();
        float x = motionEvent.getX();
        float y = motionEvent.getY();
        boolean z3 = false;
        if (actionMasked == 0) {
            this.f33244k = false;
            z = true;
            z2 = false;
        } else if (actionMasked == 1 || actionMasked == 2) {
            z2 = this.f33244k;
            if (this.f33238c) {
                this.n = MathUtils.a((float) (getWidth() / 2), (float) (getHeight() / 2), x, y) <= ((float) Math.round(((float) this.m) * 0.66f)) + ViewUtils.d(12, getContext()) ? 2 : 1;
            }
            z = false;
        } else {
            z2 = false;
            z = false;
        }
        boolean z4 = this.f33244k;
        int degrees = (int) Math.toDegrees(Math.atan2(y - (getHeight() / 2), x - (getWidth() / 2)));
        int i2 = degrees + 90;
        if (i2 < 0) {
            i2 = degrees + 450;
        }
        float f2 = i2;
        boolean z5 = this.f33243j != f2;
        if (z && z5) {
            z3 = true;
        } else if (z5 || z2) {
            a(f2);
            z3 = true;
        }
        this.f33244k = z4 | z3;
        return true;
    }

    public ClockHandView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.materialClockStyle);
    }

    public ClockHandView(Context context) {
        this(context, null);
    }
}
