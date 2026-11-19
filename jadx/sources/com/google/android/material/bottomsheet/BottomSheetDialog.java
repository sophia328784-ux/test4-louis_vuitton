package com.google.android.material.bottomsheet;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.os.Bundle;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.FrameLayout;
import androidx.appcompat.app.AppCompatDialog;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.core.view.WindowInsetsControllerCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import com.dynatrace.android.callback.Callback;
import com.google.android.material.color.MaterialColors;
import com.google.android.material.drawable.DrawableUtils;
import com.google.android.material.motion.MaterialBackOrchestrator;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.vuitton.android.R;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public class BottomSheetDialog extends AppCompatDialog {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public BottomSheetBehavior f32378c;
    public FrameLayout d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public CoordinatorLayout f32379e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public FrameLayout f32380f;
    public boolean g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f32381h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f32382i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public EdgeToEdgeCallback f32383j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final boolean f32384k;
    public MaterialBackOrchestrator l;
    public final BottomSheetBehavior.BottomSheetCallback m;

    /* JADX INFO: renamed from: com.google.android.material.bottomsheet.BottomSheetDialog$4, reason: invalid class name */
    class AnonymousClass4 implements View.OnTouchListener {
        @Override // android.view.View.OnTouchListener
        public final boolean onTouch(View view, MotionEvent motionEvent) {
            return true;
        }
    }

    public static class EdgeToEdgeCallback extends BottomSheetBehavior.BottomSheetCallback {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Boolean f32389a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final WindowInsetsCompat f32390b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public Window f32391c;
        public boolean d;

        public EdgeToEdgeCallback(View view, WindowInsetsCompat windowInsetsCompat) {
            this.f32390b = windowInsetsCompat;
            MaterialShapeDrawable materialShapeDrawable = BottomSheetBehavior.B(view).f32363j;
            ColorStateList backgroundTintList = materialShapeDrawable != null ? materialShapeDrawable.f32936c.d : view.getBackgroundTintList();
            if (backgroundTintList != null) {
                this.f32389a = Boolean.valueOf(MaterialColors.f(backgroundTintList.getDefaultColor()));
                return;
            }
            ColorStateList colorStateListD = DrawableUtils.d(view.getBackground());
            Integer numValueOf = colorStateListD != null ? Integer.valueOf(colorStateListD.getDefaultColor()) : null;
            if (numValueOf != null) {
                this.f32389a = Boolean.valueOf(MaterialColors.f(numValueOf.intValue()));
            } else {
                this.f32389a = null;
            }
        }

        public final void a(View view) {
            int top = view.getTop();
            WindowInsetsCompat windowInsetsCompat = this.f32390b;
            if (top < windowInsetsCompat.j()) {
                Window window = this.f32391c;
                if (window != null) {
                    Boolean bool = this.f32389a;
                    new WindowInsetsControllerCompat(window, window.getDecorView()).e(bool == null ? this.d : bool.booleanValue());
                }
                view.setPadding(view.getPaddingLeft(), windowInsetsCompat.j() - view.getTop(), view.getPaddingRight(), view.getPaddingBottom());
                return;
            }
            if (view.getTop() != 0) {
                Window window2 = this.f32391c;
                if (window2 != null) {
                    new WindowInsetsControllerCompat(window2, window2.getDecorView()).e(this.d);
                }
                view.setPadding(view.getPaddingLeft(), 0, view.getPaddingRight(), view.getPaddingBottom());
            }
        }

        public final void b(Window window) {
            if (this.f32391c == window) {
                return;
            }
            this.f32391c = window;
            if (window != null) {
                this.d = new WindowInsetsControllerCompat(window, window.getDecorView()).c();
            }
        }

        @Override // com.google.android.material.bottomsheet.BottomSheetBehavior.BottomSheetCallback
        public final void onLayout(View view) {
            a(view);
        }

        @Override // com.google.android.material.bottomsheet.BottomSheetBehavior.BottomSheetCallback
        public final void onSlide(View view, float f2) {
            a(view);
        }

        @Override // com.google.android.material.bottomsheet.BottomSheetBehavior.BottomSheetCallback
        public final void onStateChanged(View view, int i2) {
            a(view);
        }
    }

    public BottomSheetDialog(Context context, int i2) {
        if (i2 == 0) {
            TypedValue typedValue = new TypedValue();
            i2 = context.getTheme().resolveAttribute(R.attr.bottomSheetDialogTheme, typedValue, true) ? typedValue.resourceId : R.style.Theme_Design_Light_BottomSheetDialog;
        }
        super(context, i2);
        this.g = true;
        this.f32381h = true;
        this.m = new BottomSheetBehavior.BottomSheetCallback() { // from class: com.google.android.material.bottomsheet.BottomSheetDialog.5
            @Override // com.google.android.material.bottomsheet.BottomSheetBehavior.BottomSheetCallback
            public final void onSlide(View view, float f2) {
            }

            @Override // com.google.android.material.bottomsheet.BottomSheetBehavior.BottomSheetCallback
            public final void onStateChanged(View view, int i3) {
                if (i3 == 5) {
                    BottomSheetDialog.this.cancel();
                }
            }
        };
        supportRequestWindowFeature(1);
        TypedArray typedArrayObtainStyledAttributes = getContext().getTheme().obtainStyledAttributes(new int[]{R.attr.enableEdgeToEdge});
        this.f32384k = typedArrayObtainStyledAttributes.getBoolean(0, false);
        typedArrayObtainStyledAttributes.recycle();
    }

    public final void b() {
        if (this.d == null) {
            FrameLayout frameLayout = (FrameLayout) View.inflate(getContext(), R.layout.design_bottom_sheet_dialog, null);
            this.d = frameLayout;
            this.f32379e = (CoordinatorLayout) frameLayout.findViewById(R.id.coordinator);
            FrameLayout frameLayout2 = (FrameLayout) this.d.findViewById(R.id.design_bottom_sheet);
            this.f32380f = frameLayout2;
            BottomSheetBehavior bottomSheetBehaviorB = BottomSheetBehavior.B(frameLayout2);
            this.f32378c = bottomSheetBehaviorB;
            ArrayList arrayList = bottomSheetBehaviorB.h0;
            BottomSheetBehavior.BottomSheetCallback bottomSheetCallback = this.m;
            if (!arrayList.contains(bottomSheetCallback)) {
                arrayList.add(bottomSheetCallback);
            }
            this.f32378c.H(this.g);
            this.l = new MaterialBackOrchestrator(this.f32378c, this.f32380f);
        }
    }

    public final FrameLayout c(View view, int i2, ViewGroup.LayoutParams layoutParams) {
        b();
        CoordinatorLayout coordinatorLayout = (CoordinatorLayout) this.d.findViewById(R.id.coordinator);
        if (i2 != 0 && view == null) {
            view = getLayoutInflater().inflate(i2, (ViewGroup) coordinatorLayout, false);
        }
        if (this.f32384k) {
            ViewCompat.x(this.d, new OnApplyWindowInsetsListener() { // from class: com.google.android.material.bottomsheet.BottomSheetDialog.1
                @Override // androidx.core.view.OnApplyWindowInsetsListener
                public final WindowInsetsCompat onApplyWindowInsets(View view2, WindowInsetsCompat windowInsetsCompat) {
                    BottomSheetDialog bottomSheetDialog = BottomSheetDialog.this;
                    EdgeToEdgeCallback edgeToEdgeCallback = bottomSheetDialog.f32383j;
                    if (edgeToEdgeCallback != null) {
                        bottomSheetDialog.f32378c.h0.remove(edgeToEdgeCallback);
                    }
                    EdgeToEdgeCallback edgeToEdgeCallback2 = new EdgeToEdgeCallback(bottomSheetDialog.f32380f, windowInsetsCompat);
                    bottomSheetDialog.f32383j = edgeToEdgeCallback2;
                    edgeToEdgeCallback2.b(bottomSheetDialog.getWindow());
                    BottomSheetBehavior bottomSheetBehavior = bottomSheetDialog.f32378c;
                    EdgeToEdgeCallback edgeToEdgeCallback3 = bottomSheetDialog.f32383j;
                    ArrayList arrayList = bottomSheetBehavior.h0;
                    if (!arrayList.contains(edgeToEdgeCallback3)) {
                        arrayList.add(edgeToEdgeCallback3);
                    }
                    return windowInsetsCompat;
                }
            });
        }
        this.f32380f.removeAllViews();
        FrameLayout frameLayout = this.f32380f;
        if (layoutParams == null) {
            frameLayout.addView(view);
        } else {
            frameLayout.addView(view, layoutParams);
        }
        coordinatorLayout.findViewById(R.id.touch_outside).setOnClickListener(new View.OnClickListener() { // from class: com.google.android.material.bottomsheet.BottomSheetDialog.2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                BottomSheetDialog bottomSheetDialog = BottomSheetDialog.this;
                Callback.n(view2);
                try {
                    if (bottomSheetDialog.g && bottomSheetDialog.isShowing()) {
                        if (!bottomSheetDialog.f32382i) {
                            TypedArray typedArrayObtainStyledAttributes = bottomSheetDialog.getContext().obtainStyledAttributes(new int[]{android.R.attr.windowCloseOnTouchOutside});
                            bottomSheetDialog.f32381h = typedArrayObtainStyledAttributes.getBoolean(0, true);
                            typedArrayObtainStyledAttributes.recycle();
                            bottomSheetDialog.f32382i = true;
                        }
                        if (bottomSheetDialog.f32381h) {
                            bottomSheetDialog.cancel();
                        }
                    }
                } finally {
                    Callback.o();
                }
            }
        });
        ViewCompat.t(this.f32380f, new AccessibilityDelegateCompat() { // from class: com.google.android.material.bottomsheet.BottomSheetDialog.3
            @Override // androidx.core.view.AccessibilityDelegateCompat
            public final void d(View view2, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
                AccessibilityNodeInfo accessibilityNodeInfo = accessibilityNodeInfoCompat.f12267a;
                this.f12143b.onInitializeAccessibilityNodeInfo(view2, accessibilityNodeInfo);
                if (!BottomSheetDialog.this.g) {
                    accessibilityNodeInfo.setDismissable(false);
                } else {
                    accessibilityNodeInfoCompat.a(1048576);
                    accessibilityNodeInfo.setDismissable(true);
                }
            }

            @Override // androidx.core.view.AccessibilityDelegateCompat
            public final boolean g(View view2, int i3, Bundle bundle) {
                if (i3 == 1048576) {
                    BottomSheetDialog bottomSheetDialog = BottomSheetDialog.this;
                    if (bottomSheetDialog.g) {
                        bottomSheetDialog.cancel();
                        return true;
                    }
                }
                return super.g(view2, i3, bundle);
            }
        });
        this.f32380f.setOnTouchListener(new AnonymousClass4());
        return this.d;
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public final void cancel() {
        if (this.f32378c == null) {
            b();
        }
        super.cancel();
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        Window window = getWindow();
        if (window != null) {
            boolean z = this.f32384k && Color.alpha(window.getNavigationBarColor()) < 255;
            FrameLayout frameLayout = this.d;
            if (frameLayout != null) {
                frameLayout.setFitsSystemWindows(!z);
            }
            CoordinatorLayout coordinatorLayout = this.f32379e;
            if (coordinatorLayout != null) {
                coordinatorLayout.setFitsSystemWindows(!z);
            }
            WindowCompat.a(window, !z);
            EdgeToEdgeCallback edgeToEdgeCallback = this.f32383j;
            if (edgeToEdgeCallback != null) {
                edgeToEdgeCallback.b(window);
            }
        }
        MaterialBackOrchestrator materialBackOrchestrator = this.l;
        if (materialBackOrchestrator == null) {
            return;
        }
        if (this.g) {
            materialBackOrchestrator.a();
        } else {
            materialBackOrchestrator.b();
        }
    }

    @Override // androidx.appcompat.app.AppCompatDialog, androidx.activity.ComponentDialog, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Window window = getWindow();
        if (window != null) {
            window.setStatusBarColor(0);
            window.addFlags(Integer.MIN_VALUE);
            window.setLayout(-1, -1);
        }
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public final void onDetachedFromWindow() {
        EdgeToEdgeCallback edgeToEdgeCallback = this.f32383j;
        if (edgeToEdgeCallback != null) {
            edgeToEdgeCallback.b(null);
        }
        MaterialBackOrchestrator materialBackOrchestrator = this.l;
        if (materialBackOrchestrator != null) {
            materialBackOrchestrator.b();
        }
    }

    @Override // androidx.activity.ComponentDialog, android.app.Dialog
    public final void onStart() {
        super.onStart();
        BottomSheetBehavior bottomSheetBehavior = this.f32378c;
        if (bottomSheetBehavior == null || bottomSheetBehavior.O != 5) {
            return;
        }
        bottomSheetBehavior.J(4);
    }

    @Override // android.app.Dialog
    public final void setCancelable(boolean z) {
        MaterialBackOrchestrator materialBackOrchestrator;
        super.setCancelable(z);
        if (this.g != z) {
            this.g = z;
            BottomSheetBehavior bottomSheetBehavior = this.f32378c;
            if (bottomSheetBehavior != null) {
                bottomSheetBehavior.H(z);
            }
            if (getWindow() == null || (materialBackOrchestrator = this.l) == null) {
                return;
            }
            if (this.g) {
                materialBackOrchestrator.a();
            } else {
                materialBackOrchestrator.b();
            }
        }
    }

    @Override // android.app.Dialog
    public final void setCanceledOnTouchOutside(boolean z) {
        super.setCanceledOnTouchOutside(z);
        if (z && !this.g) {
            this.g = true;
        }
        this.f32381h = z;
        this.f32382i = true;
    }

    @Override // androidx.appcompat.app.AppCompatDialog, androidx.activity.ComponentDialog, android.app.Dialog
    public final void setContentView(View view) {
        super.setContentView(c(view, 0, null));
    }

    @Override // androidx.appcompat.app.AppCompatDialog, androidx.activity.ComponentDialog, android.app.Dialog
    public final void setContentView(int i2) {
        super.setContentView(c(null, i2, null));
    }

    @Override // androidx.appcompat.app.AppCompatDialog, androidx.activity.ComponentDialog, android.app.Dialog
    public final void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(c(view, 0, layoutParams));
    }

    public BottomSheetDialog(Context context) {
        this(context, 0);
        TypedArray typedArrayObtainStyledAttributes = getContext().getTheme().obtainStyledAttributes(new int[]{R.attr.enableEdgeToEdge});
        this.f32384k = typedArrayObtainStyledAttributes.getBoolean(0, false);
        typedArrayObtainStyledAttributes.recycle();
    }
}
