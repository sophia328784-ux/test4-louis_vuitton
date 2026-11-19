package com.vuitton.android.presentation.screen.connectivity.trunkspeaker.details.devicelist;

import android.view.View;
import android.widget.Button;
import android.widget.FrameLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import androidx.viewbinding.ViewBindings;
import com.vuitton.android.R;
import com.vuitton.android.presentation.databinding.FragmentTrunkSpeakerWifiDeviceListBinding;
import com.vuitton.android.presentation.databinding.ToolbarSimpleBinding;
import defpackage.r81;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
public final /* synthetic */ class WifiDeviceListFragment$binding$2 extends FunctionReferenceImpl implements Function1<View, FragmentTrunkSpeakerWifiDeviceListBinding> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final WifiDeviceListFragment$binding$2 f56537b = new WifiDeviceListFragment$binding$2(1, FragmentTrunkSpeakerWifiDeviceListBinding.class, "bind", "bind(Landroid/view/View;)Lcom/vuitton/android/presentation/databinding/FragmentTrunkSpeakerWifiDeviceListBinding;", 0);

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        View view = (View) obj;
        view.getClass();
        int i2 = R.id.btn_open_spotify;
        Button button = (Button) ViewBindings.a(R.id.btn_open_spotify, view);
        if (button != null) {
            i2 = R.id.btn_open_spotify_layout;
            if (((FrameLayout) ViewBindings.a(R.id.btn_open_spotify_layout, view)) != null) {
                i2 = R.id.light_up_toolbar;
                View viewA = ViewBindings.a(R.id.light_up_toolbar, view);
                if (viewA != null) {
                    ToolbarSimpleBinding toolbarSimpleBindingA = ToolbarSimpleBinding.a(viewA);
                    i2 = R.id.progress_bar;
                    FrameLayout frameLayout = (FrameLayout) ViewBindings.a(R.id.progress_bar, view);
                    if (frameLayout != null) {
                        i2 = R.id.recycler_view_device_list;
                        RecyclerView recyclerView = (RecyclerView) ViewBindings.a(R.id.recycler_view_device_list, view);
                        if (recyclerView != null) {
                            i2 = R.id.swipe_to_refresh;
                            SwipeRefreshLayout swipeRefreshLayout = (SwipeRefreshLayout) ViewBindings.a(R.id.swipe_to_refresh, view);
                            if (swipeRefreshLayout != null) {
                                return new FragmentTrunkSpeakerWifiDeviceListBinding(button, toolbarSimpleBindingA, frameLayout, recyclerView, swipeRefreshLayout);
                            }
                        }
                    }
                }
            }
        }
        r81.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
        return null;
    }
}
