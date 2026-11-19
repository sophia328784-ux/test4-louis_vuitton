package com.google.ar.core;

import android.view.View;
import com.dynatrace.android.callback.Callback;
import com.google.ar.core.exceptions.UnavailableUserDeclinedInstallationException;
import com.sensorsdata.analytics.android.autotrack.aop.SensorsDataAutoTrackHelper;

/* JADX INFO: loaded from: classes2.dex */
final class t implements View.OnClickListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ InstallActivity f33438b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f33439c = 0;

    public t(InstallActivity installActivity, int i2) {
        this.f33438b = installActivity;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        Callback.n(view);
        try {
            int i2 = this.f33439c;
            InstallActivity installActivity = this.f33438b;
            if (i2 != 0) {
                installActivity.c(new UnavailableUserDeclinedInstallationException());
            } else {
                installActivity.b();
                installActivity.d();
            }
        } finally {
            Callback.o();
            SensorsDataAutoTrackHelper.trackViewOnClick(view);
        }
    }

    public t(InstallActivity installActivity) {
        this.f33438b = installActivity;
    }
}
