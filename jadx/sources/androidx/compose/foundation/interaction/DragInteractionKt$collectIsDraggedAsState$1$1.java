package androidx.compose.foundation.interaction;

import androidx.compose.runtime.MutableState;
import defpackage.md;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.SharedFlowImpl;
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(c = "androidx.compose.foundation.interaction.DragInteractionKt$collectIsDraggedAsState$1$1", f = "DragInteraction.kt", l = {EACTags.HISTORICAL_BYTES}, m = "invokeSuspend", v = 1)
final class DragInteractionKt$collectIsDraggedAsState$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f4881b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ InteractionSource f4882c;
    public final /* synthetic */ MutableState d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DragInteractionKt$collectIsDraggedAsState$1$1(InteractionSource interactionSource, MutableState mutableState, Continuation continuation) {
        super(2, continuation);
        this.f4882c = interactionSource;
        this.d = mutableState;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new DragInteractionKt$collectIsDraggedAsState$1$1(this.f4882c, this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((DragInteractionKt$collectIsDraggedAsState$1$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f4881b;
        if (i2 == 0) {
            ResultKt.b(obj);
            final ArrayList arrayList = new ArrayList();
            SharedFlowImpl f4891a = this.f4882c.getF4891a();
            final MutableState mutableState = this.d;
            FlowCollector flowCollector = new FlowCollector() { // from class: androidx.compose.foundation.interaction.DragInteractionKt$collectIsDraggedAsState$1$1.1
                @Override // kotlinx.coroutines.flow.FlowCollector
                public final Object emit(Object obj2, Continuation continuation) {
                    Interaction interaction = (Interaction) obj2;
                    boolean z = interaction instanceof DragInteraction.Start;
                    ArrayList arrayList2 = arrayList;
                    if (z) {
                        arrayList2.add(interaction);
                    } else if (interaction instanceof DragInteraction.Stop) {
                        arrayList2.remove(((DragInteraction.Stop) interaction).f4880a);
                    } else if (interaction instanceof DragInteraction.Cancel) {
                        arrayList2.remove(((DragInteraction.Cancel) interaction).f4879a);
                    }
                    mutableState.setValue(Boolean.valueOf(!arrayList2.isEmpty()));
                    return Unit.f71739a;
                }
            };
            this.f4881b = 1;
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
