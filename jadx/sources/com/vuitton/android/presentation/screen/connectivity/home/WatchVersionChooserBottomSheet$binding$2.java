package com.vuitton.android.presentation.screen.connectivity.home;

import android.view.View;
import android.widget.LinearLayout;
import androidx.viewbinding.ViewBindings;
import com.vuitton.android.R;
import com.vuitton.android.presentation.databinding.FragmentWatchVersionChooserBottomSheetBinding;
import com.vuitton.android.presentation.databinding.ReusableBottomSheetTitleLayoutBinding;
import defpackage.r81;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
public final /* synthetic */ class WatchVersionChooserBottomSheet$binding$2 extends FunctionReferenceImpl implements Function1<View, FragmentWatchVersionChooserBottomSheetBinding> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final WatchVersionChooserBottomSheet$binding$2 f56104b = new WatchVersionChooserBottomSheet$binding$2(1, FragmentWatchVersionChooserBottomSheetBinding.class, "bind", "bind(Landroid/view/View;)Lcom/vuitton/android/presentation/databinding/FragmentWatchVersionChooserBottomSheetBinding;", 0);

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        View view = (View) obj;
        view.getClass();
        int i2 = R.id.layout_header;
        View viewA = ViewBindings.a(R.id.layout_header, view);
        if (viewA != null) {
            ReusableBottomSheetTitleLayoutBinding reusableBottomSheetTitleLayoutBindingA = ReusableBottomSheetTitleLayoutBinding.a(viewA);
            int i3 = R.id.layout_watch_v1_v2;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.a(R.id.layout_watch_v1_v2, view);
            if (linearLayout != null) {
                i3 = R.id.layout_watch_v3;
                LinearLayout linearLayout2 = (LinearLayout) ViewBindings.a(R.id.layout_watch_v3, view);
                if (linearLayout2 != null) {
                    return new FragmentWatchVersionChooserBottomSheetBinding(reusableBottomSheetTitleLayoutBindingA, linearLayout, linearLayout2);
                }
            }
            i2 = i3;
        }
        r81.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
        return null;
    }
}
