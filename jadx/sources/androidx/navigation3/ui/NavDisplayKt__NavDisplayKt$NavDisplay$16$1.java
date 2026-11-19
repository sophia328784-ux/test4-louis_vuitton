package androidx.navigation3.ui;

import androidx.collection.MutableObjectFloatMap;
import androidx.compose.animation.core.Transition;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.snapshots.SnapshotStateMap;
import androidx.navigation3.scene.Scene;
import defpackage.hg0;
import defpackage.md;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(c = "androidx.navigation3.ui.NavDisplayKt__NavDisplayKt$NavDisplay$16$1", f = "NavDisplay.kt", l = {879}, m = "invokeSuspend", v = 1)
final class NavDisplayKt__NavDisplayKt$NavDisplay$16$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f18440b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Transition f18441c;
    public final /* synthetic */ SnapshotStateMap d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ MutableObjectFloatMap f18442e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NavDisplayKt__NavDisplayKt$NavDisplay$16$1(Transition transition, SnapshotStateMap snapshotStateMap, MutableObjectFloatMap mutableObjectFloatMap, Continuation continuation) {
        super(2, continuation);
        this.f18441c = transition;
        this.d = snapshotStateMap;
        this.f18442e = mutableObjectFloatMap;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new NavDisplayKt__NavDisplayKt$NavDisplay$16$1(this.f18441c, this.d, this.f18442e, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((NavDisplayKt__NavDisplayKt$NavDisplay$16$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f18440b;
        if (i2 == 0) {
            ResultKt.b(obj);
            final Transition transition = this.f18441c;
            final Flow flowM = SnapshotStateKt.m(new hg0(transition, 0));
            Flow<Boolean> flow = new Flow<Boolean>() { // from class: androidx.navigation3.ui.NavDisplayKt__NavDisplayKt$NavDisplay$16$1$invokeSuspend$$inlined$filter$1

                /* JADX INFO: renamed from: androidx.navigation3.ui.NavDisplayKt__NavDisplayKt$NavDisplay$16$1$invokeSuspend$$inlined$filter$1$2, reason: invalid class name */
                @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
                public final class AnonymousClass2<T> implements FlowCollector {

                    /* JADX INFO: renamed from: b, reason: collision with root package name */
                    public final /* synthetic */ FlowCollector f18446b;

                    /* JADX INFO: renamed from: androidx.navigation3.ui.NavDisplayKt__NavDisplayKt$NavDisplay$16$1$invokeSuspend$$inlined$filter$1$2$1, reason: invalid class name */
                    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
                    @DebugMetadata(c = "androidx.navigation3.ui.NavDisplayKt__NavDisplayKt$NavDisplay$16$1$invokeSuspend$$inlined$filter$1$2", f = "NavDisplay.kt", l = {50}, m = "emit", v = 1)
                    public final class AnonymousClass1 extends ContinuationImpl {

                        /* JADX INFO: renamed from: b, reason: collision with root package name */
                        public /* synthetic */ Object f18447b;

                        /* JADX INFO: renamed from: c, reason: collision with root package name */
                        public int f18448c;

                        public AnonymousClass1(Continuation continuation) {
                            super(continuation);
                        }

                        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                        public final Object invokeSuspend(Object obj) {
                            this.f18447b = obj;
                            this.f18448c |= Integer.MIN_VALUE;
                            return AnonymousClass2.this.emit(null, this);
                        }
                    }

                    public AnonymousClass2(FlowCollector flowCollector) {
                        this.f18446b = flowCollector;
                    }

                    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
                    @Override // kotlinx.coroutines.flow.FlowCollector
                    public final Object emit(Object obj, Continuation continuation) {
                        AnonymousClass1 anonymousClass1;
                        if (continuation instanceof AnonymousClass1) {
                            anonymousClass1 = (AnonymousClass1) continuation;
                            int i2 = anonymousClass1.f18448c;
                            if ((i2 & Integer.MIN_VALUE) != 0) {
                                anonymousClass1.f18448c = i2 - Integer.MIN_VALUE;
                            } else {
                                anonymousClass1 = new AnonymousClass1(continuation);
                            }
                        } else {
                            anonymousClass1 = new AnonymousClass1(continuation);
                        }
                        Object obj2 = anonymousClass1.f18447b;
                        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                        int i3 = anonymousClass1.f18448c;
                        if (i3 == 0) {
                            ResultKt.b(obj2);
                            if (!((Boolean) obj).booleanValue()) {
                                anonymousClass1.f18448c = 1;
                                if (this.f18446b.emit(obj, anonymousClass1) == coroutineSingletons) {
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
                    Object objF = flowM.f(new AnonymousClass2(flowCollector), continuation);
                    return objF == CoroutineSingletons.COROUTINE_SUSPENDED ? objF : Unit.f71739a;
                }
            };
            final SnapshotStateMap snapshotStateMap = this.d;
            final MutableObjectFloatMap mutableObjectFloatMap = this.f18442e;
            FlowCollector flowCollector = new FlowCollector() { // from class: androidx.navigation3.ui.NavDisplayKt__NavDisplayKt$NavDisplay$16$1.3
                /* JADX WARN: Code duplicated, block: B:22:0x0086 A[DONT_INVERT] */
                /* JADX WARN: Code duplicated, block: B:23:0x0088 A[LOOP:1: B:11:0x0045->B:23:0x0088, LOOP_END] */
                /* JADX WARN: Code duplicated, block: B:32:0x008b A[EDGE_INSN: B:32:0x008b->B:24:0x008b BREAK  A[LOOP:1: B:11:0x0045->B:23:0x0088], SYNTHETIC] */
                @Override // kotlinx.coroutines.flow.FlowCollector
                public final Object emit(Object obj2, Continuation continuation) {
                    ((Boolean) obj2).getClass();
                    AnimatedSceneKey animatedSceneKey = new AnimatedSceneKey((Scene) ((SnapshotMutableStateImpl) transition.d).getF10755b());
                    SnapshotStateMap snapshotStateMap2 = snapshotStateMap;
                    for (AnimatedSceneKey animatedSceneKey2 : CollectionsKt.y0(snapshotStateMap2.d)) {
                        if (!Intrinsics.c(animatedSceneKey2, animatedSceneKey)) {
                            snapshotStateMap2.remove(animatedSceneKey2);
                        }
                    }
                    MutableObjectFloatMap mutableObjectFloatMap2 = mutableObjectFloatMap;
                    long[] jArr = mutableObjectFloatMap2.f3335a;
                    int length = jArr.length - 2;
                    if (length >= 0) {
                        int i3 = 0;
                        while (true) {
                            long j2 = jArr[i3];
                            if ((((~j2) << 7) & j2 & (-9187201950435737472L)) == -9187201950435737472L) {
                                if (i3 != length) {
                                    break;
                                    break;
                                }
                                i3++;
                            } else {
                                int i4 = 8 - ((~(i3 - length)) >>> 31);
                                for (int i5 = 0; i5 < i4; i5++) {
                                    if ((255 & j2) < 128) {
                                        int i6 = (i3 << 3) + i5;
                                        Object obj3 = mutableObjectFloatMap2.f3336b[i6];
                                        float f2 = mutableObjectFloatMap2.f3337c[i6];
                                        if (!Intrinsics.c((AnimatedSceneKey) obj3, animatedSceneKey)) {
                                            mutableObjectFloatMap2.e(i6);
                                        }
                                    }
                                    j2 >>= 8;
                                }
                                if (i4 != 8) {
                                    break;
                                }
                                if (i3 != length) {
                                    break;
                                }
                                i3++;
                            }
                        }
                    }
                    return Unit.f71739a;
                }
            };
            this.f18440b = 1;
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
