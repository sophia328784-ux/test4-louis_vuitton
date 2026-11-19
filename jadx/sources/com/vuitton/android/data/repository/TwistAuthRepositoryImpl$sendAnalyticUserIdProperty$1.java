package com.vuitton.android.data.repository;

import java.util.Set;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.repository.TwistAuthRepositoryImpl", f = "TwistAuthRepositoryImpl.kt", l = {502, 506, 508, 510}, m = "sendAnalyticUserIdProperty", v = 2)
final class TwistAuthRepositoryImpl$sendAnalyticUserIdProperty$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f48143b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Object f48144c;
    public /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ TwistAuthRepositoryImpl f48145e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f48146f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TwistAuthRepositoryImpl$sendAnalyticUserIdProperty$1(TwistAuthRepositoryImpl twistAuthRepositoryImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f48145e = twistAuthRepositoryImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.d = obj;
        this.f48146f |= Integer.MIN_VALUE;
        Set set = TwistAuthRepositoryImpl.f48080j;
        return this.f48145e.v(this);
    }
}
