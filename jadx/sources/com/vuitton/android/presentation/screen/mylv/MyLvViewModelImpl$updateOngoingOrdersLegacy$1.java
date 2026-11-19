package com.vuitton.android.presentation.screen.mylv;

import com.vuitton.android.domain.monitoring.MonitorAction;
import com.vuitton.foundation.model.domain.model.common.ResultStrategy;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.mylv.MyLvViewModelImpl", f = "MyLvViewModelImpl.kt", l = {536, 539, 540, 541}, m = "updateOngoingOrdersLegacy", v = 2)
final class MyLvViewModelImpl$updateOngoingOrdersLegacy$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f59348b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public MonitorAction f59349c;
    public ResultStrategy d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Object f59350e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public /* synthetic */ Object f59351f;
    public final /* synthetic */ MyLvViewModelImpl g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f59352h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MyLvViewModelImpl$updateOngoingOrdersLegacy$1(MyLvViewModelImpl myLvViewModelImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.g = myLvViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f59351f = obj;
        this.f59352h |= Integer.MIN_VALUE;
        return MyLvViewModelImpl.Dc(this.g, false, this);
    }
}
