package com.google.android.material.textfield;

import android.graphics.Canvas;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.ShapeAppearanceModel;

/* JADX INFO: loaded from: classes2.dex */
abstract class CutoutDrawable extends MaterialShapeDrawable {
    public static final /* synthetic */ int J = 0;
    public CutoutDrawableState I;

    public static class ImplApi18 extends CutoutDrawable {
        @Override // com.google.android.material.shape.MaterialShapeDrawable
        public final void g(Canvas canvas) {
            if (this.I.s.isEmpty()) {
                super.g(canvas);
                return;
            }
            canvas.save();
            canvas.clipOutRect(this.I.s);
            super.g(canvas);
            canvas.restore();
        }
    }

    public final void D(float f2, float f3, float f4, float f5) {
        RectF rectF = this.I.s;
        if (f2 == rectF.left && f3 == rectF.top && f4 == rectF.right && f5 == rectF.bottom) {
            return;
        }
        rectF.set(f2, f3, f4, f5);
        invalidateSelf();
    }

    @Override // com.google.android.material.shape.MaterialShapeDrawable, android.graphics.drawable.Drawable
    public final Drawable mutate() {
        this.I = new CutoutDrawableState(this.I);
        return this;
    }

    public static final class CutoutDrawableState extends MaterialShapeDrawable.MaterialShapeDrawableState {
        public final RectF s;

        public CutoutDrawableState(CutoutDrawableState cutoutDrawableState) {
            super(cutoutDrawableState);
            this.s = cutoutDrawableState.s;
        }

        @Override // com.google.android.material.shape.MaterialShapeDrawable.MaterialShapeDrawableState, android.graphics.drawable.Drawable.ConstantState
        public final Drawable newDrawable() {
            int i2 = CutoutDrawable.J;
            ImplApi18 implApi18 = new ImplApi18(this);
            implApi18.I = this;
            implApi18.invalidateSelf();
            return implApi18;
        }

        public CutoutDrawableState(ShapeAppearanceModel shapeAppearanceModel, RectF rectF) {
            super(shapeAppearanceModel, null);
            this.s = rectF;
        }
    }
}
