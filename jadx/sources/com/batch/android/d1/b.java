package com.batch.android.d1;

import com.batch.android.e.t;
import com.batch.android.v0.j;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.messaging.FirebaseMessaging;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes2.dex */
public class b extends a {
    @Override // com.batch.android.PushRegistrationProvider
    public String getRegistration() {
        try {
            if (this.f23042a == null) {
                return null;
            }
            Task taskE = FirebaseMessaging.c().e();
            Tasks.b(taskE, 30000L, TimeUnit.MILLISECONDS);
            if (taskE.isSuccessful()) {
                return (String) taskE.getResult();
            }
            t.c("Fetching FCM registration token failed", taskE.getException());
            return null;
        } catch (Exception e2) {
            t.a(j.m, "Could not register for FCM Push.", e2);
            return null;
        }
    }

    @Override // com.batch.android.PushRegistrationProvider
    public String getShortname() {
        return "FCM-Token";
    }
}
