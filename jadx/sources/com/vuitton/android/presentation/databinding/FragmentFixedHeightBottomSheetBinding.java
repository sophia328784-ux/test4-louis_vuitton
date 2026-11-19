package com.vuitton.android.presentation.databinding;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.vuitton.android.R;
import defpackage.r81;

/* JADX INFO: loaded from: classes4.dex */
public final class FragmentFixedHeightBottomSheetBinding implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ReusableBottomSheetTitleLayoutBinding f51240b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final RecyclerView f51241c;

    public FragmentFixedHeightBottomSheetBinding(ReusableBottomSheetTitleLayoutBinding reusableBottomSheetTitleLayoutBinding, RecyclerView recyclerView) {
        this.f51240b = reusableBottomSheetTitleLayoutBinding;
        this.f51241c = recyclerView;
    }

    public static FragmentFixedHeightBottomSheetBinding a(View view) {
        int i2 = R.id.layout_header;
        View viewA = ViewBindings.a(R.id.layout_header, view);
        if (viewA != null) {
            ReusableBottomSheetTitleLayoutBinding reusableBottomSheetTitleLayoutBindingA = ReusableBottomSheetTitleLayoutBinding.a(viewA);
            RecyclerView recyclerView = (RecyclerView) ViewBindings.a(R.id.recycler_list, view);
            if (recyclerView != null) {
                return new FragmentFixedHeightBottomSheetBinding(reusableBottomSheetTitleLayoutBindingA, recyclerView);
            }
            i2 = R.id.recycler_list;
        }
        r81.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
        return null;
    }
}
