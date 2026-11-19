package com.batch.android.p0;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.ViewGroup;
import android.widget.RelativeLayout;

/* JADX INFO: loaded from: classes2.dex */
public class c extends RelativeLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final b f23902a;

    public c(Context context) {
        super(context);
        this.f23902a = new b(this);
    }

    @Override // android.widget.RelativeLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i2, int i3, int i4, int i5) {
        super.onLayout(z, i2, i3, i4, i5);
        this.f23902a.b();
    }

    @Override // android.widget.RelativeLayout, android.view.View
    public void onMeasure(int i2, int i3) {
        this.f23902a.a(i2, i3);
        super.onMeasure(i2, i3);
        if (this.f23902a.a()) {
            super.onMeasure(i2, i3);
        }
    }

    public static class a extends RelativeLayout.LayoutParams implements b.InterfaceC0068b {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private b.a f23903b;

        public a(int i2, int i3) {
            super(i2, i3);
        }

        @Override // com.batch.android.p0.b.InterfaceC0068b
        public b.a a() {
            if (this.f23903b == null) {
                this.f23903b = new b.a();
            }
            return this.f23903b;
        }

        @Override // android.view.ViewGroup.LayoutParams
        public void setBaseAttributes(TypedArray typedArray, int i2, int i3) {
            b.a(this, typedArray, i2, i3);
        }

        public a(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }

        public a(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
        }
    }

    public c(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f23902a = new b(this);
    }

    public c(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f23902a = new b(this);
    }
}
