package androidx.compose.material.ripple;

import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.compose.foundation.interaction.InteractionSource;
import androidx.compose.foundation.interaction.PressInteraction;
import androidx.compose.ui.graphics.AndroidCanvas_androidKt;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.ColorProducer;
import androidx.compose.ui.node.CompositionLocalConsumerModifierNodeKt;
import androidx.compose.ui.node.DrawModifierNodeKt;
import androidx.compose.ui.node.LayoutNodeDrawScope;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import defpackage.b21;
import defpackage.o60;
import defpackage.w1;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.math.MathKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u00012\u00020\u0002B5\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\f0\u000b¢\u0006\u0004\b\u000e\u0010\u000f¨\u0006\u0010"}, d2 = {"Landroidx/compose/material/ripple/AndroidRippleNode;", "Landroidx/compose/material/ripple/RippleNode;", "Landroidx/compose/material/ripple/RippleHostKey;", "Landroidx/compose/foundation/interaction/InteractionSource;", "interactionSource", "", "bounded", "Landroidx/compose/ui/unit/Dp;", "radius", "Landroidx/compose/ui/graphics/ColorProducer;", "color", "Lkotlin/Function0;", "Landroidx/compose/material/ripple/RippleAlpha;", "rippleAlpha", "<init>", "(Landroidx/compose/foundation/interaction/InteractionSource;ZFLandroidx/compose/ui/graphics/ColorProducer;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "material-ripple"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class AndroidRippleNode extends RippleNode implements RippleHostKey {
    public RippleHostView A;
    public RippleContainer z;

    public AndroidRippleNode(InteractionSource interactionSource, boolean z, float f2, ColorProducer colorProducer, Function0 function0, DefaultConstructorMarker defaultConstructorMarker) {
        super(interactionSource, z, f2, colorProducer, function0, null);
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final void a2() throws Exception {
        RippleContainer rippleContainer = this.z;
        if (rippleContainer != null) {
            h1();
            RippleHostMap rippleHostMap = rippleContainer.f6524e;
            RippleHostView rippleHostView = (RippleHostView) rippleHostMap.f6526a.get(this);
            if (rippleHostView != null) {
                rippleHostView.c();
                LinkedHashMap linkedHashMap = rippleHostMap.f6526a;
                RippleHostView rippleHostView2 = (RippleHostView) linkedHashMap.get(this);
                if (rippleHostView2 != null) {
                }
                linkedHashMap.remove(this);
                rippleContainer.d.add(rippleHostView);
            }
        }
    }

    @Override // androidx.compose.material.ripple.RippleHostKey
    public final void h1() {
        this.A = null;
        DrawModifierNodeKt.a(this);
    }

    @Override // androidx.compose.material.ripple.RippleNode
    public final void h2(PressInteraction.Press press, long j2, float f2) throws Exception {
        RippleContainer rippleContainer = this.z;
        if (rippleContainer == null) {
            Object obj = (View) CompositionLocalConsumerModifierNodeKt.a(this, AndroidCompositionLocals_androidKt.f9939f);
            while (!(obj instanceof ViewGroup)) {
                ViewParent parent = ((View) obj).getParent();
                if (!(parent instanceof View)) {
                    b21.n(o60.n("Couldn't find a valid parent for ", obj, ". Are you overriding LocalView and providing a View that is not attached to the view hierarchy?"));
                    return;
                }
                obj = parent;
            }
            ViewGroup viewGroup = (ViewGroup) obj;
            int childCount = viewGroup.getChildCount();
            int i2 = 0;
            while (true) {
                if (i2 >= childCount) {
                    RippleContainer rippleContainer2 = new RippleContainer(viewGroup.getContext());
                    viewGroup.addView(rippleContainer2);
                    rippleContainer = rippleContainer2;
                    break;
                } else {
                    View childAt = viewGroup.getChildAt(i2);
                    if (childAt instanceof RippleContainer) {
                        rippleContainer = (RippleContainer) childAt;
                        break;
                    }
                    i2++;
                }
            }
            this.z = rippleContainer;
        }
        ArrayList arrayList = rippleContainer.f6523c;
        RippleHostMap rippleHostMap = rippleContainer.f6524e;
        LinkedHashMap linkedHashMap = rippleHostMap.f6526a;
        LinkedHashMap linkedHashMap2 = rippleHostMap.f6526a;
        LinkedHashMap linkedHashMap3 = rippleHostMap.f6527b;
        RippleHostView rippleHostView = (RippleHostView) linkedHashMap.get(this);
        if (rippleHostView == null) {
            ArrayList arrayList2 = rippleContainer.d;
            arrayList2.getClass();
            rippleHostView = (RippleHostView) (arrayList2.isEmpty() ? null : arrayList2.remove(0));
            if (rippleHostView == null) {
                if (rippleContainer.f6525f > CollectionsKt.F(arrayList)) {
                    rippleHostView = new RippleHostView(rippleContainer.getContext());
                    rippleContainer.addView(rippleHostView);
                    arrayList.add(rippleHostView);
                } else {
                    rippleHostView = (RippleHostView) arrayList.get(rippleContainer.f6525f);
                    RippleHostKey rippleHostKey = (RippleHostKey) linkedHashMap3.get(rippleHostView);
                    if (rippleHostKey != null) {
                        rippleHostKey.h1();
                        RippleHostView rippleHostView2 = (RippleHostView) linkedHashMap2.get(rippleHostKey);
                        if (rippleHostView2 != null) {
                        }
                        linkedHashMap2.remove(rippleHostKey);
                        rippleHostView.c();
                    }
                }
                int i3 = rippleContainer.f6525f;
                if (i3 < rippleContainer.f6522b - 1) {
                    rippleContainer.f6525f = i3 + 1;
                } else {
                    rippleContainer.f6525f = 0;
                }
            }
            linkedHashMap2.put(this, rippleHostView);
            linkedHashMap3.put(rippleHostView, this);
        }
        RippleHostView rippleHostView3 = rippleHostView;
        rippleHostView3.b(press, this.q, j2, MathKt.c(f2), this.s.a(), ((RippleAlpha) this.t.mo47invoke()).d, new w1(this, 5));
        this.A = rippleHostView3;
        DrawModifierNodeKt.a(this);
    }

    @Override // androidx.compose.material.ripple.RippleNode
    public final void i2(LayoutNodeDrawScope layoutNodeDrawScope) throws Exception {
        Canvas canvasA = layoutNodeDrawScope.f9701b.f8996c.a();
        RippleHostView rippleHostView = this.A;
        if (rippleHostView != null) {
            rippleHostView.e(this.w, MathKt.c(this.v), this.s.a(), ((RippleAlpha) this.t.mo47invoke()).d);
            rippleHostView.draw(AndroidCanvas_androidKt.a(canvasA));
        }
    }

    @Override // androidx.compose.material.ripple.RippleNode
    public final void k2() throws Exception {
        RippleHostView rippleHostView = this.A;
        if (rippleHostView != null) {
            rippleHostView.d();
        }
    }
}
