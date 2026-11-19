package com.vuitton.android.presentation.screen.webview;

import android.view.View;
import android.webkit.WebView;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ProgressBar;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.Toolbar;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBindings;
import com.google.android.material.appbar.AppBarLayout;
import com.vuitton.android.R;
import com.vuitton.android.presentation.databinding.FragmentWebViewBinding;
import com.vuitton.android.presentation.databinding.ToolbarWebViewBinding;
import defpackage.r81;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
public final /* synthetic */ class WebViewFragment$binding$2 extends FunctionReferenceImpl implements Function1<View, FragmentWebViewBinding> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final WebViewFragment$binding$2 f65469b = new WebViewFragment$binding$2(1, FragmentWebViewBinding.class, "bind", "bind(Landroid/view/View;)Lcom/vuitton/android/presentation/databinding/FragmentWebViewBinding;", 0);

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        View view = (View) obj;
        view.getClass();
        int i2 = R.id.layout_toolbar;
        View viewA = ViewBindings.a(R.id.layout_toolbar, view);
        if (viewA != null) {
            int i3 = R.id.toolbar_web_view;
            Toolbar toolbar = (Toolbar) ViewBindings.a(R.id.toolbar_web_view, viewA);
            if (toolbar != null) {
                i3 = R.id.toolbar_web_view_image;
                if (((ImageView) ViewBindings.a(R.id.toolbar_web_view_image, viewA)) != null) {
                    i3 = R.id.toolbar_web_view_title;
                    if (((AppCompatTextView) ViewBindings.a(R.id.toolbar_web_view_title, viewA)) != null) {
                        ToolbarWebViewBinding toolbarWebViewBinding = new ToolbarWebViewBinding((AppBarLayout) viewA, toolbar);
                        i2 = R.id.legal_mentions_button;
                        Button button = (Button) ViewBindings.a(R.id.legal_mentions_button, view);
                        if (button != null) {
                            i2 = R.id.progress;
                            ProgressBar progressBar = (ProgressBar) ViewBindings.a(R.id.progress, view);
                            if (progressBar != null) {
                                ConstraintLayout constraintLayout = (ConstraintLayout) view;
                                i2 = R.id.web_view;
                                WebView webView = (WebView) ViewBindings.a(R.id.web_view, view);
                                if (webView != null) {
                                    i2 = R.id.web_view_background;
                                    View viewA2 = ViewBindings.a(R.id.web_view_background, view);
                                    if (viewA2 != null) {
                                        i2 = R.id.web_view_parent_container;
                                        FrameLayout frameLayout = (FrameLayout) ViewBindings.a(R.id.web_view_parent_container, view);
                                        if (frameLayout != null) {
                                            return new FragmentWebViewBinding(toolbarWebViewBinding, button, progressBar, constraintLayout, webView, viewA2, frameLayout);
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
            r81.d("Missing required view with ID: ".concat(viewA.getResources().getResourceName(i3)));
            return null;
        }
        r81.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
        return null;
    }
}
