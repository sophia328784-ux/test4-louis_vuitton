package com.vuitton.android.presentation.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import com.vuitton.android.R;
import defpackage.r81;

/* JADX INFO: loaded from: classes4.dex */
public final class ItemListSelectableBinding implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final TextView f51423b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final TextView f51424c;

    public ItemListSelectableBinding(TextView textView, TextView textView2) {
        this.f51423b = textView;
        this.f51424c = textView2;
    }

    public static ItemListSelectableBinding a(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        View viewInflate = layoutInflater.inflate(R.layout.item_list_selectable, viewGroup, false);
        if (viewInflate != null) {
            TextView textView = (TextView) viewInflate;
            return new ItemListSelectableBinding(textView, textView);
        }
        r81.d("rootView");
        return null;
    }
}
