package com.vuitton.android.presentation.screen.cart.components;

import com.vuitton.android.presentation.screen.reinsurance.ReinsuranceTracker;
import com.vuitton.android.presentation.screen.reinsurance.models.ReinsuranceTrackingUiModel;
import com.vuitton.android.presentation.screen.reinsurance.models.ReinsuranceTrackingUiModelKt;
import com.vuitton.android.presentation.screen.reinsurance.models.ReinsuranceUiModel;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
final /* synthetic */ class NativeCartComposableKt$NativeCartComposable$11$4$1 extends FunctionReferenceImpl implements Function1<ReinsuranceUiModel, Unit> {
    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        ((ReinsuranceTracker) this.receiver).f63415a.a(ReinsuranceTrackingUiModelKt.a(new ReinsuranceTrackingUiModel.OpenReinsurance((ReinsuranceUiModel) obj)));
        return Unit.f71739a;
    }
}
