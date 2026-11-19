package com.google.android.material.datepicker;

import android.R;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.os.Bundle;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityManager;
import android.widget.GridView;
import android.widget.ListAdapter;
import androidx.core.util.Pair;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.PagerSnapHelper;
import androidx.recyclerview.widget.RecyclerView;
import com.dynatrace.android.callback.Callback;
import com.google.android.material.button.MaterialButton;
import java.util.Calendar;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
public final class MaterialCalendar<S> extends PickerFragment<S> {
    public int B;
    public DateSelector C;
    public CalendarConstraints D;
    public DayViewDecorator E;
    public Month F;
    public CalendarSelector G;
    public CalendarStyle H;
    public RecyclerView I;
    public RecyclerView J;
    public View K;
    public View L;
    public View M;
    public View N;
    public MaterialButton O;
    public AccessibilityManager P;

    /* JADX INFO: renamed from: com.google.android.material.datepicker.MaterialCalendar$1, reason: invalid class name */
    class AnonymousClass1 extends AccessibilityDelegateCompat {
        @Override // androidx.core.view.AccessibilityDelegateCompat
        public final void d(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            this.f12143b.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat.f12267a);
            accessibilityNodeInfoCompat.j(null);
        }
    }

    /* JADX INFO: renamed from: com.google.android.material.datepicker.MaterialCalendar$3, reason: invalid class name */
    class AnonymousClass3 implements OnDayClickListener {
        public AnonymousClass3() {
        }

        public final void a(long j2) {
            MaterialCalendar materialCalendar = MaterialCalendar.this;
            if (materialCalendar.D.d.G(j2)) {
                materialCalendar.C.P1(j2);
                Iterator it = materialCalendar.A.iterator();
                while (it.hasNext()) {
                    ((OnSelectionChangedListener) it.next()).b(materialCalendar.C.H1());
                }
                materialCalendar.J.getAdapter().notifyDataSetChanged();
                RecyclerView recyclerView = materialCalendar.I;
                if (recyclerView != null) {
                    recyclerView.getAdapter().notifyDataSetChanged();
                }
            }
        }
    }

    /* JADX INFO: renamed from: com.google.android.material.datepicker.MaterialCalendar$4, reason: invalid class name */
    class AnonymousClass4 extends AccessibilityDelegateCompat {
        @Override // androidx.core.view.AccessibilityDelegateCompat
        public final void d(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            this.f12143b.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat.f12267a);
            accessibilityNodeInfoCompat.m(false);
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class CalendarSelector {
        private static final /* synthetic */ CalendarSelector[] $VALUES;
        public static final CalendarSelector DAY;
        public static final CalendarSelector YEAR;

        static {
            CalendarSelector calendarSelector = new CalendarSelector("DAY", 0);
            DAY = calendarSelector;
            CalendarSelector calendarSelector2 = new CalendarSelector("YEAR", 1);
            YEAR = calendarSelector2;
            $VALUES = new CalendarSelector[]{calendarSelector, calendarSelector2};
        }

        public static CalendarSelector valueOf(String str) {
            return (CalendarSelector) Enum.valueOf(CalendarSelector.class, str);
        }

        public static CalendarSelector[] values() {
            return (CalendarSelector[]) $VALUES.clone();
        }
    }

    public interface OnDayClickListener {
    }

    @Override // androidx.fragment.app.Fragment
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle == null) {
            bundle = getArguments();
        }
        this.B = bundle.getInt("THEME_RES_ID_KEY");
        this.C = (DateSelector) bundle.getParcelable("GRID_SELECTOR_KEY");
        this.D = (CalendarConstraints) bundle.getParcelable("CALENDAR_CONSTRAINTS_KEY");
        this.E = (DayViewDecorator) bundle.getParcelable("DAY_VIEW_DECORATOR_KEY");
        this.F = (Month) bundle.getParcelable("CURRENT_MONTH_KEY");
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        int i2;
        final int i3;
        ContextThemeWrapper contextThemeWrapper = new ContextThemeWrapper(getContext(), this.B);
        this.H = new CalendarStyle(contextThemeWrapper);
        LayoutInflater layoutInflaterCloneInContext = layoutInflater.cloneInContext(contextThemeWrapper);
        this.P = (AccessibilityManager) requireContext().getSystemService("accessibility");
        Month month = this.D.f32516b;
        if (MaterialDatePicker.L(R.attr.windowFullscreen, contextThemeWrapper)) {
            i2 = com.vuitton.android.R.layout.mtrl_calendar_vertical;
            i3 = 1;
        } else {
            i2 = com.vuitton.android.R.layout.mtrl_calendar_horizontal;
            i3 = 0;
        }
        View viewInflate = layoutInflaterCloneInContext.inflate(i2, viewGroup, false);
        Resources resources = requireContext().getResources();
        int dimensionPixelOffset = resources.getDimensionPixelOffset(com.vuitton.android.R.dimen.mtrl_calendar_navigation_bottom_padding) + resources.getDimensionPixelOffset(com.vuitton.android.R.dimen.mtrl_calendar_navigation_top_padding) + resources.getDimensionPixelSize(com.vuitton.android.R.dimen.mtrl_calendar_navigation_height);
        int dimensionPixelSize = resources.getDimensionPixelSize(com.vuitton.android.R.dimen.mtrl_calendar_days_of_week_height);
        int i4 = MonthAdapter.f32572h;
        viewInflate.setMinimumHeight(dimensionPixelOffset + dimensionPixelSize + (resources.getDimensionPixelOffset(com.vuitton.android.R.dimen.mtrl_calendar_month_vertical_padding) * (i4 - 1)) + (resources.getDimensionPixelSize(com.vuitton.android.R.dimen.mtrl_calendar_day_height) * i4) + resources.getDimensionPixelOffset(com.vuitton.android.R.dimen.mtrl_calendar_bottom_padding));
        GridView gridView = (GridView) viewInflate.findViewById(com.vuitton.android.R.id.mtrl_calendar_days_of_week);
        ViewCompat.t(gridView, new AnonymousClass1());
        int i5 = this.D.f32519f;
        gridView.setAdapter((ListAdapter) (i5 > 0 ? new DaysOfWeekAdapter(i5) : new DaysOfWeekAdapter()));
        gridView.setNumColumns(month.f32569e);
        gridView.setEnabled(false);
        this.J = (RecyclerView) viewInflate.findViewById(com.vuitton.android.R.id.mtrl_calendar_months);
        this.J.setLayoutManager(new SmoothCalendarLayoutManager(getContext(), i3) { // from class: com.google.android.material.datepicker.MaterialCalendar.2
            @Override // androidx.recyclerview.widget.LinearLayoutManager
            public final void L0(RecyclerView.State state, int[] iArr) {
                MaterialCalendar materialCalendar = MaterialCalendar.this;
                RecyclerView recyclerView = materialCalendar.J;
                if (i3 == 0) {
                    iArr[0] = recyclerView.getWidth();
                    iArr[1] = materialCalendar.J.getWidth();
                } else {
                    iArr[0] = recyclerView.getHeight();
                    iArr[1] = materialCalendar.J.getHeight();
                }
            }
        });
        this.J.setTag("MONTHS_VIEW_GROUP_TAG");
        final MonthsPagerAdapter monthsPagerAdapter = new MonthsPagerAdapter(contextThemeWrapper, this.C, this.D, this.E, new AnonymousClass3());
        this.J.setAdapter(monthsPagerAdapter);
        int integer = contextThemeWrapper.getResources().getInteger(com.vuitton.android.R.integer.mtrl_calendar_year_selector_span);
        RecyclerView recyclerView = (RecyclerView) viewInflate.findViewById(com.vuitton.android.R.id.mtrl_calendar_year_selector_frame);
        this.I = recyclerView;
        if (recyclerView != null) {
            recyclerView.setHasFixedSize(true);
            this.I.setLayoutManager(new GridLayoutManager((Context) contextThemeWrapper, integer, 1, false));
            this.I.setAdapter(new YearGridAdapter(this));
            this.I.addItemDecoration(new RecyclerView.ItemDecoration() { // from class: com.google.android.material.datepicker.MaterialCalendar.5

                /* JADX INFO: renamed from: a, reason: collision with root package name */
                public final Calendar f32550a = UtcDates.g(null);

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public final Calendar f32551b = UtcDates.g(null);

                /* JADX WARN: Multi-variable type inference failed */
                @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
                public final void onDraw(Canvas canvas, RecyclerView recyclerView2, RecyclerView.State state) {
                    if ((recyclerView2.getAdapter() instanceof YearGridAdapter) && (recyclerView2.getLayoutManager() instanceof GridLayoutManager)) {
                        YearGridAdapter yearGridAdapter = (YearGridAdapter) recyclerView2.getAdapter();
                        GridLayoutManager gridLayoutManager = (GridLayoutManager) recyclerView2.getLayoutManager();
                        MaterialCalendar materialCalendar = MaterialCalendar.this;
                        for (Pair pair : materialCalendar.C.S0()) {
                            F f2 = pair.f12138a;
                            if (f2 != 0 && pair.f12139b != null) {
                                long jLongValue = ((Long) f2).longValue();
                                Calendar calendar = this.f32550a;
                                calendar.setTimeInMillis(jLongValue);
                                long jLongValue2 = ((Long) pair.f12139b).longValue();
                                Calendar calendar2 = this.f32551b;
                                calendar2.setTimeInMillis(jLongValue2);
                                int i6 = calendar.get(1) - yearGridAdapter.f32598b.D.f32516b.d;
                                int i7 = calendar2.get(1) - yearGridAdapter.f32598b.D.f32516b.d;
                                View viewS = gridLayoutManager.s(i6);
                                View viewS2 = gridLayoutManager.s(i7);
                                int i8 = gridLayoutManager.F;
                                int i9 = i6 / i8;
                                int i10 = i7 / i8;
                                for (int i11 = i9; i11 <= i10; i11++) {
                                    View viewS3 = gridLayoutManager.s(gridLayoutManager.F * i11);
                                    if (viewS3 != null) {
                                        int top = viewS3.getTop() + materialCalendar.H.d.f32523a.top;
                                        int bottom = viewS3.getBottom() - materialCalendar.H.d.f32523a.bottom;
                                        canvas.drawRect((i11 != i9 || viewS == null) ? 0 : (viewS.getWidth() / 2) + viewS.getLeft(), top, (i11 != i10 || viewS2 == null) ? recyclerView2.getWidth() : (viewS2.getWidth() / 2) + viewS2.getLeft(), bottom, materialCalendar.H.f32533h);
                                    }
                                }
                            }
                        }
                    }
                }
            });
        }
        View viewFindViewById = viewInflate.findViewById(com.vuitton.android.R.id.month_navigation_fragment_toggle);
        CalendarConstraints calendarConstraints = monthsPagerAdapter.f32578b;
        if (viewFindViewById != null) {
            MaterialButton materialButton = (MaterialButton) viewInflate.findViewById(com.vuitton.android.R.id.month_navigation_fragment_toggle);
            this.O = materialButton;
            materialButton.setTag("SELECTOR_TOGGLE_TAG");
            ViewCompat.t(this.O, new AccessibilityDelegateCompat() { // from class: com.google.android.material.datepicker.MaterialCalendar.6
                @Override // androidx.core.view.AccessibilityDelegateCompat
                public final void d(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
                    this.f12143b.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat.f12267a);
                    MaterialCalendar materialCalendar = MaterialCalendar.this;
                    accessibilityNodeInfoCompat.b(new AccessibilityNodeInfoCompat.AccessibilityActionCompat(16, materialCalendar.N.getVisibility() == 0 ? materialCalendar.getString(com.vuitton.android.R.string.mtrl_picker_toggle_to_year_selection) : materialCalendar.getString(com.vuitton.android.R.string.mtrl_picker_toggle_to_day_selection)));
                }
            });
            View viewFindViewById2 = viewInflate.findViewById(com.vuitton.android.R.id.month_navigation_previous);
            this.K = viewFindViewById2;
            viewFindViewById2.setTag("NAVIGATION_PREV_TAG");
            View viewFindViewById3 = viewInflate.findViewById(com.vuitton.android.R.id.month_navigation_next);
            this.L = viewFindViewById3;
            viewFindViewById3.setTag("NAVIGATION_NEXT_TAG");
            this.M = viewInflate.findViewById(com.vuitton.android.R.id.mtrl_calendar_year_selector_frame);
            this.N = viewInflate.findViewById(com.vuitton.android.R.id.mtrl_calendar_day_selector_frame);
            r(CalendarSelector.DAY);
            this.O.setText(this.F.c());
            this.J.addOnScrollListener(new RecyclerView.OnScrollListener() { // from class: com.google.android.material.datepicker.MaterialCalendar.7
                @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
                public final void b(RecyclerView recyclerView2, int i6, int i7) {
                    CalendarConstraints calendarConstraints2 = monthsPagerAdapter.f32578b;
                    MaterialCalendar materialCalendar = MaterialCalendar.this;
                    RecyclerView recyclerView3 = materialCalendar.J;
                    int iV0 = i6 < 0 ? ((LinearLayoutManager) recyclerView3.getLayoutManager()).V0() : ((LinearLayoutManager) recyclerView3.getLayoutManager()).W0();
                    Calendar calendarC = UtcDates.c(calendarConstraints2.f32516b.f32567b);
                    calendarC.add(2, iV0);
                    Month month2 = new Month(calendarC);
                    materialCalendar.F = month2;
                    MaterialButton materialButton2 = materialCalendar.O;
                    Calendar calendarC2 = UtcDates.c(calendarConstraints2.f32516b.f32567b);
                    calendarC2.add(2, iV0);
                    materialButton2.setText(new Month(calendarC2).c());
                    materialCalendar.s(calendarConstraints2.f32516b.d(month2));
                }
            });
            this.O.setOnClickListener(new View.OnClickListener() { // from class: com.google.android.material.datepicker.MaterialCalendar.8
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    Callback.n(view);
                    try {
                        MaterialCalendar materialCalendar = MaterialCalendar.this;
                        CalendarSelector calendarSelector = materialCalendar.G;
                        CalendarSelector calendarSelector2 = CalendarSelector.YEAR;
                        if (calendarSelector == calendarSelector2) {
                            materialCalendar.r(CalendarSelector.DAY);
                            materialCalendar.J.announceForAccessibility(materialCalendar.getString(com.vuitton.android.R.string.mtrl_picker_toggled_to_day_selection));
                        } else if (calendarSelector == CalendarSelector.DAY) {
                            materialCalendar.r(calendarSelector2);
                            materialCalendar.I.announceForAccessibility(materialCalendar.getString(com.vuitton.android.R.string.mtrl_picker_toggled_to_year_selection));
                        }
                    } finally {
                        Callback.o();
                    }
                }
            });
            this.L.setOnClickListener(new View.OnClickListener() { // from class: com.google.android.material.datepicker.MaterialCalendar.9
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    MaterialCalendar materialCalendar = MaterialCalendar.this;
                    Callback.n(view);
                    try {
                        int iV0 = ((LinearLayoutManager) materialCalendar.J.getLayoutManager()).V0();
                        Calendar calendarC = UtcDates.c(monthsPagerAdapter.f32578b.f32516b.f32567b);
                        calendarC.add(2, iV0 + 1);
                        materialCalendar.q(new Month(calendarC));
                    } finally {
                        Callback.o();
                    }
                }
            });
            this.K.setOnClickListener(new View.OnClickListener() { // from class: com.google.android.material.datepicker.MaterialCalendar.10
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    MaterialCalendar materialCalendar = MaterialCalendar.this;
                    Callback.n(view);
                    try {
                        int iW0 = ((LinearLayoutManager) materialCalendar.J.getLayoutManager()).W0();
                        Calendar calendarC = UtcDates.c(monthsPagerAdapter.f32578b.f32516b.f32567b);
                        calendarC.add(2, iW0 - 1);
                        materialCalendar.q(new Month(calendarC));
                    } finally {
                        Callback.o();
                    }
                }
            });
            s(calendarConstraints.f32516b.d(this.F));
        }
        if (!MaterialDatePicker.L(R.attr.windowFullscreen, contextThemeWrapper)) {
            new PagerSnapHelper().b(this.J);
        }
        this.J.scrollToPosition(calendarConstraints.f32516b.d(this.F));
        ViewCompat.t(this.J, new AnonymousClass4());
        return viewInflate;
    }

    @Override // androidx.fragment.app.Fragment
    public final void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putInt("THEME_RES_ID_KEY", this.B);
        bundle.putParcelable("GRID_SELECTOR_KEY", this.C);
        bundle.putParcelable("CALENDAR_CONSTRAINTS_KEY", this.D);
        bundle.putParcelable("DAY_VIEW_DECORATOR_KEY", this.E);
        bundle.putParcelable("CURRENT_MONTH_KEY", this.F);
    }

    @Override // com.google.android.material.datepicker.PickerFragment
    public final void p(OnSelectionChangedListener onSelectionChangedListener) {
        this.A.add(onSelectionChangedListener);
    }

    public final void q(Month month) {
        MonthsPagerAdapter monthsPagerAdapter = (MonthsPagerAdapter) this.J.getAdapter();
        final int iD = monthsPagerAdapter.f32578b.f32516b.d(month);
        AccessibilityManager accessibilityManager = this.P;
        if (accessibilityManager == null || !accessibilityManager.isEnabled()) {
            int iD2 = iD - monthsPagerAdapter.f32578b.f32516b.d(this.F);
            boolean z = Math.abs(iD2) > 3;
            boolean z2 = iD2 > 0;
            this.F = month;
            if (z && z2) {
                this.J.scrollToPosition(iD - 3);
                this.J.post(new Runnable() { // from class: com.google.android.material.datepicker.MaterialCalendar.11
                    @Override // java.lang.Runnable
                    public void run() {
                        MaterialCalendar.this.J.smoothScrollToPosition(iD);
                    }
                });
            } else {
                RecyclerView recyclerView = this.J;
                if (z) {
                    recyclerView.scrollToPosition(iD + 3);
                    this.J.post(new Runnable() { // from class: com.google.android.material.datepicker.MaterialCalendar.11
                        @Override // java.lang.Runnable
                        public void run() {
                            MaterialCalendar.this.J.smoothScrollToPosition(iD);
                        }
                    });
                } else {
                    recyclerView.post(new Runnable() { // from class: com.google.android.material.datepicker.MaterialCalendar.11
                        @Override // java.lang.Runnable
                        public void run() {
                            MaterialCalendar.this.J.smoothScrollToPosition(iD);
                        }
                    });
                }
            }
        } else {
            this.F = month;
            this.J.scrollToPosition(iD);
        }
        s(iD);
    }

    public final void r(CalendarSelector calendarSelector) {
        this.G = calendarSelector;
        if (calendarSelector == CalendarSelector.YEAR) {
            this.I.getLayoutManager().y0(this.F.d - ((YearGridAdapter) this.I.getAdapter()).f32598b.D.f32516b.d);
            this.M.setVisibility(0);
            this.N.setVisibility(8);
            this.K.setVisibility(8);
            this.L.setVisibility(8);
            return;
        }
        if (calendarSelector == CalendarSelector.DAY) {
            this.M.setVisibility(8);
            this.N.setVisibility(0);
            this.K.setVisibility(0);
            this.L.setVisibility(0);
            q(this.F);
        }
    }

    public final void s(int i2) {
        this.L.setEnabled(i2 + 1 < this.J.getAdapter().getItemCount());
        this.K.setEnabled(i2 - 1 >= 0);
    }
}
