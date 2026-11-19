package com.dynatrace.android.agent.data;

import androidx.datastore.preferences.core.Preferences;
import defpackage.md;
import java.util.concurrent.atomic.AtomicInteger;
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
@DebugMetadata(c = "com.dynatrace.android.agent.data.CrossPlatformScreenshotStore$preload$1", f = "CrossPlatformScreenshotStore.kt", l = {48}, m = "invokeSuspend")
final class CrossPlatformScreenshotStore$preload$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f27471b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ CrossPlatformScreenshotStore f27472c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CrossPlatformScreenshotStore$preload$1(CrossPlatformScreenshotStore crossPlatformScreenshotStore, Continuation continuation) {
        super(2, continuation);
        this.f27472c = crossPlatformScreenshotStore;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new CrossPlatformScreenshotStore$preload$1(this.f27472c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((CrossPlatformScreenshotStore$preload$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f27471b;
        if (i2 == 0) {
            ResultKt.b(obj);
            FlowKt__ErrorsKt$catch$$inlined$unsafeFlow$1 flowKt__ErrorsKt$catch$$inlined$unsafeFlow$1 = new FlowKt__ErrorsKt$catch$$inlined$unsafeFlow$1(this.f27472c.f27457a.getD(), new CrossPlatformScreenshotStore$preload$1$prefs$1(3, null));
            this.f27471b = 1;
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
        AtomicInteger atomicInteger = this.f27472c.f27459c;
        Integer num = (Integer) preferences.b(CrossPlatformScreenshotStore.g);
        atomicInteger.set(num != null ? num.intValue() : 0);
        CrossPlatformScreenshotStore crossPlatformScreenshotStore = this.f27472c;
        String str = (String) preferences.b(CrossPlatformScreenshotStore.f27456h);
        if (str == null) {
            str = "";
        }
        crossPlatformScreenshotStore.d = str;
        return Unit.f71739a;
    }
}
