package com.google.firebase.installations;

import com.google.android.gms.tasks.Task;
import com.google.firebase.installations.internal.FidListenerHandle;
import defpackage.cz;

/* JADX INFO: loaded from: classes2.dex */
public interface FirebaseInstallationsApi {
    Task a();

    FidListenerHandle b(cz czVar);

    Task getId();
}
