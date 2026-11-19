package com.batch.android.j0;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ScrollView;

/* JADX INFO: loaded from: classes2.dex */
public class e extends ScrollView {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f23526a;

    public e(Context context) {
        super(context);
        this.f23526a = 0;
    }

    @Override // android.widget.ScrollView, android.widget.FrameLayout, android.view.View
    public void onMeasure(int i2, int i3) {
        if (this.f23526a != 0 && View.MeasureSpec.getMode(i3) == Integer.MIN_VALUE) {
            int size = View.MeasureSpec.getSize(i3);
            int i4 = this.f23526a;
            if (size > i4) {
                i3 = View.MeasureSpec.makeMeasureSpec(i4, 1073741824);
            }
        }
        super.onMeasure(i2, i3);
    }

    public void setMaxHeight(int i2) {
        this.f23526a = (int) (i2 * getResources().getDisplayMetrics().density);
    }

    public e(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f23526a = 0;
    }

    public e(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f23526a = 0;
    }

    public e(Context context, AttributeSet attributeSet, int i2, int i3) {
        super(context, attributeSet, i2, i3);
        this.f23526a = 0;
    }
}
