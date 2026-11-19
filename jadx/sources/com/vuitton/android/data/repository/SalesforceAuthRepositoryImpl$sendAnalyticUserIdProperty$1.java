package com.vuitton.android.data.repository;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.repository.SalesforceAuthRepositoryImpl", f = "SalesforceAuthRepositoryImpl.kt", l = {100, 102, 104, 106}, m = "sendAnalyticUserIdProperty", v = 2)
final class SalesforceAuthRepositoryImpl$sendAnalyticUserIdProperty$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f47974b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Object f47975c;
    public /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ SalesforceAuthRepositoryImpl f47976e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f47977f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SalesforceAuthRepositoryImpl$sendAnalyticUserIdProperty$1(SalesforceAuthRepositoryImpl salesforceAuthRepositoryImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f47976e = salesforceAuthRepositoryImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.d = obj;
        this.f47977f |= Integer.MIN_VALUE;
        int i2 = SalesforceAuthRepositoryImpl.f47947i;
        return this.f47976e.g(this);
    }
}
