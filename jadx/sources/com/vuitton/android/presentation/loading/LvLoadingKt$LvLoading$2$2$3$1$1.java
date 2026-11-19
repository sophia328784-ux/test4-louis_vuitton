package com.vuitton.android.presentation.loading;

import androidx.compose.ui.unit.Dp;
import androidx.constraintlayout.compose.BaseHorizontalAnchorable;
import androidx.constraintlayout.compose.ConstrainScope;
import androidx.constraintlayout.compose.ConstrainedLayoutReference;
import androidx.constraintlayout.compose.ConstraintLayoutBaseScope;
import androidx.constraintlayout.core.parser.CLNumber;
import androidx.constraintlayout.core.parser.CLObject;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
final class LvLoadingKt$LvLoading$2$2$3$1$1 implements Function1<ConstrainScope, Unit> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final LvLoadingKt$LvLoading$2$2$3$1$1 f51722b = new LvLoadingKt$LvLoading$2$2$3$1$1();

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        ConstrainScope constrainScope = (ConstrainScope) obj;
        constrainScope.getClass();
        ConstrainedLayoutReference constrainedLayoutReference = constrainScope.f11224c;
        ConstrainScope.a(constrainScope, constrainedLayoutReference.f11235c, constrainedLayoutReference.f11236e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 124);
        ConstraintLayoutBaseScope.HorizontalAnchor horizontalAnchor = constrainedLayoutReference.f11237f;
        ConstraintLayoutBaseScope.HorizontalAnchor horizontalAnchor2 = constrainedLayoutReference.d;
        Dp.Companion companion = Dp.f11004c;
        ((BaseHorizontalAnchorable) constrainScope.f11225e).b(horizontalAnchor2, Call.Parameters.DEFAULT_CAMERA_ZOOM);
        ((BaseHorizontalAnchorable) constrainScope.g).b(horizontalAnchor, Call.Parameters.DEFAULT_CAMERA_ZOOM);
        CLObject cLObject = constrainScope.f11223b;
        cLObject.getClass();
        cLObject.R("vBias", new CLNumber(0.5f));
        return Unit.f71739a;
    }
}
