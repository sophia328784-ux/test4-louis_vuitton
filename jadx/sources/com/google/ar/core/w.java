package com.google.ar.core;

import com.google.ar.core.exceptions.FatalException;
import com.google.ar.core.exceptions.UnavailableUserDeclinedInstallationException;

/* JADX INFO: loaded from: classes2.dex */
final class w {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f33444a = false;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ InstallActivity f33445b;

    public w(InstallActivity installActivity) {
        this.f33445b = installActivity;
    }

    public final void a(x xVar) {
        InstallActivity installActivity = this.f33445b;
        synchronized (installActivity) {
            try {
                if (this.f33444a) {
                    return;
                }
                installActivity.f(xVar);
                ArCoreApk.UserMessageType userMessageType = ArCoreApk.UserMessageType.APPLICATION;
                ArCoreApk.Availability availability = ArCoreApk.Availability.UNKNOWN_ERROR;
                int iOrdinal = xVar.ordinal();
                if (iOrdinal != 0) {
                    if (iOrdinal == 1) {
                        installActivity.c(new UnavailableUserDeclinedInstallationException());
                    } else if (iOrdinal == 2) {
                        if (!installActivity.g() && l.m.d) {
                            installActivity.e();
                        }
                        installActivity.c(null);
                    }
                    this.f33444a = true;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void b(FatalException fatalException) {
        InstallActivity installActivity = this.f33445b;
        synchronized (installActivity) {
            try {
                if (this.f33444a) {
                    return;
                }
                this.f33444a = true;
                installActivity.f(x.f33447b);
                installActivity.c(fatalException);
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
