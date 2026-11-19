package androidx.compose.animation;

import androidx.compose.animation.core.Animatable;
import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.animation.core.SpringSpec;
import androidx.compose.animation.core.Transition;
import androidx.compose.animation.core.VectorConvertersKt;
import androidx.compose.animation.core.VisibilityThresholdsKt;
import androidx.compose.runtime.MutableIntState;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotMutableIntStateImpl;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Rect;
import com.networkbench.agent.impl.harvest.ConfigurationName;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.EmptyList;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Landroidx/compose/animation/SharedElement;", "", ConfigurationName.KEY, "Landroidx/compose/animation/SharedTransitionScopeImpl;", "scope", "<init>", "(Ljava/lang/Object;Landroidx/compose/animation/SharedTransitionScopeImpl;)V", "animation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class SharedElement {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f3653a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final SharedTransitionScopeImpl f3654b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final SharedTransitionStateMachine f3655c = new SharedTransitionStateMachine(this);
    public final MutableState d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final MutableState f3656e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Animatable f3657f;
    public boolean g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Function0 f3658h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Function0 f3659i;

    public SharedElement(Object obj, SharedTransitionScopeImpl sharedTransitionScopeImpl) {
        this.f3653a = obj;
        this.f3654b = sharedTransitionScopeImpl;
        EmptyList emptyList = EmptyList.f71768b;
        this.d = SnapshotStateKt.g(emptyList);
        this.f3656e = SnapshotStateKt.g(emptyList);
        Offset.f8806b.getClass();
        this.f3657f = new Animatable(new Offset(0L), VectorConvertersKt.f4040f, null, null, 12, null);
        this.f3658h = new Function0<Offset>() { // from class: androidx.compose.animation.SharedElement$momentumAnimationOffset$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                Object obj2;
                SharedElement sharedElement = this.f3660c;
                boolean z = sharedElement.g;
                Animatable animatable = sharedElement.f3657f;
                SharedTransitionScopeImpl sharedTransitionScopeImpl2 = sharedElement.f3654b;
                if (!z && sharedTransitionScopeImpl2.j() && animatable.e()) {
                    List listC = sharedElement.c();
                    int size = listC.size();
                    int i2 = 0;
                    while (true) {
                        if (i2 >= size) {
                            obj2 = null;
                            break;
                        }
                        obj2 = listC.get(i2);
                        if (((SharedElementEntry) obj2).c().b()) {
                            break;
                        }
                        i2++;
                    }
                    SharedElementEntry sharedElementEntry = (SharedElementEntry) obj2;
                    if (sharedElementEntry != null) {
                        FiniteAnimationSpec finiteAnimationSpec = sharedElementEntry.c().f3539f;
                        if (finiteAnimationSpec instanceof SpringSpec) {
                            SpringSpec springSpec = (SpringSpec) finiteAnimationSpec;
                            float f2 = springSpec.f3968a;
                            float f3 = springSpec.f3969b;
                            Offset.Companion companion = Offset.f8806b;
                            Rect rect = VisibilityThresholdsKt.f4089a;
                            BuildersKt.c(sharedTransitionScopeImpl2.f3684c, null, null, new SharedElement$momentumAnimationOffset$1$2$1(sharedElement, new SpringSpec(f2, f3, new Offset((((long) Float.floatToRawIntBits(1.0f)) << 32) | (((long) Float.floatToRawIntBits(1.0f)) & BodyPartID.bodyIdMax))), null), 3);
                        }
                        sharedElement.g = true;
                    }
                }
                return new Offset(((Offset) animatable.d()).f8808a);
            }
        };
        this.f3659i = new Function0<Unit>() { // from class: androidx.compose.animation.SharedElement$observingVisibilityChange$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                List listB = this.f3663c.b();
                int size = listB.size();
                for (int i2 = 0; i2 < size; i2++) {
                    SharedElementEntry sharedElementEntry = (SharedElementEntry) listB.get(i2);
                    if (sharedElementEntry.c().b() && sharedElementEntry.j()) {
                        break;
                    }
                }
                return Unit.f71739a;
            }
        };
    }

    public final boolean a() {
        SharedTransitionStateMachine sharedTransitionStateMachine = this.f3655c;
        return sharedTransitionStateMachine.a().b() || sharedTransitionStateMachine.a().d() || sharedTransitionStateMachine.f3718e == StateChangeRequest.MatchFound;
    }

    public final List b() {
        return (List) ((SnapshotMutableStateImpl) this.d).getF10755b();
    }

    public final List c() {
        return (List) ((SnapshotMutableStateImpl) this.f3656e).getF10755b();
    }

    public final boolean d() {
        List listC = c();
        int size = listC.size();
        for (int i2 = 0; i2 < size; i2++) {
            Transition transition = ((SharedElementEntry) listC.get(i2)).c().f3536b;
            while (true) {
                Transition transition2 = transition.f3989b;
                if (transition2 == null) {
                    break;
                }
                transition = transition2;
            }
            if (!Intrinsics.c(transition.f3988a.a(), ((SnapshotMutableStateImpl) transition.d).getF10755b())) {
                return true;
            }
        }
        return false;
    }

    public final void e() {
        this.f3654b.getClass();
        List listB = b();
        ArrayList arrayList = new ArrayList();
        int size = listB.size();
        boolean z = false;
        for (int i2 = 0; i2 < size; i2++) {
            SharedElementEntry sharedElementEntry = (SharedElementEntry) listB.get(i2);
            if (sharedElementEntry.j()) {
                arrayList.add(sharedElementEntry);
                if (sharedElementEntry.c().b()) {
                    z = true;
                }
            }
        }
        ((SnapshotMutableStateImpl) this.f3656e).setValue(arrayList);
        SharedTransitionStateMachine sharedTransitionStateMachine = this.f3655c;
        SharedElement sharedElement = sharedTransitionStateMachine.f3715a;
        MutableIntState mutableIntState = sharedTransitionStateMachine.d;
        if (sharedElement.c().size() > 1 && z) {
            sharedTransitionStateMachine.f3718e = StateChangeRequest.MatchFound;
            ((SnapshotMutableIntStateImpl) mutableIntState).i(sharedTransitionStateMachine.f3717c + 1);
        } else if (!sharedElement.f3654b.j()) {
            sharedTransitionStateMachine.f3718e = StateChangeRequest.NoRequest;
            sharedTransitionStateMachine.f3717c = ((SnapshotMutableIntStateImpl) mutableIntState).f();
            ((SnapshotMutableStateImpl) sharedTransitionStateMachine.f3716b).setValue(NoMatchFound.f3641a);
        } else if (!z) {
            sharedTransitionStateMachine.f3718e = StateChangeRequest.VisibleContentAbsentDuringTransition;
            ((SnapshotMutableIntStateImpl) mutableIntState).i(sharedTransitionStateMachine.f3717c + 1);
        }
        sharedTransitionStateMachine.b();
    }
}
