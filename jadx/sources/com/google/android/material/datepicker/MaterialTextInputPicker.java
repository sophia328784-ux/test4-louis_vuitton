package com.google.android.material.datepicker;

import android.os.Bundle;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
public final class MaterialTextInputPicker<S> extends PickerFragment<S> {
    public int B;
    public DateSelector C;
    public CalendarConstraints D;

    @Override // androidx.fragment.app.Fragment
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle == null) {
            bundle = getArguments();
        }
        this.B = bundle.getInt("THEME_RES_ID_KEY");
        this.C = (DateSelector) bundle.getParcelable("DATE_SELECTOR_KEY");
        this.D = (CalendarConstraints) bundle.getParcelable("CALENDAR_CONSTRAINTS_KEY");
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return this.C.O1(layoutInflater.cloneInContext(new ContextThemeWrapper(getContext(), this.B)), viewGroup, this.D, new OnSelectionChangedListener<Object>() { // from class: com.google.android.material.datepicker.MaterialTextInputPicker.1
            @Override // com.google.android.material.datepicker.OnSelectionChangedListener
            public final void a() {
                Iterator it = MaterialTextInputPicker.this.A.iterator();
                while (it.hasNext()) {
                    ((OnSelectionChangedListener) it.next()).a();
                }
            }

            @Override // com.google.android.material.datepicker.OnSelectionChangedListener
            public final void b(Object obj) {
                Iterator it = MaterialTextInputPicker.this.A.iterator();
                while (it.hasNext()) {
                    ((OnSelectionChangedListener) it.next()).b(obj);
                }
            }
        });
    }

    @Override // androidx.fragment.app.Fragment
    public final void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putInt("THEME_RES_ID_KEY", this.B);
        bundle.putParcelable("DATE_SELECTOR_KEY", this.C);
        bundle.putParcelable("CALENDAR_CONSTRAINTS_KEY", this.D);
    }
}
