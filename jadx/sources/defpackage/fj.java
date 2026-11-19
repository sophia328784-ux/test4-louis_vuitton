package defpackage;

import androidx.compose.runtime.StaticProvidableCompositionLocal;
import com.dynamicyield.sdk.wrapper.core.models.choose.payload.CartItem;
import com.dynamicyield.sdk.wrapper.core.models.event.CartInnerItem$$serializer;
import com.vuitton.android.data.dto.account.checkoutconfirmationdetail.CartPriceInfoDto;
import com.vuitton.android.data.dto.account.checkoutconfirmationdetail.TaxInfoDto$$serializer;
import com.vuitton.android.data.dto.account.orders.CategoryTypeDto;
import com.vuitton.android.data.dto.careservices.CareServicesDto;
import com.vuitton.android.data.dto.cart.bff.CartDto;
import com.vuitton.android.data.dto.cart.bff.CartItemDto;
import com.vuitton.android.data.dto.cart.bff.CartItemDto$$serializer;
import com.vuitton.android.data.dto.cart.bff.CartResponseMultipleDto;
import com.vuitton.android.data.dto.cart.bff.CartSampleDto;
import com.vuitton.android.data.dto.cart.bff.CartSampleItemDto$$serializer;
import com.vuitton.android.data.dto.cart.bff.ImageUrlDto$$serializer;
import com.vuitton.android.data.dto.cart.common.CartErrorCodeDto;
import com.vuitton.android.data.dto.cart.common.CartErrorDto;
import com.vuitton.android.data.dto.cart.common.CartErrorDto$$serializer;
import com.vuitton.android.data.dto.cart.common.CartErrorsDto;
import com.vuitton.android.data.dto.catalog.CatalogDto;
import com.vuitton.android.data.dto.catalog.CategoryRedirectionDto;
import com.vuitton.android.data.dto.catalog.PLPEntryDto$$serializer;
import com.vuitton.android.data.dto.catalog.SectionDto$$serializer;
import com.vuitton.android.data.dto.catalog.SubcategoryGroupsDto$$serializer;
import com.vuitton.android.data.dto.certificate.CertificateCapucineDataDto;
import com.vuitton.android.data.dto.certificate.CertificateCapucineDto;
import com.vuitton.android.data.dto.certificate.CertificateDiamondDataDto;
import com.vuitton.android.data.dto.certificate.CertificateDiamondDto;
import com.vuitton.android.data.dto.certificate.CertificateDiamondStoneDto$$serializer;
import com.vuitton.android.data.dto.certificate.CertificateStatusDto;
import com.vuitton.android.data.dto.common.AssetDto$$serializer;
import com.vuitton.android.data.dto.repair.RepairStatusDto;
import com.vuitton.android.data.dto.repair.RepairTypeDto;
import com.vuitton.android.presentation.screen.catalog.CatalogTrackerEntryPointKt;
import com.vuitton.android.presentation.screen.catalog.components.CatalogRoutes;
import com.vuitton.android.presentation.screen.main.navigation.CartRoute;
import com.vuitton.android.presentation.screen.main.navigation.CatalogDeepLinkType;
import com.vuitton.android.presentation.screen.main.navigation.CatalogRoute;
import com.vuitton.android.presentation.screen.plp.activities.CatalogPLPActivity;
import com.vuitton.android.presentation.screen.storemode.models.StoreModeLaunchMode;
import java.lang.annotation.Annotation;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlinx.serialization.internal.ArrayListSerializer;
import kotlinx.serialization.internal.EnumSerializer;
import kotlinx.serialization.internal.EnumsKt;
import kotlinx.serialization.internal.ObjectSerializer;
import kotlinx.serialization.internal.StringSerializer;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class fj implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f69154b;

    public /* synthetic */ fj(int i2) {
        this.f69154b = i2;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        switch (this.f69154b) {
            case 0:
                CareServicesDto.Companion companion = CareServicesDto.Companion;
                return RepairTypeDto.INSTANCE.serializer();
            case 1:
                CareServicesDto.Companion companion2 = CareServicesDto.Companion;
                return RepairStatusDto.INSTANCE.serializer();
            case 2:
                return Unit.f71739a;
            case 3:
                CartDto.Companion companion3 = CartDto.Companion;
                return new ArrayListSerializer(CartItemDto$$serializer.f44996a);
            case 4:
                return EnumsKt.a("com.vuitton.android.data.dto.cart.common.CartErrorCodeDto", CartErrorCodeDto.values(), new String[]{"maxQuantityError", "maxQuantityBySkuError", "maxQuantityPersonalizationError", "outOfStockError"}, new Annotation[][]{null, null, null, null});
            case 5:
                CartErrorDto.Companion companion4 = CartErrorDto.Companion;
                return CartErrorCodeDto.Companion.serializer();
            case 6:
                CartErrorsDto.Companion companion5 = CartErrorsDto.Companion;
                return new ArrayListSerializer(CartErrorDto$$serializer.f45083a);
            case 7:
                CartItem.Companion companion6 = CartItem.Companion;
                return new ArrayListSerializer(CartInnerItem$$serializer.f26300a);
            case 8:
                CartItemDto.Companion companion7 = CartItemDto.Companion;
                return new ArrayListSerializer(ImageUrlDto$$serializer.f45051a);
            case 9:
                CartPriceInfoDto.Companion companion8 = CartPriceInfoDto.Companion;
                return new ArrayListSerializer(TaxInfoDto$$serializer.f44324a);
            case 10:
                CartResponseMultipleDto.Companion companion9 = CartResponseMultipleDto.Companion;
                return new ArrayListSerializer(CartErrorDto$$serializer.f45083a);
            case 11:
                return new ObjectSerializer("com.vuitton.android.presentation.screen.main.navigation.CartRoute", CartRoute.INSTANCE, new Annotation[0]);
            case 12:
                CartSampleDto.Companion companion10 = CartSampleDto.Companion;
                return new ArrayListSerializer(CartSampleItemDto$$serializer.f45018a);
            case 13:
                CatalogDeepLinkType[] catalogDeepLinkTypeArrValues = CatalogDeepLinkType.values();
                catalogDeepLinkTypeArrValues.getClass();
                return new EnumSerializer("com.vuitton.android.presentation.screen.main.navigation.CatalogDeepLinkType", catalogDeepLinkTypeArrValues);
            case 14:
                CatalogDto.Companion companion11 = CatalogDto.Companion;
                return new ArrayListSerializer(SectionDto$$serializer.f45111a);
            case 15:
                CatalogPLPActivity.Companion companion12 = CatalogPLPActivity.x;
                return Unit.f71739a;
            case 16:
                CatalogRoute.Companion companion13 = CatalogRoute.Companion;
                return CatalogDeepLinkType.Companion.serializer();
            case 17:
                CatalogRoute.Companion companion14 = CatalogRoute.Companion;
                StoreModeLaunchMode[] storeModeLaunchModeArrValues = StoreModeLaunchMode.values();
                storeModeLaunchModeArrValues.getClass();
                return new EnumSerializer("com.vuitton.android.presentation.screen.storemode.models.StoreModeLaunchMode", storeModeLaunchModeArrValues);
            case 18:
                CatalogRoute.Companion companion15 = CatalogRoute.Companion;
                return new ArrayListSerializer(StringSerializer.f75684a);
            case 19:
                return new ObjectSerializer("com.vuitton.android.presentation.screen.catalog.components.CatalogRoutes.Category", CatalogRoutes.Category.INSTANCE, new Annotation[0]);
            case 20:
                StaticProvidableCompositionLocal staticProvidableCompositionLocal = CatalogTrackerEntryPointKt.f55232a;
                throw new IllegalStateException("no local CatalogTracker provided");
            case 21:
                CategoryRedirectionDto.Companion companion16 = CategoryRedirectionDto.Companion;
                return new ArrayListSerializer(PLPEntryDto$$serializer.f45107a);
            case 22:
                CategoryRedirectionDto.Companion companion17 = CategoryRedirectionDto.Companion;
                return new ArrayListSerializer(PLPEntryDto$$serializer.f45107a);
            case 23:
                CategoryRedirectionDto.Companion companion18 = CategoryRedirectionDto.Companion;
                return new ArrayListSerializer(SubcategoryGroupsDto$$serializer.f45119a);
            case 24:
                return EnumsKt.a("com.vuitton.android.data.dto.account.orders.CategoryTypeDto", CategoryTypeDto.values(), new String[]{"text", "image"}, new Annotation[][]{null, null});
            case 25:
                CertificateCapucineDataDto.Companion companion19 = CertificateCapucineDataDto.Companion;
                return new ArrayListSerializer(AssetDto$$serializer.f45238a);
            case 26:
                CertificateCapucineDataDto.Companion companion20 = CertificateCapucineDataDto.Companion;
                return new ArrayListSerializer(AssetDto$$serializer.f45238a);
            case 27:
                CertificateCapucineDto.Companion companion21 = CertificateCapucineDto.INSTANCE;
                return CertificateStatusDto.INSTANCE.serializer();
            case 28:
                CertificateDiamondDataDto.Companion companion22 = CertificateDiamondDataDto.Companion;
                return new ArrayListSerializer(CertificateDiamondStoneDto$$serializer.f45183a);
            default:
                CertificateDiamondDto.Companion companion23 = CertificateDiamondDto.INSTANCE;
                return CertificateStatusDto.INSTANCE.serializer();
        }
    }
}
