package com.vuitton.android.presentation.screen.connectivity;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.viewbinding.ViewBindings;
import com.vuitton.android.R;
import com.vuitton.android.presentation.databinding.FragmentDiscoverConnectivityBinding;
import com.vuitton.android.presentation.extensions.ViewExtKt;
import com.vuitton.android.presentation.screen.connectivity.views.FixedAspectRatioImageView;
import defpackage.ck;
import defpackage.r81;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u001b\u0010\t\u001a\u00020\u00072\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/DiscoverConnectivityView;", "Landroid/widget/FrameLayout;", "Landroid/content/Context;", MvelScriptManager.VAR_CONTEXT, "<init>", "(Landroid/content/Context;)V", "Lkotlin/Function0;", "", "listener", "setOnDiscoverButtonClickListener", "(Lkotlin/jvm/functions/Function0;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class DiscoverConnectivityView extends FrameLayout {
    public static final /* synthetic */ int d = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Function0 f55941b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final FragmentDiscoverConnectivityBinding f55942c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DiscoverConnectivityView(Context context) {
        super(context);
        context.getClass();
        View viewInflate = LayoutInflater.from(context).inflate(R.layout.fragment_discover_connectivity, (ViewGroup) this, false);
        addView(viewInflate);
        int i2 = R.id.image_discover;
        FixedAspectRatioImageView fixedAspectRatioImageView = (FixedAspectRatioImageView) ViewBindings.a(R.id.image_discover, viewInflate);
        if (fixedAspectRatioImageView != null) {
            i2 = R.id.image_discover_play_icon;
            ImageView imageView = (ImageView) ViewBindings.a(R.id.image_discover_play_icon, viewInflate);
            if (imageView != null) {
                i2 = R.id.text_discover_subtitle;
                TextView textView = (TextView) ViewBindings.a(R.id.text_discover_subtitle, viewInflate);
                if (textView != null) {
                    i2 = R.id.text_discover_title;
                    TextView textView2 = (TextView) ViewBindings.a(R.id.text_discover_title, viewInflate);
                    if (textView2 != null) {
                        FrameLayout frameLayout = (FrameLayout) viewInflate;
                        this.f55942c = new FragmentDiscoverConnectivityBinding(frameLayout, fixedAspectRatioImageView, imageView, textView, textView2);
                        ViewExtKt.d(frameLayout, new ck(this, 11));
                        return;
                    }
                }
            }
        }
        r81.d("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i2)));
        throw null;
    }

    public static /* synthetic */ void b(DiscoverConnectivityView discoverConnectivityView, int i2, String str, String str2, String str3, int i3) {
        if ((i3 & 8) != 0) {
            str3 = null;
        }
        discoverConnectivityView.a(i2, str, str2, str3, false);
    }

    public final void a(int i2, String str, String str2, String str3, boolean z) {
        str.getClass();
        str2.getClass();
        FragmentDiscoverConnectivityBinding fragmentDiscoverConnectivityBinding = this.f55942c;
        TextView textView = fragmentDiscoverConnectivityBinding.f51239e;
        textView.setText(str);
        textView.setContentDescription(str3);
        fragmentDiscoverConnectivityBinding.d.setText(str2);
        fragmentDiscoverConnectivityBinding.f51237b.setImageResource(i2);
        fragmentDiscoverConnectivityBinding.f51238c.setVisibility(z ? 0 : 8);
    }

    public final void setOnDiscoverButtonClickListener(Function0<Unit> listener) {
        listener.getClass();
        this.f55941b = listener;
    }
}
