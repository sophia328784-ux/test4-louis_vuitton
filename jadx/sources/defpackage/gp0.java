package defpackage;

import com.dynamicyield.sdk.wrapper.core.models.choose.payload.Preview;
import com.dynamicyield.sdk.wrapper.core.models.choose.response.ProductData;
import com.vuitton.android.data.database.entity.searchhistory.ProductBackgroundEntity;
import com.vuitton.android.data.dto.account.orders.CategoryTypeDto;
import com.vuitton.android.data.dto.account.orders.ProductExchangeCategoryDto;
import com.vuitton.android.data.dto.booking.BookingTypeDto;
import com.vuitton.android.data.dto.booking.PrebookFormCategoryDto;
import com.vuitton.android.data.dto.booking.PrebookFormCategoryDto$$serializer;
import com.vuitton.android.data.dto.booking.PrebookFormDataDto;
import com.vuitton.android.data.dto.booking.PrebookFormDto;
import com.vuitton.android.data.dto.booking.PrebookFormMultipleValueDto;
import com.vuitton.android.data.dto.booking.PrebookFormStepDto$$serializer;
import com.vuitton.android.data.dto.distantrepairs.PrebookContextDto;
import com.vuitton.android.data.dto.pdp.DigitalAssetProductDto$$serializer;
import com.vuitton.android.data.dto.pdp.EditorialContentDto$$serializer;
import com.vuitton.android.data.dto.pdp.FinishVariationDto$$serializer;
import com.vuitton.android.data.dto.pdp.HighlightDto$$serializer;
import com.vuitton.android.data.dto.pdp.MediaDto$$serializer;
import com.vuitton.android.data.dto.pdp.ModelSizeVariationDto$$serializer;
import com.vuitton.android.data.dto.pdp.PanelInformationDto$$serializer;
import com.vuitton.android.data.dto.pdp.ProductAGECCategoryListDto;
import com.vuitton.android.data.dto.pdp.ProductAGECDataDto$$serializer;
import com.vuitton.android.data.dto.pdp.ProductAGECDto;
import com.vuitton.android.data.dto.pdp.ProductAGECValueDto$$serializer;
import com.vuitton.android.data.dto.pdp.ProductBackgroundDto;
import com.vuitton.android.data.dto.pdp.ProductDetailDto;
import com.vuitton.android.data.dto.pdp.ProductDetailDto$$serializer;
import com.vuitton.android.data.dto.pdp.ProductDetailSectionDto$$serializer;
import com.vuitton.android.data.dto.pdp.ProductDto;
import com.vuitton.android.data.dto.pdp.ProductSkuModelDto$$serializer;
import com.vuitton.android.presentation.LVApplication;
import com.vuitton.android.presentation.screen.privacy.components.PrivacyRoutes;
import java.lang.annotation.Annotation;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.ReflectionFactory;
import kotlin.reflect.KClass;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.PolymorphicSerializer;
import kotlinx.serialization.SealedClassSerializer;
import kotlinx.serialization.internal.ArrayListSerializer;
import kotlinx.serialization.internal.EnumSerializer;
import kotlinx.serialization.internal.EnumsKt;
import kotlinx.serialization.internal.ObjectSerializer;
import kotlinx.serialization.internal.StringSerializer;
import okhttp3.OkHttpClient;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class gp0 implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f69458b;

    public /* synthetic */ gp0(LVApplication lVApplication) {
        this.f69458b = 5;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        switch (this.f69458b) {
            case 0:
                return EnumsKt.a("com.vuitton.android.data.dto.distantrepairs.PrebookContextDto", PrebookContextDto.values(), new String[]{"onlineStoreAppointment", "careService"}, new Annotation[][]{null, null});
            case 1:
                PrebookFormCategoryDto.Companion companion = PrebookFormCategoryDto.INSTANCE;
                return new ArrayListSerializer(StringSerializer.f75684a);
            case 2:
                PrebookFormDataDto.Companion companion2 = PrebookFormDataDto.Companion;
                return BookingTypeDto.INSTANCE.serializer();
            case 3:
                PrebookFormDto.Companion companion3 = PrebookFormDto.Companion;
                return new ArrayListSerializer(PrebookFormStepDto$$serializer.f44786a);
            case 4:
                PrebookFormMultipleValueDto.Companion companion4 = PrebookFormMultipleValueDto.INSTANCE;
                return new ArrayListSerializer(PrebookFormCategoryDto$$serializer.f44767a);
            case 5:
                OkHttpClient.Builder builder = new OkHttpClient.Builder();
                builder.b(30L);
                builder.d(30L);
                builder.c(30L);
                return new OkHttpClient(builder);
            case 6:
                Preview.Companion companion5 = Preview.Companion;
                return new ArrayListSerializer(StringSerializer.f75684a);
            case 7:
                PrivacyRoutes.Companion companion6 = PrivacyRoutes.Companion;
                ReflectionFactory reflectionFactory = Reflection.f71922a;
                return new SealedClassSerializer("com.vuitton.android.presentation.screen.privacy.components.PrivacyRoutes", reflectionFactory.b(PrivacyRoutes.class), new KClass[]{reflectionFactory.b(PrivacyRoutes.Privacy.class), reflectionFactory.b(PrivacyRoutes.PrivacyPiplCbdt.class), reflectionFactory.b(PrivacyRoutes.PrivacyPreCompliance.class)}, new KSerializer[]{new ObjectSerializer("com.vuitton.android.presentation.screen.privacy.components.PrivacyRoutes.Privacy", PrivacyRoutes.Privacy.INSTANCE, new Annotation[0]), new ObjectSerializer("com.vuitton.android.presentation.screen.privacy.components.PrivacyRoutes.PrivacyPiplCbdt", PrivacyRoutes.PrivacyPiplCbdt.INSTANCE, new Annotation[0]), new ObjectSerializer("com.vuitton.android.presentation.screen.privacy.components.PrivacyRoutes.PrivacyPreCompliance", PrivacyRoutes.PrivacyPreCompliance.INSTANCE, new Annotation[0])}, new Annotation[0]);
            case 8:
                return new ObjectSerializer("com.vuitton.android.presentation.screen.privacy.components.PrivacyRoutes.Privacy", PrivacyRoutes.Privacy.INSTANCE, new Annotation[0]);
            case 9:
                return new ObjectSerializer("com.vuitton.android.presentation.screen.privacy.components.PrivacyRoutes.PrivacyPiplCbdt", PrivacyRoutes.PrivacyPiplCbdt.INSTANCE, new Annotation[0]);
            case 10:
                return new ObjectSerializer("com.vuitton.android.presentation.screen.privacy.components.PrivacyRoutes.PrivacyPreCompliance", PrivacyRoutes.PrivacyPreCompliance.INSTANCE, new Annotation[0]);
            case 11:
                ProductAGECCategoryListDto.Companion companion7 = ProductAGECCategoryListDto.INSTANCE;
                return new ArrayListSerializer(ProductAGECValueDto$$serializer.f46255a);
            case 12:
                ProductAGECDto.Companion companion8 = ProductAGECDto.Companion;
                return new ArrayListSerializer(ProductAGECDataDto$$serializer.f46242a);
            case 13:
                return EnumsKt.a("com.vuitton.android.data.dto.pdp.ProductBackgroundDto", ProductBackgroundDto.values(), new String[]{"Default", "Floor"}, new Annotation[][]{null, null});
            case 14:
                ProductBackgroundEntity[] productBackgroundEntityArrValues = ProductBackgroundEntity.values();
                productBackgroundEntityArrValues.getClass();
                return new EnumSerializer("com.vuitton.android.data.database.entity.searchhistory.ProductBackgroundEntity", productBackgroundEntityArrValues);
            case 15:
                ProductData.Companion companion9 = ProductData.INSTANCE;
                return new PolymorphicSerializer(Reflection.f71922a.b(ProductData.class), new Annotation[0]);
            case 16:
                ProductDetailDto.Companion companion10 = ProductDetailDto.Companion;
                return new ArrayListSerializer(ProductDetailSectionDto$$serializer.f46271a);
            case 17:
                ProductDto.Companion companion11 = ProductDto.INSTANCE;
                return ProductBackgroundDto.INSTANCE.serializer();
            case 18:
                ProductDto.Companion companion12 = ProductDto.INSTANCE;
                return new ArrayListSerializer(ProductDetailDto$$serializer.f46268a);
            case 19:
                ProductDto.Companion companion13 = ProductDto.INSTANCE;
                return new ArrayListSerializer(HighlightDto$$serializer.f46218a);
            case 20:
                ProductDto.Companion companion14 = ProductDto.INSTANCE;
                return new ArrayListSerializer(EditorialContentDto$$serializer.f46210a);
            case 21:
                ProductDto.Companion companion15 = ProductDto.INSTANCE;
                return new ArrayListSerializer(FinishVariationDto$$serializer.f46213a);
            case 22:
                ProductDto.Companion companion16 = ProductDto.INSTANCE;
                return new ArrayListSerializer(MediaDto$$serializer.f46222a);
            case 23:
                ProductDto.Companion companion17 = ProductDto.INSTANCE;
                return new ArrayListSerializer(ProductSkuModelDto$$serializer.f46295a);
            case 24:
                ProductDto.Companion companion18 = ProductDto.INSTANCE;
                return new ArrayListSerializer(ProductSkuModelDto$$serializer.f46295a);
            case 25:
                ProductDto.Companion companion19 = ProductDto.INSTANCE;
                return new ArrayListSerializer(ProductSkuModelDto$$serializer.f46295a);
            case 26:
                ProductDto.Companion companion20 = ProductDto.INSTANCE;
                return new ArrayListSerializer(ModelSizeVariationDto$$serializer.f46228a);
            case 27:
                ProductDto.Companion companion21 = ProductDto.INSTANCE;
                return new ArrayListSerializer(PanelInformationDto$$serializer.f46232a);
            case 28:
                ProductDto.Companion companion22 = ProductDto.INSTANCE;
                return new ArrayListSerializer(DigitalAssetProductDto$$serializer.f46193a);
            default:
                ProductExchangeCategoryDto.Companion companion23 = ProductExchangeCategoryDto.INSTANCE;
                return CategoryTypeDto.INSTANCE.serializer();
        }
    }

    public /* synthetic */ gp0(int i2) {
        this.f69458b = i2;
    }
}
