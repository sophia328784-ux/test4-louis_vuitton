package com.vuitton.android.presentation.screen.connectivity.trunkspeaker.details.detail;

import android.view.View;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.widget.NestedScrollView;
import androidx.viewbinding.ViewBindings;
import com.vuitton.android.R;
import com.vuitton.android.presentation.databinding.FragmentTrunkSpeakerDetailPageBinding;
import com.vuitton.android.presentation.databinding.ToolbarSimpleBinding;
import com.vuitton.android.presentation.screen.connectivity.views.ClickableEditText;
import com.vuitton.android.presentation.screen.connectivity.views.FixedAspectRatioImageView;
import com.vuitton.android.presentation.screen.connectivity.views.TrunkBatteryLevelView;
import defpackage.r81;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
public final /* synthetic */ class WifiDeviceDetailFragment$binding$2 extends FunctionReferenceImpl implements Function1<View, FragmentTrunkSpeakerDetailPageBinding> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final WifiDeviceDetailFragment$binding$2 f56504b = new WifiDeviceDetailFragment$binding$2(1, FragmentTrunkSpeakerDetailPageBinding.class, "bind", "bind(Landroid/view/View;)Lcom/vuitton/android/presentation/databinding/FragmentTrunkSpeakerDetailPageBinding;", 0);

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        View view = (View) obj;
        view.getClass();
        int i2 = R.id.btn_faq;
        TextView textView = (TextView) ViewBindings.a(R.id.btn_faq, view);
        if (textView != null) {
            i2 = R.id.btn_open_equalizer;
            Button button = (Button) ViewBindings.a(R.id.btn_open_equalizer, view);
            if (button != null) {
                i2 = R.id.btn_open_spotify;
                Button button2 = (Button) ViewBindings.a(R.id.btn_open_spotify, view);
                if (button2 != null) {
                    i2 = R.id.button_reset_device;
                    Button button3 = (Button) ViewBindings.a(R.id.button_reset_device, view);
                    if (button3 != null) {
                        i2 = R.id.disposition_layout;
                        LinearLayout linearLayout = (LinearLayout) ViewBindings.a(R.id.disposition_layout, view);
                        if (linearLayout != null) {
                            i2 = R.id.divider_faq;
                            View viewA = ViewBindings.a(R.id.divider_faq, view);
                            if (viewA != null) {
                                i2 = R.id.equalizer_wrapper;
                                if (((LinearLayout) ViewBindings.a(R.id.equalizer_wrapper, view)) != null) {
                                    i2 = R.id.play_pause_icon;
                                    if (((ImageView) ViewBindings.a(R.id.play_pause_icon, view)) != null) {
                                        i2 = R.id.progress_bar;
                                        FrameLayout frameLayout = (FrameLayout) ViewBindings.a(R.id.progress_bar, view);
                                        if (frameLayout != null) {
                                            i2 = R.id.scroll_view_wrapper;
                                            if (((NestedScrollView) ViewBindings.a(R.id.scroll_view_wrapper, view)) != null) {
                                                i2 = R.id.shadow;
                                                View viewA2 = ViewBindings.a(R.id.shadow, view);
                                                if (viewA2 != null) {
                                                    i2 = R.id.speaker_name;
                                                    ClickableEditText clickableEditText = (ClickableEditText) ViewBindings.a(R.id.speaker_name, view);
                                                    if (clickableEditText != null) {
                                                        i2 = R.id.speaker_trunk_battery_level;
                                                        TrunkBatteryLevelView trunkBatteryLevelView = (TrunkBatteryLevelView) ViewBindings.a(R.id.speaker_trunk_battery_level, view);
                                                        if (trunkBatteryLevelView != null) {
                                                            i2 = R.id.speaker_trunk_toolbar;
                                                            View viewA3 = ViewBindings.a(R.id.speaker_trunk_toolbar, view);
                                                            if (viewA3 != null) {
                                                                ToolbarSimpleBinding toolbarSimpleBindingA = ToolbarSimpleBinding.a(viewA3);
                                                                i2 = R.id.text_speaker_preset;
                                                                TextView textView2 = (TextView) ViewBindings.a(R.id.text_speaker_preset, view);
                                                                if (textView2 != null) {
                                                                    i2 = R.id.trunk_main_image;
                                                                    FixedAspectRatioImageView fixedAspectRatioImageView = (FixedAspectRatioImageView) ViewBindings.a(R.id.trunk_main_image, view);
                                                                    if (fixedAspectRatioImageView != null) {
                                                                        return new FragmentTrunkSpeakerDetailPageBinding(textView, button, button2, button3, linearLayout, viewA, frameLayout, viewA2, clickableEditText, trunkBatteryLevelView, toolbarSimpleBindingA, textView2, fixedAspectRatioImageView);
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
