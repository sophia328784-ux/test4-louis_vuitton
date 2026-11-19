package com.batch.android.debug.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.ListAdapter;
import android.widget.ListView;

/* JADX INFO: loaded from: classes.dex */
public class NestedListView extends ListView implements View.OnTouchListener, AbsListView.OnScrollListener {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final int f23052c = 99;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f23053a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private ViewGroup.LayoutParams f23054b;

    public NestedListView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f23053a = -1;
        this.f23054b = new AbsListView.LayoutParams(-2, -2);
        setOnScrollListener(this);
        setOnTouchListener(this);
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.view.View
    public void onMeasure(int i2, int i3) {
        super.onMeasure(i2, i3);
        int mode = View.MeasureSpec.getMode(i3);
        int size = View.MeasureSpec.getSize(i3);
        if (mode != 1073741824) {
            ListAdapter adapter = getAdapter();
            int dividerHeight = 0;
            if (adapter != null && !adapter.isEmpty()) {
                int measuredHeight = 0;
                while (dividerHeight < adapter.getCount() && dividerHeight < f23052c) {
                    View view = adapter.getView(dividerHeight, null, this);
                    if (view instanceof ViewGroup) {
                        view.setLayoutParams(this.f23054b);
                    }
                    view.measure(i2, i3);
                    measuredHeight += view.getMeasuredHeight();
                    dividerHeight++;
                }
                dividerHeight = (getDividerHeight() * dividerHeight) + measuredHeight;
            }
            if (mode != Integer.MIN_VALUE || dividerHeight <= size) {
                size = dividerHeight;
            }
        } else {
            size = getMeasuredHeight();
        }
        setMeasuredDimension(getMeasuredWidth(), size);
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScroll(AbsListView absListView, int i2, int i3, int i4) {
        if (getAdapter() == null || getAdapter().getCount() <= f23052c || this.f23053a != 2) {
            return;
        }
        scrollBy(0, -1);
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScrollStateChanged(AbsListView absListView, int i2) {
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        if (getAdapter() != null && getAdapter().getCount() > f23052c && this.f23053a == 2) {
            scrollBy(0, 1);
        }
        return false;
    }
}
