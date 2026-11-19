package com.google.android.play.core.integrity;

import android.util.Base64;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.gms.tasks.Tasks;

/* JADX INFO: loaded from: classes2.dex */
final class aa implements IntegrityManager {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final aj f33278a;

    public aa(aj ajVar) {
        this.f33278a = ajVar;
    }

    @Override // com.google.android.play.core.integrity.IntegrityManager
    public final Task requestIntegrityToken(IntegrityTokenRequest integrityTokenRequest) {
        aj ajVar = this.f33278a;
        com.google.android.play.integrity.internal.ae aeVar = ajVar.d;
        if (aeVar == null) {
            return Tasks.e(new IntegrityServiceException(-2, null));
        }
        try {
            byte[] bArrDecode = Base64.decode(integrityTokenRequest.b(), 10);
            Long lA = integrityTokenRequest.a();
            ajVar.f33289a.a("requestIntegrityToken(%s)", integrityTokenRequest);
            TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
            aeVar.c(new af(ajVar, taskCompletionSource, bArrDecode, lA, null, taskCompletionSource, integrityTokenRequest), taskCompletionSource);
            return taskCompletionSource.f32085a;
        } catch (IllegalArgumentException e2) {
            return Tasks.e(new IntegrityServiceException(-13, e2));
        }
    }
}
