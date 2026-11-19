package com.vuitton.android.presentation.screen.connectivity.trunkspeaker.scan.tutorial;

import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import androidx.viewbinding.ViewBindings;
import com.vuitton.android.R;
import com.vuitton.android.presentation.databinding.FragmentTrunkSpeakerBluetoothInfoBinding;
import defpackage.r81;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
public final /* synthetic */ class BluetoothInfoFragment$binding$2 extends FunctionReferenceImpl implements Function1<View, FragmentTrunkSpeakerBluetoothInfoBinding> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final BluetoothInfoFragment$binding$2 f56618b = new BluetoothInfoFragment$binding$2(1, FragmentTrunkSpeakerBluetoothInfoBinding.class, "bind", "bind(Landroid/view/View;)Lcom/vuitton/android/presentation/databinding/FragmentTrunkSpeakerBluetoothInfoBinding;", 0);

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
                i2 = R.id.text_subtitle;
                if (((TextView) ViewBindings.a(R.id.text_subtitle, view)) != null) {
                    i2 = R.id.text_title;
                    if (((TextView) ViewBindings.a(R.id.text_title, view)) != null) {
                        return new FragmentTrunkSpeakerBluetoothInfoBinding(button, button2);
                    }
                }
            }
        }
        r81.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
        return null;
    }
}
