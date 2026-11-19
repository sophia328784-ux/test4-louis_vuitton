package com.vuitton.android.presentation.screen.connectivity.section;

import android.view.View;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.viewbinding.ViewBindings;
import com.vuitton.android.R;
import com.vuitton.android.presentation.databinding.FragmentConnectivitySectionDetailBinding;
import com.vuitton.android.presentation.databinding.ToolbarSimpleBinding;
import com.vuitton.android.presentation.screen.connectivity.views.FixedAspectRatioImageView;
import defpackage.r81;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
public final /* synthetic */ class ConnectivitySectionDetailFragment$binding$2 extends FunctionReferenceImpl implements Function1<View, FragmentConnectivitySectionDetailBinding> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final ConnectivitySectionDetailFragment$binding$2 f56263b = new ConnectivitySectionDetailFragment$binding$2(1, FragmentConnectivitySectionDetailBinding.class, "bind", "bind(Landroid/view/View;)Lcom/vuitton/android/presentation/databinding/FragmentConnectivitySectionDetailBinding;", 0);

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        View view = (View) obj;
        view.getClass();
        int i2 = R.id.button_faq;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.a(R.id.button_faq, view);
        if (linearLayout != null) {
            i2 = R.id.button_open_learn_more;
            LinearLayout linearLayout2 = (LinearLayout) ViewBindings.a(R.id.button_open_learn_more, view);
            if (linearLayout2 != null) {
                i2 = R.id.button_pairing;
                Button button = (Button) ViewBindings.a(R.id.button_pairing, view);
                if (button != null) {
                    i2 = R.id.image_section_hero;
                    FixedAspectRatioImageView fixedAspectRatioImageView = (FixedAspectRatioImageView) ViewBindings.a(R.id.image_section_hero, view);
                    if (fixedAspectRatioImageView != null) {
                        i2 = R.id.image_spotify_logo;
                        if (((ImageView) ViewBindings.a(R.id.image_spotify_logo, view)) != null) {
                            i2 = R.id.layout_section_card_container;
                            LinearLayout linearLayout3 = (LinearLayout) ViewBindings.a(R.id.layout_section_card_container, view);
                            if (linearLayout3 != null) {
                                i2 = R.id.layout_spotify_section;
                                FrameLayout frameLayout = (FrameLayout) ViewBindings.a(R.id.layout_spotify_section, view);
                                if (frameLayout != null) {
                                    i2 = R.id.layout_toolbar;
                                    View viewA = ViewBindings.a(R.id.layout_toolbar, view);
                                    if (viewA != null) {
                                        ToolbarSimpleBinding toolbarSimpleBindingA = ToolbarSimpleBinding.a(viewA);
                                        i2 = R.id.text_device_info;
                                        TextView textView = (TextView) ViewBindings.a(R.id.text_device_info, view);
                                        if (textView != null) {
                                            i2 = R.id.text_section_title;
                                            TextView textView2 = (TextView) ViewBindings.a(R.id.text_section_title, view);
                                            if (textView2 != null) {
                                                i2 = R.id.text_spotify_subtitle;
                                                if (((TextView) ViewBindings.a(R.id.text_spotify_subtitle, view)) != null) {
                                                    i2 = R.id.text_spotify_title;
                                                    TextView textView3 = (TextView) ViewBindings.a(R.id.text_spotify_title, view);
                                                    if (textView3 != null) {
                                                        return new FragmentConnectivitySectionDetailBinding((LinearLayout) view, linearLayout, linearLayout2, button, fixedAspectRatioImageView, linearLayout3, frameLayout, toolbarSimpleBindingA, textView, textView2, textView3);
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
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
