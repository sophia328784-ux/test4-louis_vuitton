package com.google.android.material.datepicker;

import android.content.Context;
import android.os.Parcelable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import defpackage.js;
import defpackage.yg;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public interface DateSelector<S> extends Parcelable {
    static void g1(EditText... editTextArr) {
        if (editTextArr.length == 0) {
            return;
        }
        js jsVar = new js(editTextArr, 0);
        for (EditText editText : editTextArr) {
            editText.setOnFocusChangeListener(jsVar);
        }
        EditText editText2 = editTextArr[0];
        editText2.postDelayed(new yg(editText2, 1), 100L);
    }

    ArrayList B1();

    String E(Context context);

    int F(Context context);

    Object H1();

    View O1(LayoutInflater layoutInflater, ViewGroup viewGroup, CalendarConstraints calendarConstraints, OnSelectionChangedListener onSelectionChangedListener);

    String P0(Context context);

    void P1(long j2);

    ArrayList S0();

    boolean u1();
}
