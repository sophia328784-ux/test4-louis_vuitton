package androidx.compose.foundation;

import android.view.KeyEvent;
import androidx.compose.foundation.gestures.IndirectPointerInputDragCycleDetectorKt;
import androidx.compose.foundation.gestures.TapGestureDetectorKt;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.indirect.AndroidIndirectPointerEvent;
import androidx.compose.ui.input.indirect.IndirectPointerInputChange;
import androidx.compose.ui.input.pointer.PointerEvent;
import androidx.compose.ui.input.pointer.PointerEventKt;
import androidx.compose.ui.input.pointer.PointerEventPass;
import androidx.compose.ui.input.pointer.PointerInputChange;
import androidx.compose.ui.node.CompositionLocalConsumerModifierNodeKt;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.platform.ViewConfiguration;
import androidx.compose.ui.semantics.Role;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\b\u0011\u0018\u00002\u00020\u0001BM\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\b\u001a\u00020\u0006\u0012\b\u0010\n\u001a\u0004\u0018\u00010\t\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u000b\u0012\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u000e0\r¢\u0006\u0004\b\u0010\u0010\u0011¨\u0006\u0012"}, d2 = {"Landroidx/compose/foundation/ClickableNode;", "Landroidx/compose/foundation/AbstractClickableNode;", "Landroidx/compose/foundation/interaction/MutableInteractionSource;", "interactionSource", "Landroidx/compose/foundation/IndicationNodeFactory;", "indicationNodeFactory", "", "useLocalIndication", "enabled", "", "onClickLabel", "Landroidx/compose/ui/semantics/Role;", "role", "Lkotlin/Function0;", "", "onClick", "<init>", "(Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/IndicationNodeFactory;ZZLjava/lang/String;Landroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public class ClickableNode extends AbstractClickableNode {
    public PointerInputChange M;
    public IndirectPointerInputChange N;

    public ClickableNode(MutableInteractionSource mutableInteractionSource, IndicationNodeFactory indicationNodeFactory, boolean z, boolean z2, String str, Role role, Function0 function0, DefaultConstructorMarker defaultConstructorMarker) {
        super(mutableInteractionSource, indicationNodeFactory, z, z2, str, role, function0, null);
    }

    @Override // androidx.compose.foundation.AbstractClickableNode, androidx.compose.ui.input.indirect.IndirectPointerInputModifierNode
    public final void I(AndroidIndirectPointerEvent androidIndirectPointerEvent, PointerEventPass pointerEventPass) {
        List list = androidIndirectPointerEvent.f9210a;
        super.I(androidIndirectPointerEvent, pointerEventPass);
        if (pointerEventPass != PointerEventPass.Main) {
            if (pointerEventPass != PointerEventPass.Final || this.N == null) {
                return;
            }
            int size = list.size();
            for (int i2 = 0; i2 < size; i2++) {
                IndirectPointerInputChange indirectPointerInputChange = (IndirectPointerInputChange) list.get(i2);
                if (indirectPointerInputChange.f9225i && indirectPointerInputChange != this.N) {
                    w2(true);
                    return;
                }
            }
            return;
        }
        if (this.N == null) {
            int size2 = list.size();
            for (int i3 = 0; i3 < size2; i3++) {
                if (IndirectPointerInputDragCycleDetectorKt.c((IndirectPointerInputChange) list.get(i3))) {
                    IndirectPointerInputChange indirectPointerInputChange2 = (IndirectPointerInputChange) list.get(0);
                    indirectPointerInputChange2.f9225i = true;
                    this.N = indirectPointerInputChange2;
                    if (this.w) {
                        p2(indirectPointerInputChange2);
                        return;
                    }
                    return;
                }
            }
            return;
        }
        int size3 = list.size();
        for (int i4 = 0; i4 < size3; i4++) {
            IndirectPointerInputChange indirectPointerInputChange3 = (IndirectPointerInputChange) list.get(i4);
            if (indirectPointerInputChange3.f9225i || !indirectPointerInputChange3.f9224h || indirectPointerInputChange3.d) {
                float fG = ((ViewConfiguration) CompositionLocalConsumerModifierNodeKt.a(this, CompositionLocalsKt.u)).g();
                int size4 = list.size();
                for (int i5 = 0; i5 < size4; i5++) {
                    IndirectPointerInputChange indirectPointerInputChange4 = (IndirectPointerInputChange) list.get(i5);
                    long j2 = indirectPointerInputChange4.f9221c;
                    IndirectPointerInputChange indirectPointerInputChange5 = this.N;
                    indirectPointerInputChange5.getClass();
                    boolean z = Math.abs(Offset.d(Offset.e(j2, indirectPointerInputChange5.f9221c))) > fG;
                    if (indirectPointerInputChange4.f9225i || z) {
                        w2(true);
                        return;
                    }
                }
                return;
            }
        }
        ((IndirectPointerInputChange) list.get(0)).f9225i = true;
        if (this.w) {
            IndirectPointerInputChange indirectPointerInputChange6 = this.N;
            indirectPointerInputChange6.getClass();
            o2(indirectPointerInputChange6.f9221c, true);
            this.x.mo47invoke();
        }
        this.N = null;
    }

    @Override // androidx.compose.foundation.AbstractClickableNode, androidx.compose.ui.node.PointerInputModifierNode
    public final void f0(PointerEvent pointerEvent, PointerEventPass pointerEventPass, long j2) {
        super.f0(pointerEvent, pointerEventPass, j2);
        List list = pointerEvent.f9305a;
        if (pointerEventPass != PointerEventPass.Main) {
            if (pointerEventPass != PointerEventPass.Final || this.M == null) {
                return;
            }
            int size = list.size();
            for (int i2 = 0; i2 < size; i2++) {
                PointerInputChange pointerInputChange = (PointerInputChange) list.get(i2);
                if (pointerInputChange.b() && pointerInputChange != this.M) {
                    w2(false);
                    return;
                }
            }
            return;
        }
        if (this.M == null) {
            if (TapGestureDetectorKt.f(pointerEvent, true)) {
                PointerInputChange pointerInputChange2 = (PointerInputChange) list.get(0);
                pointerInputChange2.a();
                this.M = pointerInputChange2;
                if (this.w) {
                    q2(pointerInputChange2);
                    return;
                }
                return;
            }
            return;
        }
        int size2 = list.size();
        for (int i3 = 0; i3 < size2; i3++) {
            if (!PointerEventKt.c((PointerInputChange) list.get(i3))) {
                long jM2 = m2(j2);
                int size3 = list.size();
                for (int i4 = 0; i4 < size3; i4++) {
                    PointerInputChange pointerInputChange3 = (PointerInputChange) list.get(i4);
                    if (pointerInputChange3.b() || PointerEventKt.e(pointerInputChange3, j2, jM2)) {
                        w2(false);
                        return;
                    }
                }
                return;
            }
        }
        ((PointerInputChange) list.get(0)).a();
        if (this.w) {
            PointerInputChange pointerInputChange4 = this.M;
            pointerInputChange4.getClass();
            o2(pointerInputChange4.f9330c, false);
            this.x.mo47invoke();
        }
        this.M = null;
    }

    @Override // androidx.compose.foundation.AbstractClickableNode, androidx.compose.ui.node.PointerInputModifierNode
    public final void f1() {
        super.f1();
        w2(false);
    }

    @Override // androidx.compose.foundation.AbstractClickableNode
    public final boolean t2(KeyEvent keyEvent) {
        return false;
    }

    @Override // androidx.compose.foundation.AbstractClickableNode
    public final void u2(KeyEvent keyEvent) {
        this.x.mo47invoke();
    }

    @Override // androidx.compose.ui.input.indirect.IndirectPointerInputModifierNode
    public final void w1() {
        w2(true);
    }

    public final void w2(boolean z) {
        if (z) {
            this.N = null;
        } else {
            this.M = null;
        }
        n2(z);
    }
}
