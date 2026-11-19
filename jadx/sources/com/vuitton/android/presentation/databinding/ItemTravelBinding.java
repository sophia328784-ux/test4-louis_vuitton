package com.vuitton.android.presentation.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.vuitton.android.R;
import defpackage.r81;

/* JADX INFO: loaded from: classes4.dex */
public final class ItemTravelBinding implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final LinearLayout f51428b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final TextView f51429c;
    public final TextView d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final TextView f51430e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final TextView f51431f;
    public final TextView g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final TextView f51432h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final ImageView f51433i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final ImageView f51434j;

    public ItemTravelBinding(LinearLayout linearLayout, TextView textView, TextView textView2, TextView textView3, TextView textView4, TextView textView5, TextView textView6, ImageView imageView, ImageView imageView2) {
        this.f51428b = linearLayout;
        this.f51429c = textView;
        this.d = textView2;
        this.f51430e = textView3;
        this.f51431f = textView4;
        this.g = textView5;
        this.f51432h = textView6;
        this.f51433i = imageView;
        this.f51434j = imageView2;
    }

    public static ItemTravelBinding a(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        View viewInflate = layoutInflater.inflate(R.layout.item_travel, viewGroup, false);
        int i2 = R.id.item_travel_date1;
        TextView textView = (TextView) ViewBindings.a(R.id.item_travel_date1, viewInflate);
        if (textView != null) {
            i2 = R.id.item_travel_date1_title;
            TextView textView2 = (TextView) ViewBindings.a(R.id.item_travel_date1_title, viewInflate);
            if (textView2 != null) {
                i2 = R.id.item_travel_date2;
                TextView textView3 = (TextView) ViewBindings.a(R.id.item_travel_date2, viewInflate);
                if (textView3 != null) {
                    i2 = R.id.item_travel_date2_title;
                    TextView textView4 = (TextView) ViewBindings.a(R.id.item_travel_date2_title, viewInflate);
                    if (textView4 != null) {
                        i2 = R.id.item_travel_subtitle;
                        TextView textView5 = (TextView) ViewBindings.a(R.id.item_travel_subtitle, viewInflate);
                        if (textView5 != null) {
                            i2 = R.id.item_travel_title;
                            TextView textView6 = (TextView) ViewBindings.a(R.id.item_travel_title, viewInflate);
                            if (textView6 != null) {
                                i2 = R.id.item_travel_type;
                                ImageView imageView = (ImageView) ViewBindings.a(R.id.item_travel_type, viewInflate);
                                if (imageView != null) {
                                    i2 = R.id.separation_line;
                                    ImageView imageView2 = (ImageView) ViewBindings.a(R.id.separation_line, viewInflate);
                                    if (imageView2 != null) {
                                        return new ItemTravelBinding((LinearLayout) viewInflate, textView, textView2, textView3, textView4, textView5, textView6, imageView, imageView2);
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        r81.d("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i2)));
        return null;
    }
}
