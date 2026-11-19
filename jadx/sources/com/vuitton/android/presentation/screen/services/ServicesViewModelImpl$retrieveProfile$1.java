package com.vuitton.android.presentation.screen.services;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.services.ServicesViewModelImpl", f = "ServicesViewModelImpl.kt", l = {207, 207}, m = "retrieveProfile", v = 2)
final class ServicesViewModelImpl$retrieveProfile$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f64346b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ServicesViewModelImpl f64347c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ServicesViewModelImpl$retrieveProfile$1(ServicesViewModelImpl servicesViewModelImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f64347c = servicesViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f64346b = obj;
        this.d |= Integer.MIN_VALUE;
        return ServicesViewModelImpl.Bc(this.f64347c, this);
    }
}
