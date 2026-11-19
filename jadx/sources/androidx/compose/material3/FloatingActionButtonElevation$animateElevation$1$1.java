package androidx.compose.material3;

import defpackage.md;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "androidx.compose.material3.FloatingActionButtonElevation$animateElevation$1$1", f = "FloatingActionButton.kt", l = {641}, m = "invokeSuspend")
final class FloatingActionButtonElevation$animateElevation$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f6969b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ FloatingActionButtonElevationAnimatable f6970c;
    public final /* synthetic */ FloatingActionButtonElevation d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FloatingActionButtonElevation$animateElevation$1$1(FloatingActionButtonElevationAnimatable floatingActionButtonElevationAnimatable, FloatingActionButtonElevation floatingActionButtonElevation, Continuation continuation) {
        super(2, continuation);
        this.f6970c = floatingActionButtonElevationAnimatable;
        this.d = floatingActionButtonElevation;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new FloatingActionButtonElevation$animateElevation$1$1(this.f6970c, this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((FloatingActionButtonElevation$animateElevation$1$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f6969b;
        if (i2 == 0) {
            ResultKt.b(obj);
            FloatingActionButtonElevation floatingActionButtonElevation = this.d;
            float f2 = floatingActionButtonElevation.f6966a;
            float f3 = floatingActionButtonElevation.f6967b;
            float f4 = floatingActionButtonElevation.d;
            float f5 = floatingActionButtonElevation.f6968c;
            this.f6969b = 1;
            FloatingActionButtonElevationAnimatable floatingActionButtonElevationAnimatable = this.f6970c;
            floatingActionButtonElevationAnimatable.f6978a = f2;
            floatingActionButtonElevationAnimatable.f6979b = f3;
            floatingActionButtonElevationAnimatable.f6980c = f4;
            floatingActionButtonElevationAnimatable.d = f5;
            Object objB = floatingActionButtonElevationAnimatable.b(this);
            if (objB != coroutineSingletons) {
                objB = Unit.f71739a;
            }
            if (objB == coroutineSingletons) {
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
