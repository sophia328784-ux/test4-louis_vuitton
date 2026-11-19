package defpackage;

import android.os.Handler;
import android.os.Looper;
import androidx.compose.foundation.gestures.DragGestureDetectorKt;
import com.google.accompanist.drawablepainter.DrawablePainterKt;
import com.linkplay.core.status.LPPlayChannel;
import com.vuitton.android.R;
import com.vuitton.android.data.dto.common.editorial.AlgorithmTypeDto;
import com.vuitton.android.data.dto.common.editorial.AssetLayoutDto;
import com.vuitton.android.data.dto.common.editorial.EditorialModuleDto;
import com.vuitton.android.data.dto.common.editorial.EditorialModuleDto$AuthenticationSectionDto$$serializer;
import com.vuitton.android.data.dto.common.editorial.EditorialModuleDto$CardSectionDto$$serializer;
import com.vuitton.android.data.dto.common.editorial.EditorialModuleDto$CarouselLargeMultipleSectionDto$$serializer;
import com.vuitton.android.data.dto.common.editorial.EditorialModuleDto$CarouselLargeSingleSectionDto$$serializer;
import com.vuitton.android.data.dto.common.editorial.EditorialModuleDto$CarouselMediumSectionDto$$serializer;
import com.vuitton.android.data.dto.common.editorial.EditorialModuleDto$CarouselSmallSectionDto$$serializer;
import com.vuitton.android.data.dto.common.editorial.EditorialModuleDto$EventSectionDto$$serializer;
import com.vuitton.android.data.dto.common.editorial.EditorialModuleDto$GridSmallSectionDto$$serializer;
import com.vuitton.android.data.dto.common.editorial.EditorialModuleDto$HighlightCardSectionDto$$serializer;
import com.vuitton.android.data.dto.common.editorial.EditorialModuleDto$LiveSectionDto$$serializer;
import com.vuitton.android.data.dto.common.editorial.EditorialModuleDto$NotificationSectionDto$$serializer;
import com.vuitton.android.data.dto.common.editorial.EditorialModuleDto$ProductCarouselSectionDto$$serializer;
import com.vuitton.android.data.dto.common.editorial.EditorialModuleDto$PushCardSectionDto$$serializer;
import com.vuitton.android.data.dto.common.editorial.EditorialModuleDto$SlideShowSectionDto$$serializer;
import com.vuitton.android.data.dto.common.editorial.EditorialModuleDto$UnknownSectionDto$$serializer;
import com.vuitton.android.data.dto.common.editorial.EditorialModuleSlideDto$$serializer;
import com.vuitton.android.data.dto.common.editorial.EditorialModuleSlideSingleDto$$serializer;
import com.vuitton.android.data.dto.common.editorial.RatioDto;
import com.vuitton.android.data.dto.connectivity.common.FaqCategoryDto$$serializer;
import com.vuitton.android.data.dto.connectivity.common.TutorialDto$$serializer;
import com.vuitton.android.data.dto.connectivity.earphone.EarphoneSectionDto;
import com.vuitton.android.presentation.common.editorial.models.CarouselSItemUiModel;
import com.vuitton.android.presentation.common.editorial.models.EditorialMocksKt;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.details.disposition.DispositionListBottomSheet;
import com.vuitton.android.presentation.screen.distantrepairs.form.components.DistantRepairFormRoutes;
import com.vuitton.android.presentation.screen.distantrepairs.form.datepicker.DistantRepairBottomSheetDatePickerKt;
import com.vuitton.android.presentation.screen.dynamicform.model.field.phone.ExtraPhoneField;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.ProductShortPriceUiModel;
import com.vuitton.core.infrastructure.data.forms.models.DispatchIdentifierListDto;
import java.lang.annotation.Annotation;
import java.util.ArrayList;
import kotlin.Lazy;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.ReflectionFactory;
import kotlin.reflect.KClass;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SealedClassSerializer;
import kotlinx.serialization.internal.ArrayListSerializer;
import kotlinx.serialization.internal.ObjectSerializer;
import kotlinx.serialization.internal.StringSerializer;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class rt implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f79611b;

    public /* synthetic */ rt(int i2) {
        this.f79611b = i2;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        switch (this.f79611b) {
            case 0:
                DispatchIdentifierListDto.Companion companion = DispatchIdentifierListDto.Companion;
                return new ArrayListSerializer(StringSerializer.f75684a);
            case 1:
                DispositionListBottomSheet.Companion companion2 = DispositionListBottomSheet.S;
                ArrayList arrayList = new ArrayList();
                arrayList.add(LPPlayChannel.LP_CHANNEL_LEFT);
                arrayList.add(LPPlayChannel.LP_CHANNEL_RIGHT);
                arrayList.add(LPPlayChannel.LP_CHANNEL_STEREO);
                return arrayList;
            case 2:
                float f2 = DistantRepairBottomSheetDatePickerKt.f57325a;
                return Unit.f71739a;
            case 3:
                return new ObjectSerializer("com.vuitton.android.presentation.screen.distantrepairs.form.components.DistantRepairFormRoutes.Confirmation", DistantRepairFormRoutes.Confirmation.INSTANCE, new Annotation[0]);
            case 4:
                return new ObjectSerializer("com.vuitton.android.presentation.screen.distantrepairs.form.components.DistantRepairFormRoutes.Form", DistantRepairFormRoutes.Form.INSTANCE, new Annotation[0]);
            case 5:
                float f3 = DragGestureDetectorKt.f4487a;
                return Boolean.TRUE;
            case 6:
                float f4 = DragGestureDetectorKt.f4487a;
                return Unit.f71739a;
            case 7:
                float f5 = DragGestureDetectorKt.f4487a;
                return Unit.f71739a;
            case 8:
                float f6 = DragGestureDetectorKt.f4487a;
                return Unit.f71739a;
            case 9:
                Lazy lazy = DrawablePainterKt.f27768a;
                return new Handler(Looper.getMainLooper());
            case 10:
                return Unit.f71739a;
            case 11:
                return ExtraPhoneField.NONE;
            case 12:
                EarphoneSectionDto.Companion companion3 = EarphoneSectionDto.INSTANCE;
                return new ArrayListSerializer(FaqCategoryDto$$serializer.f45564a);
            case 13:
                EarphoneSectionDto.Companion companion4 = EarphoneSectionDto.INSTANCE;
                return new ArrayListSerializer(StringSerializer.f75684a);
            case 14:
                EarphoneSectionDto.Companion companion5 = EarphoneSectionDto.INSTANCE;
                return new ArrayListSerializer(TutorialDto$$serializer.f45574a);
            case 15:
                return Unit.f71739a;
            case 16:
                return Unit.f71739a;
            case 17:
                Lazy lazy2 = EditorialMocksKt.f50801a;
                SkuIdUiModel.Companion companion6 = SkuIdUiModel.f61763c;
                return new CarouselSItemUiModel("skuId", "Lorem Ipsum", "image url", R.drawable.background_product_default, new ProductShortPriceUiModel(false, "1000.00 $", Double.valueOf(1000.0d), "USD"), null, null, 96, null);
            case 18:
                Lazy lazy3 = EditorialMocksKt.f50801a;
                SkuIdUiModel.Companion companion7 = SkuIdUiModel.f61763c;
                Double dValueOf = Double.valueOf(1000.0d);
                CarouselSItemUiModel carouselSItemUiModel = new CarouselSItemUiModel("M40995", "Lorem Ipsum", "https://fr-ppf.louisvuitton.com/images/is/image/lvprp/1/PP_VP_L/louis-vuitton--N41358_PM2_Front view.jpg?wid={IMG_WIDTH}&hei={IMG_HEIGHT}", R.drawable.background_product_default, new ProductShortPriceUiModel(false, "1000.00 $", dValueOf, "USD"), null, null, 96, null);
                CarouselSItemUiModel carouselSItemUiModel2 = new CarouselSItemUiModel("skuId", "Lorem Ipsum with a very long name ", "https://fr-ppf.louisvuitton.com/images/is/image/lvprp/1/PP_VP_L/louis-vuitton--M45686_PM2_Front view.jpg?wid={IMG_WIDTH}&hei={IMG_HEIGHT}", R.drawable.background_product_default, new ProductShortPriceUiModel(false, "1000.00 $", dValueOf, "USD"), null, null, 96, null);
                Lazy lazy4 = EditorialMocksKt.f50801a;
                return CollectionsKt.P(carouselSItemUiModel, carouselSItemUiModel2, (CarouselSItemUiModel) lazy4.getF71699b(), (CarouselSItemUiModel) lazy4.getF71699b());
            case 19:
                Lazy lazy5 = EditorialMocksKt.f50801a;
                SkuIdUiModel.Companion companion8 = SkuIdUiModel.f61763c;
                return new CarouselSItemUiModel("M12345", "Grid Item Mock", "https://fr-ppf.louisvuitton.com/images/is/image/lvprp/1/PP_VP_L/louis-vuitton--N41358_PM2_Front view.jpg?wid={IMG_WIDTH}&hei={IMG_HEIGHT}", R.drawable.background_product_default, null, null, null, 96, null);
            case 20:
                Lazy lazy6 = EditorialMocksKt.f50801a;
                SkuIdUiModel.Companion companion9 = SkuIdUiModel.f61763c;
                return CollectionsKt.P(new CarouselSItemUiModel("M40995", "Product 1", "https://fr-ppf.louisvuitton.com/images/is/image/lvprp/1/PP_VP_L/louis-vuitton--N41358_PM2_Front view.jpg?wid={IMG_WIDTH}&hei={IMG_HEIGHT}", R.drawable.background_product_default, null, null, null, 96, null), new CarouselSItemUiModel("M45686", "Product 2", "https://fr-ppf.louisvuitton.com/images/is/image/lvprp/1/PP_VP_L/louis-vuitton--M45686_PM2_Front view.jpg?wid={IMG_WIDTH}&hei={IMG_HEIGHT}", R.drawable.background_product_default, null, null, null, 96, null), new CarouselSItemUiModel("M67890", "Product 3", "https://fr-ppf.louisvuitton.com/images/is/image/lvprp/1/PP_VP_L/louis-vuitton--N41358_PM2_Front view.jpg?wid={IMG_WIDTH}&hei={IMG_HEIGHT}", R.drawable.background_product_default, null, null, null, 96, null), new CarouselSItemUiModel("M11111", "Product 4", "https://fr-ppf.louisvuitton.com/images/is/image/lvprp/1/PP_VP_L/louis-vuitton--M45686_PM2_Front view.jpg?wid={IMG_WIDTH}&hei={IMG_HEIGHT}", R.drawable.background_product_default, null, null, null, 96, null));
            case 21:
                EditorialModuleDto.Companion companion10 = EditorialModuleDto.INSTANCE;
                ReflectionFactory reflectionFactory = Reflection.f71922a;
                return new SealedClassSerializer("com.vuitton.android.data.dto.common.editorial.EditorialModuleDto", reflectionFactory.b(EditorialModuleDto.class), new KClass[]{reflectionFactory.b(EditorialModuleDto.AuthenticationSectionDto.class), reflectionFactory.b(EditorialModuleDto.CardSectionDto.class), reflectionFactory.b(EditorialModuleDto.CarouselLargeMultipleSectionDto.class), reflectionFactory.b(EditorialModuleDto.CarouselLargeSingleSectionDto.class), reflectionFactory.b(EditorialModuleDto.CarouselMediumSectionDto.class), reflectionFactory.b(EditorialModuleDto.CarouselSmallSectionDto.class), reflectionFactory.b(EditorialModuleDto.EventSectionDto.class), reflectionFactory.b(EditorialModuleDto.GridSmallSectionDto.class), reflectionFactory.b(EditorialModuleDto.HighlightCardSectionDto.class), reflectionFactory.b(EditorialModuleDto.LiveSectionDto.class), reflectionFactory.b(EditorialModuleDto.NotificationSectionDto.class), reflectionFactory.b(EditorialModuleDto.ProductCarouselSectionDto.class), reflectionFactory.b(EditorialModuleDto.PushCardSectionDto.class), reflectionFactory.b(EditorialModuleDto.SlideShowSectionDto.class), reflectionFactory.b(EditorialModuleDto.UnknownSectionDto.class)}, new KSerializer[]{EditorialModuleDto$AuthenticationSectionDto$$serializer.f45271a, EditorialModuleDto$CardSectionDto$$serializer.f45277a, EditorialModuleDto$CarouselLargeMultipleSectionDto$$serializer.f45281a, EditorialModuleDto$CarouselLargeSingleSectionDto$$serializer.f45286a, EditorialModuleDto$CarouselMediumSectionDto$$serializer.f45290a, EditorialModuleDto$CarouselSmallSectionDto$$serializer.f45294a, EditorialModuleDto$EventSectionDto$$serializer.f45300a, EditorialModuleDto$GridSmallSectionDto$$serializer.f45304a, EditorialModuleDto$HighlightCardSectionDto$$serializer.f45308a, EditorialModuleDto$LiveSectionDto$$serializer.f45315a, EditorialModuleDto$NotificationSectionDto$$serializer.f45317a, EditorialModuleDto$ProductCarouselSectionDto$$serializer.f45320a, EditorialModuleDto$PushCardSectionDto$$serializer.f45325a, EditorialModuleDto$SlideShowSectionDto$$serializer.f45329a, EditorialModuleDto$UnknownSectionDto$$serializer.f45331a}, new Annotation[0]);
            case 22:
                EditorialModuleDto.CardSectionDto.Companion companion11 = EditorialModuleDto.CardSectionDto.INSTANCE;
                return AssetLayoutDto.INSTANCE.serializer();
            case 23:
                EditorialModuleDto.CardSectionDto.Companion companion12 = EditorialModuleDto.CardSectionDto.INSTANCE;
                return RatioDto.INSTANCE.serializer();
            case 24:
                EditorialModuleDto.CarouselLargeMultipleSectionDto.Companion companion13 = EditorialModuleDto.CarouselLargeMultipleSectionDto.INSTANCE;
                return new ArrayListSerializer(EditorialModuleSlideDto$$serializer.f45336a);
            case 25:
                EditorialModuleDto.CarouselLargeSingleSectionDto.Companion companion14 = EditorialModuleDto.CarouselLargeSingleSectionDto.INSTANCE;
                return new ArrayListSerializer(EditorialModuleSlideSingleDto$$serializer.f45340a);
            case 26:
                EditorialModuleDto.CarouselMediumSectionDto.Companion companion15 = EditorialModuleDto.CarouselMediumSectionDto.INSTANCE;
                return new ArrayListSerializer(EditorialModuleSlideDto$$serializer.f45336a);
            case 27:
                EditorialModuleDto.CarouselSmallSectionDto.Companion companion16 = EditorialModuleDto.CarouselSmallSectionDto.INSTANCE;
                return AlgorithmTypeDto.INSTANCE.serializer();
            case 28:
                EditorialModuleDto.CarouselSmallSectionDto.Companion companion17 = EditorialModuleDto.CarouselSmallSectionDto.INSTANCE;
                return new ArrayListSerializer(StringSerializer.f75684a);
            default:
                EditorialModuleDto.EventSectionDto.Companion companion18 = EditorialModuleDto.EventSectionDto.INSTANCE;
                return RatioDto.INSTANCE.serializer();
        }
    }
}
