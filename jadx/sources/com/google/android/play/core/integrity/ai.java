package com.google.android.play.core.integrity;

import android.os.Bundle;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.play.integrity.internal.o;

/* JADX INFO: loaded from: classes2.dex */
final class ai extends o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final com.google.android.play.integrity.internal.s f33286a = new com.google.android.play.integrity.internal.s("OnRequestIntegrityTokenCallback");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final TaskCompletionSource f33287b;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ aj f33288j;

    public ai(aj ajVar, TaskCompletionSource taskCompletionSource) {
        this.f33288j = ajVar;
        this.f33287b = taskCompletionSource;
    }

    @Override // com.google.android.play.integrity.internal.p
    public final void b(Bundle bundle) {
        aj ajVar = this.f33288j;
        com.google.android.play.integrity.internal.ae aeVar = ajVar.d;
        TaskCompletionSource taskCompletionSource = this.f33287b;
        aeVar.d(taskCompletionSource);
        this.f33286a.a("onRequestIntegrityToken", new Object[0]);
        ajVar.f33291c.getClass();
        int i2 = bundle.getInt("error");
        IntegrityServiceException integrityServiceException = i2 == 0 ? null : new IntegrityServiceException(i2, null);
        if (integrityServiceException != null) {
            taskCompletionSource.c(integrityServiceException);
            return;
        }
        String string = bundle.getString("token");
        if (string == null) {
            taskCompletionSource.c(new IntegrityServiceException(-100, null));
            return;
        }
        bundle.getLong("request.token.sid");
        new com.google.android.play.integrity.internal.s("IntegrityDialogWrapper");
        taskCompletionSource.d(new aq(string));
    }
}
