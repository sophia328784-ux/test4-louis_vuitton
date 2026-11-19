package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.ImageView;
import androidx.appcompat.R$styleable;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.core.view.ViewCompat;

/* JADX INFO: loaded from: classes.dex */
public class AppCompatImageHelper {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ImageView f1141a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public TintInfo f1142b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f1143c = 0;

    public AppCompatImageHelper(ImageView imageView) {
        this.f1141a = imageView;
    }

    public final void a() {
        TintInfo tintInfo;
        ImageView imageView = this.f1141a;
        Drawable drawable = imageView.getDrawable();
        if (drawable != null) {
            DrawableUtils.a(drawable);
        }
        if (drawable == null || (tintInfo = this.f1142b) == null) {
            return;
        }
        AppCompatDrawableManager.e(drawable, tintInfo, imageView.getDrawableState());
    }

    public final void b(AttributeSet attributeSet, int i2) {
        int resourceId;
        ImageView imageView = this.f1141a;
        Context context = imageView.getContext();
        int[] iArr = R$styleable.f780f;
        TintTypedArray tintTypedArrayE = TintTypedArray.e(i2, 0, context, attributeSet, iArr);
        TypedArray typedArray = tintTypedArrayE.f1313b;
        ImageView imageView2 = this.f1141a;
        ViewCompat.s(imageView2, imageView2.getContext(), iArr, attributeSet, tintTypedArrayE.f1313b, i2, 0);
        try {
            Drawable drawable = imageView.getDrawable();
            if (drawable == null && (resourceId = typedArray.getResourceId(1, -1)) != -1 && (drawable = AppCompatResources.a(imageView.getContext(), resourceId)) != null) {
                imageView.setImageDrawable(drawable);
            }
            if (drawable != null) {
                DrawableUtils.a(drawable);
            }
            if (typedArray.hasValue(2)) {
                imageView.setImageTintList(tintTypedArrayE.a(2));
            }
            if (typedArray.hasValue(3)) {
                imageView.setImageTintMode(DrawableUtils.c(typedArray.getInt(3, -1), null));
            }
        } finally {
            tintTypedArrayE.g();
        }
    }

    public final void c(int i2) {
        ImageView imageView = this.f1141a;
        if (i2 != 0) {
            Drawable drawableA = AppCompatResources.a(imageView.getContext(), i2);
            if (drawableA != null) {
                DrawableUtils.a(drawableA);
            }
            imageView.setImageDrawable(drawableA);
        } else {
            imageView.setImageDrawable(null);
        }
        a();
    }
}
