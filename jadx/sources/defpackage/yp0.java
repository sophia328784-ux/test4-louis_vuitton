package defpackage;

import com.dynamicyield.sdk.wrapper.core.enums.ChoiceType;
import com.dynamicyield.sdk.wrapper.core.enums.CurrencyType;
import com.dynamicyield.sdk.wrapper.core.models.choose.response.QsrProductRecsChoice;
import com.dynamicyield.sdk.wrapper.core.models.event.CartInnerItem$$serializer;
import com.dynamicyield.sdk.wrapper.core.models.event.PurchaseEventProperties;
import com.vuitton.android.data.database.entity.address.AddressEntity$$serializer;
import com.vuitton.android.data.database.entity.profile.ProfileEntity;
import com.vuitton.android.data.dto.account.orders.CategoryOptionDto$$serializer;
import com.vuitton.android.data.dto.account.orders.ProductExchangeCategoryDto;
import com.vuitton.android.data.dto.common.AssetDto$$serializer;
import com.vuitton.android.data.dto.common.editorial.RatioDto;
import com.vuitton.android.data.dto.plp.ProductListDto;
import com.vuitton.android.data.dto.plp.ProductListSectionDataDto;
import com.vuitton.android.data.dto.plp.ProductListSectionDataDto$CuratedTextDto$$serializer;
import com.vuitton.android.data.dto.plp.ProductListSectionDataDto$HalfEditoDto$$serializer;
import com.vuitton.android.data.dto.plp.ProductListSectionDataDto$ProductFullscreenDto$$serializer;
import com.vuitton.android.data.dto.plp.ProductListSectionDataDto$ProductHighlightDto$$serializer;
import com.vuitton.android.data.dto.plp.ProductListSectionDataDto$ProductSliderDto$$serializer;
import com.vuitton.android.data.dto.plp.ProductListSectionDataDto$ProductsDto$$serializer;
import com.vuitton.android.data.dto.plp.ProductListSectionDtoSerializer;
import com.vuitton.android.data.dto.product.stock.shared.ProductStockDto;
import com.vuitton.android.data.dto.product.stock.shared.SkuAvailabilityDto$$serializer;
import com.vuitton.android.data.dto.productshort.ProductBooleanFilterDto$$serializer;
import com.vuitton.android.data.dto.productshort.ProductFilterDataTypeDto;
import com.vuitton.android.data.dto.productshort.ProductFilterValueDto$$serializer;
import com.vuitton.android.data.dto.productshort.ProductFiltersCategoryDto$$serializer;
import com.vuitton.android.data.dto.productshort.ProductFiltersDto;
import com.vuitton.android.data.dto.productshort.ProductListLegacyDto;
import com.vuitton.android.data.dto.productshort.ProductListOptionDto;
import com.vuitton.android.data.dto.productshort.ProductListSectionDto;
import com.vuitton.android.data.dto.productshort.ProductListSectionDto$$serializer;
import com.vuitton.android.data.dto.productshort.ProductShortDto;
import com.vuitton.android.data.dto.productshort.ProductShortDto$$serializer;
import com.vuitton.android.data.dto.productshort.ProductSortDto$$serializer;
import com.vuitton.android.data.dto.productshort.ProductVariationDto$$serializer;
import com.vuitton.android.data.dto.producttiny.ProductTinyDto$$serializer;
import com.vuitton.android.data.dto.producttiny.ProductTinyListDto;
import com.vuitton.android.data.dto.profile.PhoneNumberDto$$serializer;
import com.vuitton.android.data.dto.profile.ProfileDto;
import com.vuitton.android.data.dto.profile.twist.ProfileUpdateDto;
import java.lang.annotation.Annotation;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.ReflectionFactory;
import kotlin.reflect.KClass;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SealedClassSerializer;
import kotlinx.serialization.internal.ArrayListSerializer;
import kotlinx.serialization.internal.EnumSerializer;
import kotlinx.serialization.internal.EnumsKt;
import kotlinx.serialization.internal.ObjectSerializer;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class yp0 implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f81405b;

    public /* synthetic */ yp0(int i2) {
        this.f81405b = i2;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        switch (this.f81405b) {
            case 0:
                ProductExchangeCategoryDto.Companion companion = ProductExchangeCategoryDto.INSTANCE;
                return new ArrayListSerializer(CategoryOptionDto$$serializer.f44332a);
            case 1:
                ProductFilterDataTypeDto.Simple.Companion companion2 = ProductFilterDataTypeDto.Simple.INSTANCE;
                return new ArrayListSerializer(ProductFilterValueDto$$serializer.f46610a);
            case 2:
                return new ObjectSerializer("com.vuitton.android.data.dto.productshort.ProductFilterDataTypeDto.UnknownProductFilterDataTypeDto", ProductFilterDataTypeDto.UnknownProductFilterDataTypeDto.INSTANCE, new Annotation[0]);
            case 3:
                ProductFiltersDto.Companion companion3 = ProductFiltersDto.Companion;
                return new ArrayListSerializer(ProductFiltersCategoryDto$$serializer.f46614a);
            case 4:
                ProductFiltersDto.Companion companion4 = ProductFiltersDto.Companion;
                return new ArrayListSerializer(ProductBooleanFilterDto$$serializer.f46594a);
            case 5:
                return Unit.f71739a;
            case 6:
                ProductListDto.Companion companion5 = ProductListDto.INSTANCE;
                return new ArrayListSerializer(ProductListSectionDtoSerializer.f46386a);
            case 7:
                ProductListLegacyDto.Companion companion6 = ProductListLegacyDto.INSTANCE;
                return new ArrayListSerializer(ProductListSectionDto$$serializer.f46633a);
            case 8:
                ProductListOptionDto.Companion companion7 = ProductListOptionDto.INSTANCE;
                return new ArrayListSerializer(ProductSortDto$$serializer.f46654a);
            case 9:
                ProductListOptionDto.Companion companion8 = ProductListOptionDto.INSTANCE;
                return new ArrayListSerializer(ProductFilterValueDto$$serializer.f46610a);
            case 10:
                ProductListSectionDataDto.Companion companion9 = ProductListSectionDataDto.INSTANCE;
                ReflectionFactory reflectionFactory = Reflection.f71922a;
                return new SealedClassSerializer("com.vuitton.android.data.dto.plp.ProductListSectionDataDto", reflectionFactory.b(ProductListSectionDataDto.class), new KClass[]{reflectionFactory.b(ProductListSectionDataDto.CuratedTextDto.class), reflectionFactory.b(ProductListSectionDataDto.HalfEditoDto.class), reflectionFactory.b(ProductListSectionDataDto.ProductFullscreenDto.class), reflectionFactory.b(ProductListSectionDataDto.ProductHighlightDto.class), reflectionFactory.b(ProductListSectionDataDto.ProductSliderDto.class), reflectionFactory.b(ProductListSectionDataDto.ProductsDto.class), reflectionFactory.b(ProductListSectionDataDto.UnknownSectionDataDto.class)}, new KSerializer[]{ProductListSectionDataDto$CuratedTextDto$$serializer.f46360a, ProductListSectionDataDto$HalfEditoDto$$serializer.f46370a, ProductListSectionDataDto$ProductFullscreenDto$$serializer.f46373a, ProductListSectionDataDto$ProductHighlightDto$$serializer.f46376a, ProductListSectionDataDto$ProductSliderDto$$serializer.f46378a, ProductListSectionDataDto$ProductsDto$$serializer.f46381a, new ObjectSerializer("com.vuitton.android.data.dto.plp.ProductListSectionDataDto.UnknownSectionDataDto", ProductListSectionDataDto.UnknownSectionDataDto.INSTANCE, new Annotation[0])}, new Annotation[0]);
            case 11:
                ProductListSectionDataDto.CuratedTextDto.LabelDto.Companion companion10 = ProductListSectionDataDto.CuratedTextDto.LabelDto.INSTANCE;
                return ProductListSectionDataDto.CuratedTextDto.LabelDto.FontDto.INSTANCE.serializer();
            case 12:
                return EnumsKt.a("com.vuitton.android.data.dto.plp.ProductListSectionDataDto.CuratedTextDto.LabelDto.FontDto", ProductListSectionDataDto.CuratedTextDto.LabelDto.FontDto.values(), new String[]{"small", "medium", "large"}, new Annotation[][]{null, null, null});
            case 13:
                ProductListSectionDataDto.HalfEditoDto.Companion companion11 = ProductListSectionDataDto.HalfEditoDto.INSTANCE;
                return ProductListSectionDataDto.HalfEditoDto.AlignmentDto.INSTANCE.serializer();
            case 14:
                return EnumsKt.a("com.vuitton.android.data.dto.plp.ProductListSectionDataDto.HalfEditoDto.AlignmentDto", ProductListSectionDataDto.HalfEditoDto.AlignmentDto.values(), new String[]{"left", "center"}, new Annotation[][]{null, null});
            case 15:
                ProductListSectionDataDto.ProductFullscreenDto.Companion companion12 = ProductListSectionDataDto.ProductFullscreenDto.INSTANCE;
                return RatioDto.INSTANCE.serializer();
            case 16:
                ProductListSectionDataDto.ProductsDto.Companion companion13 = ProductListSectionDataDto.ProductsDto.INSTANCE;
                return new ArrayListSerializer(ProductShortDto$$serializer.f46646a);
            case 17:
                return new ObjectSerializer("com.vuitton.android.data.dto.plp.ProductListSectionDataDto.UnknownSectionDataDto", ProductListSectionDataDto.UnknownSectionDataDto.INSTANCE, new Annotation[0]);
            case 18:
                ProductListSectionDto.Companion companion14 = ProductListSectionDto.INSTANCE;
                return new ArrayListSerializer(ProductShortDto$$serializer.f46646a);
            case 19:
                ProductShortDto.Companion companion15 = ProductShortDto.INSTANCE;
                return new ArrayListSerializer(ProductVariationDto$$serializer.f46657a);
            case 20:
                ProductShortDto.Companion companion16 = ProductShortDto.INSTANCE;
                return new ArrayListSerializer(AssetDto$$serializer.f45238a);
            case 21:
                ProductStockDto.Companion companion17 = ProductStockDto.INSTANCE;
                return new ArrayListSerializer(SkuAvailabilityDto$$serializer.f46494a);
            case 22:
                ProductTinyListDto.Companion companion18 = ProductTinyListDto.INSTANCE;
                return new ArrayListSerializer(ProductTinyDto$$serializer.f46669a);
            case 23:
                ProfileDto.Companion companion19 = ProfileDto.INSTANCE;
                return new ArrayListSerializer(PhoneNumberDto$$serializer.f46681a);
            case 24:
                ProfileEntity.Companion companion20 = ProfileEntity.Companion;
                return new ArrayListSerializer(AddressEntity$$serializer.f43585a);
            case 25:
                ProfileUpdateDto.Companion companion21 = ProfileUpdateDto.INSTANCE;
                return new ArrayListSerializer(PhoneNumberDto$$serializer.f46681a);
            case 26:
                return Unit.f71739a;
            case 27:
                PurchaseEventProperties.Companion companion22 = PurchaseEventProperties.INSTANCE;
                CurrencyType[] currencyTypeArrValues = CurrencyType.values();
                currencyTypeArrValues.getClass();
                return new EnumSerializer("com.dynamicyield.sdk.wrapper.core.enums.CurrencyType", currencyTypeArrValues);
            case 28:
                PurchaseEventProperties.Companion companion23 = PurchaseEventProperties.INSTANCE;
                return new ArrayListSerializer(CartInnerItem$$serializer.f26300a);
            default:
                QsrProductRecsChoice.Companion companion24 = QsrProductRecsChoice.Companion;
                ChoiceType[] choiceTypeArrValues = ChoiceType.values();
                choiceTypeArrValues.getClass();
                return new EnumSerializer("com.dynamicyield.sdk.wrapper.core.enums.ChoiceType", choiceTypeArrValues);
        }
    }
}
