package com.google.android.material.datepicker;

import androidx.fragment.app.Fragment;
import java.util.LinkedHashSet;

/* JADX INFO: loaded from: classes2.dex */
abstract class PickerFragment<S> extends Fragment {
    public final LinkedHashSet A = new LinkedHashSet();

    public void p(OnSelectionChangedListener onSelectionChangedListener) {
        this.A.add(onSelectionChangedListener);
    }
}
