package com.vuitton.android.presentation.screen.authentication.register.components;

import androidx.compose.runtime.MutableState;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetState;
import com.vuitton.android.presentation.screen.authentication.register.NativeRegisterViewModel;
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
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowKt;
import net.rtccloud.sdk.Sink;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.authentication.register.components.NativeRegisterComposableKt$NativeRegisterComposable$3$1", f = "NativeRegisterComposable.kt", l = {Sink.ORIENTATION_90}, m = "invokeSuspend", v = 2)
final class NativeRegisterComposableKt$NativeRegisterComposable$3$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f53819b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ NativeRegisterViewModel f53820c;
    public final /* synthetic */ LVModalBottomSheetState d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ MutableState f53821e;

    /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.authentication.register.components.NativeRegisterComposableKt$NativeRegisterComposable$3$1$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "it", "Lcom/vuitton/android/presentation/screen/authentication/register/components/NativeRegisterBottomSheetScreen;"}, k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "com.vuitton.android.presentation.screen.authentication.register.components.NativeRegisterComposableKt$NativeRegisterComposable$3$1$1", f = "NativeRegisterComposable.kt", l = {}, m = "invokeSuspend", v = 2)
    final class AnonymousClass1 extends SuspendLambda implements Function2<NativeRegisterBottomSheetScreen, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public /* synthetic */ Object f53822b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ LVModalBottomSheetState f53823c;
        public final /* synthetic */ MutableState d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(MutableState mutableState, LVModalBottomSheetState lVModalBottomSheetState, Continuation continuation) {
            super(2, continuation);
            this.f53823c = lVModalBottomSheetState;
            this.d = mutableState;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.d, this.f53823c, continuation);
            anonymousClass1.f53822b = obj;
            return anonymousClass1;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass1) create((NativeRegisterBottomSheetScreen) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            NativeRegisterBottomSheetScreen nativeRegisterBottomSheetScreen = (NativeRegisterBottomSheetScreen) this.f53822b;
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            ResultKt.b(obj);
            this.d.setValue(nativeRegisterBottomSheetScreen);
            this.f53823c.e();
            return Unit.f71739a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NativeRegisterComposableKt$NativeRegisterComposable$3$1(NativeRegisterViewModel nativeRegisterViewModel, LVModalBottomSheetState lVModalBottomSheetState, MutableState mutableState, Continuation continuation) {
        super(2, continuation);
        this.f53820c = nativeRegisterViewModel;
        this.d = lVModalBottomSheetState;
        this.f53821e = mutableState;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new NativeRegisterComposableKt$NativeRegisterComposable$3$1(this.f53820c, this.d, this.f53821e, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((NativeRegisterComposableKt$NativeRegisterComposable$3$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f53819b;
        if (i2 == 0) {
            ResultKt.b(obj);
            Flow b2 = this.f53820c.getB();
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.f53821e, this.d, null);
            this.f53819b = 1;
            if (FlowKt.g(b2, anonymousClass1, this) == coroutineSingletons) {
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
