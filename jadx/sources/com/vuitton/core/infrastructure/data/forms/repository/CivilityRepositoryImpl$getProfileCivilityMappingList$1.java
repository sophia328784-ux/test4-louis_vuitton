package com.vuitton.core.infrastructure.data.forms.repository;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.core.infrastructure.data.forms.repository.CivilityRepositoryImpl", f = "CivilityRepositoryImpl.kt", l = {55, 57}, m = "getProfileCivilityMappingList-G3ZMdxE", v = 2)
final class CivilityRepositoryImpl$getProfileCivilityMappingList$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f66146b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ Object f66147c;
    public final /* synthetic */ CivilityRepositoryImpl d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f66148e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CivilityRepositoryImpl$getProfileCivilityMappingList$1(CivilityRepositoryImpl civilityRepositoryImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.d = civilityRepositoryImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f66147c = obj;
        this.f66148e |= Integer.MIN_VALUE;
        Object objB = this.d.b(null, false, this);
        return objB == CoroutineSingletons.COROUTINE_SUSPENDED ? objB : new Result(objB);
    }
}
