package defpackage;

import android.os.Bundle;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.details.SpeakerTrunkEqualizerFragment;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class g01 implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f69244b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ SpeakerTrunkEqualizerFragment f69245c;

    public /* synthetic */ g01(int i2, SpeakerTrunkEqualizerFragment speakerTrunkEqualizerFragment) {
        this.f69244b = i2;
        this.f69245c = speakerTrunkEqualizerFragment;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        int i2 = this.f69244b;
        SpeakerTrunkEqualizerFragment speakerTrunkEqualizerFragment = this.f69245c;
        switch (i2) {
            case 0:
                SpeakerTrunkEqualizerFragment.Companion companion = SpeakerTrunkEqualizerFragment.M;
                Bundle arguments = speakerTrunkEqualizerFragment.getArguments();
                if (arguments != null) {
                    return arguments.getString("DEVICE");
                }
                return null;
            case 1:
                SpeakerTrunkEqualizerFragment.Companion companion2 = SpeakerTrunkEqualizerFragment.M;
                speakerTrunkEqualizerFragment.V();
                return Unit.f71739a;
            case 2:
                SpeakerTrunkEqualizerFragment.Companion companion3 = SpeakerTrunkEqualizerFragment.M;
                speakerTrunkEqualizerFragment.S();
                return Unit.f71739a;
            case 3:
                SpeakerTrunkEqualizerFragment.Companion companion4 = SpeakerTrunkEqualizerFragment.M;
                speakerTrunkEqualizerFragment.requireActivity().runOnUiThread(new i01(5, speakerTrunkEqualizerFragment));
                return Unit.f71739a;
            case 4:
                SpeakerTrunkEqualizerFragment.Companion companion5 = SpeakerTrunkEqualizerFragment.M;
                speakerTrunkEqualizerFragment.S();
                return Unit.f71739a;
            case 5:
                SpeakerTrunkEqualizerFragment.Companion companion6 = SpeakerTrunkEqualizerFragment.M;
                speakerTrunkEqualizerFragment.requireActivity().runOnUiThread(new i01(4, speakerTrunkEqualizerFragment));
                return Unit.f71739a;
            default:
                SpeakerTrunkEqualizerFragment.Companion companion7 = SpeakerTrunkEqualizerFragment.M;
                speakerTrunkEqualizerFragment.V();
                return Unit.f71739a;
        }
    }
}
