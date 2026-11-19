package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import androidx.appcompat.R$styleable;
import androidx.core.view.ViewCompat;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes.dex */
class AppCompatBackgroundHelper {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final View f1101a;
    public TintInfo d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public TintInfo f1104e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public TintInfo f1105f;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f1103c = -1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AppCompatDrawableManager f1102b = AppCompatDrawableManager.a();

    public AppCompatBackgroundHelper(View view) {
        this.f1101a = view;
    }

    public final void a() {
        View view = this.f1101a;
        Drawable background = view.getBackground();
        if (background != null) {
            if (this.d != null) {
                if (this.f1105f == null) {
                    this.f1105f = new TintInfo();
                }
                TintInfo tintInfo = this.f1105f;
                tintInfo.f1308a = null;
                tintInfo.d = false;
                tintInfo.f1309b = null;
                tintInfo.f1310c = false;
                WeakHashMap weakHashMap = ViewCompat.f12200a;
                ColorStateList backgroundTintList = view.getBackgroundTintList();
                if (backgroundTintList != null) {
                    tintInfo.d = true;
                    tintInfo.f1308a = backgroundTintList;
                }
                PorterDuff.Mode backgroundTintMode = view.getBackgroundTintMode();
                if (backgroundTintMode != null) {
                    tintInfo.f1310c = true;
                    tintInfo.f1309b = backgroundTintMode;
                }
                if (tintInfo.d || tintInfo.f1310c) {
                    AppCompatDrawableManager.e(background, tintInfo, view.getDrawableState());
                    return;
                }
            }
            TintInfo tintInfo2 = this.f1104e;
            if (tintInfo2 != null) {
                AppCompatDrawableManager.e(background, tintInfo2, view.getDrawableState());
                return;
            }
            TintInfo tintInfo3 = this.d;
            if (tintInfo3 != null) {
                AppCompatDrawableManager.e(background, tintInfo3, view.getDrawableState());
            }
        }
    }

    public final ColorStateList b() {
        TintInfo tintInfo = this.f1104e;
        if (tintInfo != null) {
            return tintInfo.f1308a;
        }
        return null;
    }

    public final PorterDuff.Mode c() {
        TintInfo tintInfo = this.f1104e;
        if (tintInfo != null) {
            return tintInfo.f1309b;
        }
        return null;
    }

    public final void d(AttributeSet attributeSet, int i2) {
        ColorStateList colorStateListG;
        View view = this.f1101a;
        Context context = view.getContext();
        int[] iArr = R$styleable.B;
        TintTypedArray tintTypedArrayE = TintTypedArray.e(i2, 0, context, attributeSet, iArr);
        TypedArray typedArray = tintTypedArrayE.f1313b;
        View view2 = this.f1101a;
        ViewCompat.s(view2, view2.getContext(), iArr, attributeSet, tintTypedArrayE.f1313b, i2, 0);
        try {
            if (typedArray.hasValue(0)) {
                this.f1103c = typedArray.getResourceId(0, -1);
                AppCompatDrawableManager appCompatDrawableManager = this.f1102b;
                Context context2 = view.getContext();
                int i3 = this.f1103c;
                synchronized (appCompatDrawableManager) {
                    colorStateListG = appCompatDrawableManager.f1124a.g(i3, context2);
                }
                if (colorStateListG != null) {
                    g(colorStateListG);
                }
            }
            if (typedArray.hasValue(1)) {
                view.setBackgroundTintList(tintTypedArrayE.a(1));
            }
            if (typedArray.hasValue(2)) {
                view.setBackgroundTintMode(DrawableUtils.c(typedArray.getInt(2, -1), null));
            }
            tintTypedArrayE.g();
        } catch (Throwable th) {
            tintTypedArrayE.g();
            throw th;
        }
    }

    public final void e() {
        this.f1103c = -1;
        g(null);
        a();
    }

    public final void f(int i2) {
        ColorStateList colorStateListG;
        this.f1103c = i2;
        AppCompatDrawableManager appCompatDrawableManager = this.f1102b;
        if (appCompatDrawableManager != null) {
            Context context = this.f1101a.getContext();
            synchronized (appCompatDrawableManager) {
                colorStateListG = appCompatDrawableManager.f1124a.g(i2, context);
            }
        } else {
            colorStateListG = null;
        }
        g(colorStateListG);
        a();
    }

    public final void g(ColorStateList colorStateList) {
        if (colorStateList != null) {
            if (this.d == null) {
                this.d = new TintInfo();
            }
            TintInfo tintInfo = this.d;
            tintInfo.f1308a = colorStateList;
            tintInfo.d = true;
        } else {
            this.d = null;
        }
        a();
    }

    public final void h(ColorStateList colorStateList) {
        if (this.f1104e == null) {
            this.f1104e = new TintInfo();
        }
        TintInfo tintInfo = this.f1104e;
        tintInfo.f1308a = colorStateList;
        tintInfo.d = true;
        a();
    }

    public final void i(PorterDuff.Mode mode) {
        if (this.f1104e == null) {
            this.f1104e = new TintInfo();
        }
        TintInfo tintInfo = this.f1104e;
        tintInfo.f1309b = mode;
        tintInfo.f1310c = true;
        a();
    }
}
