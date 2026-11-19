package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import defpackage.v7;
import java.util.HashMap;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
public class Constraints extends ViewGroup {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public ConstraintSet f11814b;

    public Constraints(Context context) {
        super(context);
        super.setVisibility(8);
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams(-2, -2);
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    public ConstraintSet getConstraintSet() {
        if (this.f11814b == null) {
            this.f11814b = new ConstraintSet();
        }
        ConstraintSet constraintSet = this.f11814b;
        constraintSet.getClass();
        int childCount = getChildCount();
        HashMap map = constraintSet.g;
        map.clear();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
            int id = childAt.getId();
            if (constraintSet.f11767f && id == -1) {
                v7.h("All children of ConstraintLayout must have ids to use ConstraintSet");
                return null;
            }
            if (!map.containsKey(Integer.valueOf(id))) {
                map.put(Integer.valueOf(id), new ConstraintSet.Constraint());
            }
            ConstraintSet.Constraint constraint = (ConstraintSet.Constraint) map.get(Integer.valueOf(id));
            if (constraint != null) {
                if (childAt instanceof ConstraintHelper) {
                    ConstraintHelper constraintHelper = (ConstraintHelper) childAt;
                    ConstraintSet.Layout layout = constraint.f11771e;
                    constraint.e(id, layoutParams);
                    if (constraintHelper instanceof Barrier) {
                        layout.i0 = 1;
                        Barrier barrier = (Barrier) constraintHelper;
                        layout.g0 = barrier.getType();
                        layout.j0 = barrier.getReferencedIds();
                        layout.h0 = barrier.getMargin();
                    }
                }
                constraint.e(id, layoutParams);
            }
        }
        return this.f11814b;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i2, int i3, int i4, int i5) {
    }

    public Constraints(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        super.setVisibility(8);
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new ConstraintLayout.LayoutParams(layoutParams);
    }

    public Constraints(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        super.setVisibility(8);
    }

    public static class LayoutParams extends ConstraintLayout.LayoutParams {
        public final float A0;
        public final float B0;
        public final float C0;
        public final float D0;
        public final float r0;
        public final boolean s0;
        public final float t0;
        public final float u0;
        public final float v0;
        public final float w0;
        public final float x0;
        public final float y0;
        public final float z0;

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.r0 = 1.0f;
            this.s0 = false;
            this.t0 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.u0 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.v0 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.w0 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.x0 = 1.0f;
            this.y0 = 1.0f;
            this.z0 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.A0 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.B0 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.C0 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.D0 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.f11821e);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i2 = 0; i2 < indexCount; i2++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i2);
                if (index == 15) {
                    this.r0 = typedArrayObtainStyledAttributes.getFloat(index, this.r0);
                } else if (index == 28) {
                    this.t0 = typedArrayObtainStyledAttributes.getFloat(index, this.t0);
                    this.s0 = true;
                } else if (index == 23) {
                    this.v0 = typedArrayObtainStyledAttributes.getFloat(index, this.v0);
                } else if (index == 24) {
                    this.w0 = typedArrayObtainStyledAttributes.getFloat(index, this.w0);
                } else if (index == 22) {
                    this.u0 = typedArrayObtainStyledAttributes.getFloat(index, this.u0);
                } else if (index == 20) {
                    this.x0 = typedArrayObtainStyledAttributes.getFloat(index, this.x0);
                } else if (index == 21) {
                    this.y0 = typedArrayObtainStyledAttributes.getFloat(index, this.y0);
                } else if (index == 16) {
                    this.z0 = typedArrayObtainStyledAttributes.getFloat(index, this.z0);
                } else if (index == 17) {
                    this.A0 = typedArrayObtainStyledAttributes.getFloat(index, this.A0);
                } else if (index == 18) {
                    this.B0 = typedArrayObtainStyledAttributes.getFloat(index, this.B0);
                } else if (index == 19) {
                    this.C0 = typedArrayObtainStyledAttributes.getFloat(index, this.C0);
                } else if (index == 27) {
                    this.D0 = typedArrayObtainStyledAttributes.getFloat(index, this.D0);
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }

        public LayoutParams(LayoutParams layoutParams) {
            super(layoutParams);
            this.r0 = 1.0f;
            this.s0 = false;
            this.t0 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.u0 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.v0 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.w0 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.x0 = 1.0f;
            this.y0 = 1.0f;
            this.z0 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.A0 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.B0 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.C0 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.D0 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        }

        public LayoutParams(int i2, int i3) {
            super(i2, i3);
            this.r0 = 1.0f;
            this.s0 = false;
            this.t0 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.u0 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.v0 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.w0 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.x0 = 1.0f;
            this.y0 = 1.0f;
            this.z0 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.A0 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.B0 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.C0 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.D0 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        }
    }
}
