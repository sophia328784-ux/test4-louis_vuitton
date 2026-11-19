package com.vuitton.android.presentation.screen.privacy;

import com.vuitton.android.presentation.screen.privacy.models.ConsentMapperKt;
import com.vuitton.android.presentation.screen.privacy.models.PrivacyTrackingUiModel;
import com.vuitton.foundation.model.domain.model.privacy.Consent;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.MutableStateFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.privacy.PrivacyViewModelImpl$getConsents$1", f = "PrivacyViewModelImpl.kt", l = {}, m = "invokeSuspend", v = 2)
final class PrivacyViewModelImpl$getConsents$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f63359b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ PrivacyViewModelImpl f63360c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PrivacyViewModelImpl$getConsents$1(PrivacyViewModelImpl privacyViewModelImpl, Continuation continuation) {
        super(2, continuation);
        this.f63360c = privacyViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        PrivacyViewModelImpl$getConsents$1 privacyViewModelImpl$getConsents$1 = new PrivacyViewModelImpl$getConsents$1(this.f63360c, continuation);
        privacyViewModelImpl$getConsents$1.f63359b = obj;
        return privacyViewModelImpl$getConsents$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((PrivacyViewModelImpl$getConsents$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object failure;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        PrivacyViewModelImpl privacyViewModelImpl = this.f63360c;
        MutableStateFlow mutableStateFlow = privacyViewModelImpl.p;
        try {
            Result.Companion companion = Result.INSTANCE;
            failure = privacyViewModelImpl.f63349c.f50267a.f();
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            failure = new Result.Failure(th);
        }
        if (!(failure instanceof Result.Failure)) {
            List list = (List) failure;
            ArrayList arrayList = new ArrayList(CollectionsKt.t(list, 10));
            Iterator it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(ConsentMapperKt.c((Consent) it.next()));
            }
            mutableStateFlow.setValue(arrayList);
            PrivacyViewModelImpl.yc(privacyViewModelImpl, new PrivacyTrackingUiModel.PrivacyParamsScreen((List) mutableStateFlow.getValue()));
        }
        Throwable thA = Result.a(failure);
        if (thA != null) {
            privacyViewModelImpl.n.c("PrivacyViewModelImpl", "Can't retrieve consents", thA);
        }
        privacyViewModelImpl.q.setValue(Boolean.FALSE);
        return Unit.f71739a;
    }
}
