package com.google.android.material.datepicker;

import android.content.Context;
import android.content.res.Resources;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityManager;
import android.widget.EditText;
import androidx.core.util.Pair;
import com.google.android.material.color.MaterialColors;
import com.google.android.material.resources.MaterialAttributes;
import com.google.android.material.textfield.TextInputLayout;
import com.vuitton.android.R;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Locale;

/* JADX INFO: loaded from: classes2.dex */
public class RangeDateSelector implements DateSelector<Pair<Long, Long>> {
    public static final Parcelable.Creator<RangeDateSelector> CREATOR = new AnonymousClass3();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f32586b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Long f32587c = null;
    public Long d = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Long f32588e = null;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Long f32589f = null;

    /* JADX INFO: renamed from: com.google.android.material.datepicker.RangeDateSelector$3, reason: invalid class name */
    public class AnonymousClass3 implements Parcelable.Creator<RangeDateSelector> {
        @Override // android.os.Parcelable.Creator
        public final RangeDateSelector createFromParcel(Parcel parcel) {
            RangeDateSelector rangeDateSelector = new RangeDateSelector();
            rangeDateSelector.f32587c = (Long) parcel.readValue(Long.class.getClassLoader());
            rangeDateSelector.d = (Long) parcel.readValue(Long.class.getClassLoader());
            return rangeDateSelector;
        }

        @Override // android.os.Parcelable.Creator
        public final RangeDateSelector[] newArray(int i2) {
            return new RangeDateSelector[i2];
        }
    }

    public static void a(RangeDateSelector rangeDateSelector, TextInputLayout textInputLayout, TextInputLayout textInputLayout2, OnSelectionChangedListener onSelectionChangedListener) {
        Long l = rangeDateSelector.f32588e;
        if (l == null || rangeDateSelector.f32589f == null) {
            if (textInputLayout.getError() != null && rangeDateSelector.f32586b.contentEquals(textInputLayout.getError())) {
                textInputLayout.setError(null);
            }
            if (textInputLayout2.getError() != null && " ".contentEquals(textInputLayout2.getError())) {
                textInputLayout2.setError(null);
            }
            onSelectionChangedListener.a();
        } else if (l.longValue() <= rangeDateSelector.f32589f.longValue()) {
            Long l2 = rangeDateSelector.f32588e;
            rangeDateSelector.f32587c = l2;
            Long l3 = rangeDateSelector.f32589f;
            rangeDateSelector.d = l3;
            onSelectionChangedListener.b(new Pair(l2, l3));
        } else {
            textInputLayout.setError(rangeDateSelector.f32586b);
            textInputLayout2.setError(" ");
            onSelectionChangedListener.a();
        }
        if (!TextUtils.isEmpty(textInputLayout.getError())) {
            textInputLayout.getError();
        } else {
            if (TextUtils.isEmpty(textInputLayout2.getError())) {
                return;
            }
            textInputLayout2.getError();
        }
    }

    @Override // com.google.android.material.datepicker.DateSelector
    public final ArrayList B1() {
        ArrayList arrayList = new ArrayList();
        Long l = this.f32587c;
        if (l != null) {
            arrayList.add(l);
        }
        Long l2 = this.d;
        if (l2 != null) {
            arrayList.add(l2);
        }
        return arrayList;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.material.datepicker.DateSelector
    public final String E(Context context) {
        Resources resources = context.getResources();
        Pair pairA = DateStrings.a(this.f32587c, this.d);
        F f2 = pairA.f12138a;
        String string = f2 == 0 ? resources.getString(R.string.mtrl_picker_announce_current_selection_none) : (String) f2;
        S s = pairA.f12139b;
        return resources.getString(R.string.mtrl_picker_announce_current_range_selection, string, s == 0 ? resources.getString(R.string.mtrl_picker_announce_current_selection_none) : (String) s);
    }

    @Override // com.google.android.material.datepicker.DateSelector
    public final int F(Context context) {
        Resources resources = context.getResources();
        DisplayMetrics displayMetrics = resources.getDisplayMetrics();
        return MaterialAttributes.d(context, Math.min(displayMetrics.widthPixels, displayMetrics.heightPixels) > resources.getDimensionPixelSize(R.dimen.mtrl_calendar_maximum_default_fullscreen_minor_axis) ? R.attr.materialCalendarTheme : R.attr.materialCalendarFullscreenTheme, MaterialDatePicker.class.getCanonicalName()).data;
    }

    @Override // com.google.android.material.datepicker.DateSelector
    public final Object H1() {
        return new Pair(this.f32587c, this.d);
    }

    /* JADX WARN: Code duplicated, block: B:15:0x0065  */
    @Override // com.google.android.material.datepicker.DateSelector
    public final View O1(LayoutInflater layoutInflater, ViewGroup viewGroup, CalendarConstraints calendarConstraints, final OnSelectionChangedListener onSelectionChangedListener) {
        View viewInflate = layoutInflater.inflate(R.layout.mtrl_picker_text_input_date_range, viewGroup, false);
        final TextInputLayout textInputLayout = (TextInputLayout) viewInflate.findViewById(R.id.mtrl_picker_text_input_range_start);
        final TextInputLayout textInputLayout2 = (TextInputLayout) viewInflate.findViewById(R.id.mtrl_picker_text_input_range_end);
        EditText editText = textInputLayout.getEditText();
        EditText editText2 = textInputLayout2.getEditText();
        Integer numE = MaterialColors.e(R.attr.colorOnSurfaceVariant, viewInflate.getContext());
        if (numE != null) {
            editText.setHintTextColor(numE.intValue());
            editText2.setHintTextColor(numE.intValue());
        }
        String str = Build.MANUFACTURER;
        if ((str != null ? str.toLowerCase(Locale.ENGLISH) : "").equals("lge")) {
            editText.setInputType(17);
            editText2.setInputType(17);
        } else {
            if ((str != null ? str.toLowerCase(Locale.ENGLISH) : "").equals("samsung")) {
                editText.setInputType(17);
                editText2.setInputType(17);
            }
        }
        this.f32586b = viewInflate.getResources().getString(R.string.mtrl_picker_invalid_range);
        SimpleDateFormat simpleDateFormatD = UtcDates.d();
        Long l = this.f32587c;
        if (l != null) {
            editText.setText(simpleDateFormatD.format(l));
            this.f32588e = this.f32587c;
        }
        Long l2 = this.d;
        if (l2 != null) {
            editText2.setText(simpleDateFormatD.format(l2));
            this.f32589f = this.d;
        }
        String strE = UtcDates.e(viewInflate.getResources(), simpleDateFormatD);
        textInputLayout.setPlaceholderText(strE);
        textInputLayout2.setPlaceholderText(strE);
        editText.addTextChangedListener(new DateFormatTextWatcher(strE, simpleDateFormatD, textInputLayout, calendarConstraints) { // from class: com.google.android.material.datepicker.RangeDateSelector.1
            @Override // com.google.android.material.datepicker.DateFormatTextWatcher
            public final void a() {
                RangeDateSelector rangeDateSelector = RangeDateSelector.this;
                rangeDateSelector.f32588e = null;
                RangeDateSelector.a(rangeDateSelector, textInputLayout, textInputLayout2, onSelectionChangedListener);
            }

            @Override // com.google.android.material.datepicker.DateFormatTextWatcher
            public final void b(Long l3) {
                RangeDateSelector rangeDateSelector = RangeDateSelector.this;
                rangeDateSelector.f32588e = l3;
                RangeDateSelector.a(rangeDateSelector, textInputLayout, textInputLayout2, onSelectionChangedListener);
            }
        });
        editText2.addTextChangedListener(new DateFormatTextWatcher(strE, simpleDateFormatD, textInputLayout2, calendarConstraints) { // from class: com.google.android.material.datepicker.RangeDateSelector.2
            @Override // com.google.android.material.datepicker.DateFormatTextWatcher
            public final void a() {
                RangeDateSelector rangeDateSelector = RangeDateSelector.this;
                rangeDateSelector.f32589f = null;
                RangeDateSelector.a(rangeDateSelector, textInputLayout, textInputLayout2, onSelectionChangedListener);
            }

            @Override // com.google.android.material.datepicker.DateFormatTextWatcher
            public final void b(Long l3) {
                RangeDateSelector rangeDateSelector = RangeDateSelector.this;
                rangeDateSelector.f32589f = l3;
                RangeDateSelector.a(rangeDateSelector, textInputLayout, textInputLayout2, onSelectionChangedListener);
            }
        });
        AccessibilityManager accessibilityManager = (AccessibilityManager) viewInflate.getContext().getSystemService("accessibility");
        if (accessibilityManager != null && accessibilityManager.isTouchExplorationEnabled()) {
            return viewInflate;
        }
        DateSelector.g1(editText, editText2);
        return viewInflate;
    }

    @Override // com.google.android.material.datepicker.DateSelector
    public final String P0(Context context) {
        Resources resources = context.getResources();
        Long l = this.f32587c;
        if (l == null && this.d == null) {
            return resources.getString(R.string.mtrl_picker_range_header_unselected);
        }
        Long l2 = this.d;
        if (l2 == null) {
            return resources.getString(R.string.mtrl_picker_range_header_only_start_selected, DateStrings.b(l.longValue()));
        }
        if (l == null) {
            return resources.getString(R.string.mtrl_picker_range_header_only_end_selected, DateStrings.b(l2.longValue()));
        }
        Pair pairA = DateStrings.a(l, l2);
        return resources.getString(R.string.mtrl_picker_range_header_selected, pairA.f12138a, pairA.f12139b);
    }

    @Override // com.google.android.material.datepicker.DateSelector
    public final void P1(long j2) {
        Long l = this.f32587c;
        if (l == null) {
            this.f32587c = Long.valueOf(j2);
        } else if (this.d == null && l.longValue() <= j2) {
            this.d = Long.valueOf(j2);
        } else {
            this.d = null;
            this.f32587c = Long.valueOf(j2);
        }
    }

    @Override // com.google.android.material.datepicker.DateSelector
    public final ArrayList S0() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new Pair(this.f32587c, this.d));
        return arrayList;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // com.google.android.material.datepicker.DateSelector
    public final boolean u1() {
        Long l = this.f32587c;
        return (l == null || this.d == null || l.longValue() > this.d.longValue()) ? false : true;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.writeValue(this.f32587c);
        parcel.writeValue(this.d);
    }
}
