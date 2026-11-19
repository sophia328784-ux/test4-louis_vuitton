package androidx.media3.ui;

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
import androidx.media3.common.util.Util;
import com.google.common.base.Preconditions;
import defpackage.et;
import defpackage.ft;
import java.util.Collections;
import java.util.Formatter;
import java.util.Iterator;
import java.util.Locale;
import java.util.concurrent.CopyOnWriteArraySet;

/* JADX INFO: loaded from: classes.dex */
public class DefaultTimeBar extends View implements TimeBar {
    public static final /* synthetic */ int Q = 0;
    public final float A;
    public int B;
    public long C;
    public int D;
    public Rect E;
    public final ValueAnimator F;
    public float G;
    public boolean H;
    public boolean I;
    public long J;
    public long K;
    public long L;
    public long M;
    public int N;
    public long[] O;
    public boolean[] P;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Rect f17970b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Rect f17971c;
    public final Rect d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Rect f17972e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Paint f17973f;
    public final Paint g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Paint f17974h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Paint f17975i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final Paint f17976j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final Paint f17977k;
    public final Drawable l;
    public final int m;
    public final int n;
    public final int o;
    public final int p;
    public final int q;
    public final int r;
    public final int s;
    public final int t;
    public final int u;
    public final StringBuilder v;
    public final Formatter w;
    public final et x;
    public final CopyOnWriteArraySet y;
    public final Point z;

    public DefaultTimeBar(Context context, AttributeSet attributeSet, int i2, AttributeSet attributeSet2, int i3) {
        super(context, attributeSet, i2);
        this.f17970b = new Rect();
        this.f17971c = new Rect();
        this.d = new Rect();
        this.f17972e = new Rect();
        Paint paint = new Paint();
        this.f17973f = paint;
        Paint paint2 = new Paint();
        this.g = paint2;
        Paint paint3 = new Paint();
        this.f17974h = paint3;
        Paint paint4 = new Paint();
        this.f17975i = paint4;
        Paint paint5 = new Paint();
        this.f17976j = paint5;
        Paint paint6 = new Paint();
        this.f17977k = paint6;
        paint6.setAntiAlias(true);
        this.y = new CopyOnWriteArraySet();
        this.z = new Point();
        float f2 = context.getResources().getDisplayMetrics().density;
        this.A = f2;
        this.u = c(f2, -50);
        int iC = c(f2, 4);
        int iC2 = c(f2, 26);
        int iC3 = c(f2, 4);
        int iC4 = c(f2, 12);
        int iC5 = c(f2, 0);
        int iC6 = c(f2, 16);
        if (attributeSet2 != null) {
            TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet2, R$styleable.f18041b, i2, i3);
            try {
                Drawable drawable = typedArrayObtainStyledAttributes.getDrawable(10);
                this.l = drawable;
                if (drawable != null) {
                    drawable.setLayoutDirection(getLayoutDirection());
                    iC2 = Math.max(drawable.getMinimumHeight(), iC2);
                }
                this.m = typedArrayObtainStyledAttributes.getDimensionPixelSize(3, iC);
                this.n = typedArrayObtainStyledAttributes.getDimensionPixelSize(12, iC2);
                this.o = typedArrayObtainStyledAttributes.getInt(2, 0);
                this.p = typedArrayObtainStyledAttributes.getDimensionPixelSize(1, iC3);
                this.q = typedArrayObtainStyledAttributes.getDimensionPixelSize(11, iC4);
                this.r = typedArrayObtainStyledAttributes.getDimensionPixelSize(8, iC5);
                this.s = typedArrayObtainStyledAttributes.getDimensionPixelSize(9, iC6);
                int i4 = typedArrayObtainStyledAttributes.getInt(6, -1);
                int i5 = typedArrayObtainStyledAttributes.getInt(7, -1);
                int i6 = typedArrayObtainStyledAttributes.getInt(4, -855638017);
                int i7 = typedArrayObtainStyledAttributes.getInt(13, 872415231);
                int i8 = typedArrayObtainStyledAttributes.getInt(0, -1291845888);
                int i9 = typedArrayObtainStyledAttributes.getInt(5, 872414976);
                paint.setColor(i4);
                paint6.setColor(i5);
                paint2.setColor(i6);
                paint3.setColor(i7);
                paint4.setColor(i8);
                paint5.setColor(i9);
                typedArrayObtainStyledAttributes.recycle();
            } catch (Throwable th) {
                typedArrayObtainStyledAttributes.recycle();
                throw th;
            }
        } else {
            this.m = iC;
            this.n = iC2;
            this.o = 0;
            this.p = iC3;
            this.q = iC4;
            this.r = iC5;
            this.s = iC6;
            paint.setColor(-1);
            paint6.setColor(-1);
            paint2.setColor(-855638017);
            paint3.setColor(872415231);
            paint4.setColor(-1291845888);
            paint5.setColor(872414976);
            this.l = null;
        }
        StringBuilder sb = new StringBuilder();
        this.v = sb;
        this.w = new Formatter(sb, Locale.getDefault());
        int i10 = 1;
        this.x = new et(this, 1);
        Drawable drawable2 = this.l;
        if (drawable2 != null) {
            this.t = (drawable2.getMinimumWidth() + 1) / 2;
        } else {
            this.t = (Math.max(this.r, Math.max(this.q, this.s)) + 1) / 2;
        }
        this.G = 1.0f;
        ValueAnimator valueAnimator = new ValueAnimator();
        this.F = valueAnimator;
        valueAnimator.addUpdateListener(new ft(this, i10));
        this.K = -9223372036854775807L;
        this.C = -9223372036854775807L;
        this.B = 20;
        setFocusable(true);
        if (getImportantForAccessibility() == 0) {
            setImportantForAccessibility(1);
        }
    }

    public static int c(float f2, int i2) {
        return (int) ((i2 * f2) + 0.5f);
    }

    private long getPositionIncrement() {
        long j2 = this.C;
        if (j2 != -9223372036854775807L) {
            return j2;
        }
        long j3 = this.K;
        if (j3 == -9223372036854775807L) {
            return 0L;
        }
        return j3 / ((long) this.B);
    }

    private String getProgressText() {
        return Util.E(this.v, this.w, this.L);
    }

    private long getScrubberPosition() {
        Rect rect = this.f17971c;
        if (rect.width() <= 0 || this.K == -9223372036854775807L) {
            return 0L;
        }
        return (((long) this.f17972e.width()) * this.K) / ((long) rect.width());
    }

    @Override // androidx.media3.ui.TimeBar
    public final void a(TimeBar.OnScrubListener onScrubListener) {
        onScrubListener.getClass();
        this.y.add(onScrubListener);
    }

    @Override // androidx.media3.ui.TimeBar
    public final void b(long[] jArr, boolean[] zArr, int i2) {
        Preconditions.g(i2 == 0 || !(jArr == null || zArr == null));
        this.N = i2;
        this.O = jArr;
        this.P = zArr;
        g();
    }

    public final boolean d(long j2) {
        long j3 = this.K;
        if (j3 <= 0) {
            return false;
        }
        long j4 = this.I ? this.J : this.L;
        long jK = Util.k(j4 + j2, 0L, j3);
        if (jK == j4) {
            return false;
        }
        if (this.I) {
            h(jK);
        } else {
            e(jK);
        }
        g();
        return true;
    }

    @Override // android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        Drawable drawable = this.l;
        if (drawable != null && drawable.isStateful() && drawable.setState(getDrawableState())) {
            invalidate();
        }
    }

    public final void e(long j2) {
        this.J = j2;
        this.I = true;
        setPressed(true);
        ViewParent parent = getParent();
        if (parent != null) {
            parent.requestDisallowInterceptTouchEvent(true);
        }
        Iterator it = this.y.iterator();
        while (it.hasNext()) {
            ((TimeBar.OnScrubListener) it.next()).e(j2);
        }
    }

    public final void f(boolean z) {
        removeCallbacks(this.x);
        this.I = false;
        setPressed(false);
        ViewParent parent = getParent();
        if (parent != null) {
            parent.requestDisallowInterceptTouchEvent(false);
        }
        invalidate();
        Iterator it = this.y.iterator();
        while (it.hasNext()) {
            ((TimeBar.OnScrubListener) it.next()).z(this.J, z);
        }
    }

    public final void g() {
        Rect rect = this.d;
        Rect rect2 = this.f17971c;
        rect.set(rect2);
        Rect rect3 = this.f17972e;
        rect3.set(rect2);
        long j2 = this.I ? this.J : this.L;
        if (this.K > 0) {
            rect.right = Math.min(rect2.left + ((int) ((((long) rect2.width()) * this.M) / this.K)), rect2.right);
            rect3.right = Math.min(rect2.left + ((int) ((((long) rect2.width()) * j2) / this.K)), rect2.right);
        } else {
            int i2 = rect2.left;
            rect.right = i2;
            rect3.right = i2;
        }
        invalidate(this.f17970b);
    }

    @Override // androidx.media3.ui.TimeBar
    public long getPreferredUpdateDelay() {
        int iWidth = (int) (this.f17971c.width() / this.A);
        if (iWidth == 0) {
            return Long.MAX_VALUE;
        }
        long j2 = this.K;
        if (j2 == 0 || j2 == -9223372036854775807L) {
            return Long.MAX_VALUE;
        }
        return j2 / ((long) iWidth);
    }

    public final void h(long j2) {
        if (this.J == j2) {
            return;
        }
        this.J = j2;
        Iterator it = this.y.iterator();
        while (it.hasNext()) {
            ((TimeBar.OnScrubListener) it.next()).x(j2);
        }
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
        Canvas canvas2;
        int i2;
        canvas.save();
        Rect rect = this.f17971c;
        int iHeight = rect.height();
        int iCenterY = rect.centerY() - (iHeight / 2);
        int i3 = iCenterY + iHeight;
        long j2 = this.K;
        Paint paint = this.f17974h;
        Rect rect2 = this.f17972e;
        if (j2 <= 0) {
            canvas2 = canvas;
            canvas2.drawRect(rect.left, iCenterY, rect.right, i3, paint);
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
                canvas.drawRect(rect2.left, iCenterY, rect2.right, i3, this.f17973f);
            }
            if (this.N != 0) {
                long[] jArr = this.O;
                jArr.getClass();
                boolean[] zArr = this.P;
                zArr.getClass();
                int i7 = this.p;
                int i8 = i7 / 2;
                int i9 = 0;
                int i10 = 0;
                while (i10 < this.N) {
                    int iMin = Math.min(rect.width() - i7, Math.max(i9, ((int) ((((long) rect.width()) * Util.k(jArr[i10], 0L, this.K)) / this.K)) - i8)) + rect.left;
                    int i11 = i10;
                    canvas.drawRect(iMin, iCenterY, iMin + i7, i3, zArr[i10] ? this.f17976j : this.f17975i);
                    i10 = i11 + 1;
                    i9 = i9;
                }
            }
            canvas2 = canvas;
        }
        if (this.K > 0) {
            int iJ = Util.j(rect2.right, rect2.left, rect.right);
            int iCenterY2 = rect2.centerY();
            Drawable drawable = this.l;
            if (drawable == null) {
                if (this.I || isFocused()) {
                    i2 = this.s;
                } else {
                    i2 = isEnabled() ? this.q : this.r;
                }
                canvas2.drawCircle(iJ, iCenterY2, (int) ((i2 * this.G) / 2.0f), this.f17977k);
            } else {
                int intrinsicWidth = ((int) (drawable.getIntrinsicWidth() * this.G)) / 2;
                int intrinsicHeight = ((int) (drawable.getIntrinsicHeight() * this.G)) / 2;
                drawable.setBounds(iJ - intrinsicWidth, iCenterY2 - intrinsicHeight, iJ + intrinsicWidth, iCenterY2 + intrinsicHeight);
                drawable.draw(canvas2);
            }
        }
        canvas2.restore();
    }

    @Override // android.view.View
    public final void onFocusChanged(boolean z, int i2, Rect rect) {
        super.onFocusChanged(z, i2, rect);
        if (!this.I || z) {
            return;
        }
        f(false);
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
        if (this.K <= 0) {
            return;
        }
        accessibilityNodeInfo.addAction(AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_FORWARD);
        accessibilityNodeInfo.addAction(AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_BACKWARD);
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
                        if (d(positionIncrement)) {
                            et etVar = this.x;
                            removeCallbacks(etVar);
                            postDelayed(etVar, 1000L);
                            return true;
                        }
                        break;
                    case 22:
                        if (d(positionIncrement)) {
                            et etVar2 = this.x;
                            removeCallbacks(etVar2);
                            postDelayed(etVar2, 1000L);
                            return true;
                        }
                        break;
                    case 23:
                        if (this.I) {
                            f(false);
                            return true;
                        }
                        break;
                }
            } else if (this.I) {
                f(false);
                return true;
            }
        }
        return super.onKeyDown(i2, keyEvent);
    }

    @Override // android.view.View
    public final void onLayout(boolean z, int i2, int i3, int i4, int i5) {
        int paddingBottom;
        int paddingBottom2;
        int i6 = i4 - i2;
        int i7 = i5 - i3;
        int paddingLeft = getPaddingLeft();
        int paddingRight = i6 - getPaddingRight();
        int i8 = this.H ? 0 : this.t;
        int i9 = this.o;
        int i10 = this.m;
        int i11 = this.n;
        if (i9 == 1) {
            paddingBottom = (i7 - getPaddingBottom()) - i11;
            paddingBottom2 = ((i7 - getPaddingBottom()) - i10) - Math.max(i8 - (i10 / 2), 0);
        } else {
            paddingBottom = (i7 - i11) / 2;
            paddingBottom2 = (i7 - i10) / 2;
        }
        Rect rect = this.f17970b;
        rect.set(paddingLeft, paddingBottom, paddingRight, i11 + paddingBottom);
        this.f17971c.set(rect.left + i8, paddingBottom2, rect.right - i8, i10 + paddingBottom2);
        Rect rect2 = this.E;
        if (rect2 == null || rect2.width() != i6 || this.E.height() != i7) {
            Rect rect3 = new Rect(0, 0, i6, i7);
            this.E = rect3;
            setSystemGestureExclusionRects(Collections.singletonList(rect3));
        }
        g();
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
        if (drawable == null || !drawable.setLayoutDirection(i2)) {
            return;
        }
        invalidate();
    }

    /* JADX WARN: Code duplicated, block: B:23:0x006f  */
    /* JADX WARN: Code duplicated, block: B:25:0x0073  */
    /* JADX WARN: Code duplicated, block: B:27:0x0079  */
    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        if (isEnabled() && this.K > 0) {
            int x = (int) motionEvent.getX();
            int y = (int) motionEvent.getY();
            Point point = this.z;
            point.set(x, y);
            int i2 = point.x;
            int i3 = point.y;
            int action = motionEvent.getAction();
            Rect rect = this.f17971c;
            Rect rect2 = this.f17972e;
            if (action == 0) {
                int i4 = i2;
                if (this.f17970b.contains(i4, i3)) {
                    rect2.right = Util.j(i4, rect.left, rect.right);
                    e(getScrubberPosition());
                    g();
                    invalidate();
                    return true;
                }
            } else if (action == 1) {
                if (this.I) {
                    f(motionEvent.getAction() == 3);
                    return true;
                }
            } else if (action != 2) {
                if (action == 3) {
                    if (this.I) {
                        f(motionEvent.getAction() == 3);
                        return true;
                    }
                }
            } else if (this.I) {
                if (i3 < this.u) {
                    int i5 = this.D;
                    rect2.right = Util.j(defpackage.a.a(i2, i5, 3, i5), rect.left, rect.right);
                } else {
                    this.D = i2;
                    rect2.right = Util.j(i2, rect.left, rect.right);
                }
                h(getScrubberPosition());
                g();
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
        if (this.K <= 0) {
            return false;
        }
        if (i2 == 8192) {
            if (d(-getPositionIncrement())) {
                f(false);
            }
        } else {
            if (i2 != 4096) {
                return false;
            }
            if (d(getPositionIncrement())) {
                f(false);
            }
        }
        sendAccessibilityEvent(4);
        return true;
    }

    public void setAdMarkerColor(int i2) {
        this.f17975i.setColor(i2);
        invalidate(this.f17970b);
    }

    public void setBufferedColor(int i2) {
        this.g.setColor(i2);
        invalidate(this.f17970b);
    }

    @Override // androidx.media3.ui.TimeBar
    public void setBufferedPosition(long j2) {
        if (this.M == j2) {
            return;
        }
        this.M = j2;
        g();
    }

    @Override // androidx.media3.ui.TimeBar
    public void setDuration(long j2) {
        if (this.K == j2) {
            return;
        }
        this.K = j2;
        if (this.I && j2 == -9223372036854775807L) {
            f(true);
        }
        g();
    }

    @Override // android.view.View, androidx.media3.ui.TimeBar
    public void setEnabled(boolean z) {
        super.setEnabled(z);
        if (!this.I || z) {
            return;
        }
        f(true);
    }

    public void setKeyCountIncrement(int i2) {
        Preconditions.g(i2 > 0);
        this.B = i2;
        this.C = -9223372036854775807L;
    }

    public void setKeyTimeIncrement(long j2) {
        Preconditions.g(j2 > 0);
        this.B = -1;
        this.C = j2;
    }

    public void setPlayedAdMarkerColor(int i2) {
        this.f17976j.setColor(i2);
        invalidate(this.f17970b);
    }

    public void setPlayedColor(int i2) {
        this.f17973f.setColor(i2);
        invalidate(this.f17970b);
    }

    @Override // androidx.media3.ui.TimeBar
    public void setPosition(long j2) {
        if (this.L == j2) {
            return;
        }
        this.L = j2;
        setContentDescription(getProgressText());
        g();
    }

    public void setScrubberColor(int i2) {
        this.f17977k.setColor(i2);
        invalidate(this.f17970b);
    }

    public void setUnplayedColor(int i2) {
        this.f17974h.setColor(i2);
        invalidate(this.f17970b);
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
