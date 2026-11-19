package com.vuitton.android.presentation.screen.mylv;

import androidx.lifecycle.ViewModelKt;
import com.vuitton.android.core.events.AppEvent;
import com.vuitton.android.presentation.screen.mylv.models.MyLvFeatureFlags;
import defpackage.md;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.SharedFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.mylv.MyLvViewModelImpl$collectAppEvents$1", f = "MyLvViewModelImpl.kt", l = {651}, m = "invokeSuspend", v = 2)
final class MyLvViewModelImpl$collectAppEvents$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f59278b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ MyLvViewModelImpl f59279c;

    /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.mylv.MyLvViewModelImpl$collectAppEvents$1$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "it", "Lcom/vuitton/android/core/events/AppEvent;"}, k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "com.vuitton.android.presentation.screen.mylv.MyLvViewModelImpl$collectAppEvents$1$1", f = "MyLvViewModelImpl.kt", l = {273}, m = "invokeSuspend", v = 2)
    final class AnonymousClass1 extends SuspendLambda implements Function2<AppEvent, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f59280b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public /* synthetic */ Object f59281c;
        public final /* synthetic */ MyLvViewModelImpl d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(Continuation continuation, MyLvViewModelImpl myLvViewModelImpl) {
            super(2, continuation);
            this.d = myLvViewModelImpl;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(continuation, this.d);
            anonymousClass1.f59281c = obj;
            return anonymousClass1;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass1) create((AppEvent) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            AppEvent appEvent = (AppEvent) this.f59281c;
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            int i2 = this.f59280b;
            if (i2 == 0) {
                ResultKt.b(obj);
                boolean z = appEvent instanceof AppEvent.RefreshUserAvatar;
                MyLvViewModelImpl myLvViewModelImpl = this.d;
                if (z) {
                    BuildersKt.c(ViewModelKt.a(myLvViewModelImpl), null, null, new MyLvViewModelImpl$retrieveUserAvatar$1(null, myLvViewModelImpl), 3);
                } else if (appEvent instanceof AppEvent.LogOutEvent) {
                    myLvViewModelImpl.Pa();
                } else if ((appEvent instanceof AppEvent.RefreshAppointmentsEvent) || (appEvent instanceof AppEvent.RefreshRepairsEvent)) {
                    if (((MyLvFeatureFlags) myLvViewModelImpl.K.getValue()).m) {
                        this.f59281c = null;
                        this.f59280b = 1;
                        if (MyLvViewModelImpl.yc(myLvViewModelImpl, true, this) == coroutineSingletons) {
                            return coroutineSingletons;
                        }
                    } else {
                        myLvViewModelImpl.Gc(true);
                    }
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

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MyLvViewModelImpl$collectAppEvents$1(Continuation continuation, MyLvViewModelImpl myLvViewModelImpl) {
        super(2, continuation);
        this.f59279c = myLvViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new MyLvViewModelImpl$collectAppEvents$1(continuation, this.f59279c);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((MyLvViewModelImpl$collectAppEvents$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f59278b;
        if (i2 == 0) {
            ResultKt.b(obj);
            MyLvViewModelImpl myLvViewModelImpl = this.f59279c;
            SharedFlow sharedFlow = myLvViewModelImpl.f59265c.f43512c;
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(null, myLvViewModelImpl);
            sharedFlow.getClass();
            this.f59278b = 1;
            if (FlowKt.g(sharedFlow, anonymousClass1, this) == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
        }
        md.k("SharedFlow never completes, this call should never return.");
        return null;
    }
}
