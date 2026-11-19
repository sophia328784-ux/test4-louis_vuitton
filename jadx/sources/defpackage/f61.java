package defpackage;

import android.R;
import com.google.android.material.snackbar.Snackbar;
import com.vuitton.android.presentation.screen.connectivity.watch.settings.WatchSettingsFragment;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class f61 implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f69056b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ WatchSettingsFragment f69057c;

    public /* synthetic */ f61(WatchSettingsFragment watchSettingsFragment, int i2) {
        this.f69056b = i2;
        this.f69057c = watchSettingsFragment;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = this.f69056b;
        WatchSettingsFragment watchSettingsFragment = this.f69057c;
        switch (i2) {
            case 0:
                WatchSettingsFragment.Companion companion = WatchSettingsFragment.J;
                Snackbar.f(watchSettingsFragment.requireActivity().findViewById(R.id.content), com.vuitton.android.R.string.error_generic, -1).h();
                break;
            default:
                WatchSettingsFragment.Companion companion2 = WatchSettingsFragment.J;
                Snackbar.f(watchSettingsFragment.requireActivity().findViewById(R.id.content), com.vuitton.android.R.string.error_generic, -1).h();
                break;
        }
    }
}
