package com.vuitton.android.presentation.databinding;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.vuitton.android.R;
import defpackage.r81;

/* JADX INFO: loaded from: classes4.dex */
public final class ReusableBottomSheetTitleLayoutBinding implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final View f51460b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ImageView f51461c;
    public final TextView d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final View f51462e;

    public ReusableBottomSheetTitleLayoutBinding(View view, ImageView imageView, TextView textView, View view2) {
        this.f51460b = view;
        this.f51461c = imageView;
        this.d = textView;
        this.f51462e = view2;
    }

    public static ReusableBottomSheetTitleLayoutBinding a(View view) {
        int i2 = R.id.horizontal_divider;
        View viewA = ViewBindings.a(R.id.horizontal_divider, view);
        if (viewA != null) {
            i2 = R.id.image_close_bottom_sheet;
            ImageView imageView = (ImageView) ViewBindings.a(R.id.image_close_bottom_sheet, view);
            if (imageView != null) {
                i2 = R.id.text_bottom_sheet_title;
                TextView textView = (TextView) ViewBindings.a(R.id.text_bottom_sheet_title, view);
                if (textView != null) {
                    i2 = R.id.vertical_divider;
                    View viewA2 = ViewBindings.a(R.id.vertical_divider, view);
                    if (viewA2 != null) {
                        return new ReusableBottomSheetTitleLayoutBinding(viewA, imageView, textView, viewA2);
                    }
                }
            }
        }
        r81.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
        return null;
    }
}
