package com.batch.android.messaging.view;

import android.R;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewOutlineProvider;
import com.batch.android.e.t;
import com.batch.android.q0.b;
import com.batch.android.s0.c;
import java.util.Map;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes2.dex */
public class CloseButton extends View implements c {
    private static final String q = "CloseButton";
    private static final int r = 32;
    private static final int s = 10;
    private static final int t = 10;
    private static final int u = 2;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f23710a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f23711b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f23712c;
    private int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f23713e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f23714f;
    protected float g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f23715h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private Paint f23716i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private Paint f23717j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private Paint f23718k;
    private Paint.Cap l;
    private Drawable m;
    private RectF n;
    private RectF o;
    private boolean p;

    public class a extends ViewOutlineProvider {
        public a() {
        }

        @Override // android.view.ViewOutlineProvider
        public void getOutline(View view, Outline outline) {
            outline.setOval(CloseButton.this.getPadding(), CloseButton.this.getPadding(), view.getWidth() - CloseButton.this.getPadding(), view.getHeight() - CloseButton.this.getPadding());
        }
    }

    public CloseButton(Context context) {
        super(context);
        this.f23710a = 32;
        this.f23711b = 0;
        this.f23712c = b.v;
        this.d = -1;
        this.f23713e = -1;
        this.f23714f = -1;
        this.g = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        this.f23715h = -1;
        this.l = Paint.Cap.SQUARE;
        this.n = new RectF();
        this.o = new RectF();
        this.p = false;
        a();
    }

    @Override // com.batch.android.s0.c
    public void a(Map<String, String> map) {
        Float fA;
        Resources resources = getResources();
        float f2 = resources.getDisplayMetrics().density;
        for (Map.Entry<String, String> entry : map.entrySet()) {
            if ("background-color".equalsIgnoreCase(entry.getKey())) {
                try {
                    setBackgroundColor(com.batch.android.o0.b.c(entry.getValue()));
                } catch (IllegalArgumentException e2) {
                    t.c(q, "Unparsable background color (" + entry.getValue() + ")", e2);
                }
            } else if ("color".equalsIgnoreCase(entry.getKey())) {
                try {
                    setGlyphColor(com.batch.android.o0.b.c(entry.getValue()));
                } catch (IllegalArgumentException e3) {
                    t.c(q, "Unparsable glyph color (" + entry.getValue() + ")", e3);
                }
            } else if ("glyph-padding".equalsIgnoreCase(entry.getKey())) {
                Float fA2 = com.batch.android.o0.b.a(entry.getValue());
                if (fA2 != null) {
                    setGlyphPadding((int) (fA2.intValue() * f2));
                }
            } else if ("glyph-width".equalsIgnoreCase(entry.getKey())) {
                Float fA3 = com.batch.android.o0.b.a(entry.getValue());
                if (fA3 != null) {
                    setGlyphWidth((int) (fA3.intValue() * f2));
                }
            } else if ("elevation".equalsIgnoreCase(entry.getKey())) {
                Float fA4 = com.batch.android.o0.b.a(entry.getValue());
                if (fA4 != null) {
                    setElevation(com.batch.android.o0.b.a(resources, fA4));
                }
            } else if ("z-index".equalsIgnoreCase(entry.getKey()) && (fA = com.batch.android.o0.b.a(entry.getValue())) != null) {
                setZ(com.batch.android.o0.b.a(resources, fA));
            }
        }
    }

    public void b() {
        float f2 = getResources().getDisplayMetrics().density;
        Resources resources = getResources();
        int padding = getPadding();
        float width = (getWidth() - (padding * 2)) / (this.f23710a * f2);
        int i2 = this.f23713e;
        if (i2 < 0) {
            i2 = (int) (10.0f * f2 * width);
        }
        this.f23715h = i2;
        Paint paint = this.f23717j;
        int i3 = this.f23714f;
        paint.setStrokeWidth(i3 >= 0 ? i3 : (int) (f2 * 2.0f * width));
        this.f23718k.setStrokeWidth(Math.max(this.f23717j.getStrokeWidth() + com.batch.android.o0.b.a(resources, Float.valueOf(1.0f)), com.batch.android.o0.b.a(resources, Float.valueOf(2.0f))));
        int width2 = getWidth() / 2;
        int height = getHeight() / 2;
        int strokeWidth = (int) ((height - padding) - this.f23717j.getStrokeWidth());
        this.n.set(width2 - strokeWidth, height - strokeWidth, width2 + strokeWidth, height + strokeWidth);
        float f3 = padding;
        this.o.set(f3, f3, getWidth() - padding, getHeight() - padding);
    }

    public void c() {
        Paint paint = new Paint();
        this.f23716i = paint;
        paint.setAntiAlias(true);
        this.f23716i.setStyle(Paint.Style.FILL);
        this.f23716i.setColor(this.f23712c);
        Paint paint2 = new Paint();
        this.f23717j = paint2;
        Paint.Style style = Paint.Style.STROKE;
        paint2.setStyle(style);
        this.f23717j.setColor(this.d);
        this.f23717j.setAntiAlias(true);
        this.f23717j.setStrokeCap(this.l);
        Paint paint3 = new Paint();
        this.f23718k = paint3;
        paint3.setStyle(style);
        this.f23718k.setColor(this.d);
        this.f23718k.setAntiAlias(true);
        b();
        invalidate();
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        super.draw(canvas);
        Drawable drawable = this.m;
        if (drawable != null) {
            drawable.draw(canvas);
        }
    }

    @Override // android.view.View
    public void drawableHotspotChanged(float f2, float f3) {
        super.drawableHotspotChanged(f2, f3);
        Drawable drawable = this.m;
        if (drawable != null) {
            drawable.setHotspot(f2, f3);
        }
    }

    @Override // android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        Drawable drawable = this.m;
        if (drawable != null) {
            drawable.setState(getDrawableState());
        }
        invalidate();
    }

    @Override // android.view.View
    public ViewOutlineProvider getOutlineProvider() {
        return super.getOutlineProvider();
    }

    public int getPadding() {
        return this.f23711b;
    }

    @Override // android.view.View
    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        Drawable drawable = this.m;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        int height = getHeight() / 2;
        canvas.drawCircle(getWidth() / 2, height, height - getPadding(), this.f23716i);
        canvas.drawLine(getPadding() + this.f23715h, getPadding() + this.f23715h, (getWidth() - this.f23715h) - getPadding(), (getHeight() - this.f23715h) - getPadding(), this.f23717j);
        canvas.drawLine((getWidth() - this.f23715h) - getPadding(), getPadding() + this.f23715h, getPadding() + this.f23715h, (getHeight() - this.f23715h) - getPadding(), this.f23717j);
        if (this.p) {
            canvas.drawArc(this.o, Call.Parameters.DEFAULT_CAMERA_ZOOM, 360.0f, false, this.f23718k);
        }
        float f2 = this.g;
        if (f2 > Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            canvas.drawArc(this.n, -90.0f, f2 * 360.0f, false, this.f23717j);
        }
    }

    @Override // android.view.View
    public void onMeasure(int i2, int i3) {
        float padding;
        float f2 = getResources().getDisplayMetrics().density;
        int mode = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i2);
        if (mode != Integer.MIN_VALUE) {
            if (mode == 0) {
                padding = (this.f23710a * f2) + (getPadding() * 2);
            }
            setMeasuredDimension(size, size);
        }
        padding = Math.min((this.f23710a * f2) + (getPadding() * 2), size);
        size = (int) padding;
        setMeasuredDimension(size, size);
    }

    @Override // android.view.View
    public void onSizeChanged(int i2, int i3, int i4, int i5) {
        super.onSizeChanged(i2, i3, i4, i5);
        b();
        Drawable drawable = this.m;
        if (drawable != null) {
            drawable.setBounds(0, 0, i2, i3);
        }
    }

    @Override // android.view.View
    public void setBackgroundColor(int i2) {
        this.f23712c = i2;
        c();
    }

    public void setCountdownProgress(float f2) {
        this.g = Math.max(Call.Parameters.DEFAULT_CAMERA_ZOOM, Math.min(1.0f, f2));
        invalidate();
    }

    public void setForegoundDrawable(Drawable drawable) {
        this.m = drawable;
        invalidate();
    }

    public void setGlyphColor(int i2) {
        this.d = i2;
        c();
    }

    public void setGlyphPadding(int i2) {
        this.f23713e = i2;
        b();
        invalidate();
    }

    public void setGlyphStrokeCap(Paint.Cap cap) {
        this.l = cap;
        b();
        invalidate();
    }

    public void setGlyphWidth(int i2) {
        this.f23714f = i2;
        b();
        invalidate();
    }

    public void setPadding(int i2) {
        this.f23711b = i2;
        b();
    }

    public void setShowBorder(boolean z) {
        this.p = z;
        invalidate();
    }

    public void setSize(int i2) {
        this.f23710a = i2;
        b();
        invalidate();
    }

    @Override // android.view.View
    public boolean verifyDrawable(Drawable drawable) {
        return drawable == this.m || super.verifyDrawable(drawable);
    }

    @Override // android.view.View
    @Deprecated
    public void setPadding(int i2, int i3, int i4, int i5) {
        setPadding(i2);
    }

    public CloseButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f23710a = 32;
        this.f23711b = 0;
        this.f23712c = b.v;
        this.d = -1;
        this.f23713e = -1;
        this.f23714f = -1;
        this.g = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        this.f23715h = -1;
        this.l = Paint.Cap.SQUARE;
        this.n = new RectF();
        this.o = new RectF();
        this.p = false;
        a();
    }

    public CloseButton(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f23710a = 32;
        this.f23711b = 0;
        this.f23712c = b.v;
        this.d = -1;
        this.f23713e = -1;
        this.f23714f = -1;
        this.g = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        this.f23715h = -1;
        this.l = Paint.Cap.SQUARE;
        this.n = new RectF();
        this.o = new RectF();
        this.p = false;
        a();
    }

    public CloseButton(Context context, AttributeSet attributeSet, int i2, int i3) {
        super(context, attributeSet, i2, i3);
        this.f23710a = 32;
        this.f23711b = 0;
        this.f23712c = b.v;
        this.d = -1;
        this.f23713e = -1;
        this.f23714f = -1;
        this.g = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        this.f23715h = -1;
        this.l = Paint.Cap.SQUARE;
        this.n = new RectF();
        this.o = new RectF();
        this.p = false;
        a();
    }

    public void a() {
        setOutlineProvider(new a());
        setClipToOutline(true);
        c();
        setContentDescription("Close button");
        setPadding(com.batch.android.o0.b.a(getResources(), Float.valueOf(10.0f)));
        TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(new int[]{R.attr.selectableItemBackground});
        Drawable drawable = typedArrayObtainStyledAttributes.getDrawable(0);
        this.m = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
        }
        typedArrayObtainStyledAttributes.recycle();
    }
}
