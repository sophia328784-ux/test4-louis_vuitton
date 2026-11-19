package com.vuitton.android.presentation.screen.connectivity.watch.tutorial.categories;

import android.view.View;
import android.widget.LinearLayout;
import androidx.viewbinding.ViewBindings;
import com.vuitton.android.R;
import com.vuitton.android.presentation.databinding.FragmentWatchTutorialCategoriesBinding;
import com.vuitton.android.presentation.databinding.ToolbarSimpleBinding;
import com.vuitton.android.presentation.screen.connectivity.views.FixedAspectRatioImageView;
import defpackage.r81;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
public final /* synthetic */ class WatchTutorialCategoriesFragment$binding$2 extends FunctionReferenceImpl implements Function1<View, FragmentWatchTutorialCategoriesBinding> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final WatchTutorialCategoriesFragment$binding$2 f56786b = new WatchTutorialCategoriesFragment$binding$2(1, FragmentWatchTutorialCategoriesBinding.class, "bind", "bind(Landroid/view/View;)Lcom/vuitton/android/presentation/databinding/FragmentWatchTutorialCategoriesBinding;", 0);

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        View view = (View) obj;
        view.getClass();
        int i2 = R.id.category_card_container;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.a(R.id.category_card_container, view);
        if (linearLayout != null) {
            i2 = R.id.header;
            if (((FixedAspectRatioImageView) ViewBindings.a(R.id.header, view)) != null) {
                i2 = R.id.toolbar_simple;
                View viewA = ViewBindings.a(R.id.toolbar_simple, view);
                if (viewA != null) {
                    return new FragmentWatchTutorialCategoriesBinding(linearLayout, ToolbarSimpleBinding.a(viewA));
                }
            }
        }
        r81.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
        return null;
    }
}
