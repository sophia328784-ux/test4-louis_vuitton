package androidx.navigation.compose;

import androidx.collection.MutableObjectFloatMap;
import androidx.compose.animation.core.Transition;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.State;
import androidx.navigation.NavBackStackEntry;
import androidx.navigation.NavHostController;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "androidx.navigation.compose.NavHostKt$NavHost$33$1", f = "NavHost.kt", l = {}, m = "invokeSuspend")
final class NavHostKt$NavHost$33$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Transition f18282b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ NavHostController f18283c;
    public final /* synthetic */ NavBackStackEntry d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ MutableObjectFloatMap f18284e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ State f18285f;
    public final /* synthetic */ ComposeNavigator g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NavHostKt$NavHost$33$1(Transition transition, NavHostController navHostController, NavBackStackEntry navBackStackEntry, MutableObjectFloatMap mutableObjectFloatMap, State state, ComposeNavigator composeNavigator, Continuation continuation) {
        super(2, continuation);
        this.f18282b = transition;
        this.f18283c = navHostController;
        this.d = navBackStackEntry;
        this.f18284e = mutableObjectFloatMap;
        this.f18285f = state;
        this.g = composeNavigator;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new NavHostKt$NavHost$33$1(this.f18282b, this.f18283c, this.d, this.f18284e, this.f18285f, this.g, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((NavHostKt$NavHost$33$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code duplicated, block: B:26:0x00b0 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:27:0x00b2 A[LOOP:1: B:15:0x0064->B:27:0x00b2, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:32:0x00b5 A[EDGE_INSN: B:32:0x00b5->B:28:0x00b5 BREAK  A[LOOP:1: B:15:0x0064->B:27:0x00b2], SYNTHETIC] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        Transition transition = this.f18282b;
        Object objA = transition.f3988a.a();
        MutableState mutableState = transition.d;
        if (Intrinsics.c(objA, ((SnapshotMutableStateImpl) mutableState).getF10755b()) && (this.f18283c.f18122b.h() == null || Intrinsics.c(((SnapshotMutableStateImpl) mutableState).getF10755b(), this.d))) {
            Iterator it = ((List) this.f18285f.getF10755b()).iterator();
            while (it.hasNext()) {
                this.g.b().b((NavBackStackEntry) it.next());
            }
            MutableObjectFloatMap mutableObjectFloatMap = this.f18284e;
            long[] jArr = mutableObjectFloatMap.f3335a;
            int length = jArr.length - 2;
            if (length >= 0) {
                int i2 = 0;
                while (true) {
                    long j2 = jArr[i2];
                    if ((((~j2) << 7) & j2 & (-9187201950435737472L)) == -9187201950435737472L) {
                        if (i2 != length) {
                            break;
                            break;
                        }
                        i2++;
                    } else {
                        int i3 = 8 - ((~(i2 - length)) >>> 31);
                        for (int i4 = 0; i4 < i3; i4++) {
                            if ((255 & j2) < 128) {
                                int i5 = (i2 << 3) + i4;
                                Object obj2 = mutableObjectFloatMap.f3336b[i5];
                                float f2 = mutableObjectFloatMap.f3337c[i5];
                                if (!Intrinsics.c((String) obj2, ((NavBackStackEntry) ((SnapshotMutableStateImpl) mutableState).getF10755b()).g)) {
                                    mutableObjectFloatMap.e(i5);
                                }
                            }
                            j2 >>= 8;
                        }
                        if (i3 != 8) {
                            break;
                        }
                        if (i2 != length) {
                            break;
                        }
                        i2++;
                    }
                }
            }
        }
        return Unit.f71739a;
    }
}
