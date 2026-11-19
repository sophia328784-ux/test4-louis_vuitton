package com.vuitton.android.presentation.screen.connectivity.trunkspeaker.scan.tutorial.bledevicelist;

import android.view.View;
import android.widget.Button;
import android.widget.FrameLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBindings;
import com.vuitton.android.R;
import com.vuitton.android.presentation.databinding.FragmentTrunkSpeakerBleDeviceListBinding;
import com.vuitton.android.presentation.databinding.ReusableBottomSheetTitleLayoutBinding;
import defpackage.r81;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
public final /* synthetic */ class LVBLEDeviceListFragment$binding$2 extends FunctionReferenceImpl implements Function1<View, FragmentTrunkSpeakerBleDeviceListBinding> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final LVBLEDeviceListFragment$binding$2 f56638b = new LVBLEDeviceListFragment$binding$2(1, FragmentTrunkSpeakerBleDeviceListBinding.class, "bind", "bind(Landroid/view/View;)Lcom/vuitton/android/presentation/databinding/FragmentTrunkSpeakerBleDeviceListBinding;", 0);

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        View view = (View) obj;
        view.getClass();
        int i2 = R.id.button_back;
        Button button = (Button) ViewBindings.a(R.id.button_back, view);
        if (button != null) {
            i2 = R.id.layout_header;
            View viewA = ViewBindings.a(R.id.layout_header, view);
            if (viewA != null) {
                ReusableBottomSheetTitleLayoutBinding reusableBottomSheetTitleLayoutBindingA = ReusableBottomSheetTitleLayoutBinding.a(viewA);
                int i3 = R.id.layout_progress_bar;
                FrameLayout frameLayout = (FrameLayout) ViewBindings.a(R.id.layout_progress_bar, view);
                if (frameLayout != null) {
                    i3 = R.id.recycler_view_device_list;
                    RecyclerView recyclerView = (RecyclerView) ViewBindings.a(R.id.recycler_view_device_list, view);
                    if (recyclerView != null) {
                        return new FragmentTrunkSpeakerBleDeviceListBinding(button, reusableBottomSheetTitleLayoutBindingA, frameLayout, recyclerView);
                    }
                }
                i2 = i3;
            }
        }
        r81.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
        return null;
    }
}
