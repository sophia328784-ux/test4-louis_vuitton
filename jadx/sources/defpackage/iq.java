package defpackage;

import androidx.compose.foundation.layout.PaddingValuesImpl;
import androidx.compose.material3.DateInputKt;
import androidx.compose.material3.DatePickerKt;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.input.TextFieldValue;
import com.dynamicyield.sdk.wrapper.core.enums.ChoiceType;
import com.dynamicyield.sdk.wrapper.core.enums.DeviceType;
import com.dynamicyield.sdk.wrapper.core.models.choose.response.CustomChoice;
import com.dynamicyield.sdk.wrapper.core.models.choose.response.CustomVariation$$serializer;
import com.dynamicyield.sdk.wrapper.core.models.common.payload.Device;
import com.vuitton.android.data.dto.account.orders.DeliveryStateDto;
import com.vuitton.android.data.dto.account.orders.StateDto;
import com.vuitton.android.data.dto.authentication.oauth.CookieExchangeEntryDto$$serializer;
import com.vuitton.android.data.dto.authentication.oauth.CookieExchangeRequestDto;
import com.vuitton.android.data.dto.catalog.thematicplp.CurrentThemeDto;
import com.vuitton.android.data.dto.catalog.thematicplp.ThemeItemDto$$serializer;
import com.vuitton.android.data.dto.dispatch.DispatchContinentDto;
import com.vuitton.android.data.dto.dispatch.InAppDispatchDto$$serializer;
import com.vuitton.android.data.dto.linktype.ContributionLinkProductListDto;
import com.vuitton.android.data.dto.linktype.ContributionLinkWishlistSharedDto;
import com.vuitton.android.data.dto.pdp.CustomizationConfigurationDto;
import com.vuitton.android.data.dto.pdp.CustomizationInformationDto$$serializer;
import com.vuitton.android.data.dto.pdp.CustomizationTypeDto;
import com.vuitton.android.designkit.ui.theme.DimensKt;
import com.vuitton.android.presentation.screen.pdp.contextualsizing.models.ContextualSizingTrackerKt;
import com.vuitton.core.infrastructure.data.forms.models.CivilityDto$$serializer;
import com.vuitton.core.infrastructure.data.forms.models.DispatchCivilityDto;
import com.vuitton.foundation.model.domain.model.contributionlink.ContributionLink;
import com.vuitton.foundation.model.domain.model.product.SkuId$$serializer;
import com.vuitton.foundation.model.domain.model.product.universal.CustomizationId;
import com.vuitton.foundation.model.domain.model.product.universal.CustomizationIdType;
import java.lang.annotation.Annotation;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.serialization.internal.ArrayListSerializer;
import kotlinx.serialization.internal.EnumSerializer;
import kotlinx.serialization.internal.EnumsKt;
import kotlinx.serialization.internal.ObjectSerializer;
import kotlinx.serialization.internal.StringSerializer;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class iq implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f71187b;

    public /* synthetic */ iq(int i2) {
        this.f71187b = i2;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        switch (this.f71187b) {
            case 0:
                StaticProvidableCompositionLocal staticProvidableCompositionLocal = ContextualSizingTrackerKt.f61527a;
                throw new IllegalStateException("no local ContextualSizingTracker provided");
            case 1:
                return new ObjectSerializer("com.vuitton.foundation.model.domain.model.contributionlink.ContributionLink.AICompanion", ContributionLink.AICompanion.INSTANCE, new Annotation[0]);
            case 2:
                return new ObjectSerializer("com.vuitton.foundation.model.domain.model.contributionlink.ContributionLink.CareServiceCreate", ContributionLink.CareServiceCreate.INSTANCE, new Annotation[0]);
            case 3:
                return new ObjectSerializer("com.vuitton.foundation.model.domain.model.contributionlink.ContributionLink.MyLv", ContributionLink.MyLv.INSTANCE, new Annotation[0]);
            case 4:
                ContributionLink.ProductList.Companion companion = ContributionLink.ProductList.INSTANCE;
                return new ArrayListSerializer(SkuId$$serializer.f67934a);
            case 5:
                return new ObjectSerializer("com.vuitton.foundation.model.domain.model.contributionlink.ContributionLink.PushNotification", ContributionLink.PushNotification.INSTANCE, new Annotation[0]);
            case 6:
                return new ObjectSerializer("com.vuitton.foundation.model.domain.model.contributionlink.ContributionLink.ShadeFinder", ContributionLink.ShadeFinder.INSTANCE, new Annotation[0]);
            case 7:
                return new ObjectSerializer("com.vuitton.foundation.model.domain.model.contributionlink.ContributionLink.Unknown", ContributionLink.Unknown.INSTANCE, new Annotation[0]);
            case 8:
                return new ObjectSerializer("com.vuitton.foundation.model.domain.model.contributionlink.ContributionLink.Wishlist", ContributionLink.Wishlist.INSTANCE, new Annotation[0]);
            case 9:
                ContributionLink.WishlistShared.Companion companion2 = ContributionLink.WishlistShared.INSTANCE;
                return new ArrayListSerializer(SkuId$$serializer.f67934a);
            case 10:
                ContributionLinkProductListDto.Data.Companion companion3 = ContributionLinkProductListDto.Data.Companion;
                return new ArrayListSerializer(StringSerializer.f75684a);
            case 11:
                ContributionLinkWishlistSharedDto.Data.Companion companion4 = ContributionLinkWishlistSharedDto.Data.Companion;
                return new ArrayListSerializer(StringSerializer.f75684a);
            case 12:
                CookieExchangeRequestDto.Companion companion5 = CookieExchangeRequestDto.Companion;
                return new ArrayListSerializer(CookieExchangeEntryDto$$serializer.f44570a);
            case 13:
                CurrentThemeDto.Companion companion6 = CurrentThemeDto.Companion;
                return new ArrayListSerializer(ThemeItemDto$$serializer.f45139a);
            case 14:
                CustomChoice.Companion companion7 = CustomChoice.Companion;
                ChoiceType[] choiceTypeArrValues = ChoiceType.values();
                choiceTypeArrValues.getClass();
                return new EnumSerializer("com.dynamicyield.sdk.wrapper.core.enums.ChoiceType", choiceTypeArrValues);
            case 15:
                CustomChoice.Companion companion8 = CustomChoice.Companion;
                return new ArrayListSerializer(CustomVariation$$serializer.f26081a);
            case 16:
                CustomChoice.Companion companion9 = CustomChoice.Companion;
                return new ArrayListSerializer(StringSerializer.f75684a);
            case 17:
                CustomizationConfigurationDto.Companion companion10 = CustomizationConfigurationDto.INSTANCE;
                return CustomizationTypeDto.INSTANCE.serializer();
            case 18:
                CustomizationConfigurationDto.Companion companion11 = CustomizationConfigurationDto.INSTANCE;
                return new ArrayListSerializer(CustomizationInformationDto$$serializer.f46189a);
            case 19:
                CustomizationId.Companion companion12 = CustomizationId.INSTANCE;
                CustomizationIdType[] customizationIdTypeArrValues = CustomizationIdType.values();
                customizationIdTypeArrValues.getClass();
                return new EnumSerializer("com.vuitton.foundation.model.domain.model.product.universal.CustomizationIdType", customizationIdTypeArrValues);
            case 20:
                return EnumsKt.a("com.vuitton.android.data.dto.pdp.CustomizationTypeDto", CustomizationTypeDto.values(), new String[]{"threeKit", "base64"}, new Annotation[][]{null, null});
            case 21:
                PaddingValuesImpl paddingValuesImpl = DateInputKt.f6732a;
                return SnapshotStateKt.g(new TextFieldValue((String) null, 0L, (TextRange) null, 7, (DefaultConstructorMarker) null));
            case 22:
                float f2 = DatePickerKt.f6780a;
                return SnapshotStateKt.g(Boolean.FALSE);
            case 23:
                return Float.valueOf(Call.Parameters.DEFAULT_CAMERA_ZOOM);
            case 24:
                return Float.valueOf(1.0f);
            case 25:
                DeliveryStateDto.Companion companion13 = DeliveryStateDto.Companion;
                return StateDto.INSTANCE.serializer();
            case 26:
                Device.Companion companion14 = Device.Companion;
                DeviceType[] deviceTypeArrValues = DeviceType.values();
                deviceTypeArrValues.getClass();
                return new EnumSerializer("com.dynamicyield.sdk.wrapper.core.enums.DeviceType", deviceTypeArrValues);
            case 27:
                StaticProvidableCompositionLocal staticProvidableCompositionLocal2 = DimensKt.f48341a;
                throw new IllegalStateException("no local LV dimens provided");
            case 28:
                DispatchCivilityDto.Companion companion15 = DispatchCivilityDto.Companion;
                return new ArrayListSerializer(CivilityDto$$serializer.f66040a);
            default:
                DispatchContinentDto.Companion companion16 = DispatchContinentDto.INSTANCE;
                return new ArrayListSerializer(InAppDispatchDto$$serializer.f45696a);
        }
    }
}
