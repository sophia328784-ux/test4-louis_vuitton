package com.google.android.gms.cloudmessaging;

import android.os.Bundle;
import android.util.Log;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.Task;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
final /* synthetic */ class zzae implements Continuation {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ zzae f28924b = new zzae();

    @Override // com.google.android.gms.tasks.Continuation
    public final /* synthetic */ Object d(Task task) throws IOException {
        if (task.isSuccessful()) {
            return (Bundle) task.getResult();
        }
        if (Log.isLoggable("Rpc", 3)) {
            "Error making request: ".concat(String.valueOf(task.getException()));
        }
        throw new IOException("SERVICE_NOT_AVAILABLE", task.getException());
    }
}
