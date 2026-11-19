package com.vuitton.android.data.dto.profile;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.dto.profile.KisaConsentsParserImpl", f = "KisaConsentsParserImpl.kt", l = {15}, m = "parse-gIAlu-s", v = 2)
final class KisaConsentsParserImpl$parse$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f46674b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ KisaConsentsParserImpl f46675c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public KisaConsentsParserImpl$parse$1(KisaConsentsParserImpl kisaConsentsParserImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f46675c = kisaConsentsParserImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f46674b = obj;
        this.d |= Integer.MIN_VALUE;
        Object objA = this.f46675c.a(null, this);
        return objA == CoroutineSingletons.COROUTINE_SUSPENDED ? objA : new Result(objA);
    }
}
