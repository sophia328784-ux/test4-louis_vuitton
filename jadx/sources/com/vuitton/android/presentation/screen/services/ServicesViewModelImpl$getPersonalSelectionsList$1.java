package com.vuitton.android.presentation.screen.services;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.services.ServicesViewModelImpl", f = "ServicesViewModelImpl.kt", l = {326}, m = "getPersonalSelectionsList", v = 2)
final class ServicesViewModelImpl$getPersonalSelectionsList$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f64324b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ServicesViewModelImpl f64325c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ServicesViewModelImpl$getPersonalSelectionsList$1(ServicesViewModelImpl servicesViewModelImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f64325c = servicesViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f64324b = obj;
        this.d |= Integer.MIN_VALUE;
        return ServicesViewModelImpl.Ac(this.f64325c, this);
    }
}
