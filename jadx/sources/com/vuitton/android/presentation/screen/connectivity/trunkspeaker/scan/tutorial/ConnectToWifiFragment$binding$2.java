package com.vuitton.android.presentation.screen.connectivity.trunkspeaker.scan.tutorial;

import android.view.View;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.viewbinding.ViewBindings;
import com.vuitton.android.R;
import com.vuitton.android.presentation.databinding.FragmentTrunkSpeakerConnectToWifiBinding;
import com.vuitton.android.presentation.screen.connectivity.views.ClickableEditText;
import defpackage.r81;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
public final /* synthetic */ class ConnectToWifiFragment$binding$2 extends FunctionReferenceImpl implements Function1<View, FragmentTrunkSpeakerConnectToWifiBinding> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final ConnectToWifiFragment$binding$2 f56619b = new ConnectToWifiFragment$binding$2(1, FragmentTrunkSpeakerConnectToWifiBinding.class, "bind", "bind(Landroid/view/View;)Lcom/vuitton/android/presentation/databinding/FragmentTrunkSpeakerConnectToWifiBinding;", 0);

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        View view = (View) obj;
        view.getClass();
        int i2 = R.id.button_back;
        Button button = (Button) ViewBindings.a(R.id.button_back, view);
        if (button != null) {
            i2 = R.id.button_next;
            Button button2 = (Button) ViewBindings.a(R.id.button_next, view);
            if (button2 != null) {
                i2 = R.id.content_layout;
                if (((LinearLayout) ViewBindings.a(R.id.content_layout, view)) != null) {
                    i2 = R.id.edit_wifi_password;
                    ClickableEditText clickableEditText = (ClickableEditText) ViewBindings.a(R.id.edit_wifi_password, view);
                    if (clickableEditText != null) {
                        i2 = R.id.image_view;
                        ImageView imageView = (ImageView) ViewBindings.a(R.id.image_view, view);
                        if (imageView != null) {
                            i2 = R.id.progress_bar;
                            FrameLayout frameLayout = (FrameLayout) ViewBindings.a(R.id.progress_bar, view);
                            if (frameLayout != null) {
                                i2 = R.id.text_subtitle;
                                if (((TextView) ViewBindings.a(R.id.text_subtitle, view)) != null) {
                                    i2 = R.id.text_title;
                                    if (((TextView) ViewBindings.a(R.id.text_title, view)) != null) {
                                        i2 = R.id.wifi_list_spinner;
                                        TextView textView = (TextView) ViewBindings.a(R.id.wifi_list_spinner, view);
                                        if (textView != null) {
                                            return new FragmentTrunkSpeakerConnectToWifiBinding(button, button2, clickableEditText, imageView, frameLayout, textView);
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
