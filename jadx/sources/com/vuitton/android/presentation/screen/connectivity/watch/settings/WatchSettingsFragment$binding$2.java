package com.vuitton.android.presentation.screen.connectivity.watch.settings;

import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.viewbinding.ViewBindings;
import com.vuitton.android.R;
import com.vuitton.android.presentation.databinding.FragmentWatchSettingsBinding;
import com.vuitton.android.presentation.databinding.ProgressOverlayBinding;
import com.vuitton.android.presentation.databinding.ToolbarSimpleBinding;
import defpackage.r81;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
public final /* synthetic */ class WatchSettingsFragment$binding$2 extends FunctionReferenceImpl implements Function1<View, FragmentWatchSettingsBinding> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final WatchSettingsFragment$binding$2 f56755b = new WatchSettingsFragment$binding$2(1, FragmentWatchSettingsBinding.class, "bind", "bind(Landroid/view/View;)Lcom/vuitton/android/presentation/databinding/FragmentWatchSettingsBinding;", 0);

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        View view = (View) obj;
        view.getClass();
        int i2 = R.id.edit_watch_name_btn;
        ImageView imageView = (ImageView) ViewBindings.a(R.id.edit_watch_name_btn, view);
        if (imageView != null) {
            i2 = R.id.flight_address;
            TextView textView = (TextView) ViewBindings.a(R.id.flight_address, view);
            if (textView != null) {
                i2 = R.id.flight_address_label;
                TextView textView2 = (TextView) ViewBindings.a(R.id.flight_address_label, view);
                if (textView2 != null) {
                    i2 = R.id.progress_overlay;
                    View viewA = ViewBindings.a(R.id.progress_overlay, view);
                    if (viewA != null) {
                        ProgressOverlayBinding progressOverlayBinding = new ProgressOverlayBinding((FrameLayout) viewA);
                        i2 = R.id.serial_number;
                        TextView textView3 = (TextView) ViewBindings.a(R.id.serial_number, view);
                        if (textView3 != null) {
                            i2 = R.id.serial_number_label;
                            if (((TextView) ViewBindings.a(R.id.serial_number_label, view)) != null) {
                                i2 = R.id.services_title;
                                TextView textView4 = (TextView) ViewBindings.a(R.id.services_title, view);
                                if (textView4 != null) {
                                    i2 = R.id.sku;
                                    TextView textView5 = (TextView) ViewBindings.a(R.id.sku, view);
                                    if (textView5 != null) {
                                        i2 = R.id.sku_label;
                                        if (((TextView) ViewBindings.a(R.id.sku_label, view)) != null) {
                                            i2 = R.id.unpair_btn;
                                            Button button = (Button) ViewBindings.a(R.id.unpair_btn, view);
                                            if (button != null) {
                                                i2 = R.id.watch_faq_btn;
                                                TextView textView6 = (TextView) ViewBindings.a(R.id.watch_faq_btn, view);
                                                if (textView6 != null) {
                                                    i2 = R.id.watch_name;
                                                    TextView textView7 = (TextView) ViewBindings.a(R.id.watch_name, view);
                                                    if (textView7 != null) {
                                                        i2 = R.id.watch_name_edit_text;
                                                        EditText editText = (EditText) ViewBindings.a(R.id.watch_name_edit_text, view);
                                                        if (editText != null) {
                                                            i2 = R.id.watch_settings_toolbar_layout;
                                                            View viewA2 = ViewBindings.a(R.id.watch_settings_toolbar_layout, view);
                                                            if (viewA2 != null) {
                                                                ToolbarSimpleBinding toolbarSimpleBindingA = ToolbarSimpleBinding.a(viewA2);
                                                                i2 = R.id.watch_title;
                                                                TextView textView8 = (TextView) ViewBindings.a(R.id.watch_title, view);
                                                                if (textView8 != null) {
                                                                    i2 = R.id.watch_tutorial_btn;
                                                                    TextView textView9 = (TextView) ViewBindings.a(R.id.watch_tutorial_btn, view);
                                                                    if (textView9 != null) {
                                                                        return new FragmentWatchSettingsBinding(imageView, textView, textView2, progressOverlayBinding, textView3, textView4, textView5, button, textView6, textView7, editText, toolbarSimpleBindingA, textView8, textView9);
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
                    }
                }
            }
        }
        r81.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
        return null;
    }
}
