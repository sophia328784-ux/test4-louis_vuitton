package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import androidx.appcompat.R$styleable;
import androidx.core.view.ViewCompat;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
class AppCompatSeekBarHelper extends AppCompatProgressBarHelper {
    public final AppCompatSeekBar d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Drawable f1155e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public ColorStateList f1156f;
    public PorterDuff.Mode g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f1157h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f1158i;

    public AppCompatSeekBarHelper(AppCompatSeekBar appCompatSeekBar) {
        super(appCompatSeekBar);
        this.f1156f = null;
        this.g = null;
        this.f1157h = false;
        this.f1158i = false;
        this.d = appCompatSeekBar;
    }

    @Override // androidx.appcompat.widget.AppCompatProgressBarHelper
    public final void a(AttributeSet attributeSet, int i2) {
        super.a(attributeSet, i2);
        AppCompatSeekBar appCompatSeekBar = this.d;
        Context context = appCompatSeekBar.getContext();
        int[] iArr = R$styleable.g;
        TintTypedArray tintTypedArrayE = TintTypedArray.e(i2, 0, context, attributeSet, iArr);
        TypedArray typedArray = tintTypedArrayE.f1313b;
        ViewCompat.s(appCompatSeekBar, appCompatSeekBar.getContext(), iArr, attributeSet, tintTypedArrayE.f1313b, i2, 0);
        Drawable drawableC = tintTypedArrayE.c(0);
        if (drawableC != null) {
            appCompatSeekBar.setThumb(drawableC);
        }
        Drawable drawableB = tintTypedArrayE.b(1);
        Drawable drawable = this.f1155e;
        if (drawable != null) {
            drawable.setCallback(null);
        }
        this.f1155e = drawableB;
        if (drawableB != null) {
            drawableB.setCallback(appCompatSeekBar);
            drawableB.setLayoutDirection(appCompatSeekBar.getLayoutDirection());
            if (drawableB.isStateful()) {
                drawableB.setState(appCompatSeekBar.getDrawableState());
            }
            c();
        }
        appCompatSeekBar.invalidate();
        if (typedArray.hasValue(3)) {
            this.g = DrawableUtils.c(typedArray.getInt(3, -1), this.g);
            this.f1158i = true;
        }
        if (typedArray.hasValue(2)) {
            this.f1156f = tintTypedArrayE.a(2);
            this.f1157h = true;
        }
        tintTypedArrayE.g();
        c();
    }

    public final void c() {
        Drawable drawable = this.f1155e;
        if (drawable != null) {
            if (this.f1157h || this.f1158i) {
                Drawable drawableMutate = drawable.mutate();
                this.f1155e = drawableMutate;
                if (this.f1157h) {
                    drawableMutate.setTintList(this.f1156f);
                }
                if (this.f1158i) {
                    this.f1155e.setTintMode(this.g);
                }
                if (this.f1155e.isStateful()) {
                    this.f1155e.setState(this.d.getDrawableState());
                }
            }
        }
    }

    public final void d(Canvas canvas) {
        if (this.f1155e != null) {
            AppCompatSeekBar appCompatSeekBar = this.d;
            int max = appCompatSeekBar.getMax();
            if (max > 1) {
                int intrinsicWidth = this.f1155e.getIntrinsicWidth();
                int intrinsicHeight = this.f1155e.getIntrinsicHeight();
                int i2 = intrinsicWidth >= 0 ? intrinsicWidth / 2 : 1;
                int i3 = intrinsicHeight >= 0 ? intrinsicHeight / 2 : 1;
                this.f1155e.setBounds(-i2, -i3, i2, i3);
                float width = ((appCompatSeekBar.getWidth() - appCompatSeekBar.getPaddingLeft()) - appCompatSeekBar.getPaddingRight()) / max;
                int iSave = canvas.save();
                canvas.translate(appCompatSeekBar.getPaddingLeft(), appCompatSeekBar.getHeight() / 2);
                for (int i4 = 0; i4 <= max; i4++) {
                    this.f1155e.draw(canvas);
                    canvas.translate(width, Call.Parameters.DEFAULT_CAMERA_ZOOM);
                }
                canvas.restoreToCount(iSave);
            }
        }
    }
}
