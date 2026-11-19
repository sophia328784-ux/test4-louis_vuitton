package com.vuitton.android.presentation.screen.connectivity.trunkspeaker.scan.tutorial;

import android.view.View;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.cardview.widget.CardView;
import androidx.viewbinding.ViewBindings;
import com.vuitton.android.R;
import com.vuitton.android.presentation.databinding.FragmentTrunkSpeakerConnectionTypeBinding;
import defpackage.r81;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
public final /* synthetic */ class ConnectionTypeFragment$binding$2 extends FunctionReferenceImpl implements Function1<View, FragmentTrunkSpeakerConnectionTypeBinding> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final ConnectionTypeFragment$binding$2 f56635b = new ConnectionTypeFragment$binding$2(1, FragmentTrunkSpeakerConnectionTypeBinding.class, "bind", "bind(Landroid/view/View;)Lcom/vuitton/android/presentation/databinding/FragmentTrunkSpeakerConnectionTypeBinding;", 0);

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        View view = (View) obj;
        view.getClass();
        int i2 = R.id.bluetooth_connection_title;
        if (((TextView) ViewBindings.a(R.id.bluetooth_connection_title, view)) != null) {
            i2 = R.id.button_back;
            Button button = (Button) ViewBindings.a(R.id.button_back, view);
            if (button != null) {
                i2 = R.id.card_bluetooth_connection;
                CardView cardView = (CardView) ViewBindings.a(R.id.card_bluetooth_connection, view);
                if (cardView != null) {
                    i2 = R.id.card_wifi_connection;
                    CardView cardView2 = (CardView) ViewBindings.a(R.id.card_wifi_connection, view);
                    if (cardView2 != null) {
                        i2 = R.id.layout_bluetooth_connection_image;
                        if (((FrameLayout) ViewBindings.a(R.id.layout_bluetooth_connection_image, view)) != null) {
                            i2 = R.id.layout_wifi_connection_image;
                            if (((FrameLayout) ViewBindings.a(R.id.layout_wifi_connection_image, view)) != null) {
                                i2 = R.id.text_subtitle;
                                if (((TextView) ViewBindings.a(R.id.text_subtitle, view)) != null) {
                                    i2 = R.id.text_title;
                                    if (((TextView) ViewBindings.a(R.id.text_title, view)) != null) {
                                        i2 = R.id.wifi_connection_title;
                                        if (((TextView) ViewBindings.a(R.id.wifi_connection_title, view)) != null) {
                                            return new FragmentTrunkSpeakerConnectionTypeBinding(button, cardView, cardView2);
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
