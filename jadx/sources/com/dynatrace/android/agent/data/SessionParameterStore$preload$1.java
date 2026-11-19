package com.dynatrace.android.agent.data;

import androidx.datastore.preferences.core.Preferences;
import com.dynatrace.android.agent.util.Utility;
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
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.FlowKt__ErrorsKt$catch$$inlined$unsafeFlow$1;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "com.dynatrace.android.agent.data.SessionParameterStore$preload$1", f = "SessionParameterStore.kt", l = {86}, m = "invokeSuspend")
final class SessionParameterStore$preload$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f27495b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ SessionParameterStore f27496c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SessionParameterStore$preload$1(SessionParameterStore sessionParameterStore, Continuation continuation) {
        super(2, continuation);
        this.f27496c = sessionParameterStore;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new SessionParameterStore$preload$1(this.f27496c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((SessionParameterStore$preload$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Integer num;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f27495b;
        if (i2 == 0) {
            ResultKt.b(obj);
            FlowKt__ErrorsKt$catch$$inlined$unsafeFlow$1 flowKt__ErrorsKt$catch$$inlined$unsafeFlow$1 = new FlowKt__ErrorsKt$catch$$inlined$unsafeFlow$1(this.f27496c.f27486a.getD(), new SessionParameterStore$preload$1$sessionParameters$1(3, null));
            this.f27495b = 1;
            obj = FlowKt.p(flowKt__ErrorsKt$catch$$inlined$unsafeFlow$1, this);
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
        Preferences preferences = (Preferences) obj;
        SessionParameterStore sessionParameterStore = this.f27496c;
        Integer num2 = (Integer) preferences.b(SessionParameterStore.f27484h);
        int i3 = 0;
        if (num2 != null) {
            int iIntValue = num2.intValue();
            if (iIntValue >= Integer.MAX_VALUE || iIntValue < 0) {
                Utility.b("session id is out of range and will be reset to 0");
            } else {
                i3 = iIntValue;
            }
            num = new Integer(i3);
        } else {
            num = new Integer(0);
        }
        sessionParameterStore.f27488c = num;
        SessionParameterStore sessionParameterStore2 = this.f27496c;
        Long l = (Long) preferences.b(SessionParameterStore.f27485i);
        if (l == null) {
            l = new Long(0L);
        }
        sessionParameterStore2.d = l;
        Utility.b("preloading completed: sessionId: " + this.f27496c.f27488c + ", visitorId: " + this.f27496c.d);
        return Unit.f71739a;
    }
}
