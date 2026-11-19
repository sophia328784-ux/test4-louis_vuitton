package androidx.compose.foundation.gestures;

import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.pointer.AwaitPointerEventScope;
import androidx.compose.ui.input.pointer.PointerEventPass;
import androidx.compose.ui.input.pointer.PointerInputChange;
import androidx.compose.ui.input.pointer.PointerInputScope;
import defpackage.ku0;
import defpackage.md;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineStart;
import kotlinx.coroutines.Job;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(c = "androidx.compose.foundation.gestures.TapGestureDetectorKt$detectTapAndPress$2", f = "TapGestureDetector.kt", l = {274}, m = "invokeSuspend", v = 1)
final class TapGestureDetectorKt$detectTapAndPress$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f4744b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ Object f4745c;
    public final /* synthetic */ PointerInputScope d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Function3 f4746e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ ku0 f4747f;
    public final /* synthetic */ PressGestureScopeImpl g;

    /* JADX INFO: renamed from: androidx.compose.foundation.gestures.TapGestureDetectorKt$detectTapAndPress$2$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "androidx.compose.foundation.gestures.TapGestureDetectorKt$detectTapAndPress$2$1", f = "TapGestureDetector.kt", l = {277, 283}, m = "invokeSuspend", v = 1)
    final class AnonymousClass1 extends RestrictedSuspendLambda implements Function2<AwaitPointerEventScope, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public Object f4748c;
        public int d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public /* synthetic */ Object f4749e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final /* synthetic */ CoroutineScope f4750f;
        public final /* synthetic */ Function3 g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final /* synthetic */ ku0 f4751h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final /* synthetic */ PressGestureScopeImpl f4752i;

        /* JADX INFO: renamed from: androidx.compose.foundation.gestures.TapGestureDetectorKt$detectTapAndPress$2$1$1, reason: invalid class name and collision with other inner class name */
        @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
        @DebugMetadata(c = "androidx.compose.foundation.gestures.TapGestureDetectorKt$detectTapAndPress$2$1$1", f = "TapGestureDetector.kt", l = {280}, m = "invokeSuspend", v = 1)
        final class C00131 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public int f4753b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ Function3 f4754c;
            public final /* synthetic */ PressGestureScopeImpl d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            public final /* synthetic */ PointerInputChange f4755e;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C00131(Function3 function3, PressGestureScopeImpl pressGestureScopeImpl, PointerInputChange pointerInputChange, Continuation continuation) {
                super(2, continuation);
                this.f4754c = function3;
                this.d = pressGestureScopeImpl;
                this.f4755e = pointerInputChange;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation create(Object obj, Continuation continuation) {
                return new C00131(this.f4754c, this.d, this.f4755e, continuation);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return ((C00131) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                int i2 = this.f4753b;
                if (i2 == 0) {
                    ResultKt.b(obj);
                    Offset offset = new Offset(this.f4755e.f9330c);
                    this.f4753b = 1;
                    if (this.f4754c.A(this.d, offset, this) == coroutineSingletons) {
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

        /* JADX INFO: renamed from: androidx.compose.foundation.gestures.TapGestureDetectorKt$detectTapAndPress$2$1$2, reason: invalid class name */
        @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
        @DebugMetadata(c = "androidx.compose.foundation.gestures.TapGestureDetectorKt$detectTapAndPress$2$1$2", f = "TapGestureDetector.kt", l = {}, m = "invokeSuspend", v = 1)
        final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final /* synthetic */ PressGestureScopeImpl f4756b;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public AnonymousClass2(PressGestureScopeImpl pressGestureScopeImpl, Continuation continuation) {
                super(2, continuation);
                this.f4756b = pressGestureScopeImpl;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation create(Object obj, Continuation continuation) {
                return new AnonymousClass2(this.f4756b, continuation);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return ((AnonymousClass2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                ResultKt.b(obj);
                this.f4756b.c();
                return Unit.f71739a;
            }
        }

        /* JADX INFO: renamed from: androidx.compose.foundation.gestures.TapGestureDetectorKt$detectTapAndPress$2$1$3, reason: invalid class name */
        @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
        @DebugMetadata(c = "androidx.compose.foundation.gestures.TapGestureDetectorKt$detectTapAndPress$2$1$3", f = "TapGestureDetector.kt", l = {}, m = "invokeSuspend", v = 1)
        final class AnonymousClass3 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final /* synthetic */ PressGestureScopeImpl f4757b;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public AnonymousClass3(PressGestureScopeImpl pressGestureScopeImpl, Continuation continuation) {
                super(2, continuation);
                this.f4757b = pressGestureScopeImpl;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation create(Object obj, Continuation continuation) {
                return new AnonymousClass3(this.f4757b, continuation);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return ((AnonymousClass3) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                ResultKt.b(obj);
                this.f4757b.e();
                return Unit.f71739a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(CoroutineScope coroutineScope, Function3 function3, ku0 ku0Var, PressGestureScopeImpl pressGestureScopeImpl, Continuation continuation) {
            super(2, continuation);
            this.f4750f = coroutineScope;
            this.g = function3;
            this.f4751h = ku0Var;
            this.f4752i = pressGestureScopeImpl;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.f4750f, this.g, this.f4751h, this.f4752i, continuation);
            anonymousClass1.f4749e = obj;
            return anonymousClass1;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass1) create((AwaitPointerEventScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        /* JADX WARN: Code duplicated, block: B:23:0x0075  */
        /* JADX WARN: Code duplicated, block: B:24:0x007e  */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Job jobC;
            AwaitPointerEventScope awaitPointerEventScope;
            Job job;
            PointerInputChange pointerInputChange;
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            int i2 = this.d;
            CoroutineScope coroutineScope = this.f4750f;
            PressGestureScopeImpl pressGestureScopeImpl = this.f4752i;
            if (i2 == 0) {
                ResultKt.b(obj);
                AwaitPointerEventScope awaitPointerEventScope2 = (AwaitPointerEventScope) this.f4749e;
                jobC = BuildersKt.c(coroutineScope, null, CoroutineStart.UNDISPATCHED, new TapGestureDetectorKt$detectTapAndPress$2$1$resetJob$1(pressGestureScopeImpl, null), 1);
                this.f4749e = awaitPointerEventScope2;
                this.f4748c = jobC;
                this.d = 1;
                Object objB = TapGestureDetectorKt.b(awaitPointerEventScope2, null, this, 3);
                if (objB != coroutineSingletons) {
                    awaitPointerEventScope = awaitPointerEventScope2;
                    obj = objB;
                }
                return coroutineSingletons;
            }
            if (i2 == 1) {
                jobC = (Job) this.f4748c;
                awaitPointerEventScope = (AwaitPointerEventScope) this.f4749e;
                ResultKt.b(obj);
            } else {
                if (i2 != 2) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                job = (Job) this.f4749e;
                ResultKt.b(obj);
            }
            pointerInputChange = (PointerInputChange) obj;
            if (pointerInputChange == null) {
                TapGestureDetectorKt.g(coroutineScope, job, new AnonymousClass2(pressGestureScopeImpl, null));
            } else {
                pointerInputChange.a();
                TapGestureDetectorKt.g(coroutineScope, job, new AnonymousClass3(pressGestureScopeImpl, null));
                this.f4751h.invoke(new Offset(pointerInputChange.f9330c));
            }
            return Unit.f71739a;
            PointerInputChange pointerInputChange2 = (PointerInputChange) obj;
            pointerInputChange2.a();
            Function3 function3 = TapGestureDetectorKt.f4734a;
            Function3 function4 = this.g;
            if (function4 != function3) {
                TapGestureDetectorKt.g(coroutineScope, jobC, new C00131(function4, pressGestureScopeImpl, pointerInputChange2, null));
            }
            this.f4749e = jobC;
            this.f4748c = null;
            this.d = 2;
            obj = TapGestureDetectorKt.j(awaitPointerEventScope, PointerEventPass.Main, this);
            if (obj != coroutineSingletons) {
                job = jobC;
                pointerInputChange = (PointerInputChange) obj;
                if (pointerInputChange == null) {
                    TapGestureDetectorKt.g(coroutineScope, job, new AnonymousClass2(pressGestureScopeImpl, null));
                } else {
                    pointerInputChange.a();
                    TapGestureDetectorKt.g(coroutineScope, job, new AnonymousClass3(pressGestureScopeImpl, null));
                    this.f4751h.invoke(new Offset(pointerInputChange.f9330c));
                }
                return Unit.f71739a;
            }
            return coroutineSingletons;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TapGestureDetectorKt$detectTapAndPress$2(PointerInputScope pointerInputScope, Function3 function3, ku0 ku0Var, PressGestureScopeImpl pressGestureScopeImpl, Continuation continuation) {
        super(2, continuation);
        this.d = pointerInputScope;
        this.f4746e = function3;
        this.f4747f = ku0Var;
        this.g = pressGestureScopeImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        TapGestureDetectorKt$detectTapAndPress$2 tapGestureDetectorKt$detectTapAndPress$2 = new TapGestureDetectorKt$detectTapAndPress$2(this.d, this.f4746e, this.f4747f, this.g, continuation);
        tapGestureDetectorKt$detectTapAndPress$2.f4745c = obj;
        return tapGestureDetectorKt$detectTapAndPress$2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((TapGestureDetectorKt$detectTapAndPress$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f4744b;
        if (i2 == 0) {
            ResultKt.b(obj);
            AnonymousClass1 anonymousClass1 = new AnonymousClass1((CoroutineScope) this.f4745c, this.f4746e, this.f4747f, this.g, null);
            this.f4744b = 1;
            if (ForEachGestureKt.b(this.d, anonymousClass1, this) == coroutineSingletons) {
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
