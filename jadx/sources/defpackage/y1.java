package defpackage;

import androidx.compose.foundation.AbstractClickableNode;
import androidx.compose.foundation.Indication;
import androidx.compose.foundation.IndicationKt;
import androidx.compose.foundation.IndicationNodeFactory;
import androidx.compose.foundation.internal.InlineClassHelperKt;
import androidx.compose.ui.node.CompositionLocalConsumerModifierNodeKt;
import androidx.compose.ui.node.DelegatableNode;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class y1 implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f81249b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AbstractClickableNode f81250c;

    public /* synthetic */ y1(AbstractClickableNode abstractClickableNode, int i2) {
        this.f81249b = i2;
        this.f81250c = abstractClickableNode;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        DelegatableNode delegatableNode;
        int i2 = this.f81249b;
        AbstractClickableNode abstractClickableNode = this.f81250c;
        switch (i2) {
            case 0:
                AbstractClickableNode.TraverseKey traverseKey = AbstractClickableNode.L;
                Indication indication = (Indication) CompositionLocalConsumerModifierNodeKt.a(abstractClickableNode, IndicationKt.f4231a);
                if (!(indication instanceof IndicationNodeFactory)) {
                    InlineClassHelperKt.a("clickable only supports IndicationNodeFactory instances provided to LocalIndication, but Indication was provided instead. Either migrate the Indication implementation to implement IndicationNodeFactory, or use the other clickable overload that takes an Indication parameter, and explicitly pass LocalIndication.current there. The Indication instance provided here was: " + indication);
                }
                IndicationNodeFactory indicationNodeFactory = abstractClickableNode.z;
                IndicationNodeFactory indicationNodeFactory2 = (IndicationNodeFactory) indication;
                abstractClickableNode.z = indicationNodeFactory2;
                if (indicationNodeFactory != null && !Intrinsics.c(indicationNodeFactory2, indicationNodeFactory) && ((delegatableNode = abstractClickableNode.B) != null || !abstractClickableNode.I)) {
                    if (delegatableNode != null) {
                        abstractClickableNode.i2(delegatableNode);
                    }
                    abstractClickableNode.B = null;
                    abstractClickableNode.r2();
                }
                return Unit.f71739a;
            default:
                abstractClickableNode.x.mo47invoke();
                return Boolean.TRUE;
        }
    }
}
