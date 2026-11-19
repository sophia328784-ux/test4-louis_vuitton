package com.vuitton.android.presentation.screen.account.myinformation;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.account.myinformation.MyInformationViewModelImpl", f = "MyInformationViewModelImpl.kt", l = {195, 196, 196}, m = "getProfileFromServer-IoAF18A", v = 2)
final class MyInformationViewModelImpl$getProfileFromServer$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f52543b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f52544c;
    public /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ MyInformationViewModelImpl f52545e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f52546f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MyInformationViewModelImpl$getProfileFromServer$1(MyInformationViewModelImpl myInformationViewModelImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f52545e = myInformationViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.d = obj;
        this.f52546f |= Integer.MIN_VALUE;
        Object objYc = MyInformationViewModelImpl.yc(this.f52545e, this);
        return objYc == CoroutineSingletons.COROUTINE_SUSPENDED ? objYc : new Result(objYc);
    }
}
