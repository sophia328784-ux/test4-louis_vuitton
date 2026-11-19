package com.vuitton.android.data.repository;

import com.vuitton.foundation.model.domain.model.config.AppConfig;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.repository.AppConfigRepositoryImpl", f = "AppConfigRepositoryImpl.kt", l = {28, 33, 35}, m = "getAppConfig-G3ZMdxE", v = 2)
final class AppConfigRepositoryImpl$getAppConfig$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f47228b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public AppConfig f47229c;
    public long d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public /* synthetic */ Object f47230e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ AppConfigRepositoryImpl f47231f;
    public int g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AppConfigRepositoryImpl$getAppConfig$1(AppConfigRepositoryImpl appConfigRepositoryImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f47231f = appConfigRepositoryImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        this.f47230e = obj;
        this.g |= Integer.MIN_VALUE;
        Object objE = this.f47231f.e(0L, null, this);
        return objE == CoroutineSingletons.COROUTINE_SUSPENDED ? objE : new Result(objE);
    }
}
