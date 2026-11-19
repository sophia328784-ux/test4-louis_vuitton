package com.vuitton.android.presentation.push;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.push.NotificationsSDKManager", f = "NotificationsSDKManager.kt", l = {333}, m = "setNotificationAsRead-gIAlu-s", v = 2)
final class NotificationsSDKManager$setNotificationAsRead$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f51879b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ NotificationsSDKManager f51880c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NotificationsSDKManager$setNotificationAsRead$1(NotificationsSDKManager notificationsSDKManager, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f51880c = notificationsSDKManager;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f51879b = obj;
        this.d |= Integer.MIN_VALUE;
        Object objI = this.f51880c.i(null, this);
        return objI == CoroutineSingletons.COROUTINE_SUSPENDED ? objI : new Result(objI);
    }
}
