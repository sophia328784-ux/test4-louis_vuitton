package com.sightcall.core.consent.compose;

import androidx.compose.ui.unit.Dp;
import androidx.constraintlayout.compose.ConstrainScope;
import androidx.constraintlayout.compose.ConstrainedLayoutReference;
import androidx.constraintlayout.compose.ConstraintLayoutBaseScope;
import androidx.constraintlayout.compose.DimensionDescription;
import androidx.constraintlayout.compose.HorizontalAnchorable;
import androidx.constraintlayout.compose.VerticalAnchorable;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
public final class ConsentViewKt$ConsentView$1$1$4$1 implements Function1<ConstrainScope, Unit> {
    final /* synthetic */ ConstrainedLayoutReference $acceptBtnRef;
    final /* synthetic */ ConstrainedLayoutReference $dividerRef;

    public ConsentViewKt$ConsentView$1$1$4$1(ConstrainedLayoutReference constrainedLayoutReference, ConstrainedLayoutReference constrainedLayoutReference2) {
        this.$dividerRef = constrainedLayoutReference;
        this.$acceptBtnRef = constrainedLayoutReference2;
    }

    public final void invoke(ConstrainScope constrainScope) {
        constrainScope.getClass();
        HorizontalAnchorable horizontalAnchorable = constrainScope.f11225e;
        ConstraintLayoutBaseScope.HorizontalAnchor horizontalAnchor = this.$dividerRef.f11237f;
        Dp.Companion companion = Dp.f11004c;
        HorizontalAnchorable.a(horizontalAnchorable, horizontalAnchor, 16.0f, 4);
        VerticalAnchorable verticalAnchorable = constrainScope.d;
        ConstrainedLayoutReference constrainedLayoutReference = constrainScope.f11224c;
        VerticalAnchorable.a(verticalAnchorable, constrainedLayoutReference.f11235c, Call.Parameters.DEFAULT_CAMERA_ZOOM, 6);
        VerticalAnchorable.a(constrainScope.f11226f, constrainedLayoutReference.f11236e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 6);
        HorizontalAnchorable.a(constrainScope.g, this.$acceptBtnRef.d, 24.0f, 4);
        constrainScope.f11227h.a(new DimensionDescription("spread"), ConstrainScope.f11221i[1]);
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Object invoke(Object obj) {
        invoke((ConstrainScope) obj);
        return Unit.f71739a;
    }
}
