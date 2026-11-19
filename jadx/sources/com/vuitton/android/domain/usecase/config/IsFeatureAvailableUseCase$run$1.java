package com.vuitton.android.domain.usecase.config;

import com.vuitton.foundation.model.domain.model.sync.Feature;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.domain.usecase.config.IsFeatureAvailableUseCase$run$1", f = "IsFeatureAvailableUseCase.kt", l = {41, EACTags.DATE_OF_BIRTH}, m = "invokeSuspend", v = 2)
final class IsFeatureAvailableUseCase$run$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Boolean>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Feature[] f49697b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public IsFeatureAvailableUseCase f49698c;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f49699e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f49700f;
    public int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ Feature[] f49701h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ IsFeatureAvailableUseCase f49702i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public IsFeatureAvailableUseCase$run$1(Feature[] featureArr, IsFeatureAvailableUseCase isFeatureAvailableUseCase, Continuation continuation) {
        super(2, continuation);
        this.f49701h = featureArr;
        this.f49702i = isFeatureAvailableUseCase;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new IsFeatureAvailableUseCase$run$1(this.f49701h, this.f49702i, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((IsFeatureAvailableUseCase$run$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code duplicated, block: B:21:0x0060  */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0072, code lost:
    
        if (r10 == r0) goto L23;
     */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x0072 -> B:24:0x0075). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r10) {
        /*
            r9 = this;
            kotlin.coroutines.intrinsics.CoroutineSingletons r0 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r1 = r9.g
            r2 = 2
            r3 = 1
            r4 = 0
            if (r1 == 0) goto L52
            if (r1 == r3) goto L22
            if (r1 != r2) goto L1b
            int r1 = r9.f49700f
            int r5 = r9.f49699e
            int r6 = r9.d
            com.vuitton.android.domain.usecase.config.IsFeatureAvailableUseCase r7 = r9.f49698c
            com.vuitton.foundation.model.domain.model.sync.Feature[] r8 = r9.f49697b
            kotlin.ResultKt.b(r10)
            goto L75
        L1b:
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r9)
            r9 = 0
            return r9
        L22:
            int r1 = r9.f49700f
            int r2 = r9.f49699e
            int r5 = r9.d
            com.vuitton.android.domain.usecase.config.IsFeatureAvailableUseCase r6 = r9.f49698c
            com.vuitton.foundation.model.domain.model.sync.Feature[] r7 = r9.f49697b
            kotlin.ResultKt.b(r10)
        L2f:
            java.lang.Boolean r10 = (java.lang.Boolean) r10
            boolean r10 = r10.booleanValue()
            if (r10 == 0) goto L38
            goto L80
        L38:
            int r2 = r2 + r3
            if (r2 >= r1) goto L50
            r10 = r7[r2]
            r9.f49697b = r7
            r9.f49698c = r6
            r9.d = r5
            r9.f49699e = r2
            r9.f49700f = r1
            r9.g = r3
            java.lang.Object r10 = r6.a(r10, r9)
            if (r10 != r0) goto L2f
            goto L74
        L50:
            r3 = r4
            goto L80
        L52:
            kotlin.ResultKt.b(r10)
            com.vuitton.foundation.model.domain.model.sync.Feature[] r10 = r9.f49701h
            int r1 = r10.length
            com.vuitton.android.domain.usecase.config.IsFeatureAvailableUseCase r5 = r9.f49702i
            r8 = r10
            r6 = r4
            r7 = r5
            r5 = r6
        L5e:
            if (r5 >= r1) goto L80
            r10 = r8[r5]
            r9.f49697b = r8
            r9.f49698c = r7
            r9.d = r6
            r9.f49699e = r5
            r9.f49700f = r1
            r9.g = r2
            java.lang.Object r10 = r7.a(r10, r9)
            if (r10 != r0) goto L75
        L74:
            return r0
        L75:
            java.lang.Boolean r10 = (java.lang.Boolean) r10
            boolean r10 = r10.booleanValue()
            if (r10 != 0) goto L7e
            goto L50
        L7e:
            int r5 = r5 + r3
            goto L5e
        L80:
            java.lang.Boolean r9 = java.lang.Boolean.valueOf(r3)
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.domain.usecase.config.IsFeatureAvailableUseCase$run$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
