package com.sightcall.core.consent.compose;

import androidx.compose.ui.unit.Dp;
import androidx.constraintlayout.compose.ConstrainScope;
import androidx.constraintlayout.compose.ConstrainedLayoutReference;
import androidx.constraintlayout.compose.ConstraintLayoutBaseScope;
import androidx.constraintlayout.compose.HorizontalAnchorable;
import androidx.constraintlayout.compose.VerticalAnchorable;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
public final class ConsentDeclineViewKt$ConsentDeclineView$1$1$4$1 implements Function1<ConstrainScope, Unit> {
    public static final ConsentDeclineViewKt$ConsentDeclineView$1$1$4$1 INSTANCE = new ConsentDeclineViewKt$ConsentDeclineView$1$1$4$1();

    public final void invoke(ConstrainScope constrainScope) {
        constrainScope.getClass();
        HorizontalAnchorable horizontalAnchorable = constrainScope.g;
        ConstrainedLayoutReference constrainedLayoutReference = constrainScope.f11224c;
        ConstraintLayoutBaseScope.HorizontalAnchor horizontalAnchor = constrainedLayoutReference.f11237f;
        Dp.Companion companion = Dp.f11004c;
        HorizontalAnchorable.a(horizontalAnchorable, horizontalAnchor, 30.0f, 4);
        VerticalAnchorable.a(constrainScope.d, constrainedLayoutReference.f11235c, Call.Parameters.DEFAULT_CAMERA_ZOOM, 6);
        VerticalAnchorable.a(constrainScope.f11226f, constrainedLayoutReference.f11236e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 6);
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Object invoke(Object obj) {
        invoke((ConstrainScope) obj);
        return Unit.f71739a;
    }
}
