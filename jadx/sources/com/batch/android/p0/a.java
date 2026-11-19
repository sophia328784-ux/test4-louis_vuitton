package com.batch.android.p0;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.ViewGroup;
import android.widget.FrameLayout;

/* JADX INFO: loaded from: classes2.dex */
public class a extends FrameLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final b f23891a;

    public a(Context context) {
        super(context);
        this.f23891a = new b(this);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i2, int i3, int i4, int i5) {
        super.onLayout(z, i2, i3, i4, i5);
        this.f23891a.b();
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i2, int i3) {
        this.f23891a.a(i2, i3);
        super.onMeasure(i2, i3);
        if (this.f23891a.a()) {
            super.onMeasure(i2, i3);
        }
    }

    /* JADX INFO: renamed from: com.batch.android.p0.a$a, reason: collision with other inner class name */
    public static class C0067a extends FrameLayout.LayoutParams implements b.InterfaceC0068b {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private b.a f23892b;

        public C0067a(FrameLayout.LayoutParams layoutParams) {
            super((ViewGroup.MarginLayoutParams) layoutParams);
            ((FrameLayout.LayoutParams) this).gravity = layoutParams.gravity;
        }

        @Override // com.batch.android.p0.b.InterfaceC0068b
        public b.a a() {
            if (this.f23892b == null) {
                this.f23892b = new b.a();
            }
            return this.f23892b;
        }

        @Override // android.view.ViewGroup.LayoutParams
        public void setBaseAttributes(TypedArray typedArray, int i2, int i3) {
            b.a(this, typedArray, i2, i3);
        }

        public C0067a(int i2, int i3, int i4) {
            super(i2, i3, i4);
        }

        public C0067a(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }

        public C0067a(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
        }

        public C0067a(int i2, int i3) {
            super(i2, i3);
        }

        public C0067a(C0067a c0067a) {
            this((FrameLayout.LayoutParams) c0067a);
            this.f23892b = c0067a.f23892b;
        }
    }

    public a(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f23891a = new b(this);
    }

    public a(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f23891a = new b(this);
    }
}
