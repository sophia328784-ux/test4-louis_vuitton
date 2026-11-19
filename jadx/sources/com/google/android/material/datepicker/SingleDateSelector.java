package com.google.android.material.datepicker;

import android.content.Context;
import android.content.res.Resources;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityManager;
import android.widget.EditText;
import com.google.android.material.color.MaterialColors;
import com.google.android.material.resources.MaterialAttributes;
import com.google.android.material.textfield.TextInputLayout;
import com.vuitton.android.R;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Locale;

/* JADX INFO: loaded from: classes2.dex */
public class SingleDateSelector implements DateSelector<Long> {
    public static final Parcelable.Creator<SingleDateSelector> CREATOR = new AnonymousClass2();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Long f32594b;

    /* JADX INFO: renamed from: com.google.android.material.datepicker.SingleDateSelector$2, reason: invalid class name */
    public class AnonymousClass2 implements Parcelable.Creator<SingleDateSelector> {
        @Override // android.os.Parcelable.Creator
        public final SingleDateSelector createFromParcel(Parcel parcel) {
            SingleDateSelector singleDateSelector = new SingleDateSelector();
            singleDateSelector.f32594b = (Long) parcel.readValue(Long.class.getClassLoader());
            return singleDateSelector;
        }

        @Override // android.os.Parcelable.Creator
        public final SingleDateSelector[] newArray(int i2) {
            return new SingleDateSelector[i2];
        }
    }

    @Override // com.google.android.material.datepicker.DateSelector
    public final ArrayList B1() {
        ArrayList arrayList = new ArrayList();
        Long l = this.f32594b;
        if (l != null) {
            arrayList.add(l);
        }
        return arrayList;
    }

    @Override // com.google.android.material.datepicker.DateSelector
    public final String E(Context context) {
        Resources resources = context.getResources();
        Long l = this.f32594b;
        return resources.getString(R.string.mtrl_picker_announce_current_selection, l == null ? resources.getString(R.string.mtrl_picker_announce_current_selection_none) : DateStrings.d(l.longValue(), Locale.getDefault()));
    }

    @Override // com.google.android.material.datepicker.DateSelector
    public final int F(Context context) {
        return MaterialAttributes.d(context, R.attr.materialCalendarTheme, MaterialDatePicker.class.getCanonicalName()).data;
    }

    @Override // com.google.android.material.datepicker.DateSelector
    public final Object H1() {
        return this.f32594b;
    }

    /* JADX WARN: Code duplicated, block: B:15:0x0050  */
    @Override // com.google.android.material.datepicker.DateSelector
    public final View O1(LayoutInflater layoutInflater, ViewGroup viewGroup, CalendarConstraints calendarConstraints, final OnSelectionChangedListener onSelectionChangedListener) {
        View viewInflate = layoutInflater.inflate(R.layout.mtrl_picker_text_input_date, viewGroup, false);
        final TextInputLayout textInputLayout = (TextInputLayout) viewInflate.findViewById(R.id.mtrl_picker_text_input_date);
        EditText editText = textInputLayout.getEditText();
        Integer numE = MaterialColors.e(R.attr.colorOnSurfaceVariant, viewInflate.getContext());
        if (numE != null) {
            editText.setHintTextColor(numE.intValue());
        }
        String str = Build.MANUFACTURER;
        if ((str != null ? str.toLowerCase(Locale.ENGLISH) : "").equals("lge")) {
            editText.setInputType(17);
        } else {
            if ((str != null ? str.toLowerCase(Locale.ENGLISH) : "").equals("samsung")) {
                editText.setInputType(17);
            }
        }
        SimpleDateFormat simpleDateFormatD = UtcDates.d();
        String strE = UtcDates.e(viewInflate.getResources(), simpleDateFormatD);
        textInputLayout.setPlaceholderText(strE);
        Long l = this.f32594b;
        if (l != null) {
            editText.setText(simpleDateFormatD.format(l));
        }
        editText.addTextChangedListener(new DateFormatTextWatcher(strE, simpleDateFormatD, textInputLayout, calendarConstraints) { // from class: com.google.android.material.datepicker.SingleDateSelector.1
            @Override // com.google.android.material.datepicker.DateFormatTextWatcher
            public final void a() {
                textInputLayout.getError();
                onSelectionChangedListener.a();
            }

            @Override // com.google.android.material.datepicker.DateFormatTextWatcher
            public final void b(Long l2) {
                SingleDateSelector singleDateSelector = SingleDateSelector.this;
                if (l2 == null) {
                    singleDateSelector.f32594b = null;
                } else {
                    singleDateSelector.f32594b = l2;
                }
                onSelectionChangedListener.b(singleDateSelector.f32594b);
            }
        });
        AccessibilityManager accessibilityManager = (AccessibilityManager) viewInflate.getContext().getSystemService("accessibility");
        if (accessibilityManager != null && accessibilityManager.isTouchExplorationEnabled()) {
            return viewInflate;
        }
        DateSelector.g1(editText);
        return viewInflate;
    }

    @Override // com.google.android.material.datepicker.DateSelector
    public final String P0(Context context) {
        Resources resources = context.getResources();
        Long l = this.f32594b;
        return l == null ? resources.getString(R.string.mtrl_picker_date_header_unselected) : resources.getString(R.string.mtrl_picker_date_header_selected, DateStrings.d(l.longValue(), Locale.getDefault()));
    }

    @Override // com.google.android.material.datepicker.DateSelector
    public final void P1(long j2) {
        this.f32594b = Long.valueOf(j2);
    }

    @Override // com.google.android.material.datepicker.DateSelector
    public final ArrayList S0() {
        return new ArrayList();
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // com.google.android.material.datepicker.DateSelector
    public final boolean u1() {
        return this.f32594b != null;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.writeValue(this.f32594b);
    }
}
