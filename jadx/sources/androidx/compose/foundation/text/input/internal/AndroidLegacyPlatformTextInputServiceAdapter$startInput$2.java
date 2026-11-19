package androidx.compose.foundation.text.input.internal;

import android.view.View;
import androidx.compose.foundation.text.handwriting.StylusHandwriting_androidKt;
import androidx.compose.ui.platform.PlatformTextInputSession;
import defpackage.md;
import defpackage.os;
import kotlin.KotlinNothingValueException;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0001\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Landroidx/compose/ui/platform/PlatformTextInputSession;"}, k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(c = "androidx.compose.foundation.text.input.internal.AndroidLegacyPlatformTextInputServiceAdapter$startInput$2", f = "LegacyPlatformTextInputServiceAdapter.android.kt", l = {125}, m = "invokeSuspend", v = 1)
final class AndroidLegacyPlatformTextInputServiceAdapter$startInput$2 extends SuspendLambda implements Function2<PlatformTextInputSession, Continuation<?>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f6180b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ Object f6181c;
    public final /* synthetic */ Function1 d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ AndroidLegacyPlatformTextInputServiceAdapter f6182e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ LegacyPlatformTextInputServiceAdapter.LegacyPlatformTextInputNode f6183f;

    /* JADX INFO: renamed from: androidx.compose.foundation.text.input.internal.AndroidLegacyPlatformTextInputServiceAdapter$startInput$2$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0001\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "androidx.compose.foundation.text.input.internal.AndroidLegacyPlatformTextInputServiceAdapter$startInput$2$1", f = "LegacyPlatformTextInputServiceAdapter.android.kt", l = {149}, m = "invokeSuspend", v = 1)
    final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<?>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f6184b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public /* synthetic */ Object f6185c;
        public final /* synthetic */ PlatformTextInputSession d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final /* synthetic */ Function1 f6186e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final /* synthetic */ AndroidLegacyPlatformTextInputServiceAdapter f6187f;
        public final /* synthetic */ LegacyPlatformTextInputServiceAdapter.LegacyPlatformTextInputNode g;

        /* JADX INFO: renamed from: androidx.compose.foundation.text.input.internal.AndroidLegacyPlatformTextInputServiceAdapter$startInput$2$1$1, reason: invalid class name and collision with other inner class name */
        @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
        @DebugMetadata(c = "androidx.compose.foundation.text.input.internal.AndroidLegacyPlatformTextInputServiceAdapter$startInput$2$1$1", f = "LegacyPlatformTextInputServiceAdapter.android.kt", l = {140, 141}, m = "invokeSuspend", v = 1)
        final class C00191 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public int f6188b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ AndroidLegacyPlatformTextInputServiceAdapter f6189c;
            public final /* synthetic */ InputMethodManagerImpl d;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C00191(AndroidLegacyPlatformTextInputServiceAdapter androidLegacyPlatformTextInputServiceAdapter, InputMethodManagerImpl inputMethodManagerImpl, Continuation continuation) {
                super(2, continuation);
                this.f6189c = androidLegacyPlatformTextInputServiceAdapter;
                this.d = inputMethodManagerImpl;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation create(Object obj, Continuation continuation) {
                return new C00191(this.f6189c, this.d, continuation);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return ((C00191) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
            }

            /* JADX WARN: Code restructure failed: missing block: B:16:0x0051, code lost:
            
                if (kotlinx.coroutines.flow.SharedFlowImpl.o((kotlinx.coroutines.flow.SharedFlowImpl) r6, r1, r5) == r0) goto L17;
             */
            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final java.lang.Object invokeSuspend(java.lang.Object r6) {
                /*
                    r5 = this;
                    kotlin.coroutines.intrinsics.CoroutineSingletons r0 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
                    int r1 = r5.f6188b
                    r2 = 0
                    r3 = 2
                    r4 = 1
                    if (r1 == 0) goto L1b
                    if (r1 == r4) goto L17
                    if (r1 == r3) goto L13
                    java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
                    defpackage.md.k(r5)
                    return r2
                L13:
                    kotlin.ResultKt.b(r6)
                    goto L54
                L17:
                    kotlin.ResultKt.b(r6)
                    goto L3a
                L1b:
                    kotlin.ResultKt.b(r6)
                    u5 r6 = new u5
                    r1 = 0
                    r6.<init>(r1)
                    r5.f6188b = r4
                    kotlin.coroutines.CoroutineContext r1 = r5.getContext()
                    androidx.compose.runtime.MonotonicFrameClock r1 = androidx.compose.runtime.MonotonicFrameClockKt.a(r1)
                    androidx.compose.runtime.MonotonicFrameClockKt$withFrameMillis$2 r4 = new androidx.compose.runtime.MonotonicFrameClockKt$withFrameMillis$2
                    r4.<init>(r6)
                    java.lang.Object r6 = r1.c(r5, r4)
                    if (r6 != r0) goto L3a
                    goto L53
                L3a:
                    androidx.compose.foundation.text.input.internal.AndroidLegacyPlatformTextInputServiceAdapter r6 = r5.f6189c
                    kotlinx.coroutines.flow.MutableSharedFlow r6 = r6.k()
                    if (r6 == 0) goto L58
                    androidx.compose.foundation.text.input.internal.AndroidLegacyPlatformTextInputServiceAdapter$startInput$2$1$1$2 r1 = new androidx.compose.foundation.text.input.internal.AndroidLegacyPlatformTextInputServiceAdapter$startInput$2$1$1$2
                    androidx.compose.foundation.text.input.internal.InputMethodManagerImpl r4 = r5.d
                    r1.<init>()
                    r5.f6188b = r3
                    kotlinx.coroutines.flow.SharedFlowImpl r6 = (kotlinx.coroutines.flow.SharedFlowImpl) r6
                    kotlin.coroutines.intrinsics.CoroutineSingletons r5 = kotlinx.coroutines.flow.SharedFlowImpl.o(r6, r1, r5)
                    if (r5 != r0) goto L54
                L53:
                    return r0
                L54:
                    defpackage.os.d()
                    return r2
                L58:
                    kotlin.Unit r5 = kotlin.Unit.f71739a
                    return r5
                */
                throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.text.input.internal.AndroidLegacyPlatformTextInputServiceAdapter$startInput$2.AnonymousClass1.C00191.invokeSuspend(java.lang.Object):java.lang.Object");
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(PlatformTextInputSession platformTextInputSession, Function1 function1, AndroidLegacyPlatformTextInputServiceAdapter androidLegacyPlatformTextInputServiceAdapter, LegacyPlatformTextInputServiceAdapter.LegacyPlatformTextInputNode legacyPlatformTextInputNode, Continuation continuation) {
            super(2, continuation);
            this.d = platformTextInputSession;
            this.f6186e = function1;
            this.f6187f = androidLegacyPlatformTextInputServiceAdapter;
            this.g = legacyPlatformTextInputNode;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.d, this.f6186e, this.f6187f, this.g, continuation);
            anonymousClass1.f6185c = obj;
            return anonymousClass1;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            int i2 = this.f6184b;
            AndroidLegacyPlatformTextInputServiceAdapter androidLegacyPlatformTextInputServiceAdapter = this.f6187f;
            try {
                if (i2 == 0) {
                    ResultKt.b(obj);
                    CoroutineScope coroutineScope = (CoroutineScope) this.f6185c;
                    Function1 function1 = LegacyPlatformTextInputServiceAdapter_androidKt.f6224a;
                    PlatformTextInputSession platformTextInputSession = this.d;
                    View f9947b = platformTextInputSession.getF9947b();
                    ((LegacyPlatformTextInputServiceAdapter_androidKt$inputMethodManagerFactory$1) function1).getClass();
                    InputMethodManagerImpl inputMethodManagerImpl = new InputMethodManagerImpl(f9947b);
                    LegacyTextInputMethodRequest legacyTextInputMethodRequest = new LegacyTextInputMethodRequest(platformTextInputSession.getF9947b(), new AndroidLegacyPlatformTextInputServiceAdapter$startInput$2$1$request$1(this.g), inputMethodManagerImpl);
                    if (StylusHandwriting_androidKt.f6175a) {
                        BuildersKt.c(coroutineScope, null, null, new C00191(androidLegacyPlatformTextInputServiceAdapter, inputMethodManagerImpl, null), 3);
                    }
                    Function1 function2 = this.f6186e;
                    if (function2 != null) {
                        function2.invoke(legacyTextInputMethodRequest);
                    }
                    androidLegacyPlatformTextInputServiceAdapter.f6179c = legacyTextInputMethodRequest;
                    this.f6184b = 1;
                    if (platformTextInputSession.b(legacyTextInputMethodRequest, this) == coroutineSingletons) {
                        return coroutineSingletons;
                    }
                } else {
                    if (i2 != 1) {
                        md.k("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    ResultKt.b(obj);
                }
                throw new KotlinNothingValueException();
            } catch (Throwable th) {
                androidLegacyPlatformTextInputServiceAdapter.f6179c = null;
                throw th;
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AndroidLegacyPlatformTextInputServiceAdapter$startInput$2(Function1 function1, AndroidLegacyPlatformTextInputServiceAdapter androidLegacyPlatformTextInputServiceAdapter, LegacyPlatformTextInputServiceAdapter.LegacyPlatformTextInputNode legacyPlatformTextInputNode, Continuation continuation) {
        super(2, continuation);
        this.d = function1;
        this.f6182e = androidLegacyPlatformTextInputServiceAdapter;
        this.f6183f = legacyPlatformTextInputNode;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        AndroidLegacyPlatformTextInputServiceAdapter$startInput$2 androidLegacyPlatformTextInputServiceAdapter$startInput$2 = new AndroidLegacyPlatformTextInputServiceAdapter$startInput$2(this.d, this.f6182e, this.f6183f, continuation);
        androidLegacyPlatformTextInputServiceAdapter$startInput$2.f6181c = obj;
        return androidLegacyPlatformTextInputServiceAdapter$startInput$2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((AndroidLegacyPlatformTextInputServiceAdapter$startInput$2) create((PlatformTextInputSession) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f6180b;
        if (i2 == 0) {
            ResultKt.b(obj);
            AnonymousClass1 anonymousClass1 = new AnonymousClass1((PlatformTextInputSession) this.f6181c, this.d, this.f6182e, this.f6183f, null);
            this.f6180b = 1;
            if (CoroutineScopeKt.d(anonymousClass1, this) == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
        }
        os.d();
        return null;
    }
}
