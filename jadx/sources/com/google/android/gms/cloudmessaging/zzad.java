package com.google.android.gms.cloudmessaging;

import android.os.Bundle;
import com.google.android.gms.tasks.SuccessContinuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;

/* JADX INFO: loaded from: classes2.dex */
final /* synthetic */ class zzad implements SuccessContinuation {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ zzad f28923a = new zzad();

    @Override // com.google.android.gms.tasks.SuccessContinuation
    public final Task a(Object obj) {
        Bundle bundle = (Bundle) obj;
        int i2 = Rpc.f28908h;
        return (bundle == null || !bundle.containsKey("google.messenger")) ? Tasks.f(bundle) : Tasks.f(null);
    }
}
