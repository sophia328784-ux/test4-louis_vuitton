package com.google.firebase.installations;

import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.firebase.installations.local.PersistedInstallationEntry;
import defpackage.md;
import defpackage.r81;

/* JADX INFO: loaded from: classes2.dex */
class GetAuthTokenListener implements StateListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Utils f35166a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final TaskCompletionSource f35167b;

    public GetAuthTokenListener(Utils utils, TaskCompletionSource<InstallationTokenResult> taskCompletionSource) {
        this.f35166a = utils;
        this.f35167b = taskCompletionSource;
    }

    @Override // com.google.firebase.installations.StateListener
    public final boolean a(Exception exc) {
        this.f35167b.c(exc);
        return true;
    }

    @Override // com.google.firebase.installations.StateListener
    public final boolean b(PersistedInstallationEntry persistedInstallationEntry) {
        String str;
        if (persistedInstallationEntry.h() && !this.f35166a.a(persistedInstallationEntry)) {
            AutoValue_InstallationTokenResult.Builder builder = new AutoValue_InstallationTokenResult.Builder();
            String strA = persistedInstallationEntry.a();
            if (strA != null) {
                builder.f35149a = strA;
                builder.f35150b = persistedInstallationEntry.b();
                builder.f35151c = (byte) (builder.f35151c | 1);
                long jG = persistedInstallationEntry.g();
                byte b2 = (byte) (builder.f35151c | 2);
                builder.f35151c = b2;
                if (b2 == 3 && (str = builder.f35149a) != null) {
                    this.f35167b.b(new AutoValue_InstallationTokenResult(str, builder.f35150b, jG));
                    return true;
                }
                StringBuilder sb = new StringBuilder();
                if (builder.f35149a == null) {
                    sb.append(" token");
                }
                if ((builder.f35151c & 1) == 0) {
                    sb.append(" tokenExpirationTimestamp");
                }
                if ((builder.f35151c & 2) == 0) {
                    sb.append(" tokenCreationTimestamp");
                }
                md.k(defpackage.a.k("Missing required properties:", sb));
                return false;
            }
            r81.d("Null token");
        }
        return false;
    }
}
