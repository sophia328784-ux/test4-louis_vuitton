package androidx.compose.foundation.layout;

import android.view.WindowInsetsAnimationController;
import androidx.compose.animation.core.Animatable;
import androidx.compose.animation.core.AnimatableKt;
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

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(c = "androidx.compose.foundation.layout.WindowInsetsNestedScrollConnection$fling$3", f = "WindowInsetsConnection.android.kt", l = {}, m = "invokeSuspend", v = 1)
final class WindowInsetsNestedScrollConnection$fling$3 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f5116b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ WindowInsetsNestedScrollConnection f5117c;
    public final /* synthetic */ int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f5118e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ float f5119f;
    public final /* synthetic */ WindowInsetsAnimationController g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ boolean f5120h;

    /* JADX INFO: renamed from: androidx.compose.foundation.layout.WindowInsetsNestedScrollConnection$fling$3$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "androidx.compose.foundation.layout.WindowInsetsNestedScrollConnection$fling$3$1", f = "WindowInsetsConnection.android.kt", l = {355}, m = "invokeSuspend", v = 1)
    final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f5121b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ int f5122c;
        public final /* synthetic */ int d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final /* synthetic */ float f5123e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final /* synthetic */ WindowInsetsAnimationController f5124f;
        public final /* synthetic */ boolean g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final /* synthetic */ WindowInsetsNestedScrollConnection f5125h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(float f2, int i2, int i3, WindowInsetsAnimationController windowInsetsAnimationController, WindowInsetsNestedScrollConnection windowInsetsNestedScrollConnection, Continuation continuation, boolean z) {
            super(2, continuation);
            this.f5122c = i2;
            this.d = i3;
            this.f5123e = f2;
            this.f5124f = windowInsetsAnimationController;
            this.g = z;
            this.f5125h = windowInsetsNestedScrollConnection;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            WindowInsetsAnimationController windowInsetsAnimationController = this.f5124f;
            boolean z = this.g;
            return new AnonymousClass1(this.f5123e, this.f5122c, this.d, windowInsetsAnimationController, this.f5125h, continuation, z);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            AnonymousClass1 anonymousClass1;
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            int i2 = this.f5121b;
            WindowInsetsNestedScrollConnection windowInsetsNestedScrollConnection = this.f5125h;
            int i3 = 1;
            if (i2 == 0) {
                ResultKt.b(obj);
                Animatable animatableA = AnimatableKt.a(this.f5122c);
                Float f2 = new Float(this.d);
                Float f3 = new Float(this.f5123e);
                f fVar = new f(windowInsetsNestedScrollConnection, i3);
                this.f5121b = 1;
                anonymousClass1 = this;
                if (Animatable.c(animatableA, f2, null, f3, fVar, anonymousClass1, 2) == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i2 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(obj);
                anonymousClass1 = this;
            }
            anonymousClass1.f5124f.finish(anonymousClass1.g);
            windowInsetsNestedScrollConnection.f5089f = null;
            return Unit.f71739a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WindowInsetsNestedScrollConnection$fling$3(float f2, int i2, int i3, WindowInsetsAnimationController windowInsetsAnimationController, WindowInsetsNestedScrollConnection windowInsetsNestedScrollConnection, Continuation continuation, boolean z) {
        super(2, continuation);
        this.f5117c = windowInsetsNestedScrollConnection;
        this.d = i2;
        this.f5118e = i3;
        this.f5119f = f2;
        this.g = windowInsetsAnimationController;
        this.f5120h = z;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        WindowInsetsNestedScrollConnection$fling$3 windowInsetsNestedScrollConnection$fling$3 = new WindowInsetsNestedScrollConnection$fling$3(this.f5119f, this.d, this.f5118e, this.g, this.f5117c, continuation, this.f5120h);
        windowInsetsNestedScrollConnection$fling$3.f5116b = obj;
        return windowInsetsNestedScrollConnection$fling$3;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((WindowInsetsNestedScrollConnection$fling$3) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        CoroutineScope coroutineScope = (CoroutineScope) this.f5116b;
        WindowInsetsAnimationController windowInsetsAnimationController = this.g;
        boolean z = this.f5120h;
        float f2 = this.f5119f;
        int i2 = this.d;
        int i3 = this.f5118e;
        WindowInsetsNestedScrollConnection windowInsetsNestedScrollConnection = this.f5117c;
        windowInsetsNestedScrollConnection.f5092j = BuildersKt.c(coroutineScope, null, null, new AnonymousClass1(f2, i2, i3, windowInsetsAnimationController, windowInsetsNestedScrollConnection, null, z), 3);
        return Unit.f71739a;
    }
}
