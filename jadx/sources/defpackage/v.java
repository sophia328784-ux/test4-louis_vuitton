package defpackage;

import androidx.activity.result.ActivityResultRegistry;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import com.dynamicyield.sdk.wrapper.core.enums.CurrencyType;
import com.dynamicyield.sdk.wrapper.core.models.event.AddToCartEventProperties;
import com.dynamicyield.sdk.wrapper.core.models.event.CartInnerItem$$serializer;
import com.linkplay.medialib.ContentTree;
import com.vuitton.android.data.dto.address.AddressCreationDto;
import com.vuitton.android.data.dto.address.AddressDto;
import com.vuitton.android.data.dto.address.AddressDto$$serializer;
import com.vuitton.android.data.dto.address.AddressesResponseDto;
import com.vuitton.android.data.dto.cart.bff.AddToCartDto;
import com.vuitton.android.data.dto.cart.bff.AddToCartItemDto$$serializer;
import com.vuitton.android.data.dto.common.FeatureThemeDto;
import com.vuitton.android.data.dto.config.AICompanionConfigDto;
import com.vuitton.android.data.dto.config.AICompanionOnboardingDto;
import com.vuitton.android.data.dto.config.AbTestDto;
import com.vuitton.android.data.dto.config.cache.AICompanionConfigCache;
import com.vuitton.android.data.dto.config.cache.AICompanionOnboardingConfigCache;
import com.vuitton.android.data.dto.config.cache.AbTestCache;
import com.vuitton.android.data.dto.config.cache.FeatureThemeCache;
import com.vuitton.android.data.dto.profile.PhoneNumberDto$$serializer;
import com.vuitton.android.data.dto.profile.twist.AccountStatusDto;
import com.vuitton.android.data.dto.profile.twist.AccountStatusValueDto;
import com.vuitton.android.data.dto.wishlist.bff.AddWishlistItemDto$$serializer;
import com.vuitton.android.data.dto.wishlist.bff.AddWishlistItemsDto;
import com.vuitton.android.presentation.screen.account.addresseditor.AddressEditorRoute;
import com.vuitton.android.presentation.screen.aicompanion.AICompanionRoutes;
import com.vuitton.android.presentation.screen.aicompanion.models.tracking.AICompanionTrackerEntryPointKt;
import com.vuitton.foundation.model.domain.model.account.accessibility.AccessibilityPreferenceType;
import java.lang.annotation.Annotation;
import java.util.UUID;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.random.Random;
import kotlinx.serialization.internal.ArrayListSerializer;
import kotlinx.serialization.internal.EnumSerializer;
import kotlinx.serialization.internal.EnumsKt;
import kotlinx.serialization.internal.ObjectSerializer;
import kotlinx.serialization.internal.StringSerializer;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class v implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f80454b;

    public /* synthetic */ v(int i2) {
        this.f80454b = i2;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        switch (this.f80454b) {
            case 0:
                return Unit.f71739a;
            case 1:
                return Unit.f71739a;
            case 2:
                AICompanionConfigCache.Companion companion = AICompanionConfigCache.Companion;
                return new ArrayListSerializer(StringSerializer.f75684a);
            case 3:
                AICompanionConfigDto.Companion companion2 = AICompanionConfigDto.Companion;
                return new ArrayListSerializer(StringSerializer.f75684a);
            case 4:
                AICompanionOnboardingConfigCache.Companion companion3 = AICompanionOnboardingConfigCache.Companion;
                return FeatureThemeCache.INSTANCE.serializer();
            case 5:
                AICompanionOnboardingDto.Companion companion4 = AICompanionOnboardingDto.Companion;
                return EnumsKt.a("com.vuitton.android.data.dto.common.FeatureThemeDto", FeatureThemeDto.values(), new String[]{"light", "dark"}, new Annotation[][]{null, null});
            case 6:
                return new ObjectSerializer("com.vuitton.android.presentation.screen.aicompanion.AICompanionRoutes.Chat", AICompanionRoutes.Chat.INSTANCE, new Annotation[0]);
            case 7:
                return new ObjectSerializer("com.vuitton.android.presentation.screen.aicompanion.AICompanionRoutes.History", AICompanionRoutes.History.INSTANCE, new Annotation[0]);
            case 8:
                return new ObjectSerializer("com.vuitton.android.presentation.screen.aicompanion.AICompanionRoutes.Onboarding", AICompanionRoutes.Onboarding.INSTANCE, new Annotation[0]);
            case 9:
                StaticProvidableCompositionLocal staticProvidableCompositionLocal = AICompanionTrackerEntryPointKt.f52911a;
                throw new IllegalStateException("no local AICompanionTracker provided");
            case 10:
                AbTestCache.Companion companion5 = AbTestCache.Companion;
                return new ArrayListSerializer(StringSerializer.f75684a);
            case 11:
                AbTestDto.Companion companion6 = AbTestDto.Companion;
                return new ArrayListSerializer(StringSerializer.f75684a);
            case 12:
                AccessibilityPreferenceType[] accessibilityPreferenceTypeArrValues = AccessibilityPreferenceType.values();
                accessibilityPreferenceTypeArrValues.getClass();
                return new EnumSerializer("com.vuitton.foundation.model.domain.model.account.accessibility.AccessibilityPreferenceType", accessibilityPreferenceTypeArrValues);
            case 13:
                return 2;
            case 14:
                return Unit.f71739a;
            case 15:
                AccountStatusDto.Companion companion7 = AccountStatusDto.Companion;
                return AccountStatusValueDto.INSTANCE.serializer();
            case 16:
                return EnumsKt.a("com.vuitton.android.data.dto.profile.twist.AccountStatusValueDto", AccountStatusValueDto.values(), new String[]{"1", ContentTree.AUDIO_ID, ContentTree.IMAGE_ID}, new Annotation[][]{null, null, null});
            case 17:
                return Unit.f71739a;
            case 18:
                int i2 = ActivityResultRegistry.f733h;
                Random.INSTANCE.getClass();
                return Integer.valueOf(Random.f71941c.f().nextInt(2147418112) + 65536);
            case 19:
                return UUID.randomUUID().toString();
            case 20:
                AddToCartDto.Companion companion8 = AddToCartDto.Companion;
                return new ArrayListSerializer(AddToCartItemDto$$serializer.f44965a);
            case 21:
                AddToCartEventProperties.Companion companion9 = AddToCartEventProperties.Companion;
                CurrencyType[] currencyTypeArrValues = CurrencyType.values();
                currencyTypeArrValues.getClass();
                return new EnumSerializer("com.dynamicyield.sdk.wrapper.core.enums.CurrencyType", currencyTypeArrValues);
            case 22:
                AddToCartEventProperties.Companion companion10 = AddToCartEventProperties.Companion;
                return new ArrayListSerializer(CartInnerItem$$serializer.f26300a);
            case 23:
                AddWishlistItemsDto.Companion companion11 = AddWishlistItemsDto.Companion;
                return new ArrayListSerializer(AddWishlistItemDto$$serializer.f46938a);
            case 24:
                return Unit.f71739a;
            case 25:
                AddressCreationDto.Companion companion12 = AddressCreationDto.Companion;
                return new ArrayListSerializer(PhoneNumberDto$$serializer.f46681a);
            case 26:
                AddressDto.Companion companion13 = AddressDto.Companion;
                return new ArrayListSerializer(PhoneNumberDto$$serializer.f46681a);
            case 27:
                return new ObjectSerializer("com.vuitton.android.presentation.screen.account.addresseditor.AddressEditorRoute.AddressEditorAutocomplete", AddressEditorRoute.AddressEditorAutocomplete.INSTANCE, new Annotation[0]);
            case 28:
                return new ObjectSerializer("com.vuitton.android.presentation.screen.account.addresseditor.AddressEditorRoute.AddressEditorForm", AddressEditorRoute.AddressEditorForm.INSTANCE, new Annotation[0]);
            default:
                AddressesResponseDto.Companion companion14 = AddressesResponseDto.Companion;
                return new ArrayListSerializer(AddressDto$$serializer.f44469a);
        }
    }
}
