package com.vuitton.android.presentation.databinding;

import android.widget.Button;
import android.widget.FrameLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import androidx.viewbinding.ViewBinding;

/* JADX INFO: loaded from: classes4.dex */
public final class FragmentTrunkSpeakerWifiDeviceListBinding implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Button f51357b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ToolbarSimpleBinding f51358c;
    public final FrameLayout d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final RecyclerView f51359e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final SwipeRefreshLayout f51360f;

    public FragmentTrunkSpeakerWifiDeviceListBinding(Button button, ToolbarSimpleBinding toolbarSimpleBinding, FrameLayout frameLayout, RecyclerView recyclerView, SwipeRefreshLayout swipeRefreshLayout) {
        this.f51357b = button;
        this.f51358c = toolbarSimpleBinding;
        this.d = frameLayout;
        this.f51359e = recyclerView;
        this.f51360f = swipeRefreshLayout;
    }
}
