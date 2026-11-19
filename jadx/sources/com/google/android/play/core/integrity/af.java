package com.google.android.play.core.integrity;

import android.os.Parcelable;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.play.integrity.internal.n;
import com.google.android.play.integrity.internal.t;

/* JADX INFO: loaded from: classes2.dex */
final class af extends t {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ byte[] f33282a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ Long f33283b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final /* synthetic */ TaskCompletionSource f33284c;
    final /* synthetic */ IntegrityTokenRequest d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final /* synthetic */ aj f33285e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public af(aj ajVar, TaskCompletionSource taskCompletionSource, byte[] bArr, Long l, Parcelable parcelable, TaskCompletionSource taskCompletionSource2, IntegrityTokenRequest integrityTokenRequest) {
        super(taskCompletionSource);
        this.f33285e = ajVar;
        this.f33282a = bArr;
        this.f33283b = l;
        this.f33284c = taskCompletionSource2;
        this.d = integrityTokenRequest;
    }

    @Override // com.google.android.play.integrity.internal.t
    public final void a(Exception exc) {
        if (exc instanceof com.google.android.play.integrity.internal.af) {
            super.a(new IntegrityServiceException(-9, exc));
        } else {
            super.a(exc);
        }
    }

    @Override // com.google.android.play.integrity.internal.t
    public final void b() {
        try {
            aj ajVar = this.f33285e;
            ((n) ajVar.d.n).s(aj.a(ajVar, this.f33282a, this.f33283b), new ai(this.f33285e, this.f33284c));
        } catch (RemoteException e2) {
            aj ajVar2 = this.f33285e;
            IntegrityTokenRequest integrityTokenRequest = this.d;
            com.google.android.play.integrity.internal.s sVar = ajVar2.f33289a;
            Object[] objArr = {integrityTokenRequest};
            sVar.getClass();
            if (Log.isLoggable("PlayCore", 6)) {
                com.google.android.play.integrity.internal.s.b(sVar.f33333a, "requestIntegrityToken(%s)", objArr);
            }
            this.f33284c.c(new IntegrityServiceException(-100, e2));
        }
    }
}
