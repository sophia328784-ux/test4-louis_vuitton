package com.vuitton.android.presentation.screen.mylv;

import com.vuitton.android.domain.monitoring.MonitorAction;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.mylv.MyLvViewModelImpl", f = "MyLvViewModelImpl.kt", l = {494, 495, 508}, m = "updateRepairs", v = 2)
final class MyLvViewModelImpl$updateRepairs$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public MonitorAction f59354b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ Object f59355c;
    public final /* synthetic */ MyLvViewModelImpl d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f59356e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MyLvViewModelImpl$updateRepairs$1(MyLvViewModelImpl myLvViewModelImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.d = myLvViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f59355c = obj;
        this.f59356e |= Integer.MIN_VALUE;
        return MyLvViewModelImpl.Ec(this.d, this);
    }
}
