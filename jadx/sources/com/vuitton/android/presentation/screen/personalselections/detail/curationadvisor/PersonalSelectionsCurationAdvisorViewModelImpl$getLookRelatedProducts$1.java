package com.vuitton.android.presentation.screen.personalselections.detail.curationadvisor;

import com.vuitton.android.presentation.screen.personalselections.detail.curationadvisor.models.PersonalSelectionsCurationAdvisorLookViewState;
import com.vuitton.android.presentation.screen.personalselections.detail.models.SelectionAssetUiModel;
import defpackage.md;
import java.util.List;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.MutableStateFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.personalselections.detail.curationadvisor.PersonalSelectionsCurationAdvisorViewModelImpl$getLookRelatedProducts$1", f = "PersonalSelectionsCurationAdvisorViewModelImpl.kt", l = {188}, m = "invokeSuspend", v = 2)
final class PersonalSelectionsCurationAdvisorViewModelImpl$getLookRelatedProducts$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f62445b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ PersonalSelectionsCurationAdvisorViewModelImpl f62446c;
    public final /* synthetic */ SelectionAssetUiModel d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PersonalSelectionsCurationAdvisorViewModelImpl$getLookRelatedProducts$1(PersonalSelectionsCurationAdvisorViewModelImpl personalSelectionsCurationAdvisorViewModelImpl, SelectionAssetUiModel selectionAssetUiModel, Continuation continuation) {
        super(2, continuation);
        this.f62446c = personalSelectionsCurationAdvisorViewModelImpl;
        this.d = selectionAssetUiModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new PersonalSelectionsCurationAdvisorViewModelImpl$getLookRelatedProducts$1(this.f62446c, this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((PersonalSelectionsCurationAdvisorViewModelImpl$getLookRelatedProducts$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object failure;
        Object value;
        Object value2;
        Object value3;
        PersonalSelectionsCurationAdvisorViewModelImpl personalSelectionsCurationAdvisorViewModelImpl = this.f62446c;
        MutableStateFlow mutableStateFlow = personalSelectionsCurationAdvisorViewModelImpl.x;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f62445b;
        SelectionAssetUiModel selectionAssetUiModel = this.d;
        try {
            if (i2 == 0) {
                ResultKt.b(obj);
                do {
                    value3 = mutableStateFlow.getValue();
                } while (!mutableStateFlow.i(value3, PersonalSelectionsCurationAdvisorLookViewState.Loading.f62496a));
                Result.Companion companion = Result.INSTANCE;
                List list = selectionAssetUiModel.f62578c;
                this.f62445b = 1;
                obj = PersonalSelectionsCurationAdvisorViewModelImpl.yc(personalSelectionsCurationAdvisorViewModelImpl, list, this);
                if (obj == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i2 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(obj);
            }
            failure = new Result((List) obj);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            failure = new Result.Failure(th);
        }
        Throwable thA = Result.a(failure);
        if (thA != null) {
            if (thA instanceof CancellationException) {
                throw thA;
            }
            failure = new Result(new Result.Failure(thA));
        }
        Object obj2 = ((Result) failure).f71708b;
        if (!(obj2 instanceof Result.Failure)) {
            List list2 = (List) obj2;
            do {
                value2 = mutableStateFlow.getValue();
            } while (!mutableStateFlow.i(value2, new PersonalSelectionsCurationAdvisorLookViewState.Success(selectionAssetUiModel, list2, ((Boolean) personalSelectionsCurationAdvisorViewModelImpl.r.getValue()).booleanValue())));
        }
        Throwable thA2 = Result.a(obj2);
        if (thA2 != null) {
            do {
                value = mutableStateFlow.getValue();
            } while (!mutableStateFlow.i(value, PersonalSelectionsCurationAdvisorLookViewState.Error.f62495a));
            PersonalSelectionsCurationAdvisorViewModelImpl.zc(personalSelectionsCurationAdvisorViewModelImpl);
            personalSelectionsCurationAdvisorViewModelImpl.f62428b.c("PersonalSelectionsDetailViewModelImpl", "Unable to retrieve the product list", thA2);
        }
        return Unit.f71739a;
    }
}
