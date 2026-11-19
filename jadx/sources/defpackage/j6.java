package defpackage;

import androidx.compose.foundation.gestures.DraggableKt;
import androidx.compose.foundation.layout.PaddingValuesImpl;
import androidx.compose.foundation.text.modifiers.TextAnnotatedStringNode;
import androidx.compose.material3.DateInputKt;
import androidx.compose.material3.SheetValue;
import androidx.compose.runtime.MutableState;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.layout.LayoutCoordinatesKt;
import androidx.compose.ui.semantics.SemanticsProperties;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.text.TextLayoutResult;
import com.perfectcorp.perfectlib.CameraView;
import com.vuitton.android.designkit.components.components.ComposableSingletons$LVRadioButtonBlockKt;
import com.vuitton.android.presentation.compose.components.CollapsingState;
import com.vuitton.android.presentation.screen.booking.list.models.BookingUiModel;
import com.vuitton.android.presentation.screen.distantrepairs.form.components.DistantRepairFormBottomSheetScreen;
import com.vuitton.android.presentation.screen.pdp.contextualsizing.models.ModelSizeVariationUiModel;
import com.vuitton.android.presentation.screen.pdp.contextualsizing.models.WearingUiModel;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.BeautyVtoActivity;
import com.vuitton.android.presentation.screen.spotlight.components.ComposableSingletons$SpotlightBottomStepperKt;
import com.vuitton.android.presentation.screen.storemode.components.catalog.CatalogStoreModeKt;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KProperty;
import kotlin.text.StringsKt;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class j6 implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f71309b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ MutableState f71310c;

    public /* synthetic */ j6(int i2, MutableState mutableState) {
        this.f71309b = i2;
        this.f71310c = mutableState;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i2 = this.f71309b;
        boolean z = false;
        MutableState mutableState = this.f71310c;
        switch (i2) {
            case 0:
                mutableState.setValue((LayoutCoordinates) obj);
                return Unit.f71739a;
            case 1:
                Boolean bool = (Boolean) obj;
                bool.booleanValue();
                mutableState.setValue(bool);
                return Unit.f71739a;
            case 2:
                Boolean bool2 = (Boolean) obj;
                bool2.booleanValue();
                mutableState.setValue(bool2);
                return Unit.f71739a;
            case 3:
                Boolean bool3 = (Boolean) obj;
                bool3.booleanValue();
                mutableState.setValue(bool3);
                return Unit.f71739a;
            case 4:
                mutableState.setValue((LayoutCoordinates) obj);
                return Unit.f71739a;
            case 5:
                TextAnnotatedStringNode.TextSubstitutionValue textSubstitutionValue = (TextAnnotatedStringNode.TextSubstitutionValue) obj;
                mutableState.setValue(textSubstitutionValue.f6326c ? textSubstitutionValue.f6325b : textSubstitutionValue.f6324a);
                return Unit.f71739a;
            case 6:
                List list = (List) obj;
                if (mutableState != null) {
                    mutableState.setValue(list);
                }
                return Unit.f71739a;
            case 7:
                Boolean bool4 = (Boolean) obj;
                bool4.getClass();
                BeautyVtoActivity.Companion companion = BeautyVtoActivity.D;
                mutableState.setValue(bool4);
                return Unit.f71739a;
            case 8:
                Boolean bool5 = (Boolean) obj;
                bool5.getClass();
                BeautyVtoActivity.Companion companion2 = BeautyVtoActivity.D;
                mutableState.setValue(bool5);
                return Unit.f71739a;
            case 9:
                CameraView cameraView = (CameraView) obj;
                BeautyVtoActivity.Companion companion3 = BeautyVtoActivity.D;
                cameraView.getClass();
                mutableState.setValue(cameraView);
                return Unit.f71739a;
            case 10:
                SheetValue sheetValue = (SheetValue) obj;
                sheetValue.getClass();
                if (!((Boolean) mutableState.getF10755b()).booleanValue() && sheetValue != SheetValue.PartiallyExpanded) {
                    z = true;
                }
                return Boolean.valueOf(z);
            case 11:
                BookingUiModel bookingUiModel = (BookingUiModel) obj;
                bookingUiModel.getClass();
                mutableState.setValue(bookingUiModel);
                return Unit.f71739a;
            case 12:
                SheetValue sheetValue2 = (SheetValue) obj;
                float f2 = CatalogStoreModeKt.f64850a;
                sheetValue2.getClass();
                mutableState.setValue(sheetValue2);
                return Unit.f71739a;
            case 13:
                LayoutCoordinates layoutCoordinates = (LayoutCoordinates) obj;
                layoutCoordinates.getClass();
                Rect rectB = LayoutCoordinatesKt.b(layoutCoordinates, true);
                mutableState.setValue(new Offset((((long) Float.floatToRawIntBits(rectB.f8811a)) << 32) | (((long) Float.floatToRawIntBits(rectB.f8812b)) & BodyPartID.bodyIdMax)));
                return Unit.f71739a;
            case 14:
                ((Boolean) obj).getClass();
                ComposableSingletons$LVRadioButtonBlockKt composableSingletons$LVRadioButtonBlockKt = ComposableSingletons$LVRadioButtonBlockKt.f48237a;
                mutableState.setValue(Boolean.valueOf(!((Boolean) mutableState.getF10755b()).booleanValue()));
                return Unit.f71739a;
            case 15:
                ((Boolean) obj).getClass();
                ComposableSingletons$LVRadioButtonBlockKt composableSingletons$LVRadioButtonBlockKt2 = ComposableSingletons$LVRadioButtonBlockKt.f48237a;
                mutableState.setValue(Boolean.valueOf(!((Boolean) mutableState.getF10755b()).booleanValue()));
                return Unit.f71739a;
            case 16:
                ((Boolean) obj).getClass();
                ComposableSingletons$LVRadioButtonBlockKt composableSingletons$LVRadioButtonBlockKt3 = ComposableSingletons$LVRadioButtonBlockKt.f48237a;
                mutableState.setValue(Boolean.valueOf(!((Boolean) mutableState.getF10755b()).booleanValue()));
                return Unit.f71739a;
            case 17:
                ((Integer) obj).getClass();
                ComposableSingletons$SpotlightBottomStepperKt composableSingletons$SpotlightBottomStepperKt = ComposableSingletons$SpotlightBottomStepperKt.f64575a;
                if (((Number) mutableState.getF10755b()).intValue() > 0) {
                    mutableState.setValue(Integer.valueOf(((Number) mutableState.getF10755b()).intValue() - 1));
                }
                return Unit.f71739a;
            case 18:
                ((Integer) obj).getClass();
                ComposableSingletons$SpotlightBottomStepperKt composableSingletons$SpotlightBottomStepperKt2 = ComposableSingletons$SpotlightBottomStepperKt.f64575a;
                if (((Number) mutableState.getF10755b()).intValue() > 0) {
                    mutableState.setValue(Integer.valueOf(((Number) mutableState.getF10755b()).intValue() - 1));
                }
                return Unit.f71739a;
            case 19:
                ((Integer) obj).getClass();
                ComposableSingletons$SpotlightBottomStepperKt composableSingletons$SpotlightBottomStepperKt3 = ComposableSingletons$SpotlightBottomStepperKt.f64575a;
                if (((Number) mutableState.getF10755b()).intValue() > 0) {
                    mutableState.setValue(Integer.valueOf(((Number) mutableState.getF10755b()).intValue() - 1));
                }
                return Unit.f71739a;
            case 20:
                ((Integer) obj).getClass();
                ComposableSingletons$SpotlightBottomStepperKt composableSingletons$SpotlightBottomStepperKt4 = ComposableSingletons$SpotlightBottomStepperKt.f64575a;
                if (((Number) mutableState.getF10755b()).intValue() > 0) {
                    mutableState.setValue(Integer.valueOf(((Number) mutableState.getF10755b()).intValue() - 1));
                }
                return Unit.f71739a;
            case 21:
                SemanticsPropertyReceiver semanticsPropertyReceiver = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver.getClass();
                String str = ((ModelSizeVariationUiModel) mutableState.getF10755b()).d;
                WearingUiModel wearingUiModel = (WearingUiModel) CollectionsKt.firstOrNull(((ModelSizeVariationUiModel) mutableState.getF10755b()).g);
                String str2 = wearingUiModel != null ? wearingUiModel.f61539c : null;
                WearingUiModel wearingUiModel2 = (WearingUiModel) CollectionsKt.firstOrNull(((ModelSizeVariationUiModel) mutableState.getF10755b()).g);
                String str3 = wearingUiModel2 != null ? wearingUiModel2.d : null;
                if (str3 == null) {
                    str3 = "";
                }
                SemanticsPropertiesKt.i(semanticsPropertyReceiver, str + ", " + str2 + ", " + str3);
                return Unit.f71739a;
            case 22:
                SemanticsPropertyReceiver semanticsPropertyReceiver2 = (SemanticsPropertyReceiver) obj;
                PaddingValuesImpl paddingValuesImpl = DateInputKt.f6732a;
                if (!StringsKt.w((CharSequence) mutableState.getF10755b())) {
                    String str4 = (String) mutableState.getF10755b();
                    KProperty[] kPropertyArr = SemanticsPropertiesKt.f10359a;
                    semanticsPropertyReceiver2.a(SemanticsProperties.M, str4);
                }
                return Unit.f71739a;
            case 23:
                SheetValue sheetValue3 = (SheetValue) obj;
                sheetValue3.getClass();
                if (sheetValue3 != SheetValue.Hidden || (!Intrinsics.c((DistantRepairFormBottomSheetScreen) mutableState.getF10755b(), DistantRepairFormBottomSheetScreen.BottomSheetExcludedRegion.f57245a) && !Intrinsics.c((DistantRepairFormBottomSheetScreen) mutableState.getF10755b(), DistantRepairFormBottomSheetScreen.BottomSheetLegal.f57246a))) {
                    z = true;
                }
                return Boolean.valueOf(z);
            case 24:
                SheetValue sheetValue4 = (SheetValue) obj;
                sheetValue4.getClass();
                if (sheetValue4 != SheetValue.Hidden || (!Intrinsics.c((DistantRepairFormBottomSheetScreen) mutableState.getF10755b(), DistantRepairFormBottomSheetScreen.BottomSheetExcludedRegion.f57245a) && !Intrinsics.c((DistantRepairFormBottomSheetScreen) mutableState.getF10755b(), DistantRepairFormBottomSheetScreen.BottomSheetLegal.f57246a))) {
                    z = true;
                }
                return Boolean.valueOf(z);
            case 25:
                Float f3 = (Float) obj;
                f3.getClass();
                Function3 function3 = DraggableKt.f4565a;
                ((Function1) mutableState.getF10755b()).invoke(f3);
                return Unit.f71739a;
            case 26:
                Boolean bool6 = (Boolean) obj;
                bool6.booleanValue();
                mutableState.setValue(bool6);
                return Unit.f71739a;
            case 27:
                TextLayoutResult textLayoutResult = (TextLayoutResult) obj;
                textLayoutResult.getClass();
                if (!((Boolean) mutableState.getF10755b()).booleanValue()) {
                    if (textLayoutResult.f10553b.f10465f >= 4 && textLayoutResult.d()) {
                        z = true;
                    }
                    mutableState.setValue(Boolean.valueOf(z));
                }
                return Unit.f71739a;
            case 28:
                CollapsingState collapsingState = (CollapsingState) obj;
                collapsingState.getClass();
                mutableState.setValue(collapsingState);
                return Unit.f71739a;
            default:
                Boolean bool7 = (Boolean) obj;
                bool7.getClass();
                mutableState.setValue(bool7);
                return Unit.f71739a;
        }
    }
}
