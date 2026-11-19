package com.sightcall.core.consent.compose;

import androidx.compose.runtime.MutableFloatState;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.unit.IntSize;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
public final class ConsentViewKt$ConsentView$1$1$5$1 implements Function1<LayoutCoordinates, Unit> {
    final /* synthetic */ MutableFloatState $containerHeightPx$delegate;

    public ConsentViewKt$ConsentView$1$1$5$1(MutableFloatState mutableFloatState) {
        this.$containerHeightPx$delegate = mutableFloatState;
    }

    public final void invoke(LayoutCoordinates layoutCoordinates) {
        layoutCoordinates.getClass();
        MutableFloatState mutableFloatState = this.$containerHeightPx$delegate;
        long jA = layoutCoordinates.a();
        IntSize.Companion companion = IntSize.f11020b;
        mutableFloatState.w((int) (jA & BodyPartID.bodyIdMax));
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Object invoke(Object obj) {
        invoke((LayoutCoordinates) obj);
        return Unit.f71739a;
    }
}
