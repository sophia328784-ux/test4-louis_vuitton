package com.vuitton.android.presentation.screen.account.userworldwideid;

import com.vuitton.android.domain.monitoring.MonitorAction;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.account.userworldwideid.UserWorldwideIdViewModelImpl", f = "UserWorldwideIdViewModelImpl.kt", l = {64}, m = "retrieveUserWorldwideIdResult-IoAF18A", v = 2)
final class UserWorldwideIdViewModelImpl$retrieveUserWorldwideIdResult$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public MonitorAction f52702b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ Object f52703c;
    public final /* synthetic */ UserWorldwideIdViewModelImpl d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f52704e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UserWorldwideIdViewModelImpl$retrieveUserWorldwideIdResult$1(UserWorldwideIdViewModelImpl userWorldwideIdViewModelImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.d = userWorldwideIdViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f52703c = obj;
        this.f52704e |= Integer.MIN_VALUE;
        Object objYc = UserWorldwideIdViewModelImpl.yc(this.d, this);
        return objYc == CoroutineSingletons.COROUTINE_SUSPENDED ? objYc : new Result(objYc);
    }
}
