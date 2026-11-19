package com.vuitton.core.infrastructure.data.forms.repository;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.core.infrastructure.data.forms.repository.CivilityRepositoryImpl", f = "CivilityRepositoryImpl.kt", l = {28, 30}, m = "getAddressCivilityMappingList-G3ZMdxE", v = 2)
final class CivilityRepositoryImpl$getAddressCivilityMappingList$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f66140b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ Object f66141c;
    public final /* synthetic */ CivilityRepositoryImpl d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f66142e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CivilityRepositoryImpl$getAddressCivilityMappingList$1(CivilityRepositoryImpl civilityRepositoryImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.d = civilityRepositoryImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f66141c = obj;
        this.f66142e |= Integer.MIN_VALUE;
        Object objA = this.d.a(null, false, this);
        return objA == CoroutineSingletons.COROUTINE_SUSPENDED ? objA : new Result(objA);
    }
}
