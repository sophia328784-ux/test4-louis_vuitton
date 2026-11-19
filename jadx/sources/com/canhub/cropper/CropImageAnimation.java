package com.canhub.cropper;

import android.graphics.RectF;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.Animation;
import android.view.animation.Transformation;
import android.widget.ImageView;
import defpackage.tr;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u00012\u00020\u0002B\u0017\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/canhub/cropper/CropImageAnimation;", "Landroid/view/animation/Animation;", "Landroid/view/animation/Animation$AnimationListener;", "Landroid/widget/ImageView;", "imageView", "Lcom/canhub/cropper/CropOverlayView;", "cropOverlayView", "<init>", "(Landroid/widget/ImageView;Lcom/canhub/cropper/CropOverlayView;)V", "cropper_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class CropImageAnimation extends Animation implements Animation.AnimationListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ImageView f25053b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final CropOverlayView f25054c;
    public final float[] d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final float[] f25055e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final RectF f25056f;
    public final RectF g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final float[] f25057h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final float[] f25058i;

    public CropImageAnimation(ImageView imageView, CropOverlayView cropOverlayView) {
        imageView.getClass();
        cropOverlayView.getClass();
        this.f25053b = imageView;
        this.f25054c = cropOverlayView;
        this.d = new float[8];
        this.f25055e = new float[8];
        this.f25056f = new RectF();
        this.g = new RectF();
        this.f25057h = new float[9];
        this.f25058i = new float[9];
        setDuration(300L);
        setFillAfter(true);
        setInterpolator(new AccelerateDecelerateInterpolator());
        setAnimationListener(this);
    }

    @Override // android.view.animation.Animation
    public final void applyTransformation(float f2, Transformation transformation) {
        transformation.getClass();
        RectF rectF = new RectF();
        RectF rectF2 = this.f25056f;
        float f3 = rectF2.left;
        RectF rectF3 = this.g;
        rectF.left = tr.a(rectF3.left, f3, f2, f3);
        float f4 = rectF2.top;
        rectF.top = tr.a(rectF3.top, f4, f2, f4);
        float f5 = rectF2.right;
        rectF.right = tr.a(rectF3.right, f5, f2, f5);
        float f6 = rectF2.bottom;
        rectF.bottom = tr.a(rectF3.bottom, f6, f2, f6);
        float[] fArr = new float[8];
        for (int i2 = 0; i2 < 8; i2++) {
            float f7 = this.d[i2];
            fArr[i2] = tr.a(this.f25055e[i2], f7, f2, f7);
        }
        CropOverlayView cropOverlayView = this.f25054c;
        cropOverlayView.setCropWindowRect(rectF);
        ImageView imageView = this.f25053b;
        cropOverlayView.h(imageView.getWidth(), imageView.getHeight(), fArr);
        cropOverlayView.invalidate();
        float[] fArr2 = new float[9];
        for (int i3 = 0; i3 < 9; i3++) {
            float f8 = this.f25057h[i3];
            fArr2[i3] = tr.a(this.f25058i[i3], f8, f2, f8);
        }
        imageView.getImageMatrix().setValues(fArr2);
        imageView.invalidate();
    }

    @Override // android.view.animation.Animation.AnimationListener
    public final void onAnimationEnd(Animation animation) {
        animation.getClass();
        this.f25053b.clearAnimation();
    }

    @Override // android.view.animation.Animation.AnimationListener
    public final void onAnimationRepeat(Animation animation) {
        animation.getClass();
    }

    @Override // android.view.animation.Animation.AnimationListener
    public final void onAnimationStart(Animation animation) {
        animation.getClass();
    }
}
