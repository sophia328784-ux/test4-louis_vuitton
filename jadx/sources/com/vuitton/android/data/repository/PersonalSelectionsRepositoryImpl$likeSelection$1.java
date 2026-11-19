package com.vuitton.android.data.repository;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.repository.PersonalSelectionsRepositoryImpl", f = "PersonalSelectionsRepositoryImpl.kt", l = {EACTags.CURRENCY_EXPONENT, 55}, m = "likeSelection-D9mHw4E", v = 2)
final class PersonalSelectionsRepositoryImpl$likeSelection$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f47875b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f47876c;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f47877e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f47878f;
    public /* synthetic */ Object g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ PersonalSelectionsRepositoryImpl f47879h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f47880i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PersonalSelectionsRepositoryImpl$likeSelection$1(PersonalSelectionsRepositoryImpl personalSelectionsRepositoryImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f47879h = personalSelectionsRepositoryImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        this.g = obj;
        this.f47880i |= Integer.MIN_VALUE;
        Object objB = this.f47879h.b(null, null, this);
        return objB == CoroutineSingletons.COROUTINE_SUSPENDED ? objB : new Result(objB);
    }
}
