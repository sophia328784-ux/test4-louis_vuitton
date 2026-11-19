package com.vuitton.android.presentation.screen.connectivity.lightup.common.detail;

import android.view.View;
import android.widget.ListView;
import androidx.viewbinding.ViewBindings;
import com.vuitton.android.R;
import com.vuitton.android.presentation.databinding.FragmentListViewBottomSheetBinding;
import com.vuitton.android.presentation.databinding.ReusableBottomSheetTitleLayoutBinding;
import defpackage.r81;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
public final /* synthetic */ class PowerManagementBottomSheet$binding$2 extends FunctionReferenceImpl implements Function1<View, FragmentListViewBottomSheetBinding> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final PowerManagementBottomSheet$binding$2 f56150b = new PowerManagementBottomSheet$binding$2(1, FragmentListViewBottomSheetBinding.class, "bind", "bind(Landroid/view/View;)Lcom/vuitton/android/presentation/databinding/FragmentListViewBottomSheetBinding;", 0);

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        View view = (View) obj;
        view.getClass();
        int i2 = R.id.layout_header;
        View viewA = ViewBindings.a(R.id.layout_header, view);
        if (viewA != null) {
            ReusableBottomSheetTitleLayoutBinding reusableBottomSheetTitleLayoutBindingA = ReusableBottomSheetTitleLayoutBinding.a(viewA);
            ListView listView = (ListView) ViewBindings.a(R.id.list_view, view);
            if (listView != null) {
                return new FragmentListViewBottomSheetBinding(reusableBottomSheetTitleLayoutBindingA, listView);
            }
            i2 = R.id.list_view;
        }
        r81.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
        return null;
    }
}
