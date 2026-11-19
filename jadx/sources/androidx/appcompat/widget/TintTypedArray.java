package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.TypedValue;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.core.content.ContextCompat;
import androidx.core.content.res.ResourcesCompat;

/* JADX INFO: loaded from: classes.dex */
public class TintTypedArray {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f1312a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final TypedArray f1313b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public TypedValue f1314c;

    public TintTypedArray(Context context, TypedArray typedArray) {
        this.f1312a = context;
        this.f1313b = typedArray;
    }

    public static TintTypedArray e(int i2, int i3, Context context, AttributeSet attributeSet, int[] iArr) {
        return new TintTypedArray(context, context.obtainStyledAttributes(attributeSet, iArr, i2, i3));
    }

    public static TintTypedArray f(Context context, AttributeSet attributeSet, int[] iArr) {
        return new TintTypedArray(context, context.obtainStyledAttributes(attributeSet, iArr));
    }

    public final ColorStateList a(int i2) {
        int resourceId;
        ColorStateList colorStateList;
        TypedArray typedArray = this.f1313b;
        return (!typedArray.hasValue(i2) || (resourceId = typedArray.getResourceId(i2, 0)) == 0 || (colorStateList = ContextCompat.getColorStateList(this.f1312a, resourceId)) == null) ? typedArray.getColorStateList(i2) : colorStateList;
    }

    public final Drawable b(int i2) {
        int resourceId;
        TypedArray typedArray = this.f1313b;
        return (!typedArray.hasValue(i2) || (resourceId = typedArray.getResourceId(i2, 0)) == 0) ? typedArray.getDrawable(i2) : AppCompatResources.a(this.f1312a, resourceId);
    }

    public final Drawable c(int i2) {
        int resourceId;
        Drawable drawableE;
        if (!this.f1313b.hasValue(i2) || (resourceId = this.f1313b.getResourceId(i2, 0)) == 0) {
            return null;
        }
        AppCompatDrawableManager appCompatDrawableManagerA = AppCompatDrawableManager.a();
        Context context = this.f1312a;
        synchronized (appCompatDrawableManagerA) {
            drawableE = appCompatDrawableManagerA.f1124a.e(context, resourceId, true);
        }
        return drawableE;
    }

    public final Typeface d(int i2, int i3, ResourcesCompat.FontCallback fontCallback) {
        int resourceId = this.f1313b.getResourceId(i2, 0);
        if (resourceId == 0) {
            return null;
        }
        if (this.f1314c == null) {
            this.f1314c = new TypedValue();
        }
        TypedValue typedValue = this.f1314c;
        ThreadLocal threadLocal = ResourcesCompat.f12034a;
        Context context = this.f1312a;
        if (context.isRestricted()) {
            return null;
        }
        return ResourcesCompat.c(context, resourceId, typedValue, i3, fontCallback, true, false);
    }

    public final void g() {
        this.f1313b.recycle();
    }
}
