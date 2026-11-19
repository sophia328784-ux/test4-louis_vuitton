package com.vuitton.android.data.datasource.auth;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.datasource.auth.SalesforceTokenDataSourceImpl", f = "SalesforceTokenDataSourceImpl.kt", l = {30, 37, 38, 40}, m = "getToken", v = 2)
final class SalesforceTokenDataSourceImpl$getToken$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f43810b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f43811c;
    public String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public String f43812e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public /* synthetic */ Object f43813f;
    public final /* synthetic */ SalesforceTokenDataSourceImpl g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f43814h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SalesforceTokenDataSourceImpl$getToken$1(SalesforceTokenDataSourceImpl salesforceTokenDataSourceImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.g = salesforceTokenDataSourceImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f43813f = obj;
        this.f43814h |= Integer.MIN_VALUE;
        return this.g.a(this);
    }
}
