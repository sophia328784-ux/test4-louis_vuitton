package com.google.android.material.snackbar;

import android.accessibilityservice.AccessibilityServiceInfo;
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.WindowInsets;
import android.view.accessibility.AccessibilityManager;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.animation.LinearInterpolator;
import android.widget.FrameLayout;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.interpolator.view.animation.FastOutSlowInInterpolator;
import androidx.interpolator.view.animation.LinearOutSlowInInterpolator;
import com.google.android.material.R$styleable;
import com.google.android.material.animation.AnimationUtils;
import com.google.android.material.behavior.SwipeDismissBehavior;
import com.google.android.material.color.MaterialColors;
import com.google.android.material.internal.ThemeEnforcement;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.internal.WindowUtils;
import com.google.android.material.motion.MotionUtils;
import com.google.android.material.resources.MaterialResources;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.ShapeAppearanceModel;
import com.google.android.material.snackbar.BaseTransientBottomBar;
import com.google.android.material.theme.overlay.MaterialThemeOverlay;
import com.vuitton.android.R;
import defpackage.md;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.List;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes2.dex */
public abstract class BaseTransientBottomBar<B extends BaseTransientBottomBar<B>> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f33066a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f33067b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f33068c;
    public final TimeInterpolator d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final TimeInterpolator f33069e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final TimeInterpolator f33070f;
    public final ViewGroup g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Context f33071h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final SnackbarBaseLayout f33072i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final com.google.android.material.snackbar.ContentViewCallback f33073j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f33074k;
    public int m;
    public int n;
    public int o;
    public int p;
    public int q;
    public boolean r;
    public final AccessibilityManager s;
    public static final FastOutSlowInInterpolator u = AnimationUtils.f32228b;
    public static final LinearInterpolator v = AnimationUtils.f32227a;
    public static final LinearOutSlowInInterpolator w = AnimationUtils.d;
    public static final int[] y = {R.attr.snackbarStyle};
    public static final Handler x = new Handler(Looper.getMainLooper(), new AnonymousClass1());
    public final Runnable l = new Runnable() { // from class: com.google.android.material.snackbar.BaseTransientBottomBar.2
        @Override // java.lang.Runnable
        public void run() {
            Context context;
            BaseTransientBottomBar baseTransientBottomBar = BaseTransientBottomBar.this;
            if (baseTransientBottomBar.f33072i == null || (context = baseTransientBottomBar.f33071h) == null) {
                return;
            }
            int iHeight = WindowUtils.a(context).height();
            int[] iArr = new int[2];
            SnackbarBaseLayout snackbarBaseLayout = BaseTransientBottomBar.this.f33072i;
            snackbarBaseLayout.getLocationInWindow(iArr);
            int height = (iHeight - (snackbarBaseLayout.getHeight() + iArr[1])) + ((int) BaseTransientBottomBar.this.f33072i.getTranslationY());
            BaseTransientBottomBar baseTransientBottomBar2 = BaseTransientBottomBar.this;
            int i2 = baseTransientBottomBar2.p;
            if (height >= i2) {
                baseTransientBottomBar2.q = i2;
                return;
            }
            ViewGroup.LayoutParams layoutParams = baseTransientBottomBar2.f33072i.getLayoutParams();
            if (!(layoutParams instanceof ViewGroup.MarginLayoutParams)) {
                FastOutSlowInInterpolator fastOutSlowInInterpolator = BaseTransientBottomBar.u;
                return;
            }
            BaseTransientBottomBar baseTransientBottomBar3 = BaseTransientBottomBar.this;
            int i3 = baseTransientBottomBar3.p;
            baseTransientBottomBar3.q = i3;
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
            marginLayoutParams.bottomMargin = (i3 - height) + marginLayoutParams.bottomMargin;
            baseTransientBottomBar3.f33072i.requestLayout();
        }
    };
    public final AnonymousClass5 t = new SnackbarManager.Callback() { // from class: com.google.android.material.snackbar.BaseTransientBottomBar.5
        @Override // com.google.android.material.snackbar.SnackbarManager.Callback
        public final void a() {
            Handler handler = BaseTransientBottomBar.x;
            handler.sendMessage(handler.obtainMessage(0, BaseTransientBottomBar.this));
        }

        @Override // com.google.android.material.snackbar.SnackbarManager.Callback
        public final void b(int i2) {
            Handler handler = BaseTransientBottomBar.x;
            handler.sendMessage(handler.obtainMessage(1, i2, 0, BaseTransientBottomBar.this));
        }
    };

    /* JADX INFO: renamed from: com.google.android.material.snackbar.BaseTransientBottomBar$1, reason: invalid class name */
    public class AnonymousClass1 implements Handler.Callback {
        @Override // android.os.Handler.Callback
        public final boolean handleMessage(Message message) {
            List<AccessibilityServiceInfo> enabledAccessibilityServiceList;
            int i2 = message.what;
            if (i2 == 0) {
                final BaseTransientBottomBar baseTransientBottomBar = (BaseTransientBottomBar) message.obj;
                SnackbarBaseLayout snackbarBaseLayout = baseTransientBottomBar.f33072i;
                if (snackbarBaseLayout.getParent() == null) {
                    ViewGroup.LayoutParams layoutParams = snackbarBaseLayout.getLayoutParams();
                    if (layoutParams instanceof CoordinatorLayout.LayoutParams) {
                        CoordinatorLayout.LayoutParams layoutParams2 = (CoordinatorLayout.LayoutParams) layoutParams;
                        Behavior behavior = new Behavior();
                        BehaviorDelegate behaviorDelegate = behavior.f33087k;
                        behaviorDelegate.getClass();
                        behaviorDelegate.f33088a = baseTransientBottomBar.t;
                        behavior.f32329c = new SwipeDismissBehavior.OnDismissListener() { // from class: com.google.android.material.snackbar.BaseTransientBottomBar.7
                            @Override // com.google.android.material.behavior.SwipeDismissBehavior.OnDismissListener
                            public final void a(View view) {
                                if (view.getParent() != null) {
                                    view.setVisibility(8);
                                }
                                BaseTransientBottomBar.this.a(0);
                            }

                            @Override // com.google.android.material.behavior.SwipeDismissBehavior.OnDismissListener
                            public final void b(int i3) {
                                AnonymousClass5 anonymousClass5 = BaseTransientBottomBar.this.t;
                                if (i3 == 0) {
                                    SnackbarManager.b().e(anonymousClass5);
                                } else if (i3 == 1 || i3 == 2) {
                                    SnackbarManager.b().d(anonymousClass5);
                                }
                            }
                        };
                        layoutParams2.b(behavior);
                        layoutParams2.g = 80;
                    }
                    ViewGroup viewGroup = baseTransientBottomBar.g;
                    snackbarBaseLayout.l = true;
                    viewGroup.addView(snackbarBaseLayout);
                    snackbarBaseLayout.l = false;
                    baseTransientBottomBar.e();
                    snackbarBaseLayout.setVisibility(4);
                }
                if (snackbarBaseLayout.isLaidOut()) {
                    baseTransientBottomBar.d();
                    return true;
                }
                baseTransientBottomBar.r = true;
                return true;
            }
            if (i2 != 1) {
                return false;
            }
            final BaseTransientBottomBar baseTransientBottomBar2 = (BaseTransientBottomBar) message.obj;
            int i3 = message.arg1;
            SnackbarBaseLayout snackbarBaseLayout2 = baseTransientBottomBar2.f33072i;
            AccessibilityManager accessibilityManager = baseTransientBottomBar2.s;
            if ((accessibilityManager != null && ((enabledAccessibilityServiceList = accessibilityManager.getEnabledAccessibilityServiceList(1)) == null || !enabledAccessibilityServiceList.isEmpty())) || snackbarBaseLayout2.getVisibility() != 0) {
                baseTransientBottomBar2.b();
                return true;
            }
            if (snackbarBaseLayout2.getAnimationMode() == 1) {
                ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(1.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM);
                valueAnimatorOfFloat.setInterpolator(baseTransientBottomBar2.d);
                valueAnimatorOfFloat.addUpdateListener(new AnonymousClass11());
                valueAnimatorOfFloat.setDuration(baseTransientBottomBar2.f33067b);
                valueAnimatorOfFloat.addListener(new AnimatorListenerAdapter(i3) { // from class: com.google.android.material.snackbar.BaseTransientBottomBar.10
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public final void onAnimationEnd(Animator animator) {
                        BaseTransientBottomBar.this.b();
                    }
                });
                valueAnimatorOfFloat.start();
                return true;
            }
            ValueAnimator valueAnimator = new ValueAnimator();
            SnackbarBaseLayout snackbarBaseLayout3 = baseTransientBottomBar2.f33072i;
            int height = snackbarBaseLayout3.getHeight();
            ViewGroup.LayoutParams layoutParams3 = snackbarBaseLayout3.getLayoutParams();
            if (layoutParams3 instanceof ViewGroup.MarginLayoutParams) {
                height += ((ViewGroup.MarginLayoutParams) layoutParams3).bottomMargin;
            }
            valueAnimator.setIntValues(0, height);
            valueAnimator.setInterpolator(baseTransientBottomBar2.f33069e);
            valueAnimator.setDuration(baseTransientBottomBar2.f33068c);
            valueAnimator.addListener(new AnimatorListenerAdapter(i3) { // from class: com.google.android.material.snackbar.BaseTransientBottomBar.15
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public final void onAnimationEnd(Animator animator) {
                    BaseTransientBottomBar.this.b();
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public final void onAnimationStart(Animator animator) {
                    BaseTransientBottomBar baseTransientBottomBar3 = BaseTransientBottomBar.this;
                    baseTransientBottomBar3.f33073j.b(baseTransientBottomBar3.f33067b);
                }
            });
            valueAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.snackbar.BaseTransientBottomBar.16
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                    BaseTransientBottomBar.this.f33072i.setTranslationY(((Integer) valueAnimator2.getAnimatedValue()).intValue());
                }
            });
            valueAnimator.start();
            return true;
        }
    }

    /* JADX INFO: renamed from: com.google.android.material.snackbar.BaseTransientBottomBar$11, reason: invalid class name */
    class AnonymousClass11 implements ValueAnimator.AnimatorUpdateListener {
        public AnonymousClass11() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public final void onAnimationUpdate(ValueAnimator valueAnimator) {
            BaseTransientBottomBar.this.f33072i.setAlpha(((Float) valueAnimator.getAnimatedValue()).floatValue());
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface AnimationMode {
    }

    public static class Behavior extends SwipeDismissBehavior<View> {

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public final BehaviorDelegate f33087k = new BehaviorDelegate(this);

        @Override // com.google.android.material.behavior.SwipeDismissBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public final boolean k(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
            BehaviorDelegate behaviorDelegate = this.f33087k;
            behaviorDelegate.getClass();
            int actionMasked = motionEvent.getActionMasked();
            if (actionMasked != 0) {
                if (actionMasked == 1 || actionMasked == 3) {
                    SnackbarManager.b().e(behaviorDelegate.f33088a);
                }
            } else if (coordinatorLayout.l(view, (int) motionEvent.getX(), (int) motionEvent.getY())) {
                SnackbarManager.b().d(behaviorDelegate.f33088a);
            }
            return super.k(coordinatorLayout, view, motionEvent);
        }

        @Override // com.google.android.material.behavior.SwipeDismissBehavior
        public final boolean w(View view) {
            this.f33087k.getClass();
            return view instanceof SnackbarBaseLayout;
        }
    }

    public static class BehaviorDelegate {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public AnonymousClass5 f33088a;

        public BehaviorDelegate(SwipeDismissBehavior<?> swipeDismissBehavior) {
            swipeDismissBehavior.getClass();
            swipeDismissBehavior.f32332h = Math.min(Math.max(Call.Parameters.DEFAULT_CAMERA_ZOOM, 0.1f), 1.0f);
            swipeDismissBehavior.f32333i = Math.min(Math.max(Call.Parameters.DEFAULT_CAMERA_ZOOM, 0.6f), 1.0f);
            swipeDismissBehavior.f32331f = 0;
        }
    }

    @Deprecated
    public interface ContentViewCallback extends com.google.android.material.snackbar.ContentViewCallback {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface Duration {
    }

    public static class SnackbarBaseLayout extends FrameLayout {
        public static final View.OnTouchListener m = new AnonymousClass1();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public BaseTransientBottomBar f33089b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final ShapeAppearanceModel f33090c;
        public int d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final float f33091e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final float f33092f;
        public final int g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final int f33093h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public ColorStateList f33094i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public PorterDuff.Mode f33095j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public Rect f33096k;
        public boolean l;

        /* JADX INFO: renamed from: com.google.android.material.snackbar.BaseTransientBottomBar$SnackbarBaseLayout$1, reason: invalid class name */
        public class AnonymousClass1 implements View.OnTouchListener {
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return true;
            }
        }

        public SnackbarBaseLayout(Context context, AttributeSet attributeSet) {
            Drawable drawable;
            super(MaterialThemeOverlay.b(context, attributeSet, 0, 0), attributeSet);
            Context context2 = getContext();
            TypedArray typedArrayObtainStyledAttributes = context2.obtainStyledAttributes(attributeSet, R$styleable.S);
            if (typedArrayObtainStyledAttributes.hasValue(6)) {
                setElevation(typedArrayObtainStyledAttributes.getDimensionPixelSize(6, 0));
            }
            this.d = typedArrayObtainStyledAttributes.getInt(2, 0);
            if (typedArrayObtainStyledAttributes.hasValue(8) || typedArrayObtainStyledAttributes.hasValue(9)) {
                this.f33090c = ShapeAppearanceModel.c(context2, attributeSet, 0, 0).a();
            }
            this.f33091e = typedArrayObtainStyledAttributes.getFloat(3, 1.0f);
            setBackgroundTintList(MaterialResources.a(context2, typedArrayObtainStyledAttributes, 4));
            setBackgroundTintMode(ViewUtils.f(typedArrayObtainStyledAttributes.getInt(5, -1), PorterDuff.Mode.SRC_IN));
            this.f33092f = typedArrayObtainStyledAttributes.getFloat(1, 1.0f);
            this.g = typedArrayObtainStyledAttributes.getDimensionPixelSize(0, -1);
            this.f33093h = typedArrayObtainStyledAttributes.getDimensionPixelSize(7, -1);
            typedArrayObtainStyledAttributes.recycle();
            setOnTouchListener(m);
            setFocusable(true);
            if (getBackground() == null) {
                int iG = MaterialColors.g(MaterialColors.b(R.attr.colorSurface, this), MaterialColors.b(R.attr.colorOnSurface, this), getBackgroundOverlayColorAlpha());
                ShapeAppearanceModel shapeAppearanceModel = this.f33090c;
                if (shapeAppearanceModel != null) {
                    FastOutSlowInInterpolator fastOutSlowInInterpolator = BaseTransientBottomBar.u;
                    MaterialShapeDrawable materialShapeDrawable = new MaterialShapeDrawable(shapeAppearanceModel);
                    materialShapeDrawable.r(ColorStateList.valueOf(iG));
                    drawable = materialShapeDrawable;
                } else {
                    Resources resources = getResources();
                    FastOutSlowInInterpolator fastOutSlowInInterpolator2 = BaseTransientBottomBar.u;
                    float dimension = resources.getDimension(R.dimen.mtrl_snackbar_background_corner_radius);
                    GradientDrawable gradientDrawable = new GradientDrawable();
                    gradientDrawable.setShape(0);
                    gradientDrawable.setCornerRadius(dimension);
                    gradientDrawable.setColor(iG);
                    drawable = gradientDrawable;
                }
                ColorStateList colorStateList = this.f33094i;
                if (colorStateList != null) {
                    drawable.setTintList(colorStateList);
                }
                setBackground(drawable);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setBaseTransientBottomBar(BaseTransientBottomBar<?> baseTransientBottomBar) {
            this.f33089b = baseTransientBottomBar;
        }

        public float getActionTextColorAlpha() {
            return this.f33092f;
        }

        public int getAnimationMode() {
            return this.d;
        }

        public float getBackgroundOverlayColorAlpha() {
            return this.f33091e;
        }

        public int getMaxInlineActionWidth() {
            return this.f33093h;
        }

        public int getMaxWidth() {
            return this.g;
        }

        @Override // android.view.ViewGroup, android.view.View
        public final void onAttachedToWindow() {
            WindowInsets rootWindowInsets;
            super.onAttachedToWindow();
            BaseTransientBottomBar baseTransientBottomBar = this.f33089b;
            if (baseTransientBottomBar != null && (rootWindowInsets = baseTransientBottomBar.f33072i.getRootWindowInsets()) != null) {
                baseTransientBottomBar.p = rootWindowInsets.getMandatorySystemGestureInsets().bottom;
                baseTransientBottomBar.e();
            }
            requestApplyInsets();
        }

        @Override // android.view.ViewGroup, android.view.View
        public final void onDetachedFromWindow() {
            boolean z;
            super.onDetachedFromWindow();
            final BaseTransientBottomBar baseTransientBottomBar = this.f33089b;
            if (baseTransientBottomBar != null) {
                SnackbarManager snackbarManagerB = SnackbarManager.b();
                AnonymousClass5 anonymousClass5 = baseTransientBottomBar.t;
                synchronized (snackbarManagerB.f33101a) {
                    z = true;
                    if (!snackbarManagerB.c(anonymousClass5)) {
                        SnackbarManager.SnackbarRecord snackbarRecord = snackbarManagerB.d;
                        if (!((snackbarRecord == null || anonymousClass5 == null || snackbarRecord.f33105a.get() != anonymousClass5) ? false : true)) {
                            z = false;
                        }
                    }
                }
                if (z) {
                    BaseTransientBottomBar.x.post(new Runnable() { // from class: com.google.android.material.snackbar.BaseTransientBottomBar.6
                        @Override // java.lang.Runnable
                        public void run() {
                            BaseTransientBottomBar.this.b();
                        }
                    });
                }
            }
        }

        @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
        public final void onLayout(boolean z, int i2, int i3, int i4, int i5) {
            super.onLayout(z, i2, i3, i4, i5);
            BaseTransientBottomBar baseTransientBottomBar = this.f33089b;
            if (baseTransientBottomBar == null || !baseTransientBottomBar.r) {
                return;
            }
            baseTransientBottomBar.d();
            baseTransientBottomBar.r = false;
        }

        @Override // android.widget.FrameLayout, android.view.View
        public void onMeasure(int i2, int i3) {
            super.onMeasure(i2, i3);
            int i4 = this.g;
            if (i4 <= 0 || getMeasuredWidth() <= i4) {
                return;
            }
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(i4, 1073741824), i3);
        }

        public void setAnimationMode(int i2) {
            this.d = i2;
        }

        @Override // android.view.View
        public void setBackground(Drawable drawable) {
            setBackgroundDrawable(drawable);
        }

        @Override // android.view.View
        public void setBackgroundDrawable(Drawable drawable) {
            if (drawable != null && this.f33094i != null) {
                drawable = drawable.mutate();
                drawable.setTintList(this.f33094i);
                drawable.setTintMode(this.f33095j);
            }
            super.setBackgroundDrawable(drawable);
        }

        @Override // android.view.View
        public void setBackgroundTintList(ColorStateList colorStateList) {
            this.f33094i = colorStateList;
            if (getBackground() != null) {
                Drawable drawableMutate = getBackground().mutate();
                drawableMutate.setTintList(colorStateList);
                drawableMutate.setTintMode(this.f33095j);
                if (drawableMutate != getBackground()) {
                    super.setBackgroundDrawable(drawableMutate);
                }
            }
        }

        @Override // android.view.View
        public void setBackgroundTintMode(PorterDuff.Mode mode) {
            this.f33095j = mode;
            if (getBackground() != null) {
                Drawable drawableMutate = getBackground().mutate();
                drawableMutate.setTintMode(mode);
                if (drawableMutate != getBackground()) {
                    super.setBackgroundDrawable(drawableMutate);
                }
            }
        }

        @Override // android.view.View
        public void setLayoutParams(ViewGroup.LayoutParams layoutParams) {
            super.setLayoutParams(layoutParams);
            if (this.l || !(layoutParams instanceof ViewGroup.MarginLayoutParams)) {
                return;
            }
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
            this.f33096k = new Rect(marginLayoutParams.leftMargin, marginLayoutParams.topMargin, marginLayoutParams.rightMargin, marginLayoutParams.bottomMargin);
            BaseTransientBottomBar baseTransientBottomBar = this.f33089b;
            if (baseTransientBottomBar != null) {
                FastOutSlowInInterpolator fastOutSlowInInterpolator = BaseTransientBottomBar.u;
                baseTransientBottomBar.e();
            }
        }

        @Override // android.view.View
        public void setOnClickListener(View.OnClickListener onClickListener) {
            setOnTouchListener(onClickListener != null ? null : m);
            super.setOnClickListener(onClickListener);
        }
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [com.google.android.material.snackbar.BaseTransientBottomBar$5] */
    public BaseTransientBottomBar(Context context, ViewGroup viewGroup, View view, com.google.android.material.snackbar.ContentViewCallback contentViewCallback) {
        if (view == null) {
            md.n("Transient bottom bar must have non-null content");
            throw null;
        }
        if (contentViewCallback == null) {
            md.n("Transient bottom bar must have non-null callback");
            throw null;
        }
        this.g = viewGroup;
        this.f33073j = contentViewCallback;
        this.f33071h = context;
        ThemeEnforcement.c(context, ThemeEnforcement.f32737a, "Theme.AppCompat");
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(context);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(y);
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(0, -1);
        typedArrayObtainStyledAttributes.recycle();
        SnackbarBaseLayout snackbarBaseLayout = (SnackbarBaseLayout) layoutInflaterFrom.inflate(resourceId != -1 ? R.layout.mtrl_layout_snackbar : R.layout.design_layout_snackbar, viewGroup, false);
        this.f33072i = snackbarBaseLayout;
        snackbarBaseLayout.setBaseTransientBottomBar(this);
        if (view instanceof SnackbarContentLayout) {
            SnackbarContentLayout snackbarContentLayout = (SnackbarContentLayout) view;
            float actionTextColorAlpha = snackbarBaseLayout.getActionTextColorAlpha();
            if (actionTextColorAlpha != 1.0f) {
                snackbarContentLayout.f33098c.setTextColor(MaterialColors.g(MaterialColors.b(R.attr.colorSurface, snackbarContentLayout), snackbarContentLayout.f33098c.getCurrentTextColor(), actionTextColorAlpha));
            }
            snackbarContentLayout.setMaxInlineActionWidth(snackbarBaseLayout.getMaxInlineActionWidth());
        }
        snackbarBaseLayout.addView(view);
        snackbarBaseLayout.setAccessibilityLiveRegion(1);
        snackbarBaseLayout.setImportantForAccessibility(1);
        snackbarBaseLayout.setFitsSystemWindows(true);
        ViewCompat.x(snackbarBaseLayout, new OnApplyWindowInsetsListener() { // from class: com.google.android.material.snackbar.BaseTransientBottomBar.3
            @Override // androidx.core.view.OnApplyWindowInsetsListener
            public final WindowInsetsCompat onApplyWindowInsets(View view2, WindowInsetsCompat windowInsetsCompat) {
                int iG = windowInsetsCompat.g();
                BaseTransientBottomBar baseTransientBottomBar = BaseTransientBottomBar.this;
                baseTransientBottomBar.m = iG;
                baseTransientBottomBar.n = windowInsetsCompat.h();
                baseTransientBottomBar.o = windowInsetsCompat.i();
                baseTransientBottomBar.e();
                return windowInsetsCompat;
            }
        });
        ViewCompat.t(snackbarBaseLayout, new AccessibilityDelegateCompat() { // from class: com.google.android.material.snackbar.BaseTransientBottomBar.4
            @Override // androidx.core.view.AccessibilityDelegateCompat
            public final void d(View view2, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
                AccessibilityNodeInfo accessibilityNodeInfo = accessibilityNodeInfoCompat.f12267a;
                this.f12143b.onInitializeAccessibilityNodeInfo(view2, accessibilityNodeInfo);
                accessibilityNodeInfoCompat.a(1048576);
                accessibilityNodeInfo.setDismissable(true);
            }

            @Override // androidx.core.view.AccessibilityDelegateCompat
            public final boolean g(View view2, int i2, Bundle bundle) {
                if (i2 != 1048576) {
                    return super.g(view2, i2, bundle);
                }
                ((Snackbar) BaseTransientBottomBar.this).a(3);
                return true;
            }
        });
        this.s = (AccessibilityManager) context.getSystemService("accessibility");
        this.f33068c = MotionUtils.c(context, R.attr.motionDurationLong2, 250);
        this.f33066a = MotionUtils.c(context, R.attr.motionDurationLong2, 150);
        this.f33067b = MotionUtils.c(context, R.attr.motionDurationMedium1, 75);
        this.d = MotionUtils.d(context, R.attr.motionEasingEmphasizedInterpolator, v);
        this.f33070f = MotionUtils.d(context, R.attr.motionEasingEmphasizedInterpolator, w);
        this.f33069e = MotionUtils.d(context, R.attr.motionEasingEmphasizedInterpolator, u);
    }

    public final void a(int i2) {
        SnackbarManager snackbarManagerB = SnackbarManager.b();
        AnonymousClass5 anonymousClass5 = this.t;
        synchronized (snackbarManagerB.f33101a) {
            try {
                if (snackbarManagerB.c(anonymousClass5)) {
                    snackbarManagerB.a(snackbarManagerB.f33103c, i2);
                } else {
                    SnackbarManager.SnackbarRecord snackbarRecord = snackbarManagerB.d;
                    if ((snackbarRecord == null || anonymousClass5 == null || snackbarRecord.f33105a.get() != anonymousClass5) ? false : true) {
                        snackbarManagerB.a(snackbarManagerB.d, i2);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void b() {
        SnackbarManager snackbarManagerB = SnackbarManager.b();
        AnonymousClass5 anonymousClass5 = this.t;
        synchronized (snackbarManagerB.f33101a) {
            try {
                if (snackbarManagerB.c(anonymousClass5)) {
                    snackbarManagerB.f33103c = null;
                    SnackbarManager.SnackbarRecord snackbarRecord = snackbarManagerB.d;
                    if (snackbarRecord != null && snackbarRecord != null) {
                        snackbarManagerB.f33103c = snackbarRecord;
                        snackbarManagerB.d = null;
                        SnackbarManager.Callback callback = (SnackbarManager.Callback) snackbarRecord.f33105a.get();
                        if (callback != null) {
                            callback.a();
                        } else {
                            snackbarManagerB.f33103c = null;
                        }
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        ViewParent parent = this.f33072i.getParent();
        if (parent instanceof ViewGroup) {
            ((ViewGroup) parent).removeView(this.f33072i);
        }
    }

    public final void c() {
        SnackbarManager snackbarManagerB = SnackbarManager.b();
        AnonymousClass5 anonymousClass5 = this.t;
        synchronized (snackbarManagerB.f33101a) {
            try {
                if (snackbarManagerB.c(anonymousClass5)) {
                    snackbarManagerB.f(snackbarManagerB.f33103c);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void d() {
        List<AccessibilityServiceInfo> enabledAccessibilityServiceList;
        boolean z = true;
        AccessibilityManager accessibilityManager = this.s;
        if (accessibilityManager != null && ((enabledAccessibilityServiceList = accessibilityManager.getEnabledAccessibilityServiceList(1)) == null || !enabledAccessibilityServiceList.isEmpty())) {
            z = false;
        }
        SnackbarBaseLayout snackbarBaseLayout = this.f33072i;
        if (z) {
            snackbarBaseLayout.post(new Runnable() { // from class: com.google.android.material.snackbar.BaseTransientBottomBar.8
                @Override // java.lang.Runnable
                public void run() {
                    SnackbarBaseLayout snackbarBaseLayout2 = BaseTransientBottomBar.this.f33072i;
                    if (snackbarBaseLayout2 == null) {
                        return;
                    }
                    if (snackbarBaseLayout2.getParent() != null) {
                        BaseTransientBottomBar.this.f33072i.setVisibility(0);
                    }
                    int animationMode = BaseTransientBottomBar.this.f33072i.getAnimationMode();
                    final BaseTransientBottomBar baseTransientBottomBar = BaseTransientBottomBar.this;
                    if (animationMode == 1) {
                        float[] fArr = {Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f};
                        baseTransientBottomBar.getClass();
                        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(fArr);
                        valueAnimatorOfFloat.setInterpolator(baseTransientBottomBar.d);
                        valueAnimatorOfFloat.addUpdateListener(new AnonymousClass11());
                        ValueAnimator valueAnimatorOfFloat2 = ValueAnimator.ofFloat(0.8f, 1.0f);
                        valueAnimatorOfFloat2.setInterpolator(baseTransientBottomBar.f33070f);
                        valueAnimatorOfFloat2.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.snackbar.BaseTransientBottomBar.12
                            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                                float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                                BaseTransientBottomBar baseTransientBottomBar2 = BaseTransientBottomBar.this;
                                baseTransientBottomBar2.f33072i.setScaleX(fFloatValue);
                                baseTransientBottomBar2.f33072i.setScaleY(fFloatValue);
                            }
                        });
                        AnimatorSet animatorSet = new AnimatorSet();
                        animatorSet.playTogether(valueAnimatorOfFloat, valueAnimatorOfFloat2);
                        animatorSet.setDuration(baseTransientBottomBar.f33066a);
                        animatorSet.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.snackbar.BaseTransientBottomBar.9
                            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                            public final void onAnimationEnd(Animator animator) {
                                BaseTransientBottomBar.this.c();
                            }
                        });
                        animatorSet.start();
                        return;
                    }
                    SnackbarBaseLayout snackbarBaseLayout3 = baseTransientBottomBar.f33072i;
                    int height = snackbarBaseLayout3.getHeight();
                    ViewGroup.LayoutParams layoutParams = snackbarBaseLayout3.getLayoutParams();
                    if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
                        height += ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
                    }
                    baseTransientBottomBar.f33072i.setTranslationY(height);
                    ValueAnimator valueAnimator = new ValueAnimator();
                    valueAnimator.setIntValues(height, 0);
                    valueAnimator.setInterpolator(baseTransientBottomBar.f33069e);
                    valueAnimator.setDuration(baseTransientBottomBar.f33068c);
                    valueAnimator.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.snackbar.BaseTransientBottomBar.13
                        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                        public final void onAnimationEnd(Animator animator) {
                            BaseTransientBottomBar.this.c();
                        }

                        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                        public final void onAnimationStart(Animator animator) {
                            BaseTransientBottomBar baseTransientBottomBar2 = BaseTransientBottomBar.this;
                            com.google.android.material.snackbar.ContentViewCallback contentViewCallback = baseTransientBottomBar2.f33073j;
                            int i2 = baseTransientBottomBar2.f33068c;
                            int i3 = baseTransientBottomBar2.f33066a;
                            contentViewCallback.a(i2 - i3, i3);
                        }
                    });
                    valueAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.snackbar.BaseTransientBottomBar.14
                        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                        public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                            BaseTransientBottomBar.this.f33072i.setTranslationY(((Integer) valueAnimator2.getAnimatedValue()).intValue());
                        }
                    });
                    valueAnimator.start();
                }
            });
            return;
        }
        if (snackbarBaseLayout.getParent() != null) {
            snackbarBaseLayout.setVisibility(0);
        }
        c();
    }

    public final void e() {
        SnackbarBaseLayout snackbarBaseLayout = this.f33072i;
        ViewGroup.LayoutParams layoutParams = snackbarBaseLayout.getLayoutParams();
        if (!(layoutParams instanceof ViewGroup.MarginLayoutParams) || snackbarBaseLayout.f33096k == null || snackbarBaseLayout.getParent() == null) {
            return;
        }
        int i2 = this.m;
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
        Rect rect = snackbarBaseLayout.f33096k;
        int i3 = rect.bottom + i2;
        int i4 = rect.left + this.n;
        int i5 = rect.right + this.o;
        int i6 = rect.top;
        boolean z = (marginLayoutParams.bottomMargin == i3 && marginLayoutParams.leftMargin == i4 && marginLayoutParams.rightMargin == i5 && marginLayoutParams.topMargin == i6) ? false : true;
        if (z) {
            marginLayoutParams.bottomMargin = i3;
            marginLayoutParams.leftMargin = i4;
            marginLayoutParams.rightMargin = i5;
            marginLayoutParams.topMargin = i6;
            snackbarBaseLayout.requestLayout();
        }
        if ((z || this.q != this.p) && this.p > 0) {
            ViewGroup.LayoutParams layoutParams2 = snackbarBaseLayout.getLayoutParams();
            if ((layoutParams2 instanceof CoordinatorLayout.LayoutParams) && (((CoordinatorLayout.LayoutParams) layoutParams2).f11851a instanceof SwipeDismissBehavior)) {
                Runnable runnable = this.l;
                snackbarBaseLayout.removeCallbacks(runnable);
                snackbarBaseLayout.post(runnable);
            }
        }
    }
}
