package com.google.android.material.datepicker;

import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.TextView;
import androidx.core.view.ViewCompat;
import androidx.recyclerview.widget.RecyclerView;
import com.dynatrace.android.callback.Callback;
import com.vuitton.android.R;
import defpackage.md;
import java.util.Calendar;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
class MonthsPagerAdapter extends RecyclerView.Adapter<ViewHolder> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final CalendarConstraints f32578b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final DateSelector f32579c;
    public final DayViewDecorator d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final MaterialCalendar.AnonymousClass3 f32580e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f32581f;

    public static class ViewHolder extends RecyclerView.ViewHolder {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final TextView f32584b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final MaterialCalendarGridView f32585c;

        public ViewHolder(LinearLayout linearLayout, boolean z) {
            super(linearLayout);
            TextView textView = (TextView) linearLayout.findViewById(R.id.month_title);
            this.f32584b = textView;
            ViewCompat.u(textView);
            this.f32585c = (MaterialCalendarGridView) linearLayout.findViewById(R.id.month_grid);
            if (z) {
                return;
            }
            textView.setVisibility(8);
        }
    }

    public MonthsPagerAdapter(ContextThemeWrapper contextThemeWrapper, DateSelector dateSelector, CalendarConstraints calendarConstraints, DayViewDecorator dayViewDecorator, MaterialCalendar.AnonymousClass3 anonymousClass3) {
        Month month = calendarConstraints.f32516b;
        Month month2 = calendarConstraints.f32517c;
        Month month3 = calendarConstraints.f32518e;
        if (month.f32567b.compareTo(month3.f32567b) > 0) {
            md.n("firstPage cannot be after currentPage");
            throw null;
        }
        if (month3.f32567b.compareTo(month2.f32567b) > 0) {
            md.n("currentPage cannot be after lastPage");
            throw null;
        }
        this.f32581f = (contextThemeWrapper.getResources().getDimensionPixelSize(R.dimen.mtrl_calendar_day_height) * MonthAdapter.f32572h) + (MaterialDatePicker.L(android.R.attr.windowFullscreen, contextThemeWrapper) ? contextThemeWrapper.getResources().getDimensionPixelSize(R.dimen.mtrl_calendar_day_height) : 0);
        this.f32578b = calendarConstraints;
        this.f32579c = dateSelector;
        this.d = dayViewDecorator;
        this.f32580e = anonymousClass3;
        setHasStableIds(true);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final int getItemCount() {
        return this.f32578b.f32520h;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final long getItemId(int i2) {
        Calendar calendarC = UtcDates.c(this.f32578b.f32516b.f32567b);
        calendarC.add(2, i2);
        return new Month(calendarC).f32567b.getTimeInMillis();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i2) {
        ViewHolder viewHolder2 = (ViewHolder) viewHolder;
        CalendarConstraints calendarConstraints = this.f32578b;
        Calendar calendarC = UtcDates.c(calendarConstraints.f32516b.f32567b);
        calendarC.add(2, i2);
        Month month = new Month(calendarC);
        viewHolder2.f32584b.setText(month.c());
        final MaterialCalendarGridView materialCalendarGridView = (MaterialCalendarGridView) viewHolder2.f32585c.findViewById(R.id.month_grid);
        if (materialCalendarGridView.a() == null || !month.equals(materialCalendarGridView.a().f32574b)) {
            MonthAdapter monthAdapter = new MonthAdapter(month, this.f32579c, calendarConstraints, this.d);
            materialCalendarGridView.setNumColumns(month.f32569e);
            materialCalendarGridView.setAdapter((ListAdapter) monthAdapter);
        } else {
            materialCalendarGridView.invalidate();
            MonthAdapter monthAdapterA = materialCalendarGridView.a();
            DateSelector dateSelector = monthAdapterA.f32575c;
            Iterator it = monthAdapterA.d.iterator();
            while (it.hasNext()) {
                monthAdapterA.f(materialCalendarGridView, ((Long) it.next()).longValue());
            }
            if (dateSelector != null) {
                Iterator it2 = dateSelector.B1().iterator();
                while (it2.hasNext()) {
                    monthAdapterA.f(materialCalendarGridView, ((Long) it2.next()).longValue());
                }
                monthAdapterA.d = dateSelector.B1();
            }
        }
        materialCalendarGridView.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: com.google.android.material.datepicker.MonthsPagerAdapter.1
            @Override // android.widget.AdapterView.OnItemClickListener
            public final void onItemClick(AdapterView adapterView, View view, int i3, long j2) {
                MaterialCalendarGridView materialCalendarGridView2 = materialCalendarGridView;
                Callback.q(view);
                try {
                    MonthAdapter monthAdapterA2 = materialCalendarGridView2.a();
                    if (i3 >= monthAdapterA2.a() && i3 <= monthAdapterA2.d()) {
                        MonthsPagerAdapter.this.f32580e.a(materialCalendarGridView2.a().getItem(i3).longValue());
                    }
                } finally {
                    Callback.r();
                }
            }
        });
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i2) {
        LinearLayout linearLayout = (LinearLayout) LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.mtrl_calendar_month_labeled, viewGroup, false);
        if (!MaterialDatePicker.L(android.R.attr.windowFullscreen, viewGroup.getContext())) {
            return new ViewHolder(linearLayout, false);
        }
        linearLayout.setLayoutParams(new RecyclerView.LayoutParams(-1, this.f32581f));
        return new ViewHolder(linearLayout, true);
    }
}
