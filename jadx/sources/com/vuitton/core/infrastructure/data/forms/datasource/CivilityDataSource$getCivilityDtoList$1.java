package com.vuitton.core.infrastructure.data.forms.datasource;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.core.infrastructure.data.forms.datasource.CivilityDataSource", f = "CivilityDataSource.kt", l = {EACTags.CARDHOLDER_NATIONALITY, 62, EACTags.UNIFORM_RESOURCE_LOCATOR, 98, 116}, m = "getCivilityDtoList-gIAlu-s", v = 2)
final class CivilityDataSource$getCivilityDtoList$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public CivilityDataSource f65923b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f65924c;
    public /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ CivilityDataSource f65925e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f65926f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CivilityDataSource$getCivilityDtoList$1(CivilityDataSource civilityDataSource, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f65925e = civilityDataSource;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        this.d = obj;
        this.f65926f |= Integer.MIN_VALUE;
        Object objA = this.f65925e.a(null, this);
        return objA == CoroutineSingletons.COROUTINE_SUSPENDED ? objA : new Result(objA);
    }
}
