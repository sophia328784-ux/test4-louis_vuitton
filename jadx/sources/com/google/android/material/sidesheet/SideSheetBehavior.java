package com.google.android.material.sidesheet;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Property;
import android.util.TypedValue;
import android.view.Gravity;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.activity.BackEventCompat;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.math.MathUtils;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.customview.view.AbsSavedState;
import androidx.customview.widget.ViewDragHelper;
import com.google.android.material.R$styleable;
import com.google.android.material.animation.AnimationUtils;
import com.google.android.material.motion.MaterialSideContainerBackHelper;
import com.google.android.material.resources.MaterialResources;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.ShapeAppearanceModel;
import com.vuitton.android.R;
import defpackage.hw0;
import defpackage.md;
import defpackage.n00;
import defpackage.r81;
import defpackage.t6;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.WeakHashMap;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes2.dex */
public class SideSheetBehavior<V extends View> extends CoordinatorLayout.Behavior<V> implements Sheet<Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public SheetDelegate f33030b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final MaterialShapeDrawable f33031c;
    public final ColorStateList d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ShapeAppearanceModel f33032e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final StateSettlingTracker f33033f;
    public final float g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final boolean f33034h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f33035i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public ViewDragHelper f33036j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f33037k;
    public final float l;
    public int m;
    public int n;
    public int o;
    public int p;
    public WeakReference q;
    public WeakReference r;
    public final int s;
    public VelocityTracker t;
    public MaterialSideContainerBackHelper u;
    public int v;
    public final LinkedHashSet w;
    public final ViewDragHelper.Callback x;

    public class StateSettlingTracker {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f33040a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public boolean f33041b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final b f33042c = new Runnable() { // from class: com.google.android.material.sidesheet.b
            @Override // java.lang.Runnable
            public final void run() {
                SideSheetBehavior.StateSettlingTracker stateSettlingTracker = this.f33046b;
                stateSettlingTracker.f33041b = false;
                SideSheetBehavior sideSheetBehavior = SideSheetBehavior.this;
                ViewDragHelper viewDragHelper = sideSheetBehavior.f33036j;
                if (viewDragHelper != null && viewDragHelper.f()) {
                    stateSettlingTracker.a(stateSettlingTracker.f33040a);
                } else if (sideSheetBehavior.f33035i == 2) {
                    sideSheetBehavior.x(stateSettlingTracker.f33040a);
                }
            }
        };

        /* JADX WARN: Type inference failed for: r1v1, types: [com.google.android.material.sidesheet.b] */
        public StateSettlingTracker() {
        }

        public final void a(int i2) {
            SideSheetBehavior sideSheetBehavior = SideSheetBehavior.this;
            WeakReference weakReference = sideSheetBehavior.q;
            if (weakReference == null || weakReference.get() == null) {
                return;
            }
            this.f33040a = i2;
            if (this.f33041b) {
                return;
            }
            ((View) sideSheetBehavior.q.get()).postOnAnimation(this.f33042c);
            this.f33041b = true;
        }
    }

    public SideSheetBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f33033f = new StateSettlingTracker();
        this.f33034h = true;
        this.f33035i = 5;
        this.l = 0.1f;
        this.s = -1;
        this.w = new LinkedHashSet();
        this.x = new ViewDragHelper.Callback() { // from class: com.google.android.material.sidesheet.SideSheetBehavior.1
            @Override // androidx.customview.widget.ViewDragHelper.Callback
            public final int a(int i2, View view) {
                SideSheetBehavior sideSheetBehavior = SideSheetBehavior.this;
                return MathUtils.b(i2, sideSheetBehavior.f33030b.g(), sideSheetBehavior.f33030b.f());
            }

            @Override // androidx.customview.widget.ViewDragHelper.Callback
            public final int b(int i2, View view) {
                return view.getTop();
            }

            @Override // androidx.customview.widget.ViewDragHelper.Callback
            public final int c(View view) {
                SideSheetBehavior sideSheetBehavior = SideSheetBehavior.this;
                return sideSheetBehavior.m + sideSheetBehavior.p;
            }

            @Override // androidx.customview.widget.ViewDragHelper.Callback
            public final void f(int i2) {
                if (i2 == 1) {
                    SideSheetBehavior sideSheetBehavior = SideSheetBehavior.this;
                    if (sideSheetBehavior.f33034h) {
                        sideSheetBehavior.x(1);
                    }
                }
            }

            @Override // androidx.customview.widget.ViewDragHelper.Callback
            public final void g(View view, int i2, int i3) {
                ViewGroup.MarginLayoutParams marginLayoutParams;
                SideSheetBehavior sideSheetBehavior = SideSheetBehavior.this;
                WeakReference weakReference = sideSheetBehavior.r;
                View view2 = weakReference != null ? (View) weakReference.get() : null;
                if (view2 != null && (marginLayoutParams = (ViewGroup.MarginLayoutParams) view2.getLayoutParams()) != null) {
                    sideSheetBehavior.f33030b.p(marginLayoutParams, view.getLeft(), view.getRight());
                    view2.setLayoutParams(marginLayoutParams);
                }
                LinkedHashSet linkedHashSet = sideSheetBehavior.w;
                if (linkedHashSet.isEmpty()) {
                    return;
                }
                sideSheetBehavior.f33030b.b(i2);
                Iterator it = linkedHashSet.iterator();
                while (it.hasNext()) {
                    ((SheetCallback) it.next()).b();
                }
            }

            /* JADX WARN: Code duplicated, block: B:19:0x0053  */
            @Override // androidx.customview.widget.ViewDragHelper.Callback
            public final void h(View view, float f2, float f3) {
                int i2;
                SideSheetBehavior sideSheetBehavior = SideSheetBehavior.this;
                if (!sideSheetBehavior.f33030b.k(f2)) {
                    if (!sideSheetBehavior.f33030b.n(f2, view)) {
                        if (f2 == Call.Parameters.DEFAULT_CAMERA_ZOOM || Math.abs(f2) <= Math.abs(f3)) {
                            int left = view.getLeft();
                            i2 = Math.abs(left - sideSheetBehavior.f33030b.d()) < Math.abs(left - sideSheetBehavior.f33030b.e()) ? 3 : 5;
                        }
                    } else if (sideSheetBehavior.f33030b.m(f2, f3) || sideSheetBehavior.f33030b.l(view)) {
                    }
                }
                sideSheetBehavior.z(view, i2, true);
            }

            @Override // androidx.customview.widget.ViewDragHelper.Callback
            public final boolean i(int i2, View view) {
                WeakReference weakReference;
                SideSheetBehavior sideSheetBehavior = SideSheetBehavior.this;
                return (sideSheetBehavior.f33035i == 1 || (weakReference = sideSheetBehavior.q) == null || weakReference.get() != view) ? false : true;
            }
        };
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.Q);
        if (typedArrayObtainStyledAttributes.hasValue(3)) {
            this.d = MaterialResources.a(context, typedArrayObtainStyledAttributes, 3);
        }
        if (typedArrayObtainStyledAttributes.hasValue(6)) {
            this.f33032e = ShapeAppearanceModel.c(context, attributeSet, 0, R.style.Widget_Material3_SideSheet).a();
        }
        if (typedArrayObtainStyledAttributes.hasValue(5)) {
            int resourceId = typedArrayObtainStyledAttributes.getResourceId(5, -1);
            this.s = resourceId;
            WeakReference weakReference = this.r;
            if (weakReference != null) {
                weakReference.clear();
            }
            this.r = null;
            WeakReference weakReference2 = this.q;
            if (weakReference2 != null) {
                View view = (View) weakReference2.get();
                if (resourceId != -1 && view.isLaidOut()) {
                    view.requestLayout();
                }
            }
        }
        ShapeAppearanceModel shapeAppearanceModel = this.f33032e;
        if (shapeAppearanceModel != null) {
            MaterialShapeDrawable materialShapeDrawable = new MaterialShapeDrawable(shapeAppearanceModel);
            this.f33031c = materialShapeDrawable;
            materialShapeDrawable.n(context);
            ColorStateList colorStateList = this.d;
            if (colorStateList != null) {
                this.f33031c.r(colorStateList);
            } else {
                TypedValue typedValue = new TypedValue();
                context.getTheme().resolveAttribute(android.R.attr.colorBackground, typedValue, true);
                this.f33031c.setTint(typedValue.data);
            }
        }
        this.g = typedArrayObtainStyledAttributes.getDimension(2, -1.0f);
        this.f33034h = typedArrayObtainStyledAttributes.getBoolean(4, true);
        typedArrayObtainStyledAttributes.recycle();
        ViewConfiguration.get(context).getScaledMaximumFlingVelocity();
    }

    public final void A() {
        View view;
        WeakReference weakReference = this.q;
        if (weakReference == null || (view = (View) weakReference.get()) == null) {
            return;
        }
        ViewCompat.q(262144, view);
        ViewCompat.n(0, view);
        ViewCompat.q(1048576, view);
        ViewCompat.n(0, view);
        int i2 = 5;
        if (this.f33035i != 5) {
            ViewCompat.r(view, AccessibilityNodeInfoCompat.AccessibilityActionCompat.l, new hw0(this, i2));
        }
        int i3 = 3;
        if (this.f33035i != 3) {
            ViewCompat.r(view, AccessibilityNodeInfoCompat.AccessibilityActionCompat.f12274j, new hw0(this, i3));
        }
    }

    @Override // com.google.android.material.motion.MaterialBackHandler
    public final void a() {
        MaterialSideContainerBackHelper materialSideContainerBackHelper = this.u;
        if (materialSideContainerBackHelper == null) {
            return;
        }
        View view = materialSideContainerBackHelper.f32752b;
        BackEventCompat backEventCompat = materialSideContainerBackHelper.f32755f;
        materialSideContainerBackHelper.f32755f = null;
        if (backEventCompat == null) {
            return;
        }
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(ObjectAnimator.ofFloat(view, (Property<View, Float>) View.SCALE_X, 1.0f), ObjectAnimator.ofFloat(view, (Property<View, Float>) View.SCALE_Y, 1.0f));
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i2 = 0; i2 < viewGroup.getChildCount(); i2++) {
                animatorSet.playTogether(ObjectAnimator.ofFloat(viewGroup.getChildAt(i2), (Property<View, Float>) View.SCALE_Y, 1.0f));
            }
        }
        animatorSet.setDuration(materialSideContainerBackHelper.f32754e);
        animatorSet.start();
    }

    @Override // com.google.android.material.motion.MaterialBackHandler
    public final void b(BackEventCompat backEventCompat) {
        MaterialSideContainerBackHelper materialSideContainerBackHelper = this.u;
        if (materialSideContainerBackHelper == null) {
            return;
        }
        materialSideContainerBackHelper.f32755f = backEventCompat;
    }

    @Override // com.google.android.material.motion.MaterialBackHandler
    public final void c(BackEventCompat backEventCompat) {
        ViewGroup.MarginLayoutParams marginLayoutParams;
        MaterialSideContainerBackHelper materialSideContainerBackHelper = this.u;
        if (materialSideContainerBackHelper == null) {
            return;
        }
        SheetDelegate sheetDelegate = this.f33030b;
        int i2 = (sheetDelegate == null || sheetDelegate.j() == 0) ? 5 : 3;
        BackEventCompat backEventCompat2 = materialSideContainerBackHelper.f32755f;
        materialSideContainerBackHelper.f32755f = backEventCompat;
        if (backEventCompat2 != null) {
            materialSideContainerBackHelper.b(backEventCompat.f654c, i2, backEventCompat.d == 0);
        }
        WeakReference weakReference = this.q;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        View view = (View) this.q.get();
        WeakReference weakReference2 = this.r;
        View view2 = weakReference2 != null ? (View) weakReference2.get() : null;
        if (view2 == null || (marginLayoutParams = (ViewGroup.MarginLayoutParams) view2.getLayoutParams()) == null) {
            return;
        }
        this.f33030b.o(marginLayoutParams, (int) ((view.getScaleX() * this.m) + this.p));
        view2.requestLayout();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // com.google.android.material.motion.MaterialBackHandler
    public final void d() {
        final ViewGroup.MarginLayoutParams marginLayoutParams;
        MaterialSideContainerBackHelper materialSideContainerBackHelper = this.u;
        if (materialSideContainerBackHelper == null) {
            return;
        }
        BackEventCompat backEventCompat = materialSideContainerBackHelper.f32755f;
        a aVar = 0;
        aVar = 0;
        materialSideContainerBackHelper.f32755f = null;
        int i2 = 5;
        if (backEventCompat == null || Build.VERSION.SDK_INT < 34) {
            w(5);
            return;
        }
        SheetDelegate sheetDelegate = this.f33030b;
        if (sheetDelegate != null && sheetDelegate.j() != 0) {
            i2 = 3;
        }
        Animator.AnimatorListener animatorListener = new AnimatorListenerAdapter() { // from class: com.google.android.material.sidesheet.SideSheetBehavior.2
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                SideSheetBehavior sideSheetBehavior = SideSheetBehavior.this;
                sideSheetBehavior.x(5);
                WeakReference weakReference = sideSheetBehavior.q;
                if (weakReference == null || weakReference.get() == null) {
                    return;
                }
                ((View) sideSheetBehavior.q.get()).requestLayout();
            }
        };
        WeakReference weakReference = this.r;
        final View view = weakReference != null ? (View) weakReference.get() : null;
        if (view != null && (marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams()) != null) {
            final int iC = this.f33030b.c(marginLayoutParams);
            aVar = new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.sidesheet.a
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    this.f33043a.f33030b.o(marginLayoutParams, AnimationUtils.c(iC, 0, valueAnimator.getAnimatedFraction()));
                    view.requestLayout();
                }
            };
        }
        materialSideContainerBackHelper.a(backEventCompat, i2, animatorListener, aVar);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final void g(CoordinatorLayout.LayoutParams layoutParams) {
        this.q = null;
        this.f33036j = null;
        this.u = null;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final void j() {
        this.q = null;
        this.f33036j = null;
        this.u = null;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final boolean k(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
        ViewDragHelper viewDragHelper;
        VelocityTracker velocityTracker;
        if ((!view.isShown() && ViewCompat.f(view) == null) || !this.f33034h) {
            this.f33037k = true;
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0 && (velocityTracker = this.t) != null) {
            velocityTracker.recycle();
            this.t = null;
        }
        if (this.t == null) {
            this.t = VelocityTracker.obtain();
        }
        this.t.addMovement(motionEvent);
        if (actionMasked == 0) {
            this.v = (int) motionEvent.getX();
        } else if ((actionMasked == 1 || actionMasked == 3) && this.f33037k) {
            this.f33037k = false;
            return false;
        }
        return (this.f33037k || (viewDragHelper = this.f33036j) == null || !viewDragHelper.o(motionEvent)) ? false : true;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final boolean l(CoordinatorLayout coordinatorLayout, View view, int i2) {
        View view2;
        View view3;
        int i3;
        View viewFindViewById;
        if (coordinatorLayout.getFitsSystemWindows() && !view.getFitsSystemWindows()) {
            view.setFitsSystemWindows(true);
        }
        WeakReference weakReference = this.q;
        MaterialShapeDrawable materialShapeDrawable = this.f33031c;
        int iH = 0;
        if (weakReference == null) {
            this.q = new WeakReference(view);
            this.u = new MaterialSideContainerBackHelper(view);
            if (materialShapeDrawable != null) {
                view.setBackground(materialShapeDrawable);
                float elevation = this.g;
                if (elevation == -1.0f) {
                    elevation = view.getElevation();
                }
                materialShapeDrawable.q(elevation);
            } else {
                ColorStateList colorStateList = this.d;
                if (colorStateList != null) {
                    WeakHashMap weakHashMap = ViewCompat.f12200a;
                    view.setBackgroundTintList(colorStateList);
                }
            }
            int i4 = this.f33035i == 5 ? 4 : 0;
            if (view.getVisibility() != i4) {
                view.setVisibility(i4);
            }
            A();
            if (view.getImportantForAccessibility() == 0) {
                view.setImportantForAccessibility(1);
            }
            if (ViewCompat.f(view) == null) {
                ViewCompat.v(view, view.getResources().getString(R.string.side_sheet_accessibility_pane_title));
            }
        }
        int i5 = Gravity.getAbsoluteGravity(((CoordinatorLayout.LayoutParams) view.getLayoutParams()).f11853c, i2) == 3 ? 1 : 0;
        SheetDelegate sheetDelegate = this.f33030b;
        if (sheetDelegate == null || sheetDelegate.j() != i5) {
            CoordinatorLayout.LayoutParams layoutParams = null;
            ShapeAppearanceModel shapeAppearanceModel = this.f33032e;
            if (i5 == 0) {
                this.f33030b = new RightSheetDelegate(this);
                if (shapeAppearanceModel != null) {
                    WeakReference weakReference2 = this.q;
                    if (weakReference2 != null && (view3 = (View) weakReference2.get()) != null && (view3.getLayoutParams() instanceof CoordinatorLayout.LayoutParams)) {
                        layoutParams = (CoordinatorLayout.LayoutParams) view3.getLayoutParams();
                    }
                    if (layoutParams == null || ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin <= 0) {
                        ShapeAppearanceModel.Builder builder = new ShapeAppearanceModel.Builder(shapeAppearanceModel);
                        builder.f(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                        builder.d(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                        ShapeAppearanceModel shapeAppearanceModelA = builder.a();
                        if (materialShapeDrawable != null) {
                            materialShapeDrawable.setShapeAppearanceModel(shapeAppearanceModelA);
                        }
                    }
                }
            } else {
                if (i5 != 1) {
                    md.n(n00.m(i5, "Invalid sheet edge position value: ", ". Must be 0 or 1."));
                    return false;
                }
                this.f33030b = new LeftSheetDelegate(this);
                if (shapeAppearanceModel != null) {
                    WeakReference weakReference3 = this.q;
                    if (weakReference3 != null && (view2 = (View) weakReference3.get()) != null && (view2.getLayoutParams() instanceof CoordinatorLayout.LayoutParams)) {
                        layoutParams = (CoordinatorLayout.LayoutParams) view2.getLayoutParams();
                    }
                    if (layoutParams == null || ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin <= 0) {
                        ShapeAppearanceModel.Builder builder2 = new ShapeAppearanceModel.Builder(shapeAppearanceModel);
                        builder2.e(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                        builder2.c(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                        ShapeAppearanceModel shapeAppearanceModelA2 = builder2.a();
                        if (materialShapeDrawable != null) {
                            materialShapeDrawable.setShapeAppearanceModel(shapeAppearanceModelA2);
                        }
                    }
                }
            }
        }
        if (this.f33036j == null) {
            this.f33036j = new ViewDragHelper(coordinatorLayout.getContext(), coordinatorLayout, this.x);
        }
        int iH2 = this.f33030b.h(view);
        coordinatorLayout.r(i2, view);
        this.n = coordinatorLayout.getWidth();
        this.o = this.f33030b.i(coordinatorLayout);
        this.m = view.getWidth();
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        this.p = marginLayoutParams != null ? this.f33030b.a(marginLayoutParams) : 0;
        int i6 = this.f33035i;
        if (i6 == 1 || i6 == 2) {
            iH = iH2 - this.f33030b.h(view);
        } else if (i6 != 3) {
            if (i6 != 5) {
                r81.c(this.f33035i, "Unexpected value: ");
                return false;
            }
            iH = this.f33030b.e();
        }
        WeakHashMap weakHashMap2 = ViewCompat.f12200a;
        view.offsetLeftAndRight(iH);
        if (this.r == null && (i3 = this.s) != -1 && (viewFindViewById = coordinatorLayout.findViewById(i3)) != null) {
            this.r = new WeakReference(viewFindViewById);
        }
        for (SheetCallback sheetCallback : this.w) {
        }
        return true;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final boolean m(CoordinatorLayout coordinatorLayout, View view, int i2, int i3, int i4) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        view.measure(ViewGroup.getChildMeasureSpec(i2, coordinatorLayout.getPaddingRight() + coordinatorLayout.getPaddingLeft() + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin + i3, marginLayoutParams.width), ViewGroup.getChildMeasureSpec(i4, coordinatorLayout.getPaddingBottom() + coordinatorLayout.getPaddingTop() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin, marginLayoutParams.height));
        return true;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final void r(View view, Parcelable parcelable) {
        int i2 = ((SavedState) parcelable).d;
        if (i2 == 1 || i2 == 2) {
            i2 = 5;
        }
        this.f33035i = i2;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final Parcelable s(View view) {
        return new SavedState((Parcelable) View.BaseSavedState.EMPTY_STATE, (SideSheetBehavior<?>) this);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final boolean v(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
        VelocityTracker velocityTracker;
        if (!view.isShown()) {
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (this.f33035i == 1 && actionMasked == 0) {
            return true;
        }
        if (y()) {
            this.f33036j.i(motionEvent);
        }
        if (actionMasked == 0 && (velocityTracker = this.t) != null) {
            velocityTracker.recycle();
            this.t = null;
        }
        if (this.t == null) {
            this.t = VelocityTracker.obtain();
        }
        this.t.addMovement(motionEvent);
        if (y() && actionMasked == 2 && !this.f33037k && y()) {
            float fAbs = Math.abs(this.v - motionEvent.getX());
            ViewDragHelper viewDragHelper = this.f33036j;
            if (fAbs > viewDragHelper.f12567b) {
                viewDragHelper.b(motionEvent.getPointerId(motionEvent.getActionIndex()), view);
            }
        }
        return !this.f33037k;
    }

    public final void w(int i2) {
        if (i2 == 1 || i2 == 2) {
            throw new IllegalArgumentException(n00.r(i2 == 1 ? "DRAGGING" : "SETTLING", " should not be set externally.", new StringBuilder("STATE_")));
        }
        WeakReference weakReference = this.q;
        if (weakReference == null || weakReference.get() == null) {
            x(i2);
            return;
        }
        View view = (View) this.q.get();
        t6 t6Var = new t6(this, i2, 7);
        ViewParent parent = view.getParent();
        if (parent != null && parent.isLayoutRequested() && view.isAttachedToWindow()) {
            view.post(t6Var);
        } else {
            t6Var.run();
        }
    }

    public final void x(int i2) {
        View view;
        if (this.f33035i == i2) {
            return;
        }
        this.f33035i = i2;
        WeakReference weakReference = this.q;
        if (weakReference == null || (view = (View) weakReference.get()) == null) {
            return;
        }
        int i3 = this.f33035i == 5 ? 4 : 0;
        if (view.getVisibility() != i3) {
            view.setVisibility(i3);
        }
        Iterator it = this.w.iterator();
        while (it.hasNext()) {
            ((SheetCallback) it.next()).a();
        }
        A();
    }

    public final boolean y() {
        if (this.f33036j != null) {
            return this.f33034h || this.f33035i == 1;
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x002b, code lost:
    
        if (r1.n(r0, r3.getTop()) != false) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0049, code lost:
    
        if (r3 != false) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x004b, code lost:
    
        x(2);
        r2.f33033f.a(r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0054, code lost:
    
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void z(android.view.View r3, int r4, boolean r5) {
        /*
            r2 = this;
            r0 = 3
            if (r4 == r0) goto L17
            r0 = 5
            if (r4 != r0) goto Ld
            com.google.android.material.sidesheet.SheetDelegate r0 = r2.f33030b
            int r0 = r0.e()
            goto L1d
        Ld:
            java.lang.String r2 = "Invalid state to get outer edge offset: "
            java.lang.String r2 = defpackage.pq0.k(r4, r2)
            defpackage.md.n(r2)
            return
        L17:
            com.google.android.material.sidesheet.SheetDelegate r0 = r2.f33030b
            int r0 = r0.d()
        L1d:
            androidx.customview.widget.ViewDragHelper r1 = r2.f33036j
            if (r1 == 0) goto L55
            if (r5 == 0) goto L2e
            int r3 = r3.getTop()
            boolean r3 = r1.n(r0, r3)
            if (r3 == 0) goto L55
            goto L4b
        L2e:
            int r5 = r3.getTop()
            r1.r = r3
            r3 = -1
            r1.f12568c = r3
            r3 = 0
            boolean r3 = r1.h(r0, r5, r3, r3)
            if (r3 != 0) goto L49
            int r5 = r1.f12566a
            if (r5 != 0) goto L49
            android.view.View r5 = r1.r
            if (r5 == 0) goto L49
            r5 = 0
            r1.r = r5
        L49:
            if (r3 == 0) goto L55
        L4b:
            r3 = 2
            r2.x(r3)
            com.google.android.material.sidesheet.SideSheetBehavior$StateSettlingTracker r2 = r2.f33033f
            r2.a(r4)
            return
        L55:
            r2.x(r4)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.sidesheet.SideSheetBehavior.z(android.view.View, int, boolean):void");
    }

    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new AnonymousClass1();
        public final int d;

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.d = parcel.readInt();
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i2) {
            super.writeToParcel(parcel, i2);
            parcel.writeInt(this.d);
        }

        /* JADX INFO: renamed from: com.google.android.material.sidesheet.SideSheetBehavior$SavedState$1, reason: invalid class name */
        public class AnonymousClass1 implements Parcelable.ClassLoaderCreator<SavedState> {
            @Override // android.os.Parcelable.Creator
            public final Object createFromParcel(Parcel parcel) {
                return new SavedState(parcel, (ClassLoader) null);
            }

            @Override // android.os.Parcelable.Creator
            public final Object[] newArray(int i2) {
                return new SavedState[i2];
            }

            @Override // android.os.Parcelable.ClassLoaderCreator
            public final SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }
        }

        public SavedState(Parcel parcel) {
            this(parcel, (ClassLoader) null);
        }

        public SavedState(Parcelable parcelable, SideSheetBehavior<?> sideSheetBehavior) {
            super(parcelable);
            this.d = sideSheetBehavior.f33035i;
        }
    }

    public SideSheetBehavior() {
        this.f33033f = new StateSettlingTracker();
        this.f33034h = true;
        this.f33035i = 5;
        this.l = 0.1f;
        this.s = -1;
        this.w = new LinkedHashSet();
        this.x = new ViewDragHelper.Callback() { // from class: com.google.android.material.sidesheet.SideSheetBehavior.1
            @Override // androidx.customview.widget.ViewDragHelper.Callback
            public final int a(int i2, View view) {
                SideSheetBehavior sideSheetBehavior = SideSheetBehavior.this;
                return MathUtils.b(i2, sideSheetBehavior.f33030b.g(), sideSheetBehavior.f33030b.f());
            }

            @Override // androidx.customview.widget.ViewDragHelper.Callback
            public final int b(int i2, View view) {
                return view.getTop();
            }

            @Override // androidx.customview.widget.ViewDragHelper.Callback
            public final int c(View view) {
                SideSheetBehavior sideSheetBehavior = SideSheetBehavior.this;
                return sideSheetBehavior.m + sideSheetBehavior.p;
            }

            @Override // androidx.customview.widget.ViewDragHelper.Callback
            public final void f(int i2) {
                if (i2 == 1) {
                    SideSheetBehavior sideSheetBehavior = SideSheetBehavior.this;
                    if (sideSheetBehavior.f33034h) {
                        sideSheetBehavior.x(1);
                    }
                }
            }

            @Override // androidx.customview.widget.ViewDragHelper.Callback
            public final void g(View view, int i2, int i3) {
                ViewGroup.MarginLayoutParams marginLayoutParams;
                SideSheetBehavior sideSheetBehavior = SideSheetBehavior.this;
                WeakReference weakReference = sideSheetBehavior.r;
                View view2 = weakReference != null ? (View) weakReference.get() : null;
                if (view2 != null && (marginLayoutParams = (ViewGroup.MarginLayoutParams) view2.getLayoutParams()) != null) {
                    sideSheetBehavior.f33030b.p(marginLayoutParams, view.getLeft(), view.getRight());
                    view2.setLayoutParams(marginLayoutParams);
                }
                LinkedHashSet linkedHashSet = sideSheetBehavior.w;
                if (linkedHashSet.isEmpty()) {
                    return;
                }
                sideSheetBehavior.f33030b.b(i2);
                Iterator it = linkedHashSet.iterator();
                while (it.hasNext()) {
                    ((SheetCallback) it.next()).b();
                }
            }

            /* JADX WARN: Code duplicated, block: B:19:0x0053  */
            @Override // androidx.customview.widget.ViewDragHelper.Callback
            public final void h(View view, float f2, float f3) {
                int i2;
                SideSheetBehavior sideSheetBehavior = SideSheetBehavior.this;
                if (!sideSheetBehavior.f33030b.k(f2)) {
                    if (!sideSheetBehavior.f33030b.n(f2, view)) {
                        if (f2 == Call.Parameters.DEFAULT_CAMERA_ZOOM || Math.abs(f2) <= Math.abs(f3)) {
                            int left = view.getLeft();
                            i2 = Math.abs(left - sideSheetBehavior.f33030b.d()) < Math.abs(left - sideSheetBehavior.f33030b.e()) ? 3 : 5;
                        }
                    } else if (sideSheetBehavior.f33030b.m(f2, f3) || sideSheetBehavior.f33030b.l(view)) {
                    }
                }
                sideSheetBehavior.z(view, i2, true);
            }

            @Override // androidx.customview.widget.ViewDragHelper.Callback
            public final boolean i(int i2, View view) {
                WeakReference weakReference;
                SideSheetBehavior sideSheetBehavior = SideSheetBehavior.this;
                return (sideSheetBehavior.f33035i == 1 || (weakReference = sideSheetBehavior.q) == null || weakReference.get() != view) ? false : true;
            }
        };
    }
}
