package androidx.compose.foundation.text.input.internal;

import java.util.concurrent.atomic.AtomicReference;
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
import kotlinx.coroutines.Job;
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(c = "androidx.compose.foundation.text.input.internal.CursorAnimationState$snapToVisibleAndAnimate$2", f = "CursorAnimationState.kt", l = {}, m = "invokeSuspend", v = 1)
final class CursorAnimationState$snapToVisibleAndAnimate$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Boolean>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f6203b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ CursorAnimationState f6204c;

    /* JADX INFO: renamed from: androidx.compose.foundation.text.input.internal.CursorAnimationState$snapToVisibleAndAnimate$2$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "androidx.compose.foundation.text.input.internal.CursorAnimationState$snapToVisibleAndAnimate$2$1", f = "CursorAnimationState.kt", l = {72, EACTags.INTEGRATED_CIRCUIT_MANUFACTURER_ID, 79, EACTags.ANSWER_TO_RESET}, m = "invokeSuspend", v = 1)
    final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f6205b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ Job f6206c;
        public final /* synthetic */ CursorAnimationState d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(Job job, CursorAnimationState cursorAnimationState, Continuation continuation) {
            super(2, continuation);
            this.f6206c = job;
            this.d = cursorAnimationState;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return new AnonymousClass1(this.f6206c, this.d, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        /* JADX WARN: Code duplicated, block: B:32:0x0065  */
        /* JADX WARN: Code duplicated, block: B:33:0x0066 A[Catch: all -> 0x001f, TryCatch #0 {all -> 0x001f, blocks: (B:8:0x001b, B:36:0x0075, B:30:0x005d, B:33:0x0066, B:14:0x0028, B:15:0x002c, B:28:0x0057, B:29:0x005c, B:23:0x0044, B:25:0x004e), top: B:40:0x0011 }] */
        /* JADX WARN: Code restructure failed: missing block: B:34:0x0072, code lost:
        
            if (kotlinx.coroutines.DelayKt.b(500, r12) == r2) goto L35;
         */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:34:0x0072 -> B:36:0x0075). Please report as a decompilation issue!!! */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r13) {
            /*
                r12 = this;
                androidx.compose.foundation.text.input.internal.CursorAnimationState r0 = r12.d
                androidx.compose.runtime.MutableFloatState r1 = r0.f6202c
                kotlin.coroutines.intrinsics.CoroutineSingletons r2 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
                int r3 = r12.f6205b
                r4 = 0
                r5 = 500(0x1f4, double:2.47E-321)
                r7 = 1065353216(0x3f800000, float:1.0)
                r8 = 4
                r9 = 3
                r10 = 2
                r11 = 1
                if (r3 == 0) goto L34
                if (r3 == r11) goto L30
                if (r3 == r10) goto L2c
                if (r3 == r9) goto L28
                if (r3 != r8) goto L21
                kotlin.ResultKt.b(r13)     // Catch: java.lang.Throwable -> L1f
                goto L75
            L1f:
                r12 = move-exception
                goto L7c
            L21:
                java.lang.String r12 = "call to 'resume' before 'invoke' with coroutine"
                defpackage.md.k(r12)
                r12 = 0
                return r12
            L28:
                kotlin.ResultKt.b(r13)     // Catch: java.lang.Throwable -> L1f
                goto L66
            L2c:
                kotlin.ResultKt.b(r13)     // Catch: java.lang.Throwable -> L1f
                goto L57
            L30:
                kotlin.ResultKt.b(r13)
                goto L44
            L34:
                kotlin.ResultKt.b(r13)
                kotlinx.coroutines.Job r13 = r12.f6206c
                if (r13 == 0) goto L44
                r12.f6205b = r11
                java.lang.Object r13 = kotlinx.coroutines.JobKt.c(r13, r12)
                if (r13 != r2) goto L44
                goto L74
            L44:
                r13 = r1
                androidx.compose.runtime.SnapshotMutableFloatStateImpl r13 = (androidx.compose.runtime.SnapshotMutableFloatStateImpl) r13     // Catch: java.lang.Throwable -> L1f
                r13.w(r7)     // Catch: java.lang.Throwable -> L1f
                boolean r13 = r0.f6200a     // Catch: java.lang.Throwable -> L1f
                if (r13 != 0) goto L5d
                r12.f6205b = r10     // Catch: java.lang.Throwable -> L1f
                kotlin.coroutines.intrinsics.CoroutineSingletons r12 = kotlinx.coroutines.DelayKt.a(r12)     // Catch: java.lang.Throwable -> L1f
                if (r12 != r2) goto L57
                goto L74
            L57:
                kotlin.KotlinNothingValueException r12 = new kotlin.KotlinNothingValueException     // Catch: java.lang.Throwable -> L1f
                r12.<init>()     // Catch: java.lang.Throwable -> L1f
                throw r12     // Catch: java.lang.Throwable -> L1f
            L5d:
                r12.f6205b = r9     // Catch: java.lang.Throwable -> L1f
                java.lang.Object r13 = kotlinx.coroutines.DelayKt.b(r5, r12)     // Catch: java.lang.Throwable -> L1f
                if (r13 != r2) goto L66
                goto L74
            L66:
                r13 = r1
                androidx.compose.runtime.SnapshotMutableFloatStateImpl r13 = (androidx.compose.runtime.SnapshotMutableFloatStateImpl) r13     // Catch: java.lang.Throwable -> L1f
                r13.w(r4)     // Catch: java.lang.Throwable -> L1f
                r12.f6205b = r8     // Catch: java.lang.Throwable -> L1f
                java.lang.Object r13 = kotlinx.coroutines.DelayKt.b(r5, r12)     // Catch: java.lang.Throwable -> L1f
                if (r13 != r2) goto L75
            L74:
                return r2
            L75:
                r13 = r1
                androidx.compose.runtime.SnapshotMutableFloatStateImpl r13 = (androidx.compose.runtime.SnapshotMutableFloatStateImpl) r13     // Catch: java.lang.Throwable -> L1f
                r13.w(r7)     // Catch: java.lang.Throwable -> L1f
                goto L5d
            L7c:
                androidx.compose.runtime.SnapshotMutableFloatStateImpl r1 = (androidx.compose.runtime.SnapshotMutableFloatStateImpl) r1
                r1.w(r4)
                throw r12
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.text.input.internal.CursorAnimationState$snapToVisibleAndAnimate$2.AnonymousClass1.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CursorAnimationState$snapToVisibleAndAnimate$2(CursorAnimationState cursorAnimationState, Continuation continuation) {
        super(2, continuation);
        this.f6204c = cursorAnimationState;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        CursorAnimationState$snapToVisibleAndAnimate$2 cursorAnimationState$snapToVisibleAndAnimate$2 = new CursorAnimationState$snapToVisibleAndAnimate$2(this.f6204c, continuation);
        cursorAnimationState$snapToVisibleAndAnimate$2.f6203b = obj;
        return cursorAnimationState$snapToVisibleAndAnimate$2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((CursorAnimationState$snapToVisibleAndAnimate$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        boolean z;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        CoroutineScope coroutineScope = (CoroutineScope) this.f6203b;
        CursorAnimationState cursorAnimationState = this.f6204c;
        AtomicReference atomicReference = cursorAnimationState.f6201b;
        Job jobC = BuildersKt.c(coroutineScope, null, null, new AnonymousClass1((Job) atomicReference.getAndSet(null), cursorAnimationState, null), 3);
        while (!atomicReference.compareAndSet(null, jobC)) {
            if (atomicReference.get() != null) {
                z = false;
                return Boolean.valueOf(z);
            }
        }
        z = true;
        return Boolean.valueOf(z);
    }
}
