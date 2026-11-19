package com.vuitton.android.presentation.screen.connectivity.trunkspeaker.scan.tutorial;

import android.view.View;
import android.widget.TextView;
import androidx.cardview.widget.CardView;
import androidx.viewbinding.ViewBindings;
import com.vuitton.android.R;
import com.vuitton.android.presentation.databinding.FragmentTrunkSpeakerDeviceTypeBinding;
import defpackage.r81;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
public final /* synthetic */ class SpeakerTypeFragment$binding$2 extends FunctionReferenceImpl implements Function1<View, FragmentTrunkSpeakerDeviceTypeBinding> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final SpeakerTypeFragment$binding$2 f56636b = new SpeakerTypeFragment$binding$2(1, FragmentTrunkSpeakerDeviceTypeBinding.class, "bind", "bind(Landroid/view/View;)Lcom/vuitton/android/presentation/databinding/FragmentTrunkSpeakerDeviceTypeBinding;", 0);

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        View view = (View) obj;
        view.getClass();
        int i2 = R.id.card_speaker_gm;
        CardView cardView = (CardView) ViewBindings.a(R.id.card_speaker_gm, view);
        if (cardView != null) {
            i2 = R.id.card_speaker_pm;
            CardView cardView2 = (CardView) ViewBindings.a(R.id.card_speaker_pm, view);
            if (cardView2 != null) {
                i2 = R.id.text_subtitle;
                if (((TextView) ViewBindings.a(R.id.text_subtitle, view)) != null) {
                    i2 = R.id.text_title;
                    if (((TextView) ViewBindings.a(R.id.text_title, view)) != null) {
                        return new FragmentTrunkSpeakerDeviceTypeBinding(cardView, cardView2);
                    }
                }
            }
        }
        r81.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
        return null;
    }
}
