package com.vuitton.android.domain.usecase.hotcontent;

import com.vuitton.foundation.model.domain.model.hotcontent.HotContentItem;
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
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "Lcom/vuitton/foundation/model/domain/model/hotcontent/HotContentItem$CareService;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.domain.usecase.hotcontent.GetHotContentUseCase$buildHotContentItems$2$careServicesDeferred$1", f = "GetHotContentUseCase.kt", l = {56, 57, EACTags.DYNAMIC_EXTERNAL_AUTHENTIFICATION}, m = "invokeSuspend", v = 2)
final class GetHotContentUseCase$buildHotContentItems$2$careServicesDeferred$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super List<? extends HotContentItem.CareService>>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f50099b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ GetHotContentUseCase f50100c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GetHotContentUseCase$buildHotContentItems$2$careServicesDeferred$1(GetHotContentUseCase getHotContentUseCase, Continuation continuation) {
        super(2, continuation);
        this.f50100c = getHotContentUseCase;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new GetHotContentUseCase$buildHotContentItems$2$careServicesDeferred$1(this.f50100c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((GetHotContentUseCase$buildHotContentItems$2$careServicesDeferred$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code duplicated, block: B:22:0x0058  */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x005e, code lost:
    
        if (r9 == r2) goto L24;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r9) {
        /*
            r8 = this;
            com.vuitton.android.domain.usecase.hotcontent.GetHotContentUseCase r0 = r8.f50100c
            com.vuitton.android.domain.usecase.config.IsFeatureAvailableUseCase r1 = r0.d
            kotlin.coroutines.intrinsics.CoroutineSingletons r2 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r3 = r8.f50099b
            r4 = 0
            r5 = 3
            r6 = 2
            r7 = 1
            if (r3 == 0) goto L27
            if (r3 == r7) goto L23
            if (r3 == r6) goto L1f
            if (r3 != r5) goto L18
            kotlin.ResultKt.b(r9)
            goto L61
        L18:
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r8)
            r8 = 0
            return r8
        L1f:
            kotlin.ResultKt.b(r9)
            goto L50
        L23:
            kotlin.ResultKt.b(r9)
            goto L39
        L27:
            kotlin.ResultKt.b(r9)
            com.vuitton.foundation.model.domain.model.sync.Feature r9 = com.vuitton.foundation.model.domain.model.sync.Feature.MY_CARE_SERVICES
            com.vuitton.foundation.model.domain.model.sync.Feature[] r9 = new com.vuitton.foundation.model.domain.model.sync.Feature[]{r9}
            r8.f50099b = r7
            java.lang.Object r9 = r1.c(r9, r4, r8)
            if (r9 != r2) goto L39
            goto L60
        L39:
            java.lang.Boolean r9 = (java.lang.Boolean) r9
            boolean r9 = r9.booleanValue()
            if (r9 == 0) goto L64
            com.vuitton.foundation.model.domain.model.sync.Feature r9 = com.vuitton.foundation.model.domain.model.sync.Feature.CARE_SERVICES_MIGRATION
            com.vuitton.foundation.model.domain.model.sync.Feature[] r9 = new com.vuitton.foundation.model.domain.model.sync.Feature[]{r9}
            r8.f50099b = r6
            java.lang.Object r9 = r1.c(r9, r4, r8)
            if (r9 != r2) goto L50
            goto L60
        L50:
            java.lang.Boolean r9 = (java.lang.Boolean) r9
            boolean r9 = r9.booleanValue()
            if (r9 == 0) goto L64
            r8.f50099b = r5
            java.io.Serializable r9 = com.vuitton.android.domain.usecase.hotcontent.GetHotContentUseCase.a(r0, r8)
            if (r9 != r2) goto L61
        L60:
            return r2
        L61:
            java.util.List r9 = (java.util.List) r9
            return r9
        L64:
            kotlin.collections.EmptyList r8 = kotlin.collections.EmptyList.f71768b
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.domain.usecase.hotcontent.GetHotContentUseCase$buildHotContentItems$2$careServicesDeferred$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
