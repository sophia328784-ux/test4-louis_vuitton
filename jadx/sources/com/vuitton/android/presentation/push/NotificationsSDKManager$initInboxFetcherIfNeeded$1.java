package com.vuitton.android.presentation.push;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.push.NotificationsSDKManager", f = "NotificationsSDKManager.kt", l = {106, 111, 111}, m = "initInboxFetcherIfNeeded", v = 2)
final class NotificationsSDKManager$initInboxFetcherIfNeeded$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f51875b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ NotificationsSDKManager f51876c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NotificationsSDKManager$initInboxFetcherIfNeeded$1(NotificationsSDKManager notificationsSDKManager, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f51876c = notificationsSDKManager;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f51875b = obj;
        this.d |= Integer.MIN_VALUE;
        return this.f51876c.j(this);
    }
}
