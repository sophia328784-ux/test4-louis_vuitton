package com.vuitton.android.presentation.screen.account.myinformation.components;

import com.vuitton.android.presentation.screen.account.myinformation.MyInformationSideEffect;
import com.vuitton.android.presentation.screen.account.myinformation.MyInformationViewModel;
import defpackage.md;
import defpackage.v40;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.SharedFlow;
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.account.myinformation.components.SeeMyInfoComposableKt$SeeMyInfoComposable$3$1", f = "SeeMyInfoComposable.kt", l = {EACTags.UNIFORM_RESOURCE_LOCATOR}, m = "invokeSuspend", v = 2)
final class SeeMyInfoComposableKt$SeeMyInfoComposable$3$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f52606b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ MyInformationViewModel f52607c;
    public final /* synthetic */ Function1 d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SeeMyInfoComposableKt$SeeMyInfoComposable$3$1(MyInformationViewModel myInformationViewModel, Function1 function1, Continuation continuation) {
        super(2, continuation);
        this.f52607c = myInformationViewModel;
        this.d = function1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new SeeMyInfoComposableKt$SeeMyInfoComposable$3$1(this.f52607c, this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((SeeMyInfoComposableKt$SeeMyInfoComposable$3$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f52606b;
        if (i2 == 0) {
            ResultKt.b(obj);
            final SharedFlow w = this.f52607c.getW();
            Flow<MyInformationSideEffect> flow = new Flow<MyInformationSideEffect>() { // from class: com.vuitton.android.presentation.screen.account.myinformation.components.SeeMyInfoComposableKt$SeeMyInfoComposable$3$1$invokeSuspend$$inlined$filter$1

                /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.account.myinformation.components.SeeMyInfoComposableKt$SeeMyInfoComposable$3$1$invokeSuspend$$inlined$filter$1$2, reason: invalid class name */
                @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
                public final class AnonymousClass2<T> implements FlowCollector {

                    /* JADX INFO: renamed from: b, reason: collision with root package name */
                    public final /* synthetic */ FlowCollector f52610b;

                    /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.account.myinformation.components.SeeMyInfoComposableKt$SeeMyInfoComposable$3$1$invokeSuspend$$inlined$filter$1$2$1, reason: invalid class name */
                    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
                    @DebugMetadata(c = "com.vuitton.android.presentation.screen.account.myinformation.components.SeeMyInfoComposableKt$SeeMyInfoComposable$3$1$invokeSuspend$$inlined$filter$1$2", f = "SeeMyInfoComposable.kt", l = {217}, m = "emit", v = 2)
                    public final class AnonymousClass1 extends ContinuationImpl {

                        /* JADX INFO: renamed from: b, reason: collision with root package name */
                        public /* synthetic */ Object f52611b;

                        /* JADX INFO: renamed from: c, reason: collision with root package name */
                        public int f52612c;

                        public AnonymousClass1(Continuation continuation) {
                            super(continuation);
                        }

                        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                        public final Object invokeSuspend(Object obj) {
                            this.f52611b = obj;
                            this.f52612c |= Integer.MIN_VALUE;
                            return AnonymousClass2.this.emit(null, this);
                        }
                    }

                    public AnonymousClass2(FlowCollector flowCollector) {
                        this.f52610b = flowCollector;
                    }

                    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
                    @Override // kotlinx.coroutines.flow.FlowCollector
                    public final Object emit(Object obj, Continuation continuation) {
                        AnonymousClass1 anonymousClass1;
                        if (continuation instanceof AnonymousClass1) {
                            anonymousClass1 = (AnonymousClass1) continuation;
                            int i2 = anonymousClass1.f52612c;
                            if ((i2 & Integer.MIN_VALUE) != 0) {
                                anonymousClass1.f52612c = i2 - Integer.MIN_VALUE;
                            } else {
                                anonymousClass1 = new AnonymousClass1(continuation);
                            }
                        } else {
                            anonymousClass1 = new AnonymousClass1(continuation);
                        }
                        Object obj2 = anonymousClass1.f52611b;
                        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                        int i3 = anonymousClass1.f52612c;
                        if (i3 == 0) {
                            ResultKt.b(obj2);
                            if (((MyInformationSideEffect) obj) instanceof MyInformationSideEffect.SeeMyInfo) {
                                anonymousClass1.f52612c = 1;
                                if (this.f52610b.emit(obj, anonymousClass1) == coroutineSingletons) {
                                    return coroutineSingletons;
                                }
                            }
                        } else {
                            if (i3 != 1) {
                                md.k("call to 'resume' before 'invoke' with coroutine");
                                return null;
                            }
                            ResultKt.b(obj2);
                        }
                        return Unit.f71739a;
                    }
                }

                @Override // kotlinx.coroutines.flow.Flow
                public final Object f(FlowCollector flowCollector, Continuation continuation) {
                    Object objF = w.f(new AnonymousClass2(flowCollector), continuation);
                    return objF == CoroutineSingletons.COROUTINE_SUSPENDED ? objF : Unit.f71739a;
                }
            };
            final Function1 function1 = this.d;
            FlowCollector flowCollector = new FlowCollector() { // from class: com.vuitton.android.presentation.screen.account.myinformation.components.SeeMyInfoComposableKt$SeeMyInfoComposable$3$1.2
                @Override // kotlinx.coroutines.flow.FlowCollector
                public final Object emit(Object obj2, Continuation continuation) {
                    MyInformationSideEffect myInformationSideEffect = (MyInformationSideEffect) obj2;
                    if (myInformationSideEffect instanceof MyInformationSideEffect.SeeMyInfo) {
                        MyInformationSideEffect.SeeMyInfo seeMyInfo = (MyInformationSideEffect.SeeMyInfo) myInformationSideEffect;
                        if (seeMyInfo instanceof MyInformationSideEffect.SeeMyInfo.ShowAccountDeletedConfirmation) {
                            function1.invoke(MyInformationBottomSheetScreen.DeletedAccountConfirmation.f52597a);
                        } else if (!(seeMyInfo instanceof MyInformationSideEffect.SeeMyInfo.AccountDeleteError)) {
                            v40.g();
                            return null;
                        }
                    }
                    return Unit.f71739a;
                }
            };
            this.f52606b = 1;
            if (flow.f(flowCollector, this) == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
        }
        return Unit.f71739a;
    }
}
