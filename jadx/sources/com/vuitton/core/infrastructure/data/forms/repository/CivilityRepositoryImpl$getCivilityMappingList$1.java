package com.vuitton.core.infrastructure.data.forms.repository;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.core.infrastructure.data.forms.repository.CivilityRepositoryImpl", f = "CivilityRepositoryImpl.kt", l = {15}, m = "getCivilityMappingList-ucXmAVc", v = 2)
final class CivilityRepositoryImpl$getCivilityMappingList$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f66143b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ Object f66144c;
    public final /* synthetic */ CivilityRepositoryImpl d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f66145e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CivilityRepositoryImpl$getCivilityMappingList$1(CivilityRepositoryImpl civilityRepositoryImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.d = civilityRepositoryImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f66144c = obj;
        this.f66145e |= Integer.MIN_VALUE;
        return this.d.c(null, null, this);
    }
}
