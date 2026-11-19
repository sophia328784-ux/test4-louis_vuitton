package androidx.compose.foundation.layout;

import android.view.WindowInsetsAnimationController;
import androidx.compose.animation.core.SuspendAnimationKt;
import defpackage.md;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$FloatRef;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Job;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(c = "androidx.compose.foundation.layout.WindowInsetsNestedScrollConnection$fling$2", f = "WindowInsetsConnection.android.kt", l = {345}, m = "invokeSuspend", v = 1)
final class WindowInsetsNestedScrollConnection$fling$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f5100b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ Object f5101c;
    public final /* synthetic */ WindowInsetsNestedScrollConnection d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f5102e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ float f5103f;
    public final /* synthetic */ SplineBasedFloatDecayAnimationSpec g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ int f5104h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ int f5105i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ Ref$FloatRef f5106j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final /* synthetic */ WindowInsetsAnimationController f5107k;
    public final /* synthetic */ boolean l;

    /* JADX INFO: renamed from: androidx.compose.foundation.layout.WindowInsetsNestedScrollConnection$fling$2$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "androidx.compose.foundation.layout.WindowInsetsNestedScrollConnection$fling$2$1", f = "WindowInsetsConnection.android.kt", l = {329}, m = "invokeSuspend", v = 1)
    final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f5108b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ int f5109c;
        public final /* synthetic */ float d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final /* synthetic */ SplineBasedFloatDecayAnimationSpec f5110e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final /* synthetic */ int f5111f;
        public final /* synthetic */ int g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final /* synthetic */ WindowInsetsNestedScrollConnection f5112h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final /* synthetic */ Ref$FloatRef f5113i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final /* synthetic */ WindowInsetsAnimationController f5114j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public final /* synthetic */ boolean f5115k;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(float f2, int i2, int i3, int i4, WindowInsetsAnimationController windowInsetsAnimationController, SplineBasedFloatDecayAnimationSpec splineBasedFloatDecayAnimationSpec, WindowInsetsNestedScrollConnection windowInsetsNestedScrollConnection, Continuation continuation, Ref$FloatRef ref$FloatRef, boolean z) {
            super(2, continuation);
            this.f5109c = i2;
            this.d = f2;
            this.f5110e = splineBasedFloatDecayAnimationSpec;
            this.f5111f = i3;
            this.g = i4;
            this.f5112h = windowInsetsNestedScrollConnection;
            this.f5113i = ref$FloatRef;
            this.f5114j = windowInsetsAnimationController;
            this.f5115k = z;
        }

        public static Unit b(int i2, int i3, WindowInsetsNestedScrollConnection windowInsetsNestedScrollConnection, Ref$FloatRef ref$FloatRef, WindowInsetsAnimationController windowInsetsAnimationController, boolean z, float f2, float f3) {
            float f4 = i2;
            if (f2 > i3 || f4 > f2) {
                ref$FloatRef.f71918b = f3;
                windowInsetsAnimationController.finish(z);
                windowInsetsNestedScrollConnection.f5089f = null;
                Job job = windowInsetsNestedScrollConnection.f5092j;
                if (job != null) {
                    job.cancel(new WindowInsetsAnimationCancelledException());
                }
            } else {
                WindowInsetsNestedScrollConnection.a(windowInsetsNestedScrollConnection, f2);
            }
            return Unit.f71739a;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return new AnonymousClass1(this.d, this.f5109c, this.f5111f, this.g, this.f5114j, this.f5110e, this.f5112h, continuation, this.f5113i, this.f5115k);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            int i2 = this.f5108b;
            if (i2 == 0) {
                ResultKt.b(obj);
                float f2 = this.f5109c;
                g gVar = new g(this.f5111f, this.g, this.f5112h, this.f5113i, this.f5114j, this.f5115k);
                this.f5108b = 1;
                if (SuspendAnimationKt.d(f2, this.d, this.f5110e, gVar, this) == coroutineSingletons) {
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

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WindowInsetsNestedScrollConnection$fling$2(float f2, int i2, int i3, int i4, WindowInsetsAnimationController windowInsetsAnimationController, SplineBasedFloatDecayAnimationSpec splineBasedFloatDecayAnimationSpec, WindowInsetsNestedScrollConnection windowInsetsNestedScrollConnection, Continuation continuation, Ref$FloatRef ref$FloatRef, boolean z) {
        super(2, continuation);
        this.d = windowInsetsNestedScrollConnection;
        this.f5102e = i2;
        this.f5103f = f2;
        this.g = splineBasedFloatDecayAnimationSpec;
        this.f5104h = i3;
        this.f5105i = i4;
        this.f5106j = ref$FloatRef;
        this.f5107k = windowInsetsAnimationController;
        this.l = z;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        WindowInsetsNestedScrollConnection$fling$2 windowInsetsNestedScrollConnection$fling$2 = new WindowInsetsNestedScrollConnection$fling$2(this.f5103f, this.f5102e, this.f5104h, this.f5105i, this.f5107k, this.g, this.d, continuation, this.f5106j, this.l);
        windowInsetsNestedScrollConnection$fling$2.f5101c = obj;
        return windowInsetsNestedScrollConnection$fling$2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((WindowInsetsNestedScrollConnection$fling$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f5100b;
        WindowInsetsNestedScrollConnection windowInsetsNestedScrollConnection = this.d;
        if (i2 == 0) {
            ResultKt.b(obj);
            windowInsetsNestedScrollConnection.f5092j = BuildersKt.c((CoroutineScope) this.f5101c, null, null, new AnonymousClass1(this.f5103f, this.f5102e, this.f5104h, this.f5105i, this.f5107k, this.g, windowInsetsNestedScrollConnection, null, this.f5106j, this.l), 3);
            Job job = windowInsetsNestedScrollConnection.f5092j;
            if (job != null) {
                this.f5100b = 1;
                if (job.join(this) == coroutineSingletons) {
                    return coroutineSingletons;
                }
            }
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
        }
        windowInsetsNestedScrollConnection.f5092j = null;
        return Unit.f71739a;
    }
}
