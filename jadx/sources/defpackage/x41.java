package defpackage;

import android.R;
import com.google.android.material.snackbar.Snackbar;
import com.vuitton.android.presentation.screen.connectivity.travel.detail.TravelDetailsFragment;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class x41 implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f81018b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ TravelDetailsFragment f81019c;

    public /* synthetic */ x41(TravelDetailsFragment travelDetailsFragment, int i2) {
        this.f81018b = i2;
        this.f81019c = travelDetailsFragment;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = this.f81018b;
        TravelDetailsFragment travelDetailsFragment = this.f81019c;
        switch (i2) {
            case 0:
                TravelDetailsFragment.Companion companion = TravelDetailsFragment.K;
                Snackbar.f(travelDetailsFragment.requireActivity().findViewById(R.id.content), com.vuitton.android.R.string.error_generic, -1).h();
                break;
            default:
                TravelDetailsFragment.Companion companion2 = TravelDetailsFragment.K;
                Snackbar.f(travelDetailsFragment.requireActivity().findViewById(R.id.content), com.vuitton.android.R.string.error_generic, -1).h();
                break;
        }
    }
}
