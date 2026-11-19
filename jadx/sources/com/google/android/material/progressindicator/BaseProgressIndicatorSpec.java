package com.google.android.material.progressindicator;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.TypedValue;
import com.google.android.material.R$styleable;
import com.google.android.material.color.MaterialColors;
import com.google.android.material.internal.ThemeEnforcement;
import com.google.android.material.resources.MaterialResources;
import com.vuitton.android.R;
import defpackage.md;

/* JADX INFO: loaded from: classes2.dex */
public abstract class BaseProgressIndicatorSpec {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f32786a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f32787b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public float f32788c;
    public boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int[] f32789e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f32790f;
    public int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f32791h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f32792i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f32793j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f32794k;
    public int l;
    public int m;
    public float n;

    public BaseProgressIndicatorSpec(Context context, AttributeSet attributeSet, int i2, int i3) {
        this.f32789e = new int[0];
        int dimensionPixelSize = context.getResources().getDimensionPixelSize(R.dimen.mtrl_progress_track_thickness);
        ThemeEnforcement.a(context, attributeSet, i2, i3);
        int[] iArr = R$styleable.d;
        ThemeEnforcement.b(context, attributeSet, iArr, i2, i3, new int[0]);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr, i2, i3);
        this.f32786a = MaterialResources.c(context, typedArrayObtainStyledAttributes, 10, dimensionPixelSize);
        TypedValue typedValuePeekValue = typedArrayObtainStyledAttributes.peekValue(9);
        if (typedValuePeekValue != null) {
            int i4 = typedValuePeekValue.type;
            if (i4 == 5) {
                this.f32787b = Math.min(TypedValue.complexToDimensionPixelSize(typedValuePeekValue.data, typedArrayObtainStyledAttributes.getResources().getDisplayMetrics()), this.f32786a / 2);
                this.d = false;
            } else if (i4 == 6) {
                this.f32788c = Math.min(typedValuePeekValue.getFraction(1.0f, 1.0f), 0.5f);
                this.d = true;
            }
        }
        this.g = typedArrayObtainStyledAttributes.getInt(6, 0);
        this.f32791h = typedArrayObtainStyledAttributes.getInt(1, 0);
        this.f32792i = typedArrayObtainStyledAttributes.getDimensionPixelSize(4, 0);
        int iAbs = Math.abs(typedArrayObtainStyledAttributes.getDimensionPixelSize(13, 0));
        this.f32793j = Math.abs(typedArrayObtainStyledAttributes.getDimensionPixelSize(14, iAbs));
        this.f32794k = Math.abs(typedArrayObtainStyledAttributes.getDimensionPixelSize(15, iAbs));
        this.l = Math.abs(typedArrayObtainStyledAttributes.getDimensionPixelSize(11, 0));
        this.m = typedArrayObtainStyledAttributes.getDimensionPixelSize(12, 0);
        this.n = typedArrayObtainStyledAttributes.getFloat(2, 1.0f);
        if (!typedArrayObtainStyledAttributes.hasValue(3)) {
            this.f32789e = new int[]{MaterialColors.c(context, R.attr.colorPrimary, -1)};
        } else if (typedArrayObtainStyledAttributes.peekValue(3).type != 1) {
            this.f32789e = new int[]{typedArrayObtainStyledAttributes.getColor(3, -1)};
        } else {
            int[] intArray = context.getResources().getIntArray(typedArrayObtainStyledAttributes.getResourceId(3, -1));
            this.f32789e = intArray;
            if (intArray.length == 0) {
                md.n("indicatorColors cannot be empty when indicatorColor is not used.");
                throw null;
            }
        }
        if (typedArrayObtainStyledAttributes.hasValue(8)) {
            this.f32790f = typedArrayObtainStyledAttributes.getColor(8, -1);
        } else {
            this.f32790f = this.f32789e[0];
            TypedArray typedArrayObtainStyledAttributes2 = context.getTheme().obtainStyledAttributes(new int[]{android.R.attr.disabledAlpha});
            float f2 = typedArrayObtainStyledAttributes2.getFloat(0, 0.2f);
            typedArrayObtainStyledAttributes2.recycle();
            this.f32790f = MaterialColors.a(this.f32790f, (int) (f2 * 255.0f));
        }
        typedArrayObtainStyledAttributes.recycle();
    }

    public final int a() {
        return this.d ? (int) (this.f32786a * this.f32788c) : this.f32787b;
    }

    public final boolean b(boolean z) {
        if (this.l <= 0) {
            return false;
        }
        if (z || this.f32794k <= 0) {
            return z && this.f32793j > 0;
        }
        return true;
    }

    public boolean c() {
        return this.d && this.f32788c == 0.5f;
    }

    public void d() {
        if (this.f32792i >= 0) {
            return;
        }
        md.n("indicatorTrackGapSize must be >= 0.");
    }
}
