package com.vuitton.android.presentation.push;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.push.NotificationsSDKManager", f = "NotificationsSDKManager.kt", l = {265, 267}, m = "fetchNotifications-IoAF18A", v = 2)
final class NotificationsSDKManager$fetchNotifications$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f51871b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f51872c;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public /* synthetic */ Object f51873e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ NotificationsSDKManager f51874f;
    public int g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NotificationsSDKManager$fetchNotifications$1(NotificationsSDKManager notificationsSDKManager, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f51874f = notificationsSDKManager;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f51873e = obj;
        this.g |= Integer.MIN_VALUE;
        Object objD = this.f51874f.d(this);
        return objD == CoroutineSingletons.COROUTINE_SUSPENDED ? objD : new Result(objD);
    }
}
