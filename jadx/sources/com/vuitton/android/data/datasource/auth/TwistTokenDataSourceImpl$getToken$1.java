package com.vuitton.android.data.datasource.auth;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.datasource.auth.TwistTokenDataSourceImpl", f = "TwistTokenDataSourceImpl.kt", l = {24, 25, 29, 31, 33, 34, 39}, m = "getToken", v = 2)
final class TwistTokenDataSourceImpl$getToken$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f43848b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f43849c;
    public String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public String f43850e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public String f43851f;
    public String g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public String f43852h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public /* synthetic */ Object f43853i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ TwistTokenDataSourceImpl f43854j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f43855k;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TwistTokenDataSourceImpl$getToken$1(TwistTokenDataSourceImpl twistTokenDataSourceImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f43854j = twistTokenDataSourceImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f43853i = obj;
        this.f43855k |= Integer.MIN_VALUE;
        return this.f43854j.a(this);
    }
}
