package com.google.android.material.datepicker;

import android.R;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.View;
import android.widget.Adapter;
import android.widget.GridView;
import android.widget.ListAdapter;
import androidx.core.util.Pair;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import defpackage.d20;
import java.util.Calendar;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
final class MaterialCalendarGridView extends GridView {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Calendar f32559b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f32560c;

    /* JADX INFO: renamed from: com.google.android.material.datepicker.MaterialCalendarGridView$1, reason: invalid class name */
    public class AnonymousClass1 extends AccessibilityDelegateCompat {
        @Override // androidx.core.view.AccessibilityDelegateCompat
        public final void d(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            this.f12143b.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat.f12267a);
            accessibilityNodeInfoCompat.j(null);
        }
    }

    public MaterialCalendarGridView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f32559b = UtcDates.g(null);
        if (MaterialDatePicker.L(R.attr.windowFullscreen, getContext())) {
            setNextFocusLeftId(com.vuitton.android.R.id.cancel_button);
            setNextFocusRightId(com.vuitton.android.R.id.confirm_button);
        }
        this.f32560c = MaterialDatePicker.L(com.vuitton.android.R.attr.nestedScrollable, getContext());
        ViewCompat.t(this, new AnonymousClass1());
    }

    public final MonthAdapter a() {
        return (MonthAdapter) super.getAdapter();
    }

    public final View b(int i2) {
        return getChildAt(i2 - getFirstVisiblePosition());
    }

    @Override // android.widget.GridView, android.widget.AdapterView
    public final Adapter getAdapter() {
        return (MonthAdapter) super.getAdapter();
    }

    @Override // android.widget.AbsListView, android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        ((MonthAdapter) super.getAdapter()).notifyDataSetChanged();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        int iA;
        int width;
        int iA2;
        int width2;
        int i2;
        int width3;
        MaterialCalendarGridView materialCalendarGridView = this;
        super.onDraw(canvas);
        MonthAdapter monthAdapter = (MonthAdapter) super.getAdapter();
        DateSelector dateSelector = monthAdapter.f32575c;
        Month month = monthAdapter.f32574b;
        CalendarStyle calendarStyle = monthAdapter.f32576e;
        int iMax = Math.max(monthAdapter.a(), materialCalendarGridView.getFirstVisiblePosition());
        int iMin = Math.min(monthAdapter.d(), materialCalendarGridView.getLastVisiblePosition());
        Long item = monthAdapter.getItem(iMax);
        Long item2 = monthAdapter.getItem(iMin);
        Iterator it = dateSelector.S0().iterator();
        while (it.hasNext()) {
            Pair pair = (Pair) it.next();
            F f2 = pair.f12138a;
            if (f2 == 0) {
                materialCalendarGridView = this;
            } else if (pair.f12139b != 0) {
                Long l = (Long) f2;
                long jLongValue = l.longValue();
                Long l2 = (Long) pair.f12139b;
                long jLongValue2 = l2.longValue();
                if (item == null || item2 == null || l.longValue() > item2.longValue() || l2.longValue() < item.longValue()) {
                    materialCalendarGridView = this;
                    month = month;
                    it = it;
                    monthAdapter = monthAdapter;
                } else {
                    boolean z = materialCalendarGridView.getLayoutDirection() == 1;
                    long jLongValue3 = item.longValue();
                    Calendar calendar = materialCalendarGridView.f32559b;
                    if (jLongValue < jLongValue3) {
                        if (iMax % month.f32569e == 0) {
                            width = 0;
                        } else {
                            width = !z ? materialCalendarGridView.b(iMax - 1).getRight() : materialCalendarGridView.b(iMax - 1).getLeft();
                        }
                        iA = iMax;
                    } else {
                        calendar.setTimeInMillis(jLongValue);
                        iA = monthAdapter.a() + (calendar.get(5) - 1);
                        View viewB = materialCalendarGridView.b(iA);
                        width = (viewB.getWidth() / 2) + viewB.getLeft();
                    }
                    if (jLongValue2 > item2.longValue()) {
                        if ((iMin + 1) % month.f32569e == 0) {
                            width2 = materialCalendarGridView.getWidth();
                        } else {
                            width2 = !z ? materialCalendarGridView.b(iMin).getRight() : materialCalendarGridView.b(iMin).getLeft();
                        }
                        iA2 = iMin;
                    } else {
                        calendar.setTimeInMillis(jLongValue2);
                        iA2 = monthAdapter.a() + (calendar.get(5) - 1);
                        View viewB2 = materialCalendarGridView.b(iA2);
                        width2 = (viewB2.getWidth() / 2) + viewB2.getLeft();
                    }
                    int itemId = (int) monthAdapter.getItemId(iA);
                    Iterator it2 = it;
                    Month month2 = month;
                    int itemId2 = (int) monthAdapter.getItemId(iA2);
                    while (itemId <= itemId2) {
                        int numColumns = materialCalendarGridView.getNumColumns() * itemId;
                        MonthAdapter monthAdapter2 = monthAdapter;
                        int numColumns2 = (materialCalendarGridView.getNumColumns() + numColumns) - 1;
                        View viewB3 = materialCalendarGridView.b(numColumns);
                        int top = viewB3.getTop() + calendarStyle.f32528a.f32523a.top;
                        int i3 = itemId2;
                        int bottom = viewB3.getBottom() - calendarStyle.f32528a.f32523a.bottom;
                        if (z) {
                            int i4 = iA2 > numColumns2 ? 0 : width2;
                            int width4 = numColumns > iA ? getWidth() : width;
                            i2 = i4;
                            width3 = width4;
                        } else {
                            i2 = numColumns > iA ? 0 : width;
                            width3 = iA2 > numColumns2 ? getWidth() : width2;
                        }
                        canvas.drawRect(i2, top, width3, bottom, calendarStyle.f32533h);
                        itemId++;
                        materialCalendarGridView = this;
                        monthAdapter = monthAdapter2;
                        itemId2 = i3;
                    }
                    materialCalendarGridView = this;
                    month = month2;
                    it = it2;
                }
            }
        }
    }

    @Override // android.widget.GridView, android.widget.AbsListView, android.view.View
    public final void onFocusChanged(boolean z, int i2, Rect rect) {
        if (!z) {
            super.onFocusChanged(false, i2, rect);
            return;
        }
        if (i2 == 33) {
            setSelection(((MonthAdapter) super.getAdapter()).d());
        } else if (i2 == 130) {
            setSelection(((MonthAdapter) super.getAdapter()).a());
        } else {
            super.onFocusChanged(true, i2, rect);
        }
    }

    @Override // android.widget.GridView, android.widget.AbsListView, android.view.View, android.view.KeyEvent.Callback
    public final boolean onKeyDown(int i2, KeyEvent keyEvent) {
        if (!super.onKeyDown(i2, keyEvent)) {
            return false;
        }
        int selectedItemPosition = getSelectedItemPosition();
        if (selectedItemPosition == -1 || (selectedItemPosition >= ((MonthAdapter) super.getAdapter()).a() && selectedItemPosition <= ((MonthAdapter) super.getAdapter()).d())) {
            return true;
        }
        if (19 != i2) {
            return false;
        }
        setSelection(((MonthAdapter) super.getAdapter()).a());
        return true;
    }

    @Override // android.widget.GridView, android.widget.AbsListView, android.view.View
    public final void onMeasure(int i2, int i3) {
        if (!this.f32560c) {
            super.onMeasure(i2, i3);
            return;
        }
        super.onMeasure(i2, View.MeasureSpec.makeMeasureSpec(16777215, Integer.MIN_VALUE));
        getLayoutParams().height = getMeasuredHeight();
    }

    @Override // android.widget.AdapterView
    public final void setAdapter(ListAdapter listAdapter) {
        if (listAdapter instanceof MonthAdapter) {
            super.setAdapter(listAdapter);
        } else {
            d20.j("%1$s must have its Adapter set to a %2$s", new Object[]{MaterialCalendarGridView.class.getCanonicalName(), MonthAdapter.class.getCanonicalName()});
        }
    }

    @Override // android.widget.GridView, android.widget.AdapterView
    public final void setSelection(int i2) {
        if (i2 < ((MonthAdapter) super.getAdapter()).a()) {
            super.setSelection(((MonthAdapter) super.getAdapter()).a());
        } else {
            super.setSelection(i2);
        }
    }

    @Override // android.widget.GridView, android.widget.AdapterView
    public final ListAdapter getAdapter() {
        return (MonthAdapter) super.getAdapter();
    }

    public MaterialCalendarGridView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public MaterialCalendarGridView(Context context) {
        this(context, null);
    }
}
