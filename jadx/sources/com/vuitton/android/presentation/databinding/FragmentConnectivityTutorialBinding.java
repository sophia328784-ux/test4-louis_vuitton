package com.vuitton.android.presentation.databinding;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.vuitton.android.R;
import defpackage.r81;

/* JADX INFO: loaded from: classes4.dex */
public final class FragmentConnectivityTutorialBinding implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ToolbarSimpleBinding f51235b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final RecyclerView f51236c;

    public FragmentConnectivityTutorialBinding(ToolbarSimpleBinding toolbarSimpleBinding, RecyclerView recyclerView) {
        this.f51235b = toolbarSimpleBinding;
        this.f51236c = recyclerView;
    }

    public static FragmentConnectivityTutorialBinding a(View view) {
        int i2 = R.id.layout_toolbar;
        View viewA = ViewBindings.a(R.id.layout_toolbar, view);
        if (viewA != null) {
            ToolbarSimpleBinding toolbarSimpleBindingA = ToolbarSimpleBinding.a(viewA);
            RecyclerView recyclerView = (RecyclerView) ViewBindings.a(R.id.recycler_tutorials, view);
            if (recyclerView != null) {
                return new FragmentConnectivityTutorialBinding(toolbarSimpleBindingA, recyclerView);
            }
            i2 = R.id.recycler_tutorials;
        }
        r81.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
        return null;
    }
}
