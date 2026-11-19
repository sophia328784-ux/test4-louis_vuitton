package com.vuitton.android.data.repository;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.repository.AppLinkRepositoryImpl", f = "AppLinkRepositoryImpl.kt", l = {EACTags.CARD_SEQUENCE_NUMBER, EACTags.SEX}, m = "getContributionLinkToLaunch-IoAF18A", v = 2)
final class AppLinkRepositoryImpl$getContributionLinkToLaunch$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Object f47257b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ Object f47258c;
    public final /* synthetic */ AppLinkRepositoryImpl d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f47259e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AppLinkRepositoryImpl$getContributionLinkToLaunch$1(AppLinkRepositoryImpl appLinkRepositoryImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.d = appLinkRepositoryImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        this.f47258c = obj;
        this.f47259e |= Integer.MIN_VALUE;
        Object objF = this.d.f(this);
        return objF == CoroutineSingletons.COROUTINE_SUSPENDED ? objF : new Result(objF);
    }
}
