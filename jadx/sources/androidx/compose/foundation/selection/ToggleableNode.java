package androidx.compose.foundation.selection;

import android.view.autofill.AutofillValue;
import androidx.compose.foundation.ClickableNode;
import androidx.compose.foundation.IndicationNodeFactory;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.ui.autofill.AndroidFillableData;
import androidx.compose.ui.autofill.ContentDataType;
import androidx.compose.ui.autofill.FillableData;
import androidx.compose.ui.semantics.AccessibilityAction;
import androidx.compose.ui.semantics.Role;
import androidx.compose.ui.semantics.SemanticsActions;
import androidx.compose.ui.semantics.SemanticsProperties;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyKey;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.state.ToggleableStateKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.reflect.KProperty;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\b\u0002\u0018\u00002\u00020\u0001BQ\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\b\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\u0002\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\u0012\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\r0\f¢\u0006\u0004\b\u000f\u0010\u0010¨\u0006\u0011"}, d2 = {"Landroidx/compose/foundation/selection/ToggleableNode;", "Landroidx/compose/foundation/ClickableNode;", "", "value", "Landroidx/compose/foundation/interaction/MutableInteractionSource;", "interactionSource", "Landroidx/compose/foundation/IndicationNodeFactory;", "indicationNodeFactory", "useLocalIndication", "enabled", "Landroidx/compose/ui/semantics/Role;", "role", "Lkotlin/Function1;", "", "onValueChange", "<init>", "(ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/IndicationNodeFactory;ZZLandroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
final class ToggleableNode extends ClickableNode {
    public static final /* synthetic */ int R = 0;
    public boolean O;
    public Function1 P;
    public final c Q;

    /* JADX WARN: Type inference failed for: r11v1, types: [androidx.compose.foundation.selection.c] */
    public ToggleableNode(final boolean z, MutableInteractionSource mutableInteractionSource, IndicationNodeFactory indicationNodeFactory, boolean z2, boolean z3, Role role, final Function1 function1, DefaultConstructorMarker defaultConstructorMarker) {
        super(mutableInteractionSource, indicationNodeFactory, z2, z3, null, role, new Function0() { // from class: androidx.compose.foundation.selection.b
            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                int i2 = ToggleableNode.R;
                function1.invoke(Boolean.valueOf(!z));
                return Unit.f71739a;
            }
        }, null);
        this.O = z;
        this.P = function1;
        this.Q = new Function0() { // from class: androidx.compose.foundation.selection.c
            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                ToggleableNode toggleableNode = this.f5840b;
                toggleableNode.P.invoke(Boolean.valueOf(!toggleableNode.O));
                return Unit.f71739a;
            }
        };
    }

    @Override // androidx.compose.foundation.AbstractClickableNode
    public final void k2(final SemanticsPropertyReceiver semanticsPropertyReceiver) {
        SemanticsPropertiesKt.u(semanticsPropertyReceiver, ToggleableStateKt.a(this.O));
        SemanticsPropertyKey semanticsPropertyKey = SemanticsProperties.s;
        KProperty[] kPropertyArr = SemanticsPropertiesKt.f10359a;
        KProperty kProperty = kPropertyArr[9];
        semanticsPropertyKey.getClass();
        semanticsPropertyReceiver.a(semanticsPropertyKey, ContentDataType.Companion.f8648b);
        AndroidFillableData androidFillableData = new AndroidFillableData(AutofillValue.forToggle(this.O));
        SemanticsPropertyKey semanticsPropertyKey2 = SemanticsProperties.t;
        KProperty kProperty2 = kPropertyArr[10];
        semanticsPropertyKey2.getClass();
        semanticsPropertyReceiver.a(semanticsPropertyKey2, androidFillableData);
        semanticsPropertyReceiver.a(SemanticsActions.f10307h, new AccessibilityAction(null, new Function1() { // from class: androidx.compose.foundation.selection.a
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                boolean z;
                int i2 = ToggleableNode.R;
                Boolean boolB = ((FillableData) obj).b();
                if (boolB != null) {
                    SemanticsPropertiesKt.u(semanticsPropertyReceiver, ToggleableStateKt.a(boolB.booleanValue()));
                    z = true;
                } else {
                    z = false;
                }
                return Boolean.valueOf(z);
            }
        }));
    }
}
