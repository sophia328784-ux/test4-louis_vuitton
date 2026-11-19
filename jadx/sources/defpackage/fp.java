package defpackage;

import android.R;
import androidx.fragment.app.FragmentActivity;
import com.google.android.material.snackbar.Snackbar;
import com.vuitton.android.presentation.screen.connectivity.home.ConnectivityFragment;
import com.vuitton.android.presentation.screen.connectivity.section.ConnectivitySectionDetailFragment;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.manager.TrunkGeneralHelper;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class fp implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f69188b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ FragmentActivity f69189c;

    public /* synthetic */ fp(FragmentActivity fragmentActivity, int i2) {
        this.f69188b = i2;
        this.f69189c = fragmentActivity;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = this.f69188b;
        FragmentActivity fragmentActivity = this.f69189c;
        switch (i2) {
            case 0:
                ConnectivityFragment.Companion companion = ConnectivityFragment.Q;
                Snackbar.f(fragmentActivity.findViewById(R.id.content), com.vuitton.android.R.string.error_generic, -1).h();
                break;
            case 1:
                ConnectivitySectionDetailFragment.Companion companion2 = ConnectivitySectionDetailFragment.I;
                Snackbar.f(fragmentActivity.findViewById(R.id.content), com.vuitton.android.R.string.error_generic, -1).h();
                break;
            case 2:
                Snackbar.f(fragmentActivity.findViewById(R.id.content), com.vuitton.android.R.string.error_generic, -1).h();
                break;
            case 3:
                fragmentActivity.runOnUiThread(new fp(fragmentActivity, 4));
                break;
            case 4:
                Snackbar.f(fragmentActivity.findViewById(R.id.content), com.vuitton.android.R.string.error_light_up_device_update, -1).h();
                break;
            default:
                TrunkGeneralHelper trunkGeneralHelper = TrunkGeneralHelper.f56577a;
                Snackbar.g(fragmentActivity.findViewById(R.id.content), fragmentActivity.getString(com.vuitton.android.R.string.speaker_trunk_device_not_available), -1).h();
                break;
        }
    }
}
