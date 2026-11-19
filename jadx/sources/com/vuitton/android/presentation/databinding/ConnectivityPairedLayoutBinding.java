package com.vuitton.android.presentation.databinding;

import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;

/* JADX INFO: loaded from: classes4.dex */
public final class ConnectivityPairedLayoutBinding implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final LinearLayout f51215b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Button f51216c;
    public final LinearLayout d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final FrameLayout f51217e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ProgressBar f51218f;
    public final RecyclerView g;

    public ConnectivityPairedLayoutBinding(LinearLayout linearLayout, Button button, LinearLayout linearLayout2, FrameLayout frameLayout, ProgressBar progressBar, RecyclerView recyclerView) {
        this.f51215b = linearLayout;
        this.f51216c = button;
        this.d = linearLayout2;
        this.f51217e = frameLayout;
        this.f51218f = progressBar;
        this.g = recyclerView;
    }
}
