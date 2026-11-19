package com.vuitton.android.domain.usecase.hotcontent;

import com.vuitton.foundation.model.domain.model.osa.OsaItem;
import defpackage.md;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "Lcom/vuitton/foundation/model/domain/model/osa/OsaItem;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.domain.usecase.hotcontent.GetHotContentUseCase$buildHotContentItems$2$appointmentDeferred$1", f = "GetHotContentUseCase.kt", l = {EACTags.SEX}, m = "invokeSuspend", v = 2)
final class GetHotContentUseCase$buildHotContentItems$2$appointmentDeferred$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super OsaItem>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f50097b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ GetHotContentUseCase f50098c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GetHotContentUseCase$buildHotContentItems$2$appointmentDeferred$1(GetHotContentUseCase getHotContentUseCase, Continuation continuation) {
        super(2, continuation);
        this.f50098c = getHotContentUseCase;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new GetHotContentUseCase$buildHotContentItems$2$appointmentDeferred$1(this.f50098c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((GetHotContentUseCase$buildHotContentItems$2$appointmentDeferred$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f50097b;
        if (i2 == 0) {
            ResultKt.b(obj);
            this.f50097b = 1;
            Object objB = GetHotContentUseCase.b(this.f50098c, this);
            return objB == coroutineSingletons ? coroutineSingletons : objB;
        }
        if (i2 == 1) {
            ResultKt.b(obj);
            return obj;
        }
        md.k("call to 'resume' before 'invoke' with coroutine");
        return null;
    }
}
