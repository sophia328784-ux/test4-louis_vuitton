package com.google.android.material.datepicker;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import androidx.core.util.Pair;
import com.vuitton.android.R;
import java.util.Calendar;
import java.util.Collection;
import java.util.Date;
import java.util.Iterator;
import java.util.Locale;

/* JADX INFO: loaded from: classes2.dex */
class MonthAdapter extends BaseAdapter {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final int f32572h = UtcDates.g(null).getMaximum(4);

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final int f32573i = (UtcDates.g(null).getMaximum(7) + UtcDates.g(null).getMaximum(5)) - 1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Month f32574b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final DateSelector f32575c;
    public Collection d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public CalendarStyle f32576e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final CalendarConstraints f32577f;
    public final DayViewDecorator g;

    public MonthAdapter(Month month, DateSelector dateSelector, CalendarConstraints calendarConstraints, DayViewDecorator dayViewDecorator) {
        this.f32574b = month;
        this.f32575c = dateSelector;
        this.f32577f = calendarConstraints;
        this.g = dayViewDecorator;
        this.d = dateSelector.B1();
    }

    public final int a() {
        int firstDayOfWeek = this.f32577f.f32519f;
        Month month = this.f32574b;
        Calendar calendar = month.f32567b;
        int i2 = calendar.get(7);
        if (firstDayOfWeek <= 0) {
            firstDayOfWeek = calendar.getFirstDayOfWeek();
        }
        int i3 = i2 - firstDayOfWeek;
        return i3 < 0 ? i3 + month.f32569e : i3;
    }

    @Override // android.widget.Adapter
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public final Long getItem(int i2) {
        if (i2 < a() || i2 > d()) {
            return null;
        }
        int iA = (i2 - a()) + 1;
        Calendar calendarC = UtcDates.c(this.f32574b.f32567b);
        calendarC.set(5, iA);
        return Long.valueOf(calendarC.getTimeInMillis());
    }

    public final int d() {
        return (a() + this.f32574b.f32570f) - 1;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void e(TextView textView, long j2, int i2) {
        boolean z;
        boolean z2;
        CalendarItemStyle calendarItemStyle;
        boolean z3;
        if (textView == null) {
            return;
        }
        Context context = textView.getContext();
        boolean z4 = UtcDates.f().getTimeInMillis() == j2;
        DateSelector dateSelector = this.f32575c;
        Iterator it = dateSelector.S0().iterator();
        while (true) {
            if (!it.hasNext()) {
                z = false;
                break;
            }
            F f2 = ((Pair) it.next()).f12138a;
            if (f2 != 0 && ((Long) f2).longValue() == j2) {
                z = true;
                break;
            }
        }
        Iterator it2 = dateSelector.S0().iterator();
        while (true) {
            if (!it2.hasNext()) {
                z2 = false;
                break;
            }
            S s = ((Pair) it2.next()).f12139b;
            if (s != 0 && ((Long) s).longValue() == j2) {
                z2 = true;
                break;
            }
        }
        Calendar calendarF = UtcDates.f();
        Calendar calendarG = UtcDates.g(null);
        calendarG.setTimeInMillis(j2);
        String str = calendarF.get(1) == calendarG.get(1) ? UtcDates.b("MMMMEEEEd", Locale.getDefault()).format(new Date(j2)) : UtcDates.b("yMMMMEEEEd", Locale.getDefault()).format(new Date(j2));
        if (z4) {
            str = String.format(context.getString(R.string.mtrl_picker_today_description), str);
        }
        if (z) {
            str = String.format(context.getString(R.string.mtrl_picker_start_date_description), str);
        } else if (z2) {
            str = String.format(context.getString(R.string.mtrl_picker_end_date_description), str);
        }
        textView.setContentDescription(str);
        if (this.f32577f.d.G(j2)) {
            textView.setEnabled(true);
            Iterator it3 = dateSelector.B1().iterator();
            while (true) {
                if (!it3.hasNext()) {
                    z3 = false;
                    break;
                } else {
                    if (UtcDates.a(j2) == UtcDates.a(((Long) it3.next()).longValue())) {
                        z3 = true;
                        break;
                    }
                }
            }
            textView.setSelected(z3);
            if (z3) {
                calendarItemStyle = this.f32576e.f32529b;
            } else {
                boolean z5 = UtcDates.f().getTimeInMillis() == j2;
                CalendarStyle calendarStyle = this.f32576e;
                calendarItemStyle = z5 ? calendarStyle.f32530c : calendarStyle.f32528a;
            }
        } else {
            textView.setEnabled(false);
            calendarItemStyle = this.f32576e.g;
        }
        if (this.g == null || i2 == -1) {
            calendarItemStyle.b(textView);
            return;
        }
        int i3 = this.f32574b.d;
        calendarItemStyle.b(textView);
        textView.setCompoundDrawables(null, null, null, null);
        textView.setContentDescription(str);
    }

    public final void f(MaterialCalendarGridView materialCalendarGridView, long j2) {
        Month monthB = Month.b(j2);
        Month month = this.f32574b;
        if (monthB.equals(month)) {
            Calendar calendarC = UtcDates.c(month.f32567b);
            calendarC.setTimeInMillis(j2);
            int i2 = calendarC.get(5);
            e((TextView) materialCalendarGridView.getChildAt((materialCalendarGridView.a().a() + (i2 - 1)) - materialCalendarGridView.getFirstVisiblePosition()), j2, i2);
        }
    }

    @Override // android.widget.Adapter
    public final int getCount() {
        return f32573i;
    }

    @Override // android.widget.Adapter
    public final long getItemId(int i2) {
        return i2 / this.f32574b.f32569e;
    }

    /* JADX WARN: Code duplicated, block: B:14:0x005d  */
    @Override // android.widget.Adapter
    public final View getView(int i2, View view, ViewGroup viewGroup) {
        int i3;
        Context context = viewGroup.getContext();
        if (this.f32576e == null) {
            this.f32576e = new CalendarStyle(context);
        }
        TextView textView = (TextView) view;
        if (view == null) {
            textView = (TextView) LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.mtrl_calendar_day, viewGroup, false);
        }
        int iA = i2 - a();
        if (iA >= 0) {
            Month month = this.f32574b;
            if (iA >= month.f32570f) {
                textView.setVisibility(8);
                textView.setEnabled(false);
                i3 = -1;
            } else {
                i3 = iA + 1;
                textView.setTag(month);
                textView.setText(String.format(textView.getResources().getConfiguration().locale, "%d", Integer.valueOf(i3)));
                textView.setVisibility(0);
                textView.setEnabled(true);
            }
        } else {
            textView.setVisibility(8);
            textView.setEnabled(false);
            i3 = -1;
        }
        Long item = getItem(i2);
        if (item == null) {
            return textView;
        }
        e(textView, item.longValue(), i3);
        return textView;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public final boolean hasStableIds() {
        return true;
    }
}
