package com.batch.android.j0;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import com.batch.android.messaging.Size2D;

/* JADX INFO: loaded from: classes2.dex */
public class c extends FrameLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Size2D f23500a;

    public c(Context context, Size2D size2D) {
        super(context);
        a(size2D);
    }

    private void a(Size2D size2D) {
        setTargetSize(size2D);
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i2, int i3) {
        if (this.f23500a == null) {
            super.onMeasure(i2, i3);
            return;
        }
        int size = View.MeasureSpec.getSize(i2);
        int size2 = View.MeasureSpec.getSize(i3);
        Size2D size2D = this.f23500a;
        double d = size2D.f23706b;
        double d2 = size2D.f23707c;
        double d3 = (d / d2) * ((double) size2);
        double d4 = size;
        double d5 = (d2 / d) * d4;
        if (d3 > d4) {
            size2 = (int) d5;
        } else {
            size = (int) d3;
        }
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(size, 1073741824), View.MeasureSpec.makeMeasureSpec(size2, 1073741824));
    }

    public void setTargetSize(Size2D size2D) {
        if (size2D != null && (size2D.f23706b <= 1 || size2D.f23707c <= 1)) {
            size2D = null;
        }
        this.f23500a = size2D;
    }

    public c(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public c(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
    }

    public c(Context context, AttributeSet attributeSet, int i2, int i3) {
        super(context, attributeSet, i2, i3);
    }
}
