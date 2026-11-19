package com.vuitton.android.presentation.screen.connectivity.trunkspeaker.details;

import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.core.widget.NestedScrollView;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBindings;
import com.vuitton.android.R;
import com.vuitton.android.presentation.databinding.FragmentTrunkSpeakerRoomDetailPageBinding;
import com.vuitton.android.presentation.databinding.ToolbarSimpleBinding;
import com.vuitton.android.presentation.screen.connectivity.views.ClickableEditText;
import com.vuitton.android.presentation.screen.connectivity.views.FixedAspectRatioImageView;
import defpackage.r81;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
public final /* synthetic */ class RoomDetailFragment$binding$2 extends FunctionReferenceImpl implements Function1<View, FragmentTrunkSpeakerRoomDetailPageBinding> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final RoomDetailFragment$binding$2 f56471b = new RoomDetailFragment$binding$2(1, FragmentTrunkSpeakerRoomDetailPageBinding.class, "bind", "bind(Landroid/view/View;)Lcom/vuitton/android/presentation/databinding/FragmentTrunkSpeakerRoomDetailPageBinding;", 0);

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        View view = (View) obj;
        view.getClass();
        int i2 = R.id.light_up_product_image;
        if (((FixedAspectRatioImageView) ViewBindings.a(R.id.light_up_product_image, view)) != null) {
            i2 = R.id.light_up_toolbar;
            View viewA = ViewBindings.a(R.id.light_up_toolbar, view);
            if (viewA != null) {
                ToolbarSimpleBinding toolbarSimpleBindingA = ToolbarSimpleBinding.a(viewA);
                int i3 = R.id.progress_bar;
                if (((FrameLayout) ViewBindings.a(R.id.progress_bar, view)) != null) {
                    i3 = R.id.recycler_view_room_device_list;
                    RecyclerView recyclerView = (RecyclerView) ViewBindings.a(R.id.recycler_view_room_device_list, view);
                    if (recyclerView != null) {
                        i3 = R.id.room_name;
                        ClickableEditText clickableEditText = (ClickableEditText) ViewBindings.a(R.id.room_name, view);
                        if (clickableEditText != null) {
                            i3 = R.id.room_title;
                            if (((TextView) ViewBindings.a(R.id.room_title, view)) != null) {
                                i3 = R.id.scroll_view_wrapper;
                                if (((NestedScrollView) ViewBindings.a(R.id.scroll_view_wrapper, view)) != null) {
                                    return new FragmentTrunkSpeakerRoomDetailPageBinding(toolbarSimpleBindingA, recyclerView, clickableEditText);
                                }
                            }
                        }
                    }
                }
                i2 = i3;
            }
        }
        r81.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
        return null;
    }
}
