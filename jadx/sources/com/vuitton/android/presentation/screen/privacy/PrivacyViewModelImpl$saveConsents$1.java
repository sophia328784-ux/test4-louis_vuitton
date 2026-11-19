package com.vuitton.android.presentation.screen.privacy;

import androidx.lifecycle.ViewModelKt;
import com.vuitton.android.core.events.AppEvent;
import com.vuitton.android.core.events.LVEventSender;
import com.vuitton.android.domain.usecase.privacy.consent.SetConsentsUseCase;
import com.vuitton.android.presentation.screen.privacy.models.ConsentMapperKt;
import com.vuitton.android.presentation.screen.privacy.models.ConsentUiModel;
import com.vuitton.android.presentation.screen.privacy.models.ConsentValueUiModel;
import com.vuitton.android.presentation.screen.privacy.models.PrivacyTrackingUiModel;
import com.vuitton.foundation.logger.LegacyLogger;
import defpackage.md;
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
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.SharedFlowImpl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.privacy.PrivacyViewModelImpl$saveConsents$1", f = "PrivacyViewModelImpl.kt", l = {178, 199, 208}, m = "invokeSuspend", v = 2)
final class PrivacyViewModelImpl$saveConsents$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Object f63365b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public PrivacyViewModelImpl f63366c;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f63367e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public /* synthetic */ Object f63368f;
    public final /* synthetic */ PrivacyViewModelImpl g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PrivacyViewModelImpl$saveConsents$1(PrivacyViewModelImpl privacyViewModelImpl, Continuation continuation) {
        super(2, continuation);
        this.g = privacyViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        PrivacyViewModelImpl$saveConsents$1 privacyViewModelImpl$saveConsents$1 = new PrivacyViewModelImpl$saveConsents$1(this.g, continuation);
        privacyViewModelImpl$saveConsents$1.f63368f = obj;
        return privacyViewModelImpl$saveConsents$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((PrivacyViewModelImpl$saveConsents$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code duplicated, block: B:65:0x012b  */
    /* JADX WARN: Code duplicated, block: B:69:0x014a  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object failure;
        Object next;
        Object next2;
        LVEventSender lVEventSender;
        Object obj2;
        Throwable thA;
        PrivacyViewModelImpl privacyViewModelImpl = this.g;
        MutableStateFlow mutableStateFlow = privacyViewModelImpl.p;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f63367e;
        int i3 = 0;
        try {
            if (i2 == 0) {
                ResultKt.b(obj);
                Result.Companion companion = Result.INSTANCE;
                SetConsentsUseCase setConsentsUseCase = privacyViewModelImpl.f63352h;
                Iterable iterable = (Iterable) mutableStateFlow.getValue();
                ArrayList arrayList = new ArrayList(CollectionsKt.t(iterable, 10));
                Iterator it = iterable.iterator();
                while (it.hasNext()) {
                    arrayList.add(ConsentMapperKt.a((ConsentUiModel) it.next()));
                }
                this.f63368f = null;
                this.f63365b = null;
                this.d = 0;
                this.f63367e = 1;
                if (setConsentsUseCase.a(arrayList, this) == coroutineSingletons) {
                }
                return coroutineSingletons;
            }
            if (i2 == 1) {
                ResultKt.b(obj);
            } else {
                if (i2 == 2) {
                    i3 = this.d;
                    privacyViewModelImpl = this.f63366c;
                    Object obj3 = this.f63365b;
                    ResultKt.b(obj);
                    failure = obj3;
                    lVEventSender = privacyViewModelImpl.m;
                    this.f63368f = null;
                    this.f63365b = failure;
                    this.f63366c = privacyViewModelImpl;
                    this.d = i3;
                    this.f63367e = 3;
                    if (lVEventSender.a(AppEvent.ConsentsUpdatedEvent.f43496a, this) != coroutineSingletons) {
                        obj2 = failure;
                    }
                    return coroutineSingletons;
                }
                if (i2 != 3) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                privacyViewModelImpl = this.f63366c;
                obj2 = this.f63365b;
                ResultKt.b(obj);
            }
            PrivacyViewModelImpl.yc(privacyViewModelImpl, new PrivacyTrackingUiModel.PrivacyParamsSelectedEvent((List) privacyViewModelImpl.p.getValue()));
            privacyViewModelImpl.u.a(Unit.f71739a);
            failure = obj2;
            thA = Result.a(failure);
            if (thA != null) {
                LegacyLogger.f66205a.c("PrivacyViewModelImpl", "Can't save consents", thA);
            }
            return Unit.f71739a;
            failure = Unit.f71739a;
            Result.Companion companion2 = Result.INSTANCE;
        } catch (Throwable th) {
            Result.Companion companion3 = Result.INSTANCE;
            failure = new Result.Failure(th);
        }
        if (!(failure instanceof Result.Failure)) {
            BuildersKt.c(ViewModelKt.a(privacyViewModelImpl), null, null, new PrivacyViewModelImpl$saveConsents$1$2$1(privacyViewModelImpl, null), 3);
            SharedFlowImpl sharedFlowImpl = privacyViewModelImpl.w;
            Iterator it2 = ((Iterable) mutableStateFlow.getValue()).iterator();
            do {
                if (!it2.hasNext()) {
                    next = null;
                    break;
                }
                next = it2.next();
            } while (!(((ConsentUiModel) next) instanceof ConsentUiModel.CustomisationConsentUiModel));
            ConsentUiModel consentUiModel = (ConsentUiModel) next;
            sharedFlowImpl.a(Boolean.valueOf((consentUiModel != null ? consentUiModel.f63400a : null) != ConsentValueUiModel.REFUSED));
            LVEventSender lVEventSender2 = privacyViewModelImpl.m;
            Iterator it3 = ((Iterable) mutableStateFlow.getValue()).iterator();
            do {
                if (!it3.hasNext()) {
                    next2 = null;
                    break;
                }
                next2 = it3.next();
            } while (!(((ConsentUiModel) next2) instanceof ConsentUiModel.ChatConsentUiModel));
            ConsentUiModel consentUiModel2 = (ConsentUiModel) next2;
            AppEvent.ChatConsentUpdatedEvent chatConsentUpdatedEvent = new AppEvent.ChatConsentUpdatedEvent((consentUiModel2 != null ? consentUiModel2.f63400a : null) != ConsentValueUiModel.REFUSED);
            this.f63368f = null;
            this.f63365b = failure;
            this.f63366c = privacyViewModelImpl;
            this.d = 0;
            this.f63367e = 2;
            if (lVEventSender2.a(chatConsentUpdatedEvent, this) != coroutineSingletons) {
                lVEventSender = privacyViewModelImpl.m;
                this.f63368f = null;
                this.f63365b = failure;
                this.f63366c = privacyViewModelImpl;
                this.d = i3;
                this.f63367e = 3;
                if (lVEventSender.a(AppEvent.ConsentsUpdatedEvent.f43496a, this) != coroutineSingletons) {
                    obj2 = failure;
                    PrivacyViewModelImpl.yc(privacyViewModelImpl, new PrivacyTrackingUiModel.PrivacyParamsSelectedEvent((List) privacyViewModelImpl.p.getValue()));
                    privacyViewModelImpl.u.a(Unit.f71739a);
                    failure = obj2;
                }
            }
            return coroutineSingletons;
        }
        thA = Result.a(failure);
        if (thA != null) {
            LegacyLogger.f66205a.c("PrivacyViewModelImpl", "Can't save consents", thA);
        }
        return Unit.f71739a;
    }
}
