package com.vuitton.android.presentation.screen.mylv;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.mylv.MyLvViewModelImpl", f = "MyLvViewModelImpl.kt", l = {367}, m = "loadHotContent", v = 2)
final class MyLvViewModelImpl$loadHotContent$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f59304b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ MyLvViewModelImpl f59305c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MyLvViewModelImpl$loadHotContent$1(MyLvViewModelImpl myLvViewModelImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f59305c = myLvViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f59304b = obj;
        this.d |= Integer.MIN_VALUE;
        return MyLvViewModelImpl.yc(this.f59305c, false, this);
    }
}
