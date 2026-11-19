package androidx.compose.material3;

import androidx.compose.animation.core.TweenSpec;
import androidx.compose.foundation.interaction.InteractionSource;
import androidx.compose.material.ripple.AndroidRippleNode;
import androidx.compose.material.ripple.RippleAlpha;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorProducer;
import androidx.compose.ui.node.CompositionLocalConsumerModifierNodeKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class i implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f7480b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f7481c;

    public /* synthetic */ i(Object obj, int i2) {
        this.f7480b = i2;
        this.f7481c = obj;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        RippleAlpha rippleAlpha;
        int i2 = this.f7480b;
        Object obj = this.f7481c;
        switch (i2) {
            case 0:
                final DelegatingThemeAwareRippleNode delegatingThemeAwareRippleNode = (DelegatingThemeAwareRippleNode) obj;
                RippleConfiguration rippleConfiguration = (RippleConfiguration) CompositionLocalConsumerModifierNodeKt.a(delegatingThemeAwareRippleNode, RippleKt.f7164a);
                AndroidRippleNode androidRippleNode = delegatingThemeAwareRippleNode.v;
                if (rippleConfiguration == null) {
                    if (androidRippleNode != null) {
                        delegatingThemeAwareRippleNode.i2(androidRippleNode);
                    }
                    delegatingThemeAwareRippleNode.v = null;
                } else if (androidRippleNode == null) {
                    ColorProducer colorProducer = new ColorProducer() { // from class: androidx.compose.material3.DelegatingThemeAwareRippleNode$attachNewRipple$calculateColor$1
                        @Override // androidx.compose.ui.graphics.ColorProducer
                        public final long a() {
                            DelegatingThemeAwareRippleNode delegatingThemeAwareRippleNode2 = delegatingThemeAwareRippleNode;
                            long jA = delegatingThemeAwareRippleNode2.u.a();
                            if (jA != 16) {
                                return jA;
                            }
                            RippleConfiguration rippleConfiguration2 = (RippleConfiguration) CompositionLocalConsumerModifierNodeKt.a(delegatingThemeAwareRippleNode2, RippleKt.f7164a);
                            if (rippleConfiguration2 != null) {
                                long j2 = rippleConfiguration2.f7161a;
                                if (j2 != 16) {
                                    return j2;
                                }
                            }
                            return ((Color) CompositionLocalConsumerModifierNodeKt.a(delegatingThemeAwareRippleNode2, ContentColorKt.f6730a)).f8872a;
                        }
                    };
                    i iVar = new i(delegatingThemeAwareRippleNode, 1);
                    InteractionSource interactionSource = delegatingThemeAwareRippleNode.r;
                    boolean z = delegatingThemeAwareRippleNode.s;
                    float f2 = delegatingThemeAwareRippleNode.t;
                    TweenSpec tweenSpec = androidx.compose.material.ripple.RippleKt.f6533a;
                    AndroidRippleNode androidRippleNode2 = new AndroidRippleNode(interactionSource, z, f2, colorProducer, iVar, null);
                    delegatingThemeAwareRippleNode.h2(androidRippleNode2);
                    delegatingThemeAwareRippleNode.v = androidRippleNode2;
                }
                return Unit.f71739a;
            case 1:
                RippleConfiguration rippleConfiguration2 = (RippleConfiguration) CompositionLocalConsumerModifierNodeKt.a((DelegatingThemeAwareRippleNode) obj, RippleKt.f7164a);
                return (rippleConfiguration2 == null || (rippleAlpha = rippleConfiguration2.f7162b) == null) ? RippleDefaults.f7163a : rippleAlpha;
            default:
                ((ModalBottomSheetDialogWrapper) obj).f7046c.mo47invoke();
                return Unit.f71739a;
        }
    }
}
