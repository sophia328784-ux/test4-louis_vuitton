package com.sightcall.core.consent.compose;

import androidx.constraintlayout.compose.ConstrainScope;
import androidx.constraintlayout.compose.ConstrainedLayoutReference;
import androidx.constraintlayout.compose.HorizontalAnchorable;
import androidx.constraintlayout.compose.VerticalAnchorable;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
public final class ConsentViewKt$ConsentView$1$1$7$1 implements Function1<ConstrainScope, Unit> {
    final /* synthetic */ ConstrainedLayoutReference $declineBtnRef;

    public ConsentViewKt$ConsentView$1$1$7$1(ConstrainedLayoutReference constrainedLayoutReference) {
        this.$declineBtnRef = constrainedLayoutReference;
    }

    public final void invoke(ConstrainScope constrainScope) {
        constrainScope.getClass();
        HorizontalAnchorable.a(constrainScope.g, this.$declineBtnRef.d, Call.Parameters.DEFAULT_CAMERA_ZOOM, 6);
        VerticalAnchorable verticalAnchorable = constrainScope.d;
        ConstrainedLayoutReference constrainedLayoutReference = constrainScope.f11224c;
        VerticalAnchorable.a(verticalAnchorable, constrainedLayoutReference.f11235c, Call.Parameters.DEFAULT_CAMERA_ZOOM, 6);
        VerticalAnchorable.a(constrainScope.f11226f, constrainedLayoutReference.f11236e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 6);
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Object invoke(Object obj) {
        invoke((ConstrainScope) obj);
        return Unit.f71739a;
    }
}
