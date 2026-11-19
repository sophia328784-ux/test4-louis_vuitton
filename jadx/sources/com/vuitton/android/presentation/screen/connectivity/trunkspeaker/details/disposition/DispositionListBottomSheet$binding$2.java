package com.vuitton.android.presentation.screen.connectivity.trunkspeaker.details.disposition;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBindings;
import com.vuitton.android.R;
import com.vuitton.android.presentation.databinding.FragmentRecyclerViewBottomSheetBinding;
import com.vuitton.android.presentation.databinding.ReusableBottomSheetTitleLayoutBinding;
import defpackage.r81;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
public final /* synthetic */ class DispositionListBottomSheet$binding$2 extends FunctionReferenceImpl implements Function1<View, FragmentRecyclerViewBottomSheetBinding> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final DispositionListBottomSheet$binding$2 f56554b = new DispositionListBottomSheet$binding$2(1, FragmentRecyclerViewBottomSheetBinding.class, "bind", "bind(Landroid/view/View;)Lcom/vuitton/android/presentation/databinding/FragmentRecyclerViewBottomSheetBinding;", 0);

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        View view = (View) obj;
        view.getClass();
        int i2 = R.id.layout_header;
        View viewA = ViewBindings.a(R.id.layout_header, view);
        if (viewA != null) {
            ReusableBottomSheetTitleLayoutBinding reusableBottomSheetTitleLayoutBindingA = ReusableBottomSheetTitleLayoutBinding.a(viewA);
            RecyclerView recyclerView = (RecyclerView) ViewBindings.a(R.id.recycler_list, view);
            if (recyclerView != null) {
                return new FragmentRecyclerViewBottomSheetBinding(reusableBottomSheetTitleLayoutBindingA, recyclerView);
            }
            i2 = R.id.recycler_list;
        }
        r81.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
        return null;
    }
}
