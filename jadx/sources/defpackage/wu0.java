package defpackage;

import android.view.MotionEvent;
import android.view.View;
import com.google.android.material.search.SearchView;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.details.SpeakerTrunkEqualizerFragment;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class wu0 implements View.OnTouchListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f80950b;

    public /* synthetic */ wu0(int i2) {
        this.f80950b = i2;
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        switch (this.f80950b) {
            case 0:
                int i2 = SearchView.F;
                break;
            default:
                SpeakerTrunkEqualizerFragment.Companion companion = SpeakerTrunkEqualizerFragment.M;
                break;
        }
        return true;
    }
}
