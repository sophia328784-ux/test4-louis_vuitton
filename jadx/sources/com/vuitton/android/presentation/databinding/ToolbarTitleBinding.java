package com.vuitton.android.presentation.databinding;

import android.view.View;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.Toolbar;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.vuitton.android.R;
import defpackage.r81;

/* JADX INFO: loaded from: classes4.dex */
public final class ToolbarTitleBinding implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Toolbar f51465b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AppCompatTextView f51466c;

    public ToolbarTitleBinding(Toolbar toolbar, AppCompatTextView appCompatTextView) {
        this.f51465b = toolbar;
        this.f51466c = appCompatTextView;
    }

    public static ToolbarTitleBinding a(View view) {
        int i2 = R.id.toolbar;
        Toolbar toolbar = (Toolbar) ViewBindings.a(R.id.toolbar, view);
        if (toolbar != null) {
            i2 = R.id.toolbar_title;
            AppCompatTextView appCompatTextView = (AppCompatTextView) ViewBindings.a(R.id.toolbar_title, view);
            if (appCompatTextView != null) {
                return new ToolbarTitleBinding(toolbar, appCompatTextView);
            }
        }
        r81.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
        return null;
    }
}
