package androidx.compose.material3;

import androidx.compose.foundation.interaction.FocusInteraction;
import androidx.compose.foundation.interaction.HoverInteraction;
import androidx.compose.foundation.interaction.Interaction;
import androidx.compose.foundation.interaction.InteractionSource;
import androidx.compose.foundation.interaction.PressInteraction;
import defpackage.md;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.SharedFlowImpl;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "androidx.compose.material3.FloatingActionButtonElevation$animateElevation$2$1", f = "FloatingActionButton.kt", l = {651}, m = "invokeSuspend")
final class FloatingActionButtonElevation$animateElevation$2$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f6971b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ Object f6972c;
    public final /* synthetic */ InteractionSource d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ FloatingActionButtonElevationAnimatable f6973e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FloatingActionButtonElevation$animateElevation$2$1(InteractionSource interactionSource, FloatingActionButtonElevationAnimatable floatingActionButtonElevationAnimatable, Continuation continuation) {
        super(2, continuation);
        this.d = interactionSource;
        this.f6973e = floatingActionButtonElevationAnimatable;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        FloatingActionButtonElevation$animateElevation$2$1 floatingActionButtonElevation$animateElevation$2$1 = new FloatingActionButtonElevation$animateElevation$2$1(this.d, this.f6973e, continuation);
        floatingActionButtonElevation$animateElevation$2$1.f6972c = obj;
        return floatingActionButtonElevation$animateElevation$2$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((FloatingActionButtonElevation$animateElevation$2$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f6971b;
        if (i2 == 0) {
            ResultKt.b(obj);
            final CoroutineScope coroutineScope = (CoroutineScope) this.f6972c;
            final ArrayList arrayList = new ArrayList();
            SharedFlowImpl f4891a = this.d.getF4891a();
            final FloatingActionButtonElevationAnimatable floatingActionButtonElevationAnimatable = this.f6973e;
            FlowCollector flowCollector = new FlowCollector() { // from class: androidx.compose.material3.FloatingActionButtonElevation$animateElevation$2$1.1

                /* JADX INFO: renamed from: androidx.compose.material3.FloatingActionButtonElevation$animateElevation$2$1$1$1, reason: invalid class name and collision with other inner class name */
                @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
                @DebugMetadata(c = "androidx.compose.material3.FloatingActionButtonElevation$animateElevation$2$1$1$1", f = "FloatingActionButton.kt", l = {676}, m = "invokeSuspend")
                final class C00201 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

                    /* JADX INFO: renamed from: b, reason: collision with root package name */
                    public int f6976b;

                    /* JADX INFO: renamed from: c, reason: collision with root package name */
                    public final /* synthetic */ FloatingActionButtonElevationAnimatable f6977c;
                    public final /* synthetic */ Interaction d;

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    public C00201(FloatingActionButtonElevationAnimatable floatingActionButtonElevationAnimatable, Interaction interaction, Continuation continuation) {
                        super(2, continuation);
                        this.f6977c = floatingActionButtonElevationAnimatable;
                        this.d = interaction;
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    public final Continuation create(Object obj, Continuation continuation) {
                        return new C00201(this.f6977c, this.d, continuation);
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        return ((C00201) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    public final Object invokeSuspend(Object obj) {
                        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                        int i2 = this.f6976b;
                        if (i2 == 0) {
                            ResultKt.b(obj);
                            this.f6976b = 1;
                            if (this.f6977c.a(this.d, this) == coroutineSingletons) {
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

                @Override // kotlinx.coroutines.flow.FlowCollector
                public final Object emit(Object obj2, Continuation continuation) {
                    Interaction interaction = (Interaction) obj2;
                    boolean z = interaction instanceof HoverInteraction.Enter;
                    ArrayList arrayList2 = arrayList;
                    if (z) {
                        arrayList2.add(interaction);
                    } else if (interaction instanceof HoverInteraction.Exit) {
                        arrayList2.remove(((HoverInteraction.Exit) interaction).f4890a);
                    } else if (interaction instanceof FocusInteraction.Focus) {
                        arrayList2.add(interaction);
                    } else if (interaction instanceof FocusInteraction.Unfocus) {
                        arrayList2.remove(((FocusInteraction.Unfocus) interaction).f4885a);
                    } else if (interaction instanceof PressInteraction.Press) {
                        arrayList2.add(interaction);
                    } else if (interaction instanceof PressInteraction.Release) {
                        arrayList2.remove(((PressInteraction.Release) interaction).f4894a);
                    } else if (interaction instanceof PressInteraction.Cancel) {
                        arrayList2.remove(((PressInteraction.Cancel) interaction).f4892a);
                    }
                    BuildersKt.c(coroutineScope, null, null, new C00201(floatingActionButtonElevationAnimatable, (Interaction) CollectionsKt.N(arrayList2), null), 3);
                    return Unit.f71739a;
                }
            };
            this.f6971b = 1;
            f4891a.getClass();
            if (SharedFlowImpl.o(f4891a, flowCollector, this) == coroutineSingletons) {
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
