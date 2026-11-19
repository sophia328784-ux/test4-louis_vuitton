package defpackage;

import android.R;
import com.google.android.material.snackbar.Snackbar;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.common.BaseTrunkActivity;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class rc implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f79312b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ BaseTrunkActivity f79313c;

    public /* synthetic */ rc(BaseTrunkActivity baseTrunkActivity, int i2) {
        this.f79312b = i2;
        this.f79313c = baseTrunkActivity;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = this.f79312b;
        BaseTrunkActivity baseTrunkActivity = this.f79313c;
        switch (i2) {
            case 0:
                int i3 = BaseTrunkActivity.q;
                Snackbar.f(baseTrunkActivity.findViewById(R.id.content), com.vuitton.android.R.string.error_no_location_permission, 0).h();
                break;
            default:
                int i4 = BaseTrunkActivity.q;
                Snackbar.f(baseTrunkActivity.findViewById(R.id.content), com.vuitton.android.R.string.error_no_location_permission, 0).h();
                break;
        }
    }
}
