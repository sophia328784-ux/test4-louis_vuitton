package com.google.android.gms.common.api.internal;

import android.os.DeadObjectException;
import android.os.RemoteException;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.tasks.TaskCompletionSource;
import defpackage.md;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class zag extends zac {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final TaskApiCall f29111b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final TaskCompletionSource f29112c;
    public final StatusExceptionMapper d;

    public zag(int i2, TaskApiCall taskApiCall, TaskCompletionSource taskCompletionSource, StatusExceptionMapper statusExceptionMapper) {
        super(i2);
        this.f29112c = taskCompletionSource;
        this.f29111b = taskApiCall;
        this.d = statusExceptionMapper;
        if (i2 == 2 && taskApiCall.f29061b) {
            md.n("Best-effort write calls cannot pass methods that should auto-resolve missing features.");
            throw null;
        }
    }

    @Override // com.google.android.gms.common.api.internal.zai
    public final void a(Status status) {
        this.f29112c.c(this.d.a(status));
    }

    @Override // com.google.android.gms.common.api.internal.zai
    public final void b(Exception exc) {
        this.f29112c.c(exc);
    }

    @Override // com.google.android.gms.common.api.internal.zai
    public final void c(zaaa zaaaVar, boolean z) {
        Boolean boolValueOf = Boolean.valueOf(z);
        Map map = zaaaVar.f29068b;
        TaskCompletionSource taskCompletionSource = this.f29112c;
        map.put(taskCompletionSource, boolValueOf);
        taskCompletionSource.f32085a.addOnCompleteListener(new zaz(zaaaVar, taskCompletionSource));
    }

    @Override // com.google.android.gms.common.api.internal.zai
    public final void d(zabk zabkVar) throws DeadObjectException {
        TaskCompletionSource taskCompletionSource = this.f29112c;
        try {
            this.f29111b.b(zabkVar.f29075b, taskCompletionSource);
        } catch (DeadObjectException e2) {
            throw e2;
        } catch (RemoteException e3) {
            a(zai.e(e3));
        } catch (RuntimeException e4) {
            taskCompletionSource.c(e4);
        }
    }

    @Override // com.google.android.gms.common.api.internal.zac
    public final Feature[] f(zabk zabkVar) {
        return this.f29111b.f29060a;
    }

    @Override // com.google.android.gms.common.api.internal.zac
    public final boolean g(zabk zabkVar) {
        return this.f29111b.f29061b;
    }

    @Override // com.google.android.gms.common.api.internal.zac
    public final int h(zabk zabkVar) {
        return this.f29111b.f29062c;
    }
}
