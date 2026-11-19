package com.dynamicyield.sdk.wrapper.core;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlinx.coroutines.sync.MutexImpl;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(c = "com.dynamicyield.sdk.wrapper.core.DYSdk", f = "DYSdk.kt", l = {377, 328}, m = "setActiveConsentAccepted")
final class DYSdk$setActiveConsentAccepted$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Object f25855b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public MutexImpl f25856c;
    public /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ DYSdk f25857e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f25858f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DYSdk$setActiveConsentAccepted$1(DYSdk dYSdk, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f25857e = dYSdk;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.d = obj;
        this.f25858f |= Integer.MIN_VALUE;
        return this.f25857e.e(null, this);
    }
}
