package com.google.android.material.datepicker;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.dynatrace.android.callback.Callback;
import com.google.android.material.button.MaterialButton;
import com.vuitton.android.R;
import java.util.Calendar;
import java.util.Iterator;
import java.util.Locale;

/* JADX INFO: loaded from: classes2.dex */
class YearGridAdapter extends RecyclerView.Adapter<ViewHolder> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final MaterialCalendar f32598b;

    public static class ViewHolder extends RecyclerView.ViewHolder {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final TextView f32601b;

        public ViewHolder(TextView textView) {
            super(textView);
            this.f32601b = textView;
        }
    }

    public YearGridAdapter(MaterialCalendar materialCalendar) {
        this.f32598b = materialCalendar;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final int getItemCount() {
        return this.f32598b.D.g;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i2) {
        ViewHolder viewHolder2 = (ViewHolder) viewHolder;
        MaterialCalendar materialCalendar = this.f32598b;
        final int i3 = materialCalendar.D.f32516b.d + i2;
        viewHolder2.f32601b.setText(String.format(Locale.getDefault(), "%d", Integer.valueOf(i3)));
        TextView textView = viewHolder2.f32601b;
        Context context = textView.getContext();
        textView.setContentDescription(UtcDates.f().get(1) == i3 ? String.format(context.getString(R.string.mtrl_picker_navigate_to_current_year_description), Integer.valueOf(i3)) : String.format(context.getString(R.string.mtrl_picker_navigate_to_year_description), Integer.valueOf(i3)));
        CalendarStyle calendarStyle = materialCalendar.H;
        Calendar calendarF = UtcDates.f();
        CalendarItemStyle calendarItemStyle = calendarF.get(1) == i3 ? calendarStyle.f32532f : calendarStyle.d;
        Iterator it = materialCalendar.C.B1().iterator();
        while (it.hasNext()) {
            calendarF.setTimeInMillis(((Long) it.next()).longValue());
            if (calendarF.get(1) == i3) {
                calendarItemStyle = calendarStyle.f32531e;
            }
        }
        calendarItemStyle.b(textView);
        textView.setSelected(calendarItemStyle == calendarStyle.f32531e);
        textView.setOnClickListener(new View.OnClickListener() { // from class: com.google.android.material.datepicker.YearGridAdapter.1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MaterialCalendar materialCalendar2 = YearGridAdapter.this.f32598b;
                Callback.n(view);
                try {
                    Month monthA = Month.a(i3, materialCalendar2.F.f32568c);
                    Calendar calendar = monthA.f32567b;
                    CalendarConstraints calendarConstraints = materialCalendar2.D;
                    Month month = calendarConstraints.f32517c;
                    Month month2 = calendarConstraints.f32516b;
                    if (calendar.compareTo(month2.f32567b) < 0) {
                        monthA = month2;
                    } else if (calendar.compareTo(month.f32567b) > 0) {
                        monthA = month;
                    }
                    materialCalendar2.q(monthA);
                    materialCalendar2.r(MaterialCalendar.CalendarSelector.DAY);
                    MaterialButton materialButton = materialCalendar2.O;
                    if (materialButton != null) {
                        materialButton.sendAccessibilityEvent(8);
                    }
                } finally {
                    Callback.o();
                }
            }
        });
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i2) {
        return new ViewHolder((TextView) LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.mtrl_calendar_year, viewGroup, false));
    }
}
