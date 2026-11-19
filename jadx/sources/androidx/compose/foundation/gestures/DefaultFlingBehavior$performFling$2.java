package androidx.compose.foundation.gestures;

import androidx.compose.animation.core.AnimationState;
import androidx.compose.animation.core.AnimationStateKt;
import androidx.compose.animation.core.DecayAnimationSpec;
import androidx.compose.animation.core.SuspendAnimationKt;
import defpackage.md;
import defpackage.n0;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$FloatRef;
import kotlinx.coroutines.CoroutineScope;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0007\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(c = "androidx.compose.foundation.gestures.DefaultFlingBehavior$performFling$2", f = "Scrollable.kt", l = {1079}, m = "invokeSuspend", v = 1)
final class DefaultFlingBehavior$performFling$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Float>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Ref$FloatRef f4455b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public AnimationState f4456c;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ float f4457e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ DefaultFlingBehavior f4458f;
    public final /* synthetic */ ScrollScope g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DefaultFlingBehavior$performFling$2(float f2, DefaultFlingBehavior defaultFlingBehavior, ScrollScope scrollScope, Continuation continuation) {
        super(2, continuation);
        this.f4457e = f2;
        this.f4458f = defaultFlingBehavior;
        this.g = scrollScope;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new DefaultFlingBehavior$performFling$2(this.f4457e, this.f4458f, this.g, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((DefaultFlingBehavior$performFling$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        float f2;
        AnimationState animationState;
        Ref$FloatRef ref$FloatRef;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.d;
        if (i2 == 0) {
            ResultKt.b(obj);
            f2 = this.f4457e;
            if (Math.abs(f2) > 1.0f) {
                Ref$FloatRef ref$FloatRef2 = new Ref$FloatRef();
                ref$FloatRef2.f71918b = f2;
                Ref$FloatRef ref$FloatRef3 = new Ref$FloatRef();
                AnimationState animationStateA = AnimationStateKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM, f2, 28);
                try {
                    DefaultFlingBehavior defaultFlingBehavior = this.f4458f;
                    DecayAnimationSpec decayAnimationSpec = defaultFlingBehavior.f4453a;
                    n0 n0Var = new n0(ref$FloatRef3, this.g, ref$FloatRef2, defaultFlingBehavior);
                    this.f4455b = ref$FloatRef2;
                    this.f4456c = animationStateA;
                    this.d = 1;
                    if (SuspendAnimationKt.e(animationStateA, decayAnimationSpec, false, n0Var, this) == coroutineSingletons) {
                        return coroutineSingletons;
                    }
                    ref$FloatRef = ref$FloatRef2;
                    f2 = ref$FloatRef.f71918b;
                } catch (CancellationException unused) {
                    animationState = animationStateA;
                    ref$FloatRef = ref$FloatRef2;
                    ref$FloatRef.f71918b = ((Number) animationState.h()).floatValue();
                }
            }
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            animationState = this.f4456c;
            ref$FloatRef = this.f4455b;
            try {
                ResultKt.b(obj);
            } catch (CancellationException unused2) {
                ref$FloatRef.f71918b = ((Number) animationState.h()).floatValue();
            }
            f2 = ref$FloatRef.f71918b;
        }
        return new Float(f2);
    }
}
