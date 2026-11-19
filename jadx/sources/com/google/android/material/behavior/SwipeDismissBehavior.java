package com.google.android.material.behavior;

import android.view.MotionEvent;
import android.view.View;
import android.view.ViewParent;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.core.view.accessibility.AccessibilityViewCommand;
import androidx.customview.widget.ViewDragHelper;
import java.util.WeakHashMap;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes2.dex */
public class SwipeDismissBehavior<V extends View> extends CoordinatorLayout.Behavior<V> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public ViewDragHelper f32328b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public OnDismissListener f32329c;
    public boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f32330e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f32331f = 2;
    public final float g = 0.5f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public float f32332h = Call.Parameters.DEFAULT_CAMERA_ZOOM;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public float f32333i = 0.5f;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final ViewDragHelper.Callback f32334j = new ViewDragHelper.Callback() { // from class: com.google.android.material.behavior.SwipeDismissBehavior.1

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f32335a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f32336b = -1;

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public final int a(int i2, View view) {
            int width;
            int width2;
            boolean z = view.getLayoutDirection() == 1;
            int i3 = SwipeDismissBehavior.this.f32331f;
            if (i3 == 0) {
                width = this.f32335a;
                if (z) {
                    width -= view.getWidth();
                    width2 = this.f32335a;
                } else {
                    width2 = view.getWidth() + width;
                }
            } else {
                int i4 = this.f32335a;
                if (i3 != 1) {
                    width = i4 - view.getWidth();
                    width2 = this.f32335a + view.getWidth();
                } else if (z) {
                    width2 = view.getWidth() + i4;
                    width = i4;
                } else {
                    width = i4 - view.getWidth();
                    width2 = this.f32335a;
                }
            }
            return Math.min(Math.max(width, i2), width2);
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public final int b(int i2, View view) {
            return view.getTop();
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public final int c(View view) {
            return view.getWidth();
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public final void e(int i2, View view) {
            this.f32336b = i2;
            this.f32335a = view.getLeft();
            ViewParent parent = view.getParent();
            if (parent != null) {
                SwipeDismissBehavior swipeDismissBehavior = SwipeDismissBehavior.this;
                swipeDismissBehavior.f32330e = true;
                parent.requestDisallowInterceptTouchEvent(true);
                swipeDismissBehavior.f32330e = false;
            }
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public final void f(int i2) {
            OnDismissListener onDismissListener = SwipeDismissBehavior.this.f32329c;
            if (onDismissListener != null) {
                onDismissListener.b(i2);
            }
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public final void g(View view, int i2, int i3) {
            float width = view.getWidth();
            SwipeDismissBehavior swipeDismissBehavior = SwipeDismissBehavior.this;
            float f2 = width * swipeDismissBehavior.f32332h;
            float width2 = view.getWidth() * swipeDismissBehavior.f32333i;
            float fAbs = Math.abs(i2 - this.f32335a);
            if (fAbs <= f2) {
                view.setAlpha(1.0f);
            } else if (fAbs >= width2) {
                view.setAlpha(Call.Parameters.DEFAULT_CAMERA_ZOOM);
            } else {
                view.setAlpha(Math.min(Math.max(Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f - ((fAbs - f2) / (width2 - f2))), 1.0f));
            }
        }

        /* JADX WARN: Code duplicated, block: B:27:0x0050  */
        /* JADX WARN: Code duplicated, block: B:29:0x0054  */
        /* JADX WARN: Code duplicated, block: B:32:0x005d  */
        /* JADX WARN: Code duplicated, block: B:33:0x005f  */
        /* JADX WARN: Code duplicated, block: B:35:0x0065  */
        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public final void h(View view, float f2, float f3) {
            int i2;
            int left;
            int i3;
            OnDismissListener onDismissListener;
            this.f32336b = -1;
            int width = view.getWidth();
            boolean z = false;
            SwipeDismissBehavior swipeDismissBehavior = SwipeDismissBehavior.this;
            if (f2 != Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                boolean z2 = view.getLayoutDirection() == 1;
                int i4 = swipeDismissBehavior.f32331f;
                if (i4 != 2 && (i4 != 0 ? i4 != 1 || (!z2 ? f2 < Call.Parameters.DEFAULT_CAMERA_ZOOM : f2 > Call.Parameters.DEFAULT_CAMERA_ZOOM) : !z2 ? f2 > Call.Parameters.DEFAULT_CAMERA_ZOOM : f2 < Call.Parameters.DEFAULT_CAMERA_ZOOM)) {
                    i2 = this.f32335a;
                } else {
                    if (f2 >= Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                        left = view.getLeft();
                        i3 = this.f32335a;
                        if (left < i3) {
                            i2 = this.f32335a - width;
                        } else {
                            i2 = i3 + width;
                        }
                    } else {
                        i2 = this.f32335a - width;
                    }
                    z = true;
                }
            } else {
                if (Math.abs(view.getLeft() - this.f32335a) >= Math.round(view.getWidth() * swipeDismissBehavior.g)) {
                    if (f2 >= Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                        left = view.getLeft();
                        i3 = this.f32335a;
                        if (left < i3) {
                            i2 = this.f32335a - width;
                        } else {
                            i2 = i3 + width;
                        }
                    } else {
                        i2 = this.f32335a - width;
                    }
                    z = true;
                } else {
                    i2 = this.f32335a;
                }
            }
            if (swipeDismissBehavior.f32328b.n(i2, view.getTop())) {
                view.postOnAnimation(new SettleRunnable(view, z));
            } else {
                if (!z || (onDismissListener = swipeDismissBehavior.f32329c) == null) {
                    return;
                }
                onDismissListener.a(view);
            }
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public final boolean i(int i2, View view) {
            int i3 = this.f32336b;
            return (i3 == -1 || i3 == i2) && SwipeDismissBehavior.this.w(view);
        }
    };

    public interface OnDismissListener {
        void a(View view);

        void b(int i2);
    }

    public class SettleRunnable implements Runnable {
        private final boolean dismiss;
        private final View view;

        public SettleRunnable(View view, boolean z) {
            this.view = view;
            this.dismiss = z;
        }

        @Override // java.lang.Runnable
        public void run() {
            OnDismissListener onDismissListener;
            ViewDragHelper viewDragHelper = SwipeDismissBehavior.this.f32328b;
            if (viewDragHelper != null && viewDragHelper.f()) {
                this.view.postOnAnimation(this);
            } else {
                if (!this.dismiss || (onDismissListener = SwipeDismissBehavior.this.f32329c) == null) {
                    return;
                }
                onDismissListener.a(this.view);
            }
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean k(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
        boolean zL = this.d;
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            zL = coordinatorLayout.l(view, (int) motionEvent.getX(), (int) motionEvent.getY());
            this.d = zL;
        } else if (actionMasked == 1 || actionMasked == 3) {
            this.d = false;
        }
        if (zL) {
            if (this.f32328b == null) {
                this.f32328b = new ViewDragHelper(coordinatorLayout.getContext(), coordinatorLayout, this.f32334j);
            }
            if (!this.f32330e && this.f32328b.o(motionEvent)) {
                return true;
            }
        }
        return false;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final boolean l(CoordinatorLayout coordinatorLayout, View view, int i2) {
        if (view.getImportantForAccessibility() == 0) {
            view.setImportantForAccessibility(1);
            ViewCompat.q(1048576, view);
            ViewCompat.n(0, view);
            if (w(view)) {
                ViewCompat.r(view, AccessibilityNodeInfoCompat.AccessibilityActionCompat.l, new AccessibilityViewCommand() { // from class: com.google.android.material.behavior.SwipeDismissBehavior.2
                    @Override // androidx.core.view.accessibility.AccessibilityViewCommand
                    public final boolean a(View view2) {
                        SwipeDismissBehavior swipeDismissBehavior = SwipeDismissBehavior.this;
                        if (!swipeDismissBehavior.w(view2)) {
                            return false;
                        }
                        boolean z = view2.getLayoutDirection() == 1;
                        int i3 = swipeDismissBehavior.f32331f;
                        int width = (!(i3 == 0 && z) && (i3 != 1 || z)) ? view2.getWidth() : -view2.getWidth();
                        WeakHashMap weakHashMap = ViewCompat.f12200a;
                        view2.offsetLeftAndRight(width);
                        view2.setAlpha(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                        OnDismissListener onDismissListener = swipeDismissBehavior.f32329c;
                        if (onDismissListener != null) {
                            onDismissListener.a(view2);
                        }
                        return true;
                    }
                });
            }
        }
        return false;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final boolean v(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
        if (this.f32328b == null) {
            return false;
        }
        if (this.f32330e && motionEvent.getActionMasked() == 3) {
            return true;
        }
        this.f32328b.i(motionEvent);
        return true;
    }

    public boolean w(View view) {
        return true;
    }
}
