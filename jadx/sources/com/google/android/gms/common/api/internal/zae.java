package com.google.android.gms.common.api.internal;

import android.app.PendingIntent;
import android.os.DeadObjectException;
import android.os.RemoteException;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.Preconditions;
import defpackage.d21;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class zae extends zai {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final BaseImplementation$ApiMethodImpl f29109b;

    public zae(int i2, BaseImplementation$ApiMethodImpl baseImplementation$ApiMethodImpl) {
        super(i2);
        Preconditions.i(baseImplementation$ApiMethodImpl, "Null methods are not runnable.");
        this.f29109b = baseImplementation$ApiMethodImpl;
    }

    @Override // com.google.android.gms.common.api.internal.zai
    public final void a(Status status) {
        try {
            this.f29109b.j(status);
        } catch (IllegalStateException unused) {
        }
    }

    @Override // com.google.android.gms.common.api.internal.zai
    public final void b(Exception exc) {
        String simpleName = exc.getClass().getSimpleName();
        String localizedMessage = exc.getLocalizedMessage();
        try {
            this.f29109b.j(new Status(10, d21.p(new StringBuilder(simpleName.length() + 2 + String.valueOf(localizedMessage).length()), simpleName, ": ", localizedMessage)));
        } catch (IllegalStateException unused) {
        }
    }

    @Override // com.google.android.gms.common.api.internal.zai
    public final void c(zaaa zaaaVar, boolean z) {
        Boolean boolValueOf = Boolean.valueOf(z);
        Map map = zaaaVar.f29067a;
        BaseImplementation$ApiMethodImpl baseImplementation$ApiMethodImpl = this.f29109b;
        map.put(baseImplementation$ApiMethodImpl, boolValueOf);
        baseImplementation$ApiMethodImpl.a(new zay(zaaaVar, baseImplementation$ApiMethodImpl));
    }

    @Override // com.google.android.gms.common.api.internal.zai
    public final void d(zabk zabkVar) throws DeadObjectException {
        try {
            BaseImplementation$ApiMethodImpl baseImplementation$ApiMethodImpl = this.f29109b;
            Api.Client client = zabkVar.f29075b;
            baseImplementation$ApiMethodImpl.getClass();
            try {
                baseImplementation$ApiMethodImpl.i(client);
            } catch (DeadObjectException e2) {
                baseImplementation$ApiMethodImpl.j(new Status(8, e2.getLocalizedMessage(), (PendingIntent) null));
                throw e2;
            } catch (RemoteException e3) {
                baseImplementation$ApiMethodImpl.j(new Status(8, e3.getLocalizedMessage(), (PendingIntent) null));
            }
        } catch (RuntimeException e4) {
            b(e4);
        }
    }
}
