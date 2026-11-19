package com.google.firebase.messaging;

import android.content.Intent;
import android.os.Bundle;
import com.batch.android.Batch;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import defpackage.az;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class g implements Continuation, OnCompleteListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f35327b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f35328c;

    public /* synthetic */ g(Object obj, int i2) {
        this.f35327b = i2;
        this.f35328c = obj;
    }

    @Override // com.google.android.gms.tasks.Continuation
    public Object d(Task task) throws IOException {
        ((GmsRpc) this.f35328c).getClass();
        Bundle bundle = (Bundle) task.i();
        if (bundle == null) {
            az.o("SERVICE_NOT_AVAILABLE");
            return null;
        }
        String string = bundle.getString(Batch.EXTRA_REGISTRATION_IDENTIFIER);
        if (string != null) {
            return string;
        }
        String string2 = bundle.getString("unregistered");
        if (string2 != null) {
            return string2;
        }
        String string3 = bundle.getString("error");
        if ("RST".equals(string3)) {
            az.o("INSTANCE_ID_RESET");
            return null;
        }
        if (string3 != null) {
            az.o(string3);
            return null;
        }
        bundle.toString();
        new Throwable();
        az.o("SERVICE_NOT_AVAILABLE");
        return null;
    }

    @Override // com.google.android.gms.tasks.OnCompleteListener
    public void onComplete(Task task) {
        int i2 = this.f35327b;
        Object obj = this.f35328c;
        switch (i2) {
            case 1:
                WakeLockHolder.b((Intent) obj);
                break;
            default:
                int i3 = WithinAppServiceBinder.f35307b;
                ((WithinAppServiceConnection.BindRequest) obj).f35314b.d(null);
                break;
        }
    }
}
