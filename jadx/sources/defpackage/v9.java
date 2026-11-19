package defpackage;

import androidx.compose.foundation.lazy.grid.GridItemSpan;
import androidx.compose.foundation.lazy.grid.LazyGridIntervalContent;
import androidx.compose.foundation.lazy.grid.LazyGridItemSpanScope;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.pointer.PointerInputChange;
import com.vuitton.android.presentation.common.editorial.models.CarouselSItemUiModel;
import com.vuitton.android.presentation.screen.catalog.models.PLPEntryUiModel;
import com.vuitton.android.presentation.screen.distantrepairs.assessment.sections.AssessmentSendComponentKt;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.components.PerfectCameraComposableKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class v9 implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f80535b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Function1 f80536c;

    public /* synthetic */ v9(int i2, int i3, Function1 function1) {
        this.f80535b = i3;
        this.f80536c = function1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f80535b;
        Function1 function1 = this.f80536c;
        switch (i2) {
            case 0:
                ((Integer) obj2).getClass();
                AssessmentSendComponentKt.b(function1, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 1:
                ((Integer) obj2).getClass();
                AssessmentSendComponentKt.c(function1, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 2:
                PointerInputChange pointerInputChange = (PointerInputChange) obj;
                Offset offset = (Offset) obj2;
                pointerInputChange.getClass();
                float fAbs = Math.abs(Float.intBitsToFloat((int) (offset.f8808a & BodyPartID.bodyIdMax)));
                long j2 = offset.f8808a;
                if (fAbs > Math.abs(Float.intBitsToFloat((int) (j2 >> 32)))) {
                    function1.invoke(Float.valueOf(Float.intBitsToFloat((int) (j2 & BodyPartID.bodyIdMax))));
                    pointerInputChange.a();
                }
                return Unit.f71739a;
            case 3:
                CarouselSItemUiModel carouselSItemUiModel = (CarouselSItemUiModel) obj;
                ((Integer) obj2).intValue();
                carouselSItemUiModel.getClass();
                function1.invoke(new SkuIdUiModel(carouselSItemUiModel.f50796a));
                return Unit.f71739a;
            case 4:
                ((Integer) obj2).intValue();
                n50 n50Var = LazyGridIntervalContent.d;
                return (GridItemSpan) function1.invoke((LazyGridItemSpanScope) obj);
            case 5:
                ((Integer) obj2).getClass();
                PerfectCameraComposableKt.b(function1, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 6:
                PLPEntryUiModel pLPEntryUiModel = (PLPEntryUiModel) obj;
                ((Boolean) obj2).booleanValue();
                pLPEntryUiModel.getClass();
                function1.invoke(pLPEntryUiModel.f55373b);
                return Unit.f71739a;
            case 7:
                function1.invoke(obj);
                return Unit.f71739a;
            default:
                function1.invoke(obj);
                return Unit.f71739a;
        }
    }

    public /* synthetic */ v9(Function1 function1, int i2) {
        this.f80535b = i2;
        this.f80536c = function1;
    }
}
