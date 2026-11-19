package com.google.firebase.messaging;

import android.os.Binder;
import android.os.Process;
import android.util.Log;
import defpackage.l8;

/* JADX INFO: loaded from: classes2.dex */
class WithinAppServiceBinder extends Binder {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ int f35307b = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final EnhancedIntentService.AnonymousClass1 f35308a;

    public interface IntentHandler {
    }

    public WithinAppServiceBinder(EnhancedIntentService.AnonymousClass1 anonymousClass1) {
        this.f35308a = anonymousClass1;
    }

    public final void a(WithinAppServiceConnection.BindRequest bindRequest) {
        if (Binder.getCallingUid() != Process.myUid()) {
            throw new SecurityException("Binding only allowed within app");
        }
        Log.isLoggable("FirebaseMessaging", 3);
        EnhancedIntentService.access$000(EnhancedIntentService.this, bindRequest.f35313a).b(new l8(1), new g(bindRequest, 2));
    }
}
