package com.vuitton.android.presentation.screen.catalog.thematicplp.screen;

import com.vuitton.android.presentation.screen.catalog.thematicplp.models.GridModes;
import com.vuitton.android.presentation.screen.catalog.thematicplp.viewmodel.ThematicPlpViewModel;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
final /* synthetic */ class ThematicPlpComposableKt$ThematicPlpComposable$7$2$1 extends FunctionReferenceImpl implements Function1<GridModes, Unit> {
    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        GridModes gridModes = (GridModes) obj;
        gridModes.getClass();
        ((ThematicPlpViewModel) this.receiver).Q(gridModes);
        return Unit.f71739a;
    }
}
