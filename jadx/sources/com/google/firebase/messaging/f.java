package com.google.firebase.messaging;

import com.google.android.gms.cloudmessaging.RegisterRequest;
import com.google.android.gms.common.util.concurrent.NamedThreadFactory;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.FirebaseApp;
import com.google.firebase.FirebaseOptions;
import com.google.firebase.installations.InstallationTokenResult;
import defpackage.t7;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class f implements Continuation {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f35325b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f35326c;
    public final /* synthetic */ Object d;

    public /* synthetic */ f(Object obj, Object obj2, int i2) {
        this.f35325b = i2;
        this.f35326c = obj;
        this.d = obj2;
    }

    @Override // com.google.android.gms.tasks.Continuation
    public final Object d(Task task) {
        switch (this.f35325b) {
            case 0:
                GmsRegistrationClient gmsRegistrationClient = (GmsRegistrationClient) this.f35326c;
                ExecutorService executorService = (ExecutorService) this.d;
                gmsRegistrationClient.getClass();
                if (!task.isSuccessful()) {
                    return Tasks.e(task.getException() != null ? task.getException() : new ExecutionException(new RuntimeException("Unexpected Error")));
                }
                String str = (String) task.getResult();
                return gmsRegistrationClient.f35257c.a().h(Executors.newSingleThreadExecutor(new NamedThreadFactory("Firebase-Messaging-Network-Io")), new f(gmsRegistrationClient, str, 1)).g(executorService, new t7(str, 12));
            case 1:
                GmsRegistrationClient gmsRegistrationClient2 = (GmsRegistrationClient) this.f35326c;
                String str2 = (String) this.d;
                FirebaseApp firebaseApp = gmsRegistrationClient2.f35256b;
                if (!task.isSuccessful()) {
                    return Tasks.e(task.getException() != null ? task.getException() : new ExecutionException(new RuntimeException("Unexpected Error")));
                }
                String strA = ((InstallationTokenResult) task.getResult()).a();
                firebaseApp.a();
                FirebaseOptions firebaseOptions = firebaseApp.f34332c;
                String str3 = firebaseOptions.f34345a;
                firebaseApp.a();
                return gmsRegistrationClient2.f35255a.j(new RegisterRequest(Metadata.b(firebaseApp), firebaseOptions.f34346b, str3, str2, strA, "22.0.1"));
            default:
                RequestDeduplicator requestDeduplicator = (RequestDeduplicator) this.f35326c;
                String str4 = (String) this.d;
                synchronized (requestDeduplicator) {
                    requestDeduplicator.f35275b.remove(str4);
                    break;
                }
                return task;
        }
    }
}
