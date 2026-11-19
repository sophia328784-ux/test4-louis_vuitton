package androidx.constraintlayout.motion.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintHelper;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.R$styleable;

/* JADX INFO: loaded from: classes.dex */
public class MotionHelper extends ConstraintHelper implements MotionHelperInterface {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f11623j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f11624k;
    public float l;
    public View[] m;

    public MotionHelper(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f11623j = false;
        this.f11624k = false;
        h(attributeSet);
    }

    public float getProgress() {
        return this.l;
    }

    @Override // androidx.constraintlayout.widget.ConstraintHelper
    public final void h(AttributeSet attributeSet) {
        super.h(attributeSet);
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R$styleable.n);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i2 = 0; i2 < indexCount; i2++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i2);
                if (index == 1) {
                    this.f11623j = typedArrayObtainStyledAttributes.getBoolean(index, this.f11623j);
                } else if (index == 0) {
                    this.f11624k = typedArrayObtainStyledAttributes.getBoolean(index, this.f11624k);
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    public void setProgress(float f2) {
        this.l = f2;
        int i2 = 0;
        if (this.f11718c <= 0) {
            ViewGroup viewGroup = (ViewGroup) getParent();
            int childCount = viewGroup.getChildCount();
            while (i2 < childCount) {
                viewGroup.getChildAt(i2);
                i2++;
            }
            return;
        }
        ConstraintLayout constraintLayout = (ConstraintLayout) getParent();
        View[] viewArr = this.f11721h;
        if (viewArr == null || viewArr.length != this.f11718c) {
            this.f11721h = new View[this.f11718c];
        }
        for (int i3 = 0; i3 < this.f11718c; i3++) {
            this.f11721h[i3] = constraintLayout.c(this.f11717b[i3]);
        }
        this.m = this.f11721h;
        while (i2 < this.f11718c) {
            View view = this.m[i2];
            i2++;
        }
    }

    public MotionHelper(Context context) {
        super(context);
        this.f11623j = false;
        this.f11624k = false;
    }

    public MotionHelper(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f11623j = false;
        this.f11624k = false;
        h(attributeSet);
    }
}
