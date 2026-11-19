package com.google.firebase.installations;

import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.firebase.installations.local.PersistedInstallation;
import com.google.firebase.installations.local.PersistedInstallationEntry;

/* JADX INFO: loaded from: classes2.dex */
class GetIdListener implements StateListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final TaskCompletionSource f35168a;

    public GetIdListener(TaskCompletionSource<String> taskCompletionSource) {
        this.f35168a = taskCompletionSource;
    }

    @Override // com.google.firebase.installations.StateListener
    public final boolean a(Exception exc) {
        return false;
    }

    @Override // com.google.firebase.installations.StateListener
    public final boolean b(PersistedInstallationEntry persistedInstallationEntry) {
        if (persistedInstallationEntry.f() != PersistedInstallation.RegistrationStatus.UNREGISTERED && !persistedInstallationEntry.h() && persistedInstallationEntry.f() != PersistedInstallation.RegistrationStatus.REGISTER_ERROR) {
            return false;
        }
        this.f35168a.d(persistedInstallationEntry.c());
        return true;
    }
}
