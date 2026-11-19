package com.vuitton.android.data.repository;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.repository.DynamicYieldRepositoryImpl", f = "DynamicYieldRepositoryImpl.kt", l = {EACTags.DISPLAY_IMAGE}, m = "initializeSdk-yxL6bBk", v = 2)
final class DynamicYieldRepositoryImpl$initializeSdk$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f47679b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ DynamicYieldRepositoryImpl f47680c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DynamicYieldRepositoryImpl$initializeSdk$1(DynamicYieldRepositoryImpl dynamicYieldRepositoryImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f47680c = dynamicYieldRepositoryImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f47679b = obj;
        this.d |= Integer.MIN_VALUE;
        Object objC = this.f47680c.c(null, false, null, this);
        return objC == CoroutineSingletons.COROUTINE_SUSPENDED ? objC : new Result(objC);
    }
}
