package com.google.android.gms.cloudmessaging;

import android.content.Intent;
import android.os.Bundle;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.Task;

/* JADX INFO: loaded from: classes2.dex */
final /* synthetic */ class zzac implements Continuation {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ zzac f28922b = new zzac();

    @Override // com.google.android.gms.tasks.Continuation
    public final /* synthetic */ Object d(Task task) {
        Intent intent = (Intent) ((Bundle) task.getResult()).getParcelable("notification_data");
        if (intent != null) {
            return new CloudMessage(intent);
        }
        return null;
    }
}
