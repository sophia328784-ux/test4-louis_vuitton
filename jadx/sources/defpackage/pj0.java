package defpackage;

import androidx.compose.runtime.DisposableEffectResult;
import androidx.compose.runtime.DisposableEffectScope;
import androidx.compose.runtime.snapshots.SnapshotKt;
import androidx.compose.ui.layout.MeasurePolicy;
import coil3.compose.AsyncImagePainter;
import coil3.compose.internal.UtilsKt;
import com.vuitton.android.presentation.model.common.AssetImageUiModel;
import com.vuitton.android.presentation.model.common.AssetUiModel;
import com.vuitton.android.presentation.model.common.AssetVideoUiModel;
import com.vuitton.android.presentation.screen.distantrepairs.models.TimeSlotUiModel;
import com.vuitton.android.presentation.screen.distantrepairs.tracking.AppointmentCalendarContext;
import com.vuitton.android.presentation.screen.distantrepairs.tracking.DistantRepairTrackingUiModel;
import com.vuitton.android.presentation.screen.filter.quickaccess.models.FiltersButtonState;
import com.vuitton.android.presentation.screen.osa.list.components.OsaListBottomSheetScreen;
import com.vuitton.android.presentation.screen.osa.models.OsaItemUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import com.vuitton.android.presentation.screen.personalselections.detail.models.SelectionAssetUiModel;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.PlpProductUiModel;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class pj0 implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f78866b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Function1 f78867c;
    public final /* synthetic */ Function1 d;

    public /* synthetic */ pj0(Function1 function1, Function1 function2, int i2) {
        this.f78866b = i2;
        this.f78867c = function1;
        this.d = function2;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i2 = this.f78866b;
        final Function1 function1 = this.d;
        final Function1 function2 = this.f78867c;
        switch (i2) {
            case 0:
                OsaItemUiModel osaItemUiModel = (OsaItemUiModel) obj;
                osaItemUiModel.getClass();
                function2.invoke(osaItemUiModel);
                function1.invoke(OsaListBottomSheetScreen.BottomSheetCancel.f60883a);
                return Unit.f71739a;
            case 1:
                ((DisposableEffectScope) obj).getClass();
                return new DisposableEffectResult() { // from class: com.vuitton.android.presentation.screen.plp.components.screens.PLPScreenKt$PLPScreen_J1OVMuw$lambda$5$29$0$$inlined$onDispose$1
                    @Override // androidx.compose.runtime.DisposableEffectResult
                    public final void dispose() {
                        function2.invoke(FiltersButtonState.Hidden);
                        function1.invoke(Boolean.FALSE);
                    }
                };
            case 2:
                PlpProductUiModel.SkuDataUiModel skuDataUiModel = (PlpProductUiModel.SkuDataUiModel) obj;
                skuDataUiModel.getClass();
                function2.invoke(skuDataUiModel);
                function1.invoke(new SkuIdUiModel(skuDataUiModel.f62943a));
                return Unit.f71739a;
            case 3:
                SelectionAssetUiModel selectionAssetUiModel = (SelectionAssetUiModel) obj;
                selectionAssetUiModel.getClass();
                AssetUiModel assetUiModel = selectionAssetUiModel.f62576a;
                AssetVideoUiModel assetVideoUiModel = assetUiModel.f51781c;
                if (assetVideoUiModel != null) {
                    function2.invoke(assetVideoUiModel.f51783c);
                }
                AssetImageUiModel assetImageUiModel = assetUiModel.f51780b;
                if (assetImageUiModel != null) {
                    function1.invoke(assetImageUiModel.f51778b);
                }
                return Unit.f71739a;
            case 4:
                TimeSlotUiModel timeSlotUiModel = (TimeSlotUiModel) obj;
                timeSlotUiModel.getClass();
                function2.invoke(new DistantRepairTrackingUiModel.RescheduleConfirmClickedEvent(AppointmentCalendarContext.RESCHEDULE));
                function1.invoke(timeSlotUiModel);
                return Unit.f71739a;
            case 5:
                av0 av0Var = SnapshotKt.f8481a;
                function2.invoke(obj);
                function1.invoke(obj);
                return Unit.f71739a;
            case 6:
                av0 av0Var2 = SnapshotKt.f8481a;
                function2.invoke(obj);
                function1.invoke(obj);
                return Unit.f71739a;
            default:
                AsyncImagePainter.State state = (AsyncImagePainter.State) obj;
                MeasurePolicy measurePolicy = UtilsKt.f21339a;
                if (!(state instanceof AsyncImagePainter.State.Loading)) {
                    if (state instanceof AsyncImagePainter.State.Success) {
                        if (function2 != null) {
                            function2.invoke(state);
                        }
                    } else if (state instanceof AsyncImagePainter.State.Error) {
                        if (function1 != null) {
                            function1.invoke(state);
                        }
                    } else if (!(state instanceof AsyncImagePainter.State.Empty)) {
                        v40.g();
                        return null;
                    }
                }
                return Unit.f71739a;
        }
    }
}
