package com.vuitton.android.presentation.screen.account.myinformation;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.account.myinformation.MyInformationViewModelImpl", f = "MyInformationViewModelImpl.kt", l = {505, 505}, m = "updateMarketingDisclaimerVisibility", v = 2)
final class MyInformationViewModelImpl$updateMarketingDisclaimerVisibility$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f52576b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ Object f52577c;
    public final /* synthetic */ MyInformationViewModelImpl d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f52578e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MyInformationViewModelImpl$updateMarketingDisclaimerVisibility$1(MyInformationViewModelImpl myInformationViewModelImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.d = myInformationViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f52577c = obj;
        this.f52578e |= Integer.MIN_VALUE;
        return MyInformationViewModelImpl.Ac(this.d, this);
    }
}
