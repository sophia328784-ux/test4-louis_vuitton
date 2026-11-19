package androidx.navigation.compose;

import androidx.activity.BackEventCompat;
import androidx.compose.runtime.MutableFloatState;
import androidx.compose.runtime.MutableState;
import androidx.navigation.NavBackStackEntry;
import defpackage.md;
import java.util.List;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0010\u0010\u0002\u001a\f\u0012\b\u0012\u00060\u0004j\u0002`\u00050\u0003H\n"}, d2 = {"<anonymous>", "", "backEvent", "Lkotlinx/coroutines/flow/Flow;", "Landroidx/activity/BackEventCompat;", "Landroidx/navigation/compose/internal/BackEventCompat;"}, k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "androidx.navigation.compose.NavHostKt$NavHost$25$1", f = "NavHost.kt", l = {534}, m = "invokeSuspend")
final class NavHostKt$NavHost$25$1 extends SuspendLambda implements Function2<Flow<? extends BackEventCompat>, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f18260b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ Object f18261c;
    public final /* synthetic */ ComposeNavigator d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ MutableState f18262e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ MutableFloatState f18263f;
    public final /* synthetic */ MutableState g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NavHostKt$NavHost$25$1(ComposeNavigator composeNavigator, MutableState mutableState, MutableFloatState mutableFloatState, MutableState mutableState2, Continuation continuation) {
        super(2, continuation);
        this.d = composeNavigator;
        this.f18262e = mutableState;
        this.f18263f = mutableFloatState;
        this.g = mutableState2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        NavHostKt$NavHost$25$1 navHostKt$NavHost$25$1 = new NavHostKt$NavHost$25$1(this.d, this.f18262e, this.f18263f, this.g, continuation);
        navHostKt$NavHost$25$1.f18261c = obj;
        return navHostKt$NavHost$25$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((NavHostKt$NavHost$25$1) create((Flow) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        NavBackStackEntry navBackStackEntry;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f18260b;
        NavBackStackEntry navBackStackEntry2 = null;
        final MutableState mutableState = this.g;
        ComposeNavigator composeNavigator = this.d;
        final MutableState mutableState2 = this.f18262e;
        try {
            if (i2 == 0) {
                ResultKt.b(obj);
                Flow flow = (Flow) this.f18261c;
                int size = ((List) mutableState2.getF10755b()).size();
                final MutableFloatState mutableFloatState = this.f18263f;
                if (size > 1) {
                    mutableFloatState.w(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                    navBackStackEntry2 = (NavBackStackEntry) CollectionsKt.N((List) mutableState2.getF10755b());
                    navBackStackEntry2.getClass();
                    composeNavigator.b().f(navBackStackEntry2);
                    composeNavigator.b().f((NavBackStackEntry) ((List) mutableState2.getF10755b()).get(((List) mutableState2.getF10755b()).size() - 2));
                }
                FlowCollector flowCollector = new FlowCollector() { // from class: androidx.navigation.compose.NavHostKt$NavHost$25$1.1
                    @Override // kotlinx.coroutines.flow.FlowCollector
                    public final Object emit(Object obj2, Continuation continuation) {
                        BackEventCompat backEventCompat = (BackEventCompat) obj2;
                        if (((List) mutableState2.getF10755b()).size() > 1) {
                            mutableState.setValue(Boolean.TRUE);
                            mutableFloatState.w(backEventCompat.f654c);
                        }
                        return Unit.f71739a;
                    }
                };
                this.f18261c = navBackStackEntry2;
                this.f18260b = 1;
                if (flow.f(flowCollector, this) == coroutineSingletons) {
                    return coroutineSingletons;
                }
                navBackStackEntry = navBackStackEntry2;
            } else {
                if (i2 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                navBackStackEntry = (NavBackStackEntry) this.f18261c;
                ResultKt.b(obj);
            }
            if (((List) mutableState2.getF10755b()).size() > 1) {
                mutableState.setValue(Boolean.FALSE);
                navBackStackEntry.getClass();
                composeNavigator.i(navBackStackEntry, false);
            }
        } catch (CancellationException unused) {
            if (((List) mutableState2.getF10755b()).size() > 1) {
                mutableState.setValue(Boolean.FALSE);
            }
        }
        return Unit.f71739a;
    }
}
