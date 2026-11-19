package com.google.android.material.internal;

import android.animation.TimeInterpolator;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.graphics.Color;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.os.Build;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.view.Gravity;
import android.view.View;
import androidx.core.math.MathUtils;
import androidx.core.text.TextDirectionHeuristicsCompat;
import androidx.interpolator.view.animation.FastOutSlowInInterpolator;
import com.google.android.material.animation.AnimationUtils;
import com.google.android.material.resources.CancelableFontCallback;
import com.google.android.material.resources.TextAppearance;
import com.google.android.material.resources.TypefaceUtils;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes2.dex */
public final class CollapsingTextHelper {
    public CharSequence B;
    public CharSequence C;
    public boolean D;
    public float F;
    public float G;
    public float H;
    public float I;
    public float J;
    public int K;
    public int L;
    public int[] M;
    public boolean N;
    public final TextPaint O;
    public final TextPaint P;
    public TimeInterpolator Q;
    public TimeInterpolator R;
    public float S;
    public float T;
    public float U;
    public ColorStateList V;
    public float W;
    public float X;
    public float Y;
    public StaticLayout Z;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final View f32696a;
    public float a0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public float f32697b;
    public float b0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Rect f32698c;
    public float c0;
    public final Rect d;
    public CharSequence d0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final RectF f32699e;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public ColorStateList f32703j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public ColorStateList f32704k;
    public boolean k0;
    public int l;
    public float m;
    public float n;
    public float o;
    public float p;
    public float q;
    public float r;
    public Typeface s;
    public Typeface t;
    public Typeface u;
    public Typeface v;
    public Typeface w;
    public Typeface x;
    public Typeface y;
    public CancelableFontCallback z;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f32700f = 16;
    public int g = 16;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public float f32701h = 15.0f;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public float f32702i = 15.0f;
    public final TextUtils.TruncateAt A = TextUtils.TruncateAt.END;
    public final boolean E = true;
    public int e0 = 1;
    public int f0 = 1;
    public final float g0 = 1.0f;
    public final int h0 = 1;
    public int i0 = -1;
    public int j0 = -1;

    public CollapsingTextHelper(View view) {
        this.f32696a = view;
        TextPaint textPaint = new TextPaint(129);
        this.O = textPaint;
        this.P = new TextPaint(textPaint);
        this.d = new Rect();
        this.f32698c = new Rect();
        this.f32699e = new RectF();
        i(view.getContext().getResources().getConfiguration());
    }

    public static int a(int i2, int i3, float f2) {
        float f3 = 1.0f - f2;
        return Color.argb(Math.round((Color.alpha(i3) * f2) + (Color.alpha(i2) * f3)), Math.round((Color.red(i3) * f2) + (Color.red(i2) * f3)), Math.round((Color.green(i3) * f2) + (Color.green(i2) * f3)), Math.round((Color.blue(i3) * f2) + (Color.blue(i2) * f3)));
    }

    public static float h(float f2, float f3, float f4, TimeInterpolator timeInterpolator) {
        if (timeInterpolator != null) {
            f4 = timeInterpolator.getInterpolation(f4);
        }
        return AnimationUtils.a(f2, f3, f4);
    }

    public final void b() {
        float f2 = this.f32697b;
        Rect rect = this.f32698c;
        float f3 = rect.left;
        Rect rect2 = this.d;
        float fH = h(f3, rect2.left, f2, this.Q);
        RectF rectF = this.f32699e;
        rectF.left = fH;
        rectF.top = h(this.m, this.n, f2, this.Q);
        rectF.right = h(rect.right, rect2.right, f2, this.Q);
        rectF.bottom = h(rect.bottom, rect2.bottom, f2, this.Q);
        this.q = h(this.o, this.p, f2, this.Q);
        this.r = h(this.m, this.n, f2, this.Q);
        d(f2, false);
        View view = this.f32696a;
        view.postInvalidateOnAnimation();
        FastOutSlowInInterpolator fastOutSlowInInterpolator = AnimationUtils.f32228b;
        this.b0 = 1.0f - h(Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f, 1.0f - f2, fastOutSlowInInterpolator);
        view.postInvalidateOnAnimation();
        this.c0 = h(1.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM, f2, fastOutSlowInInterpolator);
        view.postInvalidateOnAnimation();
        ColorStateList colorStateList = this.f32704k;
        ColorStateList colorStateList2 = this.f32703j;
        TextPaint textPaint = this.O;
        if (colorStateList != colorStateList2) {
            textPaint.setColor(a(g(colorStateList2), g(this.f32704k), f2));
        } else {
            textPaint.setColor(g(colorStateList));
        }
        float f4 = this.W;
        float f5 = this.X;
        if (f4 != f5) {
            textPaint.setLetterSpacing(h(f5, f4, f2, fastOutSlowInInterpolator));
        } else {
            textPaint.setLetterSpacing(f4);
        }
        this.H = AnimationUtils.a(Call.Parameters.DEFAULT_CAMERA_ZOOM, this.S, f2);
        this.I = AnimationUtils.a(Call.Parameters.DEFAULT_CAMERA_ZOOM, this.T, f2);
        this.J = AnimationUtils.a(Call.Parameters.DEFAULT_CAMERA_ZOOM, this.U, f2);
        int iA = a(0, g(this.V), f2);
        this.K = iA;
        textPaint.setShadowLayer(this.H, this.I, this.J, iA);
        view.postInvalidateOnAnimation();
    }

    public final boolean c(CharSequence charSequence) {
        boolean z = this.f32696a.getLayoutDirection() == 1;
        if (this.E) {
            return (z ? TextDirectionHeuristicsCompat.d : TextDirectionHeuristicsCompat.f12134c).a(charSequence, charSequence.length());
        }
        return z;
    }

    public final void d(float f2, boolean z) {
        float f3;
        Typeface typeface;
        float f4;
        if (this.B == null) {
            return;
        }
        float fWidth = this.d.width();
        float fWidth2 = this.f32698c.width();
        if (Math.abs(f2 - 1.0f) < 1.0E-5f) {
            f3 = p() ? this.f32702i : this.f32701h;
            f4 = p() ? this.W : this.X;
            this.F = p() ? 1.0f : h(this.f32701h, this.f32702i, f2, this.R) / this.f32701h;
            if (!p()) {
                fWidth = fWidth2;
            }
            typeface = this.s;
            fWidth2 = fWidth;
        } else {
            f3 = this.f32701h;
            float f5 = this.X;
            typeface = this.v;
            if (Math.abs(f2 - Call.Parameters.DEFAULT_CAMERA_ZOOM) < 1.0E-5f) {
                this.F = 1.0f;
            } else {
                this.F = h(this.f32701h, this.f32702i, f2, this.R) / this.f32701h;
            }
            float f6 = this.f32702i / this.f32701h;
            float f7 = fWidth2 * f6;
            if (!z && f7 > fWidth && p()) {
                fWidth2 = Math.min(fWidth / f6, fWidth2);
            }
            f4 = f5;
        }
        int i2 = f2 < 0.5f ? this.e0 : this.f0;
        TextPaint textPaint = this.O;
        boolean z2 = false;
        if (fWidth2 > Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            boolean z3 = this.G != f3;
            boolean z4 = this.Y != f4;
            boolean z5 = this.y != typeface;
            StaticLayout staticLayout = this.Z;
            boolean z6 = z3 || z4 || (staticLayout != null && (fWidth2 > ((float) staticLayout.getWidth()) ? 1 : (fWidth2 == ((float) staticLayout.getWidth()) ? 0 : -1)) != 0) || z5 || (this.L != i2) || this.N;
            this.G = f3;
            this.Y = f4;
            this.y = typeface;
            this.N = false;
            this.L = i2;
            textPaint.setLinearText(this.F != 1.0f);
            z2 = z6;
        }
        if (this.C == null || z2) {
            textPaint.setTextSize(this.G);
            textPaint.setTypeface(this.y);
            textPaint.setLetterSpacing(this.Y);
            boolean zC = c(this.B);
            this.D = zC;
            StaticLayout staticLayoutE = e(((this.e0 > 1 || this.f0 > 1) && !zC) ? i2 : 1, textPaint, this.B, fWidth2 * (p() ? 1.0f : this.F), this.D);
            this.Z = staticLayoutE;
            this.C = staticLayoutE.getText();
        }
    }

    public final StaticLayout e(int i2, TextPaint textPaint, CharSequence charSequence, float f2, boolean z) {
        Layout.Alignment alignment;
        StaticLayout staticLayoutA = null;
        try {
            if (i2 == 1) {
                alignment = Layout.Alignment.ALIGN_NORMAL;
            } else {
                int absoluteGravity = Gravity.getAbsoluteGravity(this.f32700f, this.D ? 1 : 0) & 7;
                if (absoluteGravity != 1) {
                    boolean z2 = this.D;
                    if (absoluteGravity != 5) {
                        alignment = z2 ? Layout.Alignment.ALIGN_OPPOSITE : Layout.Alignment.ALIGN_NORMAL;
                    } else {
                        alignment = z2 ? Layout.Alignment.ALIGN_NORMAL : Layout.Alignment.ALIGN_OPPOSITE;
                    }
                } else {
                    alignment = Layout.Alignment.ALIGN_CENTER;
                }
            }
            StaticLayoutBuilderCompat staticLayoutBuilderCompat = new StaticLayoutBuilderCompat(charSequence, textPaint, (int) f2);
            staticLayoutBuilderCompat.l = this.A;
            staticLayoutBuilderCompat.f32730k = z;
            staticLayoutBuilderCompat.f32725e = alignment;
            staticLayoutBuilderCompat.f32729j = false;
            staticLayoutBuilderCompat.f32726f = i2;
            float f3 = this.g0;
            staticLayoutBuilderCompat.g = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            staticLayoutBuilderCompat.f32727h = f3;
            staticLayoutBuilderCompat.f32728i = this.h0;
            staticLayoutBuilderCompat.m = null;
            staticLayoutA = staticLayoutBuilderCompat.a();
        } catch (StaticLayoutBuilderCompat.StaticLayoutBuilderCompatException e2) {
            e2.getCause().getMessage();
        }
        staticLayoutA.getClass();
        return staticLayoutA;
    }

    public final float f() {
        int i2 = this.i0;
        if (i2 != -1) {
            return i2;
        }
        float f2 = this.f32702i;
        TextPaint textPaint = this.P;
        textPaint.setTextSize(f2);
        textPaint.setTypeface(this.s);
        textPaint.setLetterSpacing(this.W);
        return -textPaint.ascent();
    }

    public final int g(ColorStateList colorStateList) {
        if (colorStateList == null) {
            return 0;
        }
        int[] iArr = this.M;
        return iArr != null ? colorStateList.getColorForState(iArr, 0) : colorStateList.getDefaultColor();
    }

    public final void i(Configuration configuration) {
        if (Build.VERSION.SDK_INT >= 31) {
            Typeface typeface = this.u;
            if (typeface != null) {
                this.t = TypefaceUtils.a(configuration, typeface);
            }
            Typeface typeface2 = this.x;
            if (typeface2 != null) {
                this.w = TypefaceUtils.a(configuration, typeface2);
            }
            Typeface typeface3 = this.t;
            if (typeface3 == null) {
                typeface3 = this.u;
            }
            this.s = typeface3;
            Typeface typeface4 = this.w;
            if (typeface4 == null) {
                typeface4 = this.x;
            }
            this.v = typeface4;
            j(true);
        }
    }

    public final void j(boolean z) {
        float fMeasureText;
        View view = this.f32696a;
        if ((view.getHeight() <= 0 || view.getWidth() <= 0) && !z) {
            return;
        }
        d(1.0f, z);
        CharSequence charSequence = this.C;
        TextPaint textPaint = this.O;
        if (charSequence != null && this.Z != null) {
            boolean zP = p();
            CharSequence charSequenceEllipsize = this.C;
            if (zP) {
                charSequenceEllipsize = TextUtils.ellipsize(charSequenceEllipsize, textPaint, this.Z.getWidth(), this.A);
            }
            this.d0 = charSequenceEllipsize;
        }
        CharSequence charSequence2 = this.d0;
        float fDescent = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        if (charSequence2 != null) {
            this.a0 = textPaint.measureText(charSequence2, 0, charSequence2.length());
        } else {
            this.a0 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        }
        int absoluteGravity = Gravity.getAbsoluteGravity(this.g, this.D ? 1 : 0);
        int i2 = absoluteGravity & 112;
        Rect rect = this.d;
        if (i2 == 48) {
            this.n = rect.top;
        } else if (i2 != 80) {
            this.n = rect.centerY() - ((textPaint.descent() - textPaint.ascent()) / 2.0f);
        } else {
            this.n = textPaint.ascent() + rect.bottom;
        }
        int i3 = absoluteGravity & 8388615;
        if (i3 == 1) {
            this.p = rect.centerX() - (this.a0 / 2.0f);
        } else if (i3 != 5) {
            this.p = rect.left;
        } else {
            this.p = rect.right - this.a0;
        }
        if (this.a0 <= rect.width()) {
            float f2 = this.p;
            float fMax = Math.max(Call.Parameters.DEFAULT_CAMERA_ZOOM, rect.left - f2) + f2;
            this.p = fMax;
            this.p = Math.min(Call.Parameters.DEFAULT_CAMERA_ZOOM, rect.right - (this.a0 + fMax)) + fMax;
        }
        float f3 = this.f32702i;
        TextPaint textPaint2 = this.P;
        textPaint2.setTextSize(f3);
        textPaint2.setTypeface(this.s);
        textPaint2.setLetterSpacing(this.W);
        if (textPaint2.descent() + (-textPaint2.ascent()) <= rect.height()) {
            float f4 = this.n;
            float fMax2 = Math.max(Call.Parameters.DEFAULT_CAMERA_ZOOM, rect.top - f4) + f4;
            this.n = fMax2;
            this.n = Math.min(Call.Parameters.DEFAULT_CAMERA_ZOOM, rect.bottom - (f() + fMax2)) + fMax2;
        }
        d(Call.Parameters.DEFAULT_CAMERA_ZOOM, z);
        StaticLayout staticLayout = this.Z;
        float height = staticLayout != null ? staticLayout.getHeight() : 0.0f;
        StaticLayout staticLayout2 = this.Z;
        if (staticLayout2 == null || this.e0 <= 1) {
            CharSequence charSequence3 = this.C;
            fMeasureText = charSequence3 != null ? textPaint.measureText(charSequence3, 0, charSequence3.length()) : 0.0f;
        } else {
            fMeasureText = staticLayout2.getWidth();
        }
        StaticLayout staticLayout3 = this.Z;
        this.l = staticLayout3 != null ? staticLayout3.getLineCount() : 0;
        int absoluteGravity2 = Gravity.getAbsoluteGravity(this.f32700f, this.D ? 1 : 0);
        int i4 = absoluteGravity2 & 112;
        Rect rect2 = this.f32698c;
        if (i4 == 48) {
            this.m = rect2.top;
        } else if (i4 != 80) {
            this.m = rect2.centerY() - (height / 2.0f);
        } else {
            float f5 = rect2.bottom - height;
            if (this.k0) {
                fDescent = textPaint.descent();
            }
            this.m = f5 + fDescent;
        }
        int i5 = absoluteGravity2 & 8388615;
        if (i5 == 1) {
            this.o = rect2.centerX() - (fMeasureText / 2.0f);
        } else if (i5 != 5) {
            this.o = rect2.left;
        } else {
            this.o = rect2.right - fMeasureText;
        }
        d(this.f32697b, false);
        view.postInvalidateOnAnimation();
        b();
    }

    public final void k(ColorStateList colorStateList) {
        if (this.f32704k == colorStateList && this.f32703j == colorStateList) {
            return;
        }
        this.f32704k = colorStateList;
        this.f32703j = colorStateList;
        j(false);
    }

    public final void l(int i2) {
        View view = this.f32696a;
        TextAppearance textAppearance = new TextAppearance(view.getContext(), i2);
        ColorStateList colorStateList = textAppearance.f32876k;
        if (colorStateList != null) {
            this.f32704k = colorStateList;
        }
        float f2 = textAppearance.l;
        if (f2 != Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            this.f32702i = f2;
        }
        ColorStateList colorStateList2 = textAppearance.f32868a;
        if (colorStateList2 != null) {
            this.V = colorStateList2;
        }
        this.T = textAppearance.f32872f;
        this.U = textAppearance.g;
        this.S = textAppearance.f32873h;
        this.W = textAppearance.f32875j;
        CancelableFontCallback cancelableFontCallback = this.z;
        if (cancelableFontCallback != null) {
            cancelableFontCallback.f32867c = true;
        }
        CancelableFontCallback.ApplyFont applyFont = new CancelableFontCallback.ApplyFont() { // from class: com.google.android.material.internal.CollapsingTextHelper.1
            @Override // com.google.android.material.resources.CancelableFontCallback.ApplyFont
            public final void a(Typeface typeface) {
                CollapsingTextHelper collapsingTextHelper = CollapsingTextHelper.this;
                if (collapsingTextHelper.m(typeface)) {
                    collapsingTextHelper.j(false);
                }
            }
        };
        textAppearance.a();
        this.z = new CancelableFontCallback(applyFont, textAppearance.p);
        textAppearance.b(view.getContext(), this.z);
        j(false);
    }

    public final boolean m(Typeface typeface) {
        CancelableFontCallback cancelableFontCallback = this.z;
        if (cancelableFontCallback != null) {
            cancelableFontCallback.f32867c = true;
        }
        if (this.u == typeface) {
            return false;
        }
        this.u = typeface;
        Typeface typefaceA = TypefaceUtils.a(this.f32696a.getContext().getResources().getConfiguration(), typeface);
        this.t = typefaceA;
        if (typefaceA == null) {
            typefaceA = this.u;
        }
        this.s = typefaceA;
        return true;
    }

    public final void n(float f2) {
        float fA = MathUtils.a(f2, Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f);
        if (fA != this.f32697b) {
            this.f32697b = fA;
            b();
        }
    }

    public final void o(Typeface typeface) {
        boolean z;
        boolean zM = m(typeface);
        if (this.x != typeface) {
            this.x = typeface;
            Typeface typefaceA = TypefaceUtils.a(this.f32696a.getContext().getResources().getConfiguration(), typeface);
            this.w = typefaceA;
            if (typefaceA == null) {
                typefaceA = this.x;
            }
            this.v = typefaceA;
            z = true;
        } else {
            z = false;
        }
        if (zM || z) {
            j(false);
        }
    }

    public final boolean p() {
        return this.f0 == 1;
    }
}
