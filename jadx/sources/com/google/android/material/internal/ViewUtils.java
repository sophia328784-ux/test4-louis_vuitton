package com.google.android.material.internal;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import com.google.android.material.R$styleable;
import com.google.android.material.bottomappbar.BottomAppBar;
import com.vuitton.android.R;

/* JADX INFO: loaded from: classes2.dex */
public abstract class ViewUtils {

    /* JADX INFO: renamed from: com.google.android.material.internal.ViewUtils$3, reason: invalid class name */
    class AnonymousClass3 implements View.OnAttachStateChangeListener {
        @Override // android.view.View.OnAttachStateChangeListener
        public final void onViewAttachedToWindow(View view) {
            view.removeOnAttachStateChangeListener(this);
            view.requestApplyInsets();
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public final void onViewDetachedFromWindow(View view) {
        }
    }

    public interface OnApplyWindowInsetsListener {
        WindowInsetsCompat a(View view, WindowInsetsCompat windowInsetsCompat, RelativePadding relativePadding);
    }

    public static Rect a(View view, View view2) {
        int[] iArr = new int[2];
        view2.getLocationOnScreen(iArr);
        int i2 = iArr[0];
        int i3 = iArr[1];
        int[] iArr2 = new int[2];
        view.getLocationOnScreen(iArr2);
        int i4 = i2 - iArr2[0];
        int i5 = i3 - iArr2[1];
        return new Rect(i4, i5, view2.getWidth() + i4, view2.getHeight() + i5);
    }

    public static void b(View view, final OnApplyWindowInsetsListener onApplyWindowInsetsListener) {
        final RelativePadding relativePadding = new RelativePadding(view.getPaddingStart(), view.getPaddingTop(), view.getPaddingEnd(), view.getPaddingBottom());
        ViewCompat.x(view, new androidx.core.view.OnApplyWindowInsetsListener() { // from class: com.google.android.material.internal.ViewUtils.2
            @Override // androidx.core.view.OnApplyWindowInsetsListener
            public final WindowInsetsCompat onApplyWindowInsets(View view2, WindowInsetsCompat windowInsetsCompat) {
                return onApplyWindowInsetsListener.a(view2, windowInsetsCompat, new RelativePadding(relativePadding));
            }
        });
        if (view.isAttachedToWindow()) {
            view.requestApplyInsets();
        } else {
            view.addOnAttachStateChangeListener(new AnonymousClass3());
        }
    }

    public static void c(BottomAppBar bottomAppBar, AttributeSet attributeSet, int i2, final OnApplyWindowInsetsListener onApplyWindowInsetsListener) {
        TypedArray typedArrayObtainStyledAttributes = bottomAppBar.getContext().obtainStyledAttributes(attributeSet, R$styleable.s, i2, R.style.Widget_MaterialComponents_BottomAppBar);
        final boolean z = typedArrayObtainStyledAttributes.getBoolean(4, false);
        final boolean z2 = typedArrayObtainStyledAttributes.getBoolean(5, false);
        final boolean z3 = typedArrayObtainStyledAttributes.getBoolean(6, false);
        typedArrayObtainStyledAttributes.recycle();
        b(bottomAppBar, new OnApplyWindowInsetsListener() { // from class: com.google.android.material.internal.ViewUtils.1
            @Override // com.google.android.material.internal.ViewUtils.OnApplyWindowInsetsListener
            public final WindowInsetsCompat a(View view, WindowInsetsCompat windowInsetsCompat, RelativePadding relativePadding) {
                if (z) {
                    relativePadding.d = windowInsetsCompat.g() + relativePadding.d;
                }
                boolean z4 = view.getLayoutDirection() == 1;
                if (z2) {
                    if (z4) {
                        relativePadding.f32748c = windowInsetsCompat.h() + relativePadding.f32748c;
                    } else {
                        relativePadding.f32746a = windowInsetsCompat.h() + relativePadding.f32746a;
                    }
                }
                if (z3) {
                    if (z4) {
                        relativePadding.f32746a = windowInsetsCompat.i() + relativePadding.f32746a;
                    } else {
                        relativePadding.f32748c = windowInsetsCompat.i() + relativePadding.f32748c;
                    }
                }
                view.setPaddingRelative(relativePadding.f32746a, relativePadding.f32747b, relativePadding.f32748c, relativePadding.d);
                onApplyWindowInsetsListener.a(view, windowInsetsCompat, relativePadding);
                return windowInsetsCompat;
            }
        });
    }

    public static float d(int i2, Context context) {
        return TypedValue.applyDimension(1, i2, context.getResources().getDisplayMetrics());
    }

    public static ViewGroup e(View view) {
        View rootView = view.getRootView();
        ViewGroup viewGroup = (ViewGroup) rootView.findViewById(android.R.id.content);
        if (viewGroup != null) {
            return viewGroup;
        }
        if (rootView == view || !(rootView instanceof ViewGroup)) {
            return null;
        }
        return (ViewGroup) rootView;
    }

    public static PorterDuff.Mode f(int i2, PorterDuff.Mode mode) {
        if (i2 == 3) {
            return PorterDuff.Mode.SRC_OVER;
        }
        if (i2 == 5) {
            return PorterDuff.Mode.SRC_IN;
        }
        if (i2 == 9) {
            return PorterDuff.Mode.SRC_ATOP;
        }
        switch (i2) {
            case 14:
                return PorterDuff.Mode.MULTIPLY;
            case 15:
                return PorterDuff.Mode.SCREEN;
            case 16:
                return PorterDuff.Mode.ADD;
            default:
                return mode;
        }
    }

    public static class RelativePadding {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f32746a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f32747b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f32748c;
        public int d;

        public RelativePadding(RelativePadding relativePadding) {
            this.f32746a = relativePadding.f32746a;
            this.f32747b = relativePadding.f32747b;
            this.f32748c = relativePadding.f32748c;
            this.d = relativePadding.d;
        }

        public RelativePadding(int i2, int i3, int i4, int i5) {
            this.f32746a = i2;
            this.f32747b = i3;
            this.f32748c = i4;
            this.d = i5;
        }
    }
}
