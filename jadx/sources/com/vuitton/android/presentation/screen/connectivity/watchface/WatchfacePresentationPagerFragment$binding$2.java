package com.vuitton.android.presentation.screen.connectivity.watchface;

import android.view.View;
import android.widget.LinearLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBindings;
import com.vuitton.android.R;
import com.vuitton.android.presentation.databinding.FragmentWatchfacePresentationPagerBinding;
import com.vuitton.android.presentation.databinding.ToolbarSimpleBinding;
import defpackage.r81;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
public final /* synthetic */ class WatchfacePresentationPagerFragment$binding$2 extends FunctionReferenceImpl implements Function1<View, FragmentWatchfacePresentationPagerBinding> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final WatchfacePresentationPagerFragment$binding$2 f56829b = new WatchfacePresentationPagerFragment$binding$2(1, FragmentWatchfacePresentationPagerBinding.class, "bind", "bind(Landroid/view/View;)Lcom/vuitton/android/presentation/databinding/FragmentWatchfacePresentationPagerBinding;", 0);

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        View view = (View) obj;
        view.getClass();
        int i2 = R.id.layout_toolbar;
        View viewA = ViewBindings.a(R.id.layout_toolbar, view);
        if (viewA != null) {
            ToolbarSimpleBinding toolbarSimpleBindingA = ToolbarSimpleBinding.a(viewA);
            RecyclerView recyclerView = (RecyclerView) ViewBindings.a(R.id.watchface_presentation_list, view);
            if (recyclerView != null) {
                return new FragmentWatchfacePresentationPagerBinding((LinearLayout) view, toolbarSimpleBindingA, recyclerView);
            }
            i2 = R.id.watchface_presentation_list;
        }
        r81.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
        return null;
    }
}
