package defpackage;

import com.google.firebase.crashlytics.internal.common.CrashlyticsCore;
import com.google.firebase.crashlytics.internal.settings.SettingsController;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class uq implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f80380b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ CrashlyticsCore f80381c;
    public final /* synthetic */ SettingsController d;

    public /* synthetic */ uq(CrashlyticsCore crashlyticsCore, SettingsController settingsController, int i2) {
        this.f80380b = i2;
        this.f80381c = crashlyticsCore;
        this.d = settingsController;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = this.f80380b;
        SettingsController settingsController = this.d;
        CrashlyticsCore crashlyticsCore = this.f80381c;
        switch (i2) {
            case 0:
                crashlyticsCore.a(settingsController);
                break;
            default:
                crashlyticsCore.a(settingsController);
                break;
        }
    }
}
