package com.vuitton.android.data.repository;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.repository.PersonalSelectionsRepositoryImpl", f = "PersonalSelectionsRepositoryImpl.kt", l = {37, 39, 41}, m = "getPersonalSelectionsDetail-gIAlu-s", v = 2)
final class PersonalSelectionsRepositoryImpl$getPersonalSelectionsDetail$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f47866b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f47867c;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f47868e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public /* synthetic */ Object f47869f;
    public final /* synthetic */ PersonalSelectionsRepositoryImpl g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f47870h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PersonalSelectionsRepositoryImpl$getPersonalSelectionsDetail$1(PersonalSelectionsRepositoryImpl personalSelectionsRepositoryImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.g = personalSelectionsRepositoryImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        this.f47869f = obj;
        this.f47870h |= Integer.MIN_VALUE;
        Object objA = this.g.a(null, this);
        return objA == CoroutineSingletons.COROUTINE_SUSPENDED ? objA : new Result(objA);
    }
}
