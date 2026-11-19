package defpackage;

import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.layout.LayoutCoordinatesKt;
import androidx.compose.ui.unit.LayoutDirection;
import com.vuitton.android.designkit.ui.common.RowItemCenterPosition;
import com.vuitton.android.presentation.screen.catalog.models.PLPEntryUiModel;
import java.util.Map;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class ik0 implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f70001b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ LayoutDirection f70002c;
    public final /* synthetic */ Map d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ PLPEntryUiModel f70003e;

    public /* synthetic */ ik0(LayoutDirection layoutDirection, Map map, PLPEntryUiModel pLPEntryUiModel, int i2) {
        this.f70001b = i2;
        this.f70002c = layoutDirection;
        this.d = map;
        this.f70003e = pLPEntryUiModel;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int iA;
        int i2 = this.f70001b;
        PLPEntryUiModel pLPEntryUiModel = this.f70003e;
        Map map = this.d;
        LayoutDirection layoutDirection = this.f70002c;
        LayoutCoordinates layoutCoordinates = (LayoutCoordinates) obj;
        switch (i2) {
            case 0:
                layoutCoordinates.getClass();
                LayoutCoordinates layoutCoordinatesD0 = layoutCoordinates.d0();
                iA = layoutCoordinatesD0 != null ? (int) (layoutCoordinatesD0.a() >> 32) : 0;
                float fIntBitsToFloat = Float.intBitsToFloat((int) (LayoutCoordinatesKt.d(layoutCoordinates) >> 32)) + (((int) (layoutCoordinates.a() >> 32)) / 2);
                if (layoutDirection == LayoutDirection.Rtl) {
                    fIntBitsToFloat = iA - fIntBitsToFloat;
                }
                map.put(pLPEntryUiModel.f55373b, new RowItemCenterPosition((int) fIntBitsToFloat));
                break;
            default:
                layoutCoordinates.getClass();
                LayoutCoordinates layoutCoordinatesD1 = layoutCoordinates.d0();
                iA = layoutCoordinatesD1 != null ? (int) (layoutCoordinatesD1.a() >> 32) : 0;
                float fIntBitsToFloat2 = Float.intBitsToFloat((int) (LayoutCoordinatesKt.d(layoutCoordinates) >> 32)) + (((int) (layoutCoordinates.a() >> 32)) / 2);
                if (layoutDirection == LayoutDirection.Rtl) {
                    fIntBitsToFloat2 = iA - fIntBitsToFloat2;
                }
                map.put(pLPEntryUiModel.f55373b, new RowItemCenterPosition((int) fIntBitsToFloat2));
                break;
        }
        return Unit.f71739a;
    }
}
