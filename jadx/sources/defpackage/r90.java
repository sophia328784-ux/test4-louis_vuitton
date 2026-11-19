package defpackage;

import androidx.activity.result.ActivityResultCaller;
import com.google.android.material.snackbar.Snackbar;
import com.vuitton.android.R;
import com.vuitton.android.presentation.screen.connectivity.lightup.LightUpActivity;
import com.vuitton.android.presentation.screen.connectivity.lightup.common.detail.LightUpDetailFragment;
import com.vuitton.android.presentation.screen.connectivity.lightup.common.interfaces.LightUpScanFragmentInterface;
import com.vuitton.android.presentation.screen.connectivity.lightup.sneakers.SneakerDetailFragment;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class r90 implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f79294b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ LightUpActivity f79295c;

    public /* synthetic */ r90(LightUpActivity lightUpActivity, int i2) {
        this.f79294b = i2;
        this.f79295c = lightUpActivity;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = this.f79294b;
        LightUpActivity lightUpActivity = this.f79295c;
        switch (i2) {
            case 0:
                LightUpActivity.Companion companion = LightUpActivity.t;
                LightUpDetailFragment lightUpDetailFragmentQ = lightUpActivity.Q();
                if (lightUpDetailFragmentQ != null && lightUpDetailFragmentQ.isAdded() && !lightUpDetailFragmentQ.isHidden()) {
                    String string = lightUpActivity.getString(R.string.light_up_new_presets_available);
                    string.getClass();
                    lightUpDetailFragmentQ.A0(string);
                    break;
                }
                break;
            case 1:
                LightUpActivity.Companion companion2 = LightUpActivity.t;
                List<ActivityResultCaller> listM = lightUpActivity.getSupportFragmentManager().M();
                listM.getClass();
                for (ActivityResultCaller activityResultCaller : listM) {
                    if (activityResultCaller instanceof LightUpScanFragmentInterface) {
                        ((LightUpScanFragmentInterface) activityResultCaller).A();
                    }
                }
                break;
            case 2:
                LightUpActivity.Companion companion3 = LightUpActivity.t;
                LightUpDetailFragment lightUpDetailFragmentQ2 = lightUpActivity.Q();
                if (lightUpDetailFragmentQ2 != null && lightUpDetailFragmentQ2.isAdded() && !lightUpDetailFragmentQ2.isHidden()) {
                    lightUpDetailFragmentQ2.l0();
                    break;
                }
                break;
            case 3:
                LightUpActivity.Companion companion4 = LightUpActivity.t;
                LightUpDetailFragment lightUpDetailFragmentQ3 = lightUpActivity.Q();
                if (lightUpDetailFragmentQ3 != null && lightUpDetailFragmentQ3.isAdded() && !lightUpDetailFragmentQ3.isHidden()) {
                    lightUpDetailFragmentQ3.y0();
                    break;
                }
                break;
            case 4:
                LightUpActivity.Companion companion5 = LightUpActivity.t;
                LightUpDetailFragment lightUpDetailFragmentQ4 = lightUpActivity.Q();
                if (lightUpDetailFragmentQ4 != null && lightUpDetailFragmentQ4.isAdded() && !lightUpDetailFragmentQ4.isHidden() && (lightUpDetailFragmentQ4 instanceof SneakerDetailFragment)) {
                    SneakerDetailFragment sneakerDetailFragment = (SneakerDetailFragment) lightUpDetailFragmentQ4;
                    sneakerDetailFragment.v0(null, sneakerDetailFragment.getString(R.string.power_mode_off));
                    break;
                }
                break;
            case 5:
                LightUpActivity.Companion companion6 = LightUpActivity.t;
                LightUpDetailFragment lightUpDetailFragmentQ5 = lightUpActivity.Q();
                if (lightUpDetailFragmentQ5 != null && lightUpDetailFragmentQ5.isAdded() && !lightUpDetailFragmentQ5.isHidden()) {
                    lightUpDetailFragmentQ5.o0();
                    break;
                }
                break;
            case 6:
                LightUpActivity.Companion companion7 = LightUpActivity.t;
                LightUpDetailFragment lightUpDetailFragmentQ6 = lightUpActivity.Q();
                if (lightUpDetailFragmentQ6 != null && lightUpDetailFragmentQ6.isAdded() && !lightUpDetailFragmentQ6.isHidden()) {
                    lightUpDetailFragmentQ6.D0();
                    break;
                }
                break;
            case 7:
                LightUpActivity.Companion companion8 = LightUpActivity.t;
                Snackbar.f(lightUpActivity.findViewById(android.R.id.content), R.string.error_no_location_permission, 0).h();
                break;
            case 8:
                LightUpActivity.Companion companion9 = LightUpActivity.t;
                LightUpDetailFragment lightUpDetailFragmentQ7 = lightUpActivity.Q();
                if (lightUpDetailFragmentQ7 != null && lightUpDetailFragmentQ7.isAdded() && !lightUpDetailFragmentQ7.isHidden()) {
                    lightUpDetailFragmentQ7.b0();
                    break;
                }
                break;
            default:
                LightUpActivity.Companion companion10 = LightUpActivity.t;
                LightUpDetailFragment lightUpDetailFragmentQ8 = lightUpActivity.Q();
                if (lightUpDetailFragmentQ8 != null && lightUpDetailFragmentQ8.isAdded() && !lightUpDetailFragmentQ8.isHidden()) {
                    lightUpActivity.runOnUiThread(new r90(lightUpActivity, 2));
                    lightUpDetailFragmentQ8.u();
                    break;
                }
                break;
        }
    }
}
