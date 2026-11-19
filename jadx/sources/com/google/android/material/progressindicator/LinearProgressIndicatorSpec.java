package com.google.android.material.progressindicator;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.TypedValue;
import com.google.android.material.R$styleable;
import com.google.android.material.internal.ThemeEnforcement;
import com.vuitton.android.R;
import defpackage.md;

/* JADX INFO: loaded from: classes2.dex */
public final class LinearProgressIndicatorSpec extends BaseProgressIndicatorSpec {
    public int o;
    public int p;
    public boolean q;
    public int r;
    public Integer s;
    public int t;
    public float u;
    public boolean v;
    public boolean w;

    public LinearProgressIndicatorSpec(Context context, AttributeSet attributeSet, int i2, int i3) {
        super(context, attributeSet, i2, i3);
        int i4 = LinearProgressIndicator.o;
        ThemeEnforcement.a(context, attributeSet, R.attr.linearProgressIndicatorStyle, R.style.Widget_MaterialComponents_LinearProgressIndicator);
        int[] iArr = R$styleable.t;
        ThemeEnforcement.b(context, attributeSet, iArr, R.attr.linearProgressIndicatorStyle, R.style.Widget_MaterialComponents_LinearProgressIndicator, new int[0]);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr, R.attr.linearProgressIndicatorStyle, R.style.Widget_MaterialComponents_LinearProgressIndicator);
        this.o = typedArrayObtainStyledAttributes.getInt(0, 1);
        this.p = typedArrayObtainStyledAttributes.getInt(1, 0);
        this.r = Math.min(typedArrayObtainStyledAttributes.getDimensionPixelSize(4, 0), this.f32786a);
        if (typedArrayObtainStyledAttributes.hasValue(3)) {
            this.s = Integer.valueOf(typedArrayObtainStyledAttributes.getDimensionPixelSize(3, 0));
        }
        TypedValue typedValuePeekValue = typedArrayObtainStyledAttributes.peekValue(2);
        if (typedValuePeekValue != null) {
            int i5 = typedValuePeekValue.type;
            if (i5 == 5) {
                this.t = Math.min(TypedValue.complexToDimensionPixelSize(typedValuePeekValue.data, typedArrayObtainStyledAttributes.getResources().getDisplayMetrics()), this.f32786a / 2);
                this.v = false;
                this.w = true;
            } else if (i5 == 6) {
                this.u = Math.min(typedValuePeekValue.getFraction(1.0f, 1.0f), 0.5f);
                this.v = true;
                this.w = true;
            }
        }
        typedArrayObtainStyledAttributes.recycle();
        d();
        this.q = this.p == 1;
    }

    @Override // com.google.android.material.progressindicator.BaseProgressIndicatorSpec
    public final boolean c() {
        return super.c() && e() == a();
    }

    @Override // com.google.android.material.progressindicator.BaseProgressIndicatorSpec
    public final void d() {
        super.d();
        if (this.r < 0) {
            md.n("Stop indicator size must be >= 0.");
            return;
        }
        if (this.o == 0) {
            if ((a() > 0 || (this.w && e() > 0)) && this.f32792i == 0) {
                md.n("Rounded corners without gap are not supported in contiguous indeterminate animation.");
            } else {
                if (this.f32789e.length >= 3) {
                    return;
                }
                md.n("Contiguous indeterminate animation must be used with 3 or more indicator colors.");
            }
        }
    }

    public final int e() {
        if (this.w) {
            return this.v ? (int) (this.f32786a * this.u) : this.t;
        }
        return a();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public LinearProgressIndicatorSpec(Context context, AttributeSet attributeSet, int i2) {
        this(context, attributeSet, i2, R.style.Widget_MaterialComponents_LinearProgressIndicator);
        int i3 = LinearProgressIndicator.o;
    }

    public LinearProgressIndicatorSpec(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.linearProgressIndicatorStyle);
    }
}
