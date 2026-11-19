package com.vuitton.android.presentation.databinding;

import android.view.View;
import android.webkit.WebView;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ProgressBar;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;

/* JADX INFO: loaded from: classes4.dex */
public final class FragmentWebViewBinding implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ToolbarWebViewBinding f51391b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Button f51392c;
    public final ProgressBar d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ConstraintLayout f51393e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final WebView f51394f;
    public final View g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final FrameLayout f51395h;

    public FragmentWebViewBinding(ToolbarWebViewBinding toolbarWebViewBinding, Button button, ProgressBar progressBar, ConstraintLayout constraintLayout, WebView webView, View view, FrameLayout frameLayout) {
        this.f51391b = toolbarWebViewBinding;
        this.f51392c = button;
        this.d = progressBar;
        this.f51393e = constraintLayout;
        this.f51394f = webView;
        this.g = view;
        this.f51395h = frameLayout;
    }
}
