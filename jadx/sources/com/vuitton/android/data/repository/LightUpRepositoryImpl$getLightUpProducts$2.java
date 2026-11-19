package com.vuitton.android.data.repository;

import com.vuitton.android.data.connectivity.lightup.LightUpProductEntity;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "Lcom/vuitton/android/data/connectivity/lightup/LightUpProductEntity;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.repository.LightUpRepositoryImpl$getLightUpProducts$2", f = "LightUpRepositoryImpl.kt", l = {EACTags.CURRENCY_CODE, 46, EACTags.CARD_SEQUENCE_NUMBER}, m = "invokeSuspend", v = 2)
final class LightUpRepositoryImpl$getLightUpProducts$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super List<? extends LightUpProductEntity>>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f47773b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ boolean f47774c;
    public final /* synthetic */ boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ LightUpRepositoryImpl f47775e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LightUpRepositoryImpl$getLightUpProducts$2(boolean z, boolean z2, LightUpRepositoryImpl lightUpRepositoryImpl, Continuation continuation) {
        super(2, continuation);
        this.f47774c = z;
        this.d = z2;
        this.f47775e = lightUpRepositoryImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new LightUpRepositoryImpl$getLightUpProducts$2(this.f47774c, this.d, this.f47775e, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((LightUpRepositoryImpl$getLightUpProducts$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0039, code lost:
    
        if (r7 == r0) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x004d, code lost:
    
        if (r7 == r0) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0061, code lost:
    
        if (r7 == r0) goto L29;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r7) {
        /*
            r6 = this;
            kotlin.coroutines.intrinsics.CoroutineSingletons r0 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r1 = r6.f47773b
            r2 = 3
            r3 = 2
            r4 = 1
            if (r1 == 0) goto L22
            if (r1 == r4) goto L1e
            if (r1 == r3) goto L1a
            if (r1 != r2) goto L13
            kotlin.ResultKt.b(r7)
            goto L64
        L13:
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r6)
            r6 = 0
            return r6
        L1a:
            kotlin.ResultKt.b(r7)
            goto L50
        L1e:
            kotlin.ResultKt.b(r7)
            goto L3c
        L22:
            kotlin.ResultKt.b(r7)
            boolean r7 = r6.d
            com.vuitton.android.data.repository.LightUpRepositoryImpl r1 = r6.f47775e
            boolean r5 = r6.f47774c
            if (r5 == 0) goto L3f
            if (r7 == 0) goto L3f
            com.vuitton.android.data.connectivity.lightup.LightUpProductDao r7 = r1.l()
            r6.f47773b = r4
            java.lang.Object r7 = r7.e(r6)
            if (r7 != r0) goto L3c
            goto L63
        L3c:
            java.util.List r7 = (java.util.List) r7
            return r7
        L3f:
            if (r5 == 0) goto L53
            com.vuitton.android.data.connectivity.lightup.LightUpProductDao r7 = r1.l()
            com.vuitton.foundation.model.domain.model.connectivity.lightup.LVLightUpDeviceType r1 = com.vuitton.foundation.model.domain.model.connectivity.lightup.LVLightUpDeviceType.KEEPALL
            r6.f47773b = r3
            java.lang.Object r7 = r7.a(r1, r6)
            if (r7 != r0) goto L50
            goto L63
        L50:
            java.util.List r7 = (java.util.List) r7
            return r7
        L53:
            if (r7 == 0) goto L67
            com.vuitton.android.data.connectivity.lightup.LightUpProductDao r7 = r1.l()
            com.vuitton.foundation.model.domain.model.connectivity.lightup.LVLightUpDeviceType r1 = com.vuitton.foundation.model.domain.model.connectivity.lightup.LVLightUpDeviceType.X408PAIR
            r6.f47773b = r2
            java.lang.Object r7 = r7.a(r1, r6)
            if (r7 != r0) goto L64
        L63:
            return r0
        L64:
            java.util.List r7 = (java.util.List) r7
            return r7
        L67:
            kotlin.collections.EmptyList r6 = kotlin.collections.EmptyList.f71768b
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.data.repository.LightUpRepositoryImpl$getLightUpProducts$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
