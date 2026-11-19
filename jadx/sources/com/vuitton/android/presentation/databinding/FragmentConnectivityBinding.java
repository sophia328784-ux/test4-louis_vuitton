package com.vuitton.android.presentation.databinding;

import android.widget.LinearLayout;
import android.widget.ProgressBar;
import androidx.viewbinding.ViewBinding;

/* JADX INFO: loaded from: classes4.dex */
public final class FragmentConnectivityBinding implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final LinearLayout f51223b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ConnectivityNotPairedLayoutBinding f51224c;
    public final ConnectivityPairedLayoutBinding d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final LinearLayout f51225e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ProgressBar f51226f;
    public final ToolbarSimpleBinding g;

    public FragmentConnectivityBinding(LinearLayout linearLayout, ConnectivityNotPairedLayoutBinding connectivityNotPairedLayoutBinding, ConnectivityPairedLayoutBinding connectivityPairedLayoutBinding, LinearLayout linearLayout2, ProgressBar progressBar, ToolbarSimpleBinding toolbarSimpleBinding) {
        this.f51223b = linearLayout;
        this.f51224c = connectivityNotPairedLayoutBinding;
        this.d = connectivityPairedLayoutBinding;
        this.f51225e = linearLayout2;
        this.f51226f = progressBar;
        this.g = toolbarSimpleBinding;
    }
}
