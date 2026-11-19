package com.vuitton.android.presentation.screen.account.myinformation;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlinx.coroutines.flow.MutableStateFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.account.myinformation.MyInformationViewModelImpl", f = "MyInformationViewModelImpl.kt", l = {165, 166, 167}, m = "initFlags", v = 2)
final class MyInformationViewModelImpl$initFlags$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public MutableStateFlow f52547b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Object f52548c;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f52549e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f52550f;
    public boolean g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public /* synthetic */ Object f52551h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ MyInformationViewModelImpl f52552i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f52553j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MyInformationViewModelImpl$initFlags$1(MyInformationViewModelImpl myInformationViewModelImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f52552i = myInformationViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f52551h = obj;
        this.f52553j |= Integer.MIN_VALUE;
        return MyInformationViewModelImpl.zc(this.f52552i, this);
    }
}
