package androidx.compose.foundation.text;

import androidx.collection.MutableObjectList;
import androidx.compose.foundation.interaction.FocusInteraction;
import androidx.compose.foundation.interaction.HoverInteraction;
import androidx.compose.foundation.interaction.Interaction;
import androidx.compose.foundation.interaction.PressInteraction;
import androidx.compose.runtime.SnapshotMutableIntStateImpl;
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
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.SharedFlowImpl;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(c = "androidx.compose.foundation.text.TextLinkScope$LinksComposables$1$3$1", f = "TextLinkScope.kt", l = {247}, m = "invokeSuspend", v = 1)
final class TextLinkScope$LinksComposables$1$3$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f6017b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ LinkStateInteractionSourceObserver f6018c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TextLinkScope$LinksComposables$1$3$1(LinkStateInteractionSourceObserver linkStateInteractionSourceObserver, Continuation continuation) {
        super(2, continuation);
        this.f6018c = linkStateInteractionSourceObserver;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new TextLinkScope$LinksComposables$1$3$1(this.f6018c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((TextLinkScope$LinksComposables$1$3$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object obj2 = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f6017b;
        if (i2 == 0) {
            ResultKt.b(obj);
            this.f6017b = 1;
            final LinkStateInteractionSourceObserver linkStateInteractionSourceObserver = this.f6018c;
            linkStateInteractionSourceObserver.getClass();
            final MutableObjectList mutableObjectList = new MutableObjectList(0, 1, null);
            SharedFlowImpl f4891a = linkStateInteractionSourceObserver.f5934a.getF4891a();
            FlowCollector flowCollector = new FlowCollector() { // from class: androidx.compose.foundation.text.LinkStateInteractionSourceObserver$collectInteractionsForLinks$2
                @Override // kotlinx.coroutines.flow.FlowCollector
                public final Object emit(Object obj3, Continuation continuation) {
                    Interaction interaction = (Interaction) obj3;
                    boolean z = interaction instanceof HoverInteraction.Enter;
                    MutableObjectList mutableObjectList2 = mutableObjectList;
                    if (z || (interaction instanceof FocusInteraction.Focus) || (interaction instanceof PressInteraction.Press)) {
                        mutableObjectList2.g(interaction);
                    } else if (interaction instanceof HoverInteraction.Exit) {
                        mutableObjectList2.l(((HoverInteraction.Exit) interaction).f4890a);
                    } else if (interaction instanceof FocusInteraction.Unfocus) {
                        mutableObjectList2.l(((FocusInteraction.Unfocus) interaction).f4885a);
                    } else if (interaction instanceof PressInteraction.Release) {
                        mutableObjectList2.l(((PressInteraction.Release) interaction).f4894a);
                    } else if (interaction instanceof PressInteraction.Cancel) {
                        mutableObjectList2.l(((PressInteraction.Cancel) interaction).f4892a);
                    }
                    Object[] objArr = mutableObjectList2.f3345a;
                    int i3 = mutableObjectList2.f3346b;
                    int i4 = 0;
                    int i5 = 0;
                    while (true) {
                        LinkStateInteractionSourceObserver linkStateInteractionSourceObserver2 = linkStateInteractionSourceObserver;
                        if (i4 >= i3) {
                            ((SnapshotMutableIntStateImpl) linkStateInteractionSourceObserver2.f5935b).i(i5);
                            return Unit.f71739a;
                        }
                        Interaction interaction2 = (Interaction) objArr[i4];
                        if (interaction2 instanceof HoverInteraction.Enter) {
                            linkStateInteractionSourceObserver2.getClass();
                            i5 |= 2;
                        } else if (interaction2 instanceof FocusInteraction.Focus) {
                            linkStateInteractionSourceObserver2.getClass();
                            i5 |= 1;
                        } else if (interaction2 instanceof PressInteraction.Press) {
                            linkStateInteractionSourceObserver2.getClass();
                            i5 |= 4;
                        }
                        i4++;
                    }
                }
            };
            f4891a.getClass();
            Object objO = SharedFlowImpl.o(f4891a, flowCollector, this);
            if (objO != obj2) {
                objO = Unit.f71739a;
            }
            if (objO == obj2) {
                return obj2;
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
