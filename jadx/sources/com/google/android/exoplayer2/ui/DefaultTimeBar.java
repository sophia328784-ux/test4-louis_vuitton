package com.google.android.exoplayer2.ui;

import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Util;
import defpackage.et;
import defpackage.ft;
import java.util.Collections;
import java.util.Formatter;
import java.util.Iterator;
import java.util.Locale;
import java.util.concurrent.CopyOnWriteArraySet;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class DefaultTimeBar extends View implements TimeBar {
    public static final /* synthetic */ int K = 0;
    public int A;
    public long B;
    public int C;
    public Rect D;
    public float E;
    public boolean F;
    public long G;
    public long H;
    public long I;
    public long J;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Rect f28372b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Rect f28373c;
    public final Rect d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Rect f28374e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Paint f28375f;
    public final Paint g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Paint f28376h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Paint f28377i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final Paint f28378j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final Paint f28379k;
    public final Drawable l;
    public final int m;
    public final int n;
    public final int o;
    public final int p;
    public final int q;
    public final int r;
    public final int s;
    public final int t;
    public final StringBuilder u;
    public final Formatter v;
    public final et w;
    public final CopyOnWriteArraySet x;
    public final Point y;
    public final float z;

    public DefaultTimeBar(Context context, AttributeSet attributeSet, int i2, AttributeSet attributeSet2, int i3) {
        super(context, attributeSet, i2);
        this.f28372b = new Rect();
        this.f28373c = new Rect();
        this.d = new Rect();
        this.f28374e = new Rect();
        Paint paint = new Paint();
        this.f28375f = paint;
        Paint paint2 = new Paint();
        this.g = paint2;
        Paint paint3 = new Paint();
        this.f28376h = paint3;
        Paint paint4 = new Paint();
        this.f28377i = paint4;
        Paint paint5 = new Paint();
        this.f28378j = paint5;
        Paint paint6 = new Paint();
        this.f28379k = paint6;
        paint6.setAntiAlias(true);
        this.x = new CopyOnWriteArraySet();
        this.y = new Point();
        float f2 = context.getResources().getDisplayMetrics().density;
        this.z = f2;
        this.t = b(f2, -50);
        int iB = b(f2, 4);
        int iB2 = b(f2, 26);
        int iB3 = b(f2, 4);
        int iB4 = b(f2, 12);
        int iB5 = b(f2, 0);
        int iB6 = b(f2, 16);
        if (attributeSet2 != null) {
            TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet2, R$styleable.f28399b, i2, i3);
            try {
                Drawable drawable = typedArrayObtainStyledAttributes.getDrawable(10);
                this.l = drawable;
                if (drawable != null) {
                    int i4 = Util.f28451a;
                    if (i4 >= 23) {
                        int layoutDirection = getLayoutDirection();
                        if (i4 < 23 || drawable.setLayoutDirection(layoutDirection)) {
                        }
                    }
                    iB2 = Math.max(drawable.getMinimumHeight(), iB2);
                }
                this.m = typedArrayObtainStyledAttributes.getDimensionPixelSize(3, iB);
                this.n = typedArrayObtainStyledAttributes.getDimensionPixelSize(12, iB2);
                this.o = typedArrayObtainStyledAttributes.getInt(2, 0);
                typedArrayObtainStyledAttributes.getDimensionPixelSize(1, iB3);
                this.p = typedArrayObtainStyledAttributes.getDimensionPixelSize(11, iB4);
                this.q = typedArrayObtainStyledAttributes.getDimensionPixelSize(8, iB5);
                this.r = typedArrayObtainStyledAttributes.getDimensionPixelSize(9, iB6);
                int i5 = typedArrayObtainStyledAttributes.getInt(6, -1);
                int i6 = typedArrayObtainStyledAttributes.getInt(7, -1);
                int i7 = typedArrayObtainStyledAttributes.getInt(4, -855638017);
                int i8 = typedArrayObtainStyledAttributes.getInt(13, 872415231);
                int i9 = typedArrayObtainStyledAttributes.getInt(0, -1291845888);
                int i10 = typedArrayObtainStyledAttributes.getInt(5, 872414976);
                paint.setColor(i5);
                paint6.setColor(i6);
                paint2.setColor(i7);
                paint3.setColor(i8);
                paint4.setColor(i9);
                paint5.setColor(i10);
                typedArrayObtainStyledAttributes.recycle();
            } catch (Throwable th) {
                typedArrayObtainStyledAttributes.recycle();
                throw th;
            }
        } else {
            this.m = iB;
            this.n = iB2;
            this.o = 0;
            this.p = iB4;
            this.q = iB5;
            this.r = iB6;
            paint.setColor(-1);
            paint6.setColor(-1);
            paint2.setColor(-855638017);
            paint3.setColor(872415231);
            paint4.setColor(-1291845888);
            paint5.setColor(872414976);
            this.l = null;
        }
        StringBuilder sb = new StringBuilder();
        this.u = sb;
        this.v = new Formatter(sb, Locale.getDefault());
        this.w = new et(this, 0);
        Drawable drawable2 = this.l;
        if (drawable2 != null) {
            this.s = (drawable2.getMinimumWidth() + 1) / 2;
        } else {
            this.s = (Math.max(this.q, Math.max(this.p, this.r)) + 1) / 2;
        }
        this.E = 1.0f;
        new ValueAnimator().addUpdateListener(new ft(this, 0));
        this.H = -9223372036854775807L;
        this.B = -9223372036854775807L;
        this.A = 20;
        setFocusable(true);
        if (getImportantForAccessibility() == 0) {
            setImportantForAccessibility(1);
        }
    }

    public static int b(float f2, int i2) {
        return (int) ((i2 * f2) + 0.5f);
    }

    private long getPositionIncrement() {
        long j2 = this.B;
        if (j2 != -9223372036854775807L) {
            return j2;
        }
        long j3 = this.H;
        if (j3 == -9223372036854775807L) {
            return 0L;
        }
        return j3 / ((long) this.A);
    }

    private String getProgressText() {
        return Util.c(this.u, this.v, this.I);
    }

    private long getScrubberPosition() {
        Rect rect = this.f28373c;
        if (rect.width() <= 0 || this.H == -9223372036854775807L) {
            return 0L;
        }
        return (((long) this.f28374e.width()) * this.H) / ((long) rect.width());
    }

    @Override // com.google.android.exoplayer2.ui.TimeBar
    public final void a(TimeBar.OnScrubListener onScrubListener) {
        this.x.add(onScrubListener);
    }

    public final boolean c(long j2) {
        long j3 = this.H;
        if (j3 <= 0) {
            return false;
        }
        long j4 = this.F ? this.G : this.I;
        int i2 = Util.f28451a;
        long jMax = Math.max(0L, Math.min(j2 + j4, j3));
        if (jMax == j4) {
            return false;
        }
        if (this.F) {
            g(jMax);
        } else {
            d(jMax);
        }
        f();
        return true;
    }

    public final void d(long j2) {
        this.G = j2;
        this.F = true;
        setPressed(true);
        ViewParent parent = getParent();
        if (parent != null) {
            parent.requestDisallowInterceptTouchEvent(true);
        }
        Iterator it = this.x.iterator();
        while (it.hasNext()) {
            ((TimeBar.OnScrubListener) it.next()).e(j2);
        }
    }

    @Override // android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        Drawable drawable = this.l;
        if (drawable != null && drawable.isStateful() && drawable.setState(getDrawableState())) {
            invalidate();
        }
    }

    public final void e(boolean z) {
        removeCallbacks(this.w);
        this.F = false;
        setPressed(false);
        ViewParent parent = getParent();
        if (parent != null) {
            parent.requestDisallowInterceptTouchEvent(false);
        }
        invalidate();
        Iterator it = this.x.iterator();
        while (it.hasNext()) {
            ((TimeBar.OnScrubListener) it.next()).z(this.G, z);
        }
    }

    public final void f() {
        Rect rect = this.d;
        Rect rect2 = this.f28373c;
        rect.set(rect2);
        Rect rect3 = this.f28374e;
        rect3.set(rect2);
        long j2 = this.F ? this.G : this.I;
        if (this.H > 0) {
            rect.right = Math.min(rect2.left + ((int) ((((long) rect2.width()) * this.J) / this.H)), rect2.right);
            rect3.right = Math.min(rect2.left + ((int) ((((long) rect2.width()) * j2) / this.H)), rect2.right);
        } else {
            int i2 = rect2.left;
            rect.right = i2;
            rect3.right = i2;
        }
        invalidate(this.f28372b);
    }

    public final void g(long j2) {
        if (this.G == j2) {
            return;
        }
        this.G = j2;
        Iterator it = this.x.iterator();
        while (it.hasNext()) {
            ((TimeBar.OnScrubListener) it.next()).x(j2);
        }
    }

    @Override // com.google.android.exoplayer2.ui.TimeBar
    public long getPreferredUpdateDelay() {
        int iWidth = (int) (this.f28373c.width() / this.z);
        if (iWidth == 0) {
            return Long.MAX_VALUE;
        }
        long j2 = this.H;
        if (j2 == 0 || j2 == -9223372036854775807L) {
            return Long.MAX_VALUE;
        }
        return j2 / ((long) iWidth);
    }

    @Override // android.view.View
    public final void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        Drawable drawable = this.l;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        int i2;
        canvas.save();
        Rect rect = this.f28373c;
        int iHeight = rect.height();
        int iCenterY = rect.centerY() - (iHeight / 2);
        int i3 = iCenterY + iHeight;
        long j2 = this.H;
        Paint paint = this.f28376h;
        Rect rect2 = this.f28374e;
        if (j2 <= 0) {
            canvas.drawRect(rect.left, iCenterY, rect.right, i3, paint);
        } else {
            Rect rect3 = this.d;
            int i4 = rect3.left;
            int i5 = rect3.right;
            int iMax = Math.max(Math.max(rect.left, i5), rect2.right);
            int i6 = rect.right;
            if (iMax < i6) {
                canvas.drawRect(iMax, iCenterY, i6, i3, paint);
            }
            int iMax2 = Math.max(i4, rect2.right);
            if (i5 > iMax2) {
                canvas.drawRect(iMax2, iCenterY, i5, i3, this.g);
            }
            if (rect2.width() > 0) {
                canvas.drawRect(rect2.left, iCenterY, rect2.right, i3, this.f28375f);
            }
        }
        if (this.H > 0) {
            int i7 = rect2.right;
            int i8 = rect2.left;
            int i9 = rect.right;
            int i10 = Util.f28451a;
            int iMax3 = Math.max(i8, Math.min(i7, i9));
            int iCenterY2 = rect2.centerY();
            Drawable drawable = this.l;
            if (drawable == null) {
                if (this.F || isFocused()) {
                    i2 = this.r;
                } else {
                    i2 = isEnabled() ? this.p : this.q;
                }
                canvas.drawCircle(iMax3, iCenterY2, (int) ((i2 * this.E) / 2.0f), this.f28379k);
            } else {
                int intrinsicWidth = ((int) (drawable.getIntrinsicWidth() * this.E)) / 2;
                int intrinsicHeight = ((int) (drawable.getIntrinsicHeight() * this.E)) / 2;
                drawable.setBounds(iMax3 - intrinsicWidth, iCenterY2 - intrinsicHeight, iMax3 + intrinsicWidth, iCenterY2 + intrinsicHeight);
                drawable.draw(canvas);
            }
        }
        canvas.restore();
    }

    @Override // android.view.View
    public final void onFocusChanged(boolean z, int i2, Rect rect) {
        super.onFocusChanged(z, i2, rect);
        if (!this.F || z) {
            return;
        }
        e(false);
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        if (accessibilityEvent.getEventType() == 4) {
            accessibilityEvent.getText().add(getProgressText());
        }
        accessibilityEvent.setClassName("android.widget.SeekBar");
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName("android.widget.SeekBar");
        accessibilityNodeInfo.setContentDescription(getProgressText());
        if (this.H <= 0) {
            return;
        }
        if (Util.f28451a >= 21) {
            accessibilityNodeInfo.addAction(AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_FORWARD);
            accessibilityNodeInfo.addAction(AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_BACKWARD);
        } else {
            accessibilityNodeInfo.addAction(4096);
            accessibilityNodeInfo.addAction(8192);
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:11:0x001a  */
    /* JADX WARN: Code duplicated, block: B:13:0x0025  */
    /* JADX WARN: Code duplicated, block: B:15:0x0029  */
    @Override // android.view.View, android.view.KeyEvent.Callback
    public final boolean onKeyDown(int i2, KeyEvent keyEvent) {
        if (isEnabled()) {
            long positionIncrement = getPositionIncrement();
            if (i2 != 66) {
                switch (i2) {
                    case 21:
                        positionIncrement = -positionIncrement;
                        if (c(positionIncrement)) {
                            et etVar = this.w;
                            removeCallbacks(etVar);
                            postDelayed(etVar, 1000L);
                            return true;
                        }
                        break;
                    case 22:
                        if (c(positionIncrement)) {
                            et etVar2 = this.w;
                            removeCallbacks(etVar2);
                            postDelayed(etVar2, 1000L);
                            return true;
                        }
                        break;
                    case 23:
                        if (this.F) {
                            e(false);
                            return true;
                        }
                        break;
                }
            } else if (this.F) {
                e(false);
                return true;
            }
        }
        return super.onKeyDown(i2, keyEvent);
    }

    @Override // android.view.View
    public final void onLayout(boolean z, int i2, int i3, int i4, int i5) {
        int paddingBottom;
        int paddingBottom2;
        Rect rect;
        int i6 = i4 - i2;
        int i7 = i5 - i3;
        int paddingLeft = getPaddingLeft();
        int paddingRight = i6 - getPaddingRight();
        int i8 = this.o;
        int i9 = this.m;
        int i10 = this.n;
        int i11 = this.s;
        if (i8 == 1) {
            paddingBottom = (i7 - getPaddingBottom()) - i10;
            paddingBottom2 = ((i7 - getPaddingBottom()) - i9) - Math.max(i11 - (i9 / 2), 0);
        } else {
            paddingBottom = (i7 - i10) / 2;
            paddingBottom2 = (i7 - i9) / 2;
        }
        Rect rect2 = this.f28372b;
        rect2.set(paddingLeft, paddingBottom, paddingRight, i10 + paddingBottom);
        this.f28373c.set(rect2.left + i11, paddingBottom2, rect2.right - i11, i9 + paddingBottom2);
        if (Util.f28451a >= 29 && ((rect = this.D) == null || rect.width() != i6 || this.D.height() != i7)) {
            Rect rect3 = new Rect(0, 0, i6, i7);
            this.D = rect3;
            setSystemGestureExclusionRects(Collections.singletonList(rect3));
        }
        f();
    }

    @Override // android.view.View
    public final void onMeasure(int i2, int i3) {
        int mode = View.MeasureSpec.getMode(i3);
        int size = View.MeasureSpec.getSize(i3);
        int i4 = this.n;
        if (mode == 0) {
            size = i4;
        } else if (mode != 1073741824) {
            size = Math.min(i4, size);
        }
        setMeasuredDimension(View.MeasureSpec.getSize(i2), size);
        Drawable drawable = this.l;
        if (drawable != null && drawable.isStateful() && drawable.setState(getDrawableState())) {
            invalidate();
        }
    }

    @Override // android.view.View
    public final void onRtlPropertiesChanged(int i2) {
        Drawable drawable = this.l;
        if (drawable == null || Util.f28451a < 23 || !drawable.setLayoutDirection(i2)) {
            return;
        }
        invalidate();
    }

    /* JADX WARN: Code duplicated, block: B:23:0x007c  */
    /* JADX WARN: Code duplicated, block: B:25:0x0080  */
    /* JADX WARN: Code duplicated, block: B:27:0x0086  */
    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        if (isEnabled() && this.H > 0) {
            int x = (int) motionEvent.getX();
            int y = (int) motionEvent.getY();
            Point point = this.y;
            point.set(x, y);
            int i2 = point.x;
            int i3 = point.y;
            int action = motionEvent.getAction();
            Rect rect = this.f28373c;
            Rect rect2 = this.f28374e;
            if (action == 0) {
                int i4 = i2;
                if (this.f28372b.contains(i4, i3)) {
                    int i5 = rect.left;
                    int i6 = rect.right;
                    int i7 = Util.f28451a;
                    rect2.right = Math.max(i5, Math.min(i4, i6));
                    d(getScrubberPosition());
                    f();
                    invalidate();
                    return true;
                }
            } else if (action == 1) {
                if (this.F) {
                    e(motionEvent.getAction() == 3);
                    return true;
                }
            } else if (action != 2) {
                if (action == 3) {
                    if (this.F) {
                        e(motionEvent.getAction() == 3);
                        return true;
                    }
                }
            } else if (this.F) {
                if (i3 < this.t) {
                    int i8 = this.C;
                    int iA = defpackage.a.a(i2, i8, 3, i8);
                    int i9 = rect.left;
                    int i10 = rect.right;
                    int i11 = Util.f28451a;
                    rect2.right = Math.max(i9, Math.min(iA, i10));
                } else {
                    this.C = i2;
                    int i12 = i2;
                    int i13 = rect.left;
                    int i14 = rect.right;
                    int i15 = Util.f28451a;
                    rect2.right = Math.max(i13, Math.min(i12, i14));
                }
                g(getScrubberPosition());
                f();
                invalidate();
                return true;
            }
        }
        return false;
    }

    @Override // android.view.View
    public final boolean performAccessibilityAction(int i2, Bundle bundle) {
        if (super.performAccessibilityAction(i2, bundle)) {
            return true;
        }
        if (this.H <= 0) {
            return false;
        }
        if (i2 == 8192) {
            if (c(-getPositionIncrement())) {
                e(false);
            }
        } else {
            if (i2 != 4096) {
                return false;
            }
            if (c(getPositionIncrement())) {
                e(false);
            }
        }
        sendAccessibilityEvent(4);
        return true;
    }

    public void setAdMarkerColor(int i2) {
        this.f28377i.setColor(i2);
        invalidate(this.f28372b);
    }

    public void setBufferedColor(int i2) {
        this.g.setColor(i2);
        invalidate(this.f28372b);
    }

    @Override // com.google.android.exoplayer2.ui.TimeBar
    public void setBufferedPosition(long j2) {
        if (this.J == j2) {
            return;
        }
        this.J = j2;
        f();
    }

    public void setDuration(long j2) {
        if (this.H == j2) {
            return;
        }
        this.H = j2;
        if (this.F && j2 == -9223372036854775807L) {
            e(true);
        }
        f();
    }

    @Override // android.view.View, com.google.android.exoplayer2.ui.TimeBar
    public void setEnabled(boolean z) {
        super.setEnabled(z);
        if (!this.F || z) {
            return;
        }
        e(true);
    }

    public void setKeyCountIncrement(int i2) {
        Assertions.a(i2 > 0);
        this.A = i2;
        this.B = -9223372036854775807L;
    }

    public void setKeyTimeIncrement(long j2) {
        Assertions.a(j2 > 0);
        this.A = -1;
        this.B = j2;
    }

    public void setPlayedAdMarkerColor(int i2) {
        this.f28378j.setColor(i2);
        invalidate(this.f28372b);
    }

    public void setPlayedColor(int i2) {
        this.f28375f.setColor(i2);
        invalidate(this.f28372b);
    }

    @Override // com.google.android.exoplayer2.ui.TimeBar
    public void setPosition(long j2) {
        if (this.I == j2) {
            return;
        }
        this.I = j2;
        setContentDescription(getProgressText());
        f();
    }

    public void setScrubberColor(int i2) {
        this.f28379k.setColor(i2);
        invalidate(this.f28372b);
    }

    public void setUnplayedColor(int i2) {
        this.f28376h.setColor(i2);
        invalidate(this.f28372b);
    }

    public DefaultTimeBar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public DefaultTimeBar(Context context, AttributeSet attributeSet, int i2) {
        this(context, attributeSet, i2, attributeSet);
    }

    public DefaultTimeBar(Context context, AttributeSet attributeSet, int i2, AttributeSet attributeSet2) {
        this(context, attributeSet, i2, attributeSet2, 0);
    }

    public DefaultTimeBar(Context context) {
        this(context, null);
    }
}
