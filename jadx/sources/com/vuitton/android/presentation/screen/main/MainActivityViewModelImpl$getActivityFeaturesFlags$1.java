package com.vuitton.android.presentation.screen.main;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.main.MainActivityViewModelImpl", f = "MainActivityViewModelImpl.kt", l = {262}, m = "getActivityFeaturesFlags", v = 2)
final class MainActivityViewModelImpl$getActivityFeaturesFlags$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f59075b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ MainActivityViewModelImpl f59076c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MainActivityViewModelImpl$getActivityFeaturesFlags$1(MainActivityViewModelImpl mainActivityViewModelImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f59076c = mainActivityViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f59075b = obj;
        this.d |= Integer.MIN_VALUE;
        return MainActivityViewModelImpl.yc(this.f59076c, this);
    }
}
