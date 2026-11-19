package com.vuitton.android.presentation.screen.account.myinformation;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.account.myinformation.MyInformationViewModelImpl", f = "MyInformationViewModelImpl.kt", l = {192}, m = "getProfileCivilitiesMapping-IoAF18A", v = 2)
final class MyInformationViewModelImpl$getProfileCivilitiesMapping$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f52541b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ MyInformationViewModelImpl f52542c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MyInformationViewModelImpl$getProfileCivilitiesMapping$1(MyInformationViewModelImpl myInformationViewModelImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f52542c = myInformationViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f52541b = obj;
        this.d |= Integer.MIN_VALUE;
        Object objBc = this.f52542c.Bc(this);
        return objBc == CoroutineSingletons.COROUTINE_SUSPENDED ? objBc : new Result(objBc);
    }
}
