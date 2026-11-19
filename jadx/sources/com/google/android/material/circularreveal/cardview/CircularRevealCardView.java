package com.google.android.material.circularreveal.cardview;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import com.google.android.material.card.MaterialCardView;
import com.google.android.material.circularreveal.CircularRevealHelper;
import com.google.android.material.circularreveal.CircularRevealWidget;
import com.google.android.material.math.MathUtils;

/* JADX INFO: loaded from: classes2.dex */
public class CircularRevealCardView extends MaterialCardView implements CircularRevealWidget {
    public final CircularRevealHelper q;

    public CircularRevealCardView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.q = new CircularRevealHelper(this);
    }

    @Override // com.google.android.material.circularreveal.CircularRevealWidget
    public final void a() {
        this.q.getClass();
    }

    @Override // com.google.android.material.circularreveal.CircularRevealWidget
    public final void b() {
        this.q.getClass();
    }

    @Override // com.google.android.material.circularreveal.CircularRevealHelper.Delegate
    public final void c(Canvas canvas) {
        super.draw(canvas);
    }

    @Override // com.google.android.material.circularreveal.CircularRevealHelper.Delegate
    public final boolean d() {
        return super.isOpaque();
    }

    @Override // android.view.View
    public final void draw(Canvas canvas) {
        CircularRevealHelper circularRevealHelper = this.q;
        if (circularRevealHelper != null) {
            circularRevealHelper.a(canvas);
        } else {
            super.draw(canvas);
        }
    }

    public Drawable getCircularRevealOverlayDrawable() {
        return this.q.f32508e;
    }

    @Override // com.google.android.material.circularreveal.CircularRevealWidget
    public int getCircularRevealScrimColor() {
        return this.q.f32507c.getColor();
    }

    @Override // com.google.android.material.circularreveal.CircularRevealWidget
    public CircularRevealWidget.RevealInfo getRevealInfo() {
        CircularRevealHelper circularRevealHelper = this.q;
        CircularRevealWidget.RevealInfo revealInfo = circularRevealHelper.d;
        if (revealInfo == null) {
            return null;
        }
        CircularRevealWidget.RevealInfo revealInfo2 = new CircularRevealWidget.RevealInfo(revealInfo);
        if (revealInfo2.f32515c == Float.MAX_VALUE) {
            float f2 = revealInfo2.f32513a;
            float f3 = revealInfo2.f32514b;
            View view = circularRevealHelper.f32506b;
            revealInfo2.f32515c = MathUtils.b(f2, f3, view.getWidth(), view.getHeight());
        }
        return revealInfo2;
    }

    @Override // android.view.View
    public final boolean isOpaque() {
        CircularRevealHelper circularRevealHelper = this.q;
        if (circularRevealHelper == null) {
            return super.isOpaque();
        }
        if (!circularRevealHelper.f32505a.d()) {
            return false;
        }
        CircularRevealWidget.RevealInfo revealInfo = circularRevealHelper.d;
        return revealInfo == null || revealInfo.f32515c == Float.MAX_VALUE;
    }

    @Override // com.google.android.material.circularreveal.CircularRevealWidget
    public void setCircularRevealOverlayDrawable(Drawable drawable) {
        CircularRevealHelper circularRevealHelper = this.q;
        circularRevealHelper.f32508e = drawable;
        circularRevealHelper.f32506b.invalidate();
    }

    @Override // com.google.android.material.circularreveal.CircularRevealWidget
    public void setCircularRevealScrimColor(int i2) {
        CircularRevealHelper circularRevealHelper = this.q;
        circularRevealHelper.f32507c.setColor(i2);
        circularRevealHelper.f32506b.invalidate();
    }

    @Override // com.google.android.material.circularreveal.CircularRevealWidget
    public void setRevealInfo(CircularRevealWidget.RevealInfo revealInfo) {
        this.q.b(revealInfo);
    }

    public CircularRevealCardView(Context context) {
        this(context, null);
    }
}
