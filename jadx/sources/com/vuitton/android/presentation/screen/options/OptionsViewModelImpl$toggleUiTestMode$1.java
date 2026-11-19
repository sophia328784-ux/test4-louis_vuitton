package com.vuitton.android.presentation.screen.options;

import com.vuitton.android.domain.repository.AutomatedTestRepository;
import defpackage.md;
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
@DebugMetadata(c = "com.vuitton.android.presentation.screen.options.OptionsViewModelImpl$toggleUiTestMode$1", f = "OptionsViewModelImpl.kt", l = {160, 161, 163, 165}, m = "invokeSuspend", v = 2)
final class OptionsViewModelImpl$toggleUiTestMode$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Object f59669b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f59670c;
    public final /* synthetic */ OptionsViewModelImpl d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OptionsViewModelImpl$toggleUiTestMode$1(OptionsViewModelImpl optionsViewModelImpl, Continuation continuation) {
        super(2, continuation);
        this.d = optionsViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new OptionsViewModelImpl$toggleUiTestMode$1(this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((OptionsViewModelImpl$toggleUiTestMode$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code duplicated, block: B:24:0x0059  */
    /* JADX WARN: Code duplicated, block: B:27:0x0067  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        MutableStateFlow mutableStateFlow;
        Boolean bool;
        MutableStateFlow mutableStateFlow2;
        OptionsViewModelImpl optionsViewModelImpl = this.d;
        AutomatedTestRepository automatedTestRepository = optionsViewModelImpl.f59646h;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f59670c;
        if (i2 == 0) {
            ResultKt.b(obj);
            this.f59670c = 1;
            automatedTestRepository.getClass();
            obj = Boolean.FALSE;
            if (obj != coroutineSingletons) {
            }
            return coroutineSingletons;
        }
        if (i2 == 1) {
            ResultKt.b(obj);
        } else {
            if (i2 == 2 || i2 == 3) {
                ResultKt.b(obj);
                ((Result) obj).getClass();
                mutableStateFlow = optionsViewModelImpl.z;
                this.f59669b = mutableStateFlow;
                this.f59670c = 4;
                automatedTestRepository.getClass();
                bool = Boolean.FALSE;
                if (bool != coroutineSingletons) {
                    obj = bool;
                    mutableStateFlow2 = mutableStateFlow;
                }
                return coroutineSingletons;
            }
            if (i2 != 4) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            mutableStateFlow2 = (MutableStateFlow) this.f59669b;
            ResultKt.b(obj);
        }
        mutableStateFlow2.setValue(obj);
        return Unit.f71739a;
        if (((Boolean) obj).booleanValue()) {
            this.f59670c = 2;
            if (automatedTestRepository.b() != coroutineSingletons) {
                mutableStateFlow = optionsViewModelImpl.z;
                this.f59669b = mutableStateFlow;
                this.f59670c = 4;
                automatedTestRepository.getClass();
                bool = Boolean.FALSE;
                if (bool != coroutineSingletons) {
                    obj = bool;
                    mutableStateFlow2 = mutableStateFlow;
                    mutableStateFlow2.setValue(obj);
                    return Unit.f71739a;
                }
            }
        } else {
            this.f59670c = 3;
            if (automatedTestRepository.c() != coroutineSingletons) {
                mutableStateFlow = optionsViewModelImpl.z;
                this.f59669b = mutableStateFlow;
                this.f59670c = 4;
                automatedTestRepository.getClass();
                bool = Boolean.FALSE;
                if (bool != coroutineSingletons) {
                    obj = bool;
                    mutableStateFlow2 = mutableStateFlow;
                    mutableStateFlow2.setValue(obj);
                    return Unit.f71739a;
                }
            }
        }
        return coroutineSingletons;
    }
}
