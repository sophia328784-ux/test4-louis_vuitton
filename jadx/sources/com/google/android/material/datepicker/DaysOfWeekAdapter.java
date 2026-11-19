package com.google.android.material.datepicker;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import com.vuitton.android.R;
import java.util.Calendar;
import java.util.Locale;

/* JADX INFO: loaded from: classes2.dex */
class DaysOfWeekAdapter extends BaseAdapter {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Calendar f32545b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f32546c;
    public final int d;

    public DaysOfWeekAdapter() {
        Calendar calendarG = UtcDates.g(null);
        this.f32545b = calendarG;
        this.f32546c = calendarG.getMaximum(7);
        this.d = calendarG.getFirstDayOfWeek();
    }

    @Override // android.widget.Adapter
    public final int getCount() {
        return this.f32546c;
    }

    @Override // android.widget.Adapter
    public final Object getItem(int i2) {
        int i3 = this.f32546c;
        if (i2 >= i3) {
            return null;
        }
        int i4 = i2 + this.d;
        if (i4 > i3) {
            i4 -= i3;
        }
        return Integer.valueOf(i4);
    }

    @Override // android.widget.Adapter
    public final long getItemId(int i2) {
        return 0L;
    }

    @Override // android.widget.Adapter
    public final View getView(int i2, View view, ViewGroup viewGroup) {
        TextView textView = (TextView) view;
        if (view == null) {
            textView = (TextView) LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.mtrl_calendar_day_of_week, viewGroup, false);
        }
        int i3 = i2 + this.d;
        int i4 = this.f32546c;
        if (i3 > i4) {
            i3 -= i4;
        }
        Calendar calendar = this.f32545b;
        calendar.set(7, i3);
        textView.setText(calendar.getDisplayName(7, 4, textView.getResources().getConfiguration().locale));
        textView.setContentDescription(String.format(viewGroup.getContext().getString(R.string.mtrl_picker_day_of_week_column_header), calendar.getDisplayName(7, 2, Locale.getDefault())));
        return textView;
    }

    public DaysOfWeekAdapter(int i2) {
        Calendar calendarG = UtcDates.g(null);
        this.f32545b = calendarG;
        this.f32546c = calendarG.getMaximum(7);
        this.d = i2;
    }
}
