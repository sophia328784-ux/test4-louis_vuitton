package defpackage;

import androidx.compose.material3.AlertDialogKt;
import androidx.compose.material3.AppBarKt;
import androidx.compose.material3.DefaultBasicAlertDialogOverride;
import androidx.compose.material3.DefaultSingleRowTopAppBarOverride;
import androidx.compose.material3.DefaultTwoRowsTopAppBarOverride;
import androidx.compose.material3.TopAppBarState;
import androidx.compose.runtime.DynamicProvidableCompositionLocal;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import com.dynamicyield.sdk.wrapper.core.enums.CurrencyType;
import com.dynamicyield.sdk.wrapper.core.models.event.ApplicationEventProperties;
import com.dynamicyield.sdk.wrapper.core.models.event.CartInnerItem$$serializer;
import com.vuitton.android.data.dto.common.AssetImageDto;
import com.vuitton.android.data.dto.common.ScaleDto;
import com.vuitton.android.data.dto.common.editorial.AlgorithmTypeDto;
import com.vuitton.android.data.dto.common.editorial.AssetLayoutDto;
import com.vuitton.android.data.dto.config.AbTestDto$$serializer;
import com.vuitton.android.data.dto.config.AppConfigDto;
import com.vuitton.android.data.dto.config.UrlCatchingConfigDto$$serializer;
import com.vuitton.android.data.dto.config.cache.AbTestCache$$serializer;
import com.vuitton.android.data.dto.config.cache.AppConfigCache;
import com.vuitton.android.data.dto.config.cache.AssetVideoCache;
import com.vuitton.android.data.dto.config.cache.LiveVideoStatusCache;
import com.vuitton.android.data.dto.config.cache.UrlCatchingConfigCache$$serializer;
import com.vuitton.android.data.dto.distantrepairs.AppointmentAvailabilitiesDtoResponse;
import com.vuitton.android.data.dto.distantrepairs.AppointmentTypeDto;
import com.vuitton.android.data.dto.distantrepairs.StoreSlotInfoDto$$serializer;
import com.vuitton.android.data.dto.osa.twist.AppointmentItemDto;
import com.vuitton.android.data.dto.osa.twist.AppointmentItemDto$$serializer;
import com.vuitton.android.data.dto.osa.twist.AppointmentsDto;
import com.vuitton.android.designkit.ui.theme.AnimationKt;
import com.vuitton.android.presentation.screen.distantrepairs.assessment.components.AssessmentRoutes;
import com.vuitton.android.presentation.tracking.AppsFlyerTrackerEntryPointKt;
import java.lang.annotation.Annotation;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlinx.serialization.internal.ArrayListSerializer;
import kotlinx.serialization.internal.EnumSerializer;
import kotlinx.serialization.internal.EnumsKt;
import kotlinx.serialization.internal.ObjectSerializer;
import kotlinx.serialization.internal.StringSerializer;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class g5 implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f69297b;

    public /* synthetic */ g5(int i2) {
        this.f69297b = i2;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        switch (this.f69297b) {
            case 0:
                float f2 = AlertDialogKt.f6549a;
                return DefaultBasicAlertDialogOverride.f6889a;
            case 1:
                return EnumsKt.a("com.vuitton.android.data.dto.common.editorial.AlgorithmTypeDto", AlgorithmTypeDto.values(), new String[]{"dynamicYield", "mostPurchasedWith", "lastViewedProducts", "skus"}, new Annotation[][]{null, null, null, null});
            case 2:
                StaticProvidableCompositionLocal staticProvidableCompositionLocal = AnimationKt.f48330a;
                throw new IllegalStateException("no local LV animations provided");
            case 3:
                return Unit.f71739a;
            case 4:
                DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal = AppBarKt.f6561a;
                return new TopAppBarState(-3.4028235E38f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM);
            case 5:
                DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal2 = AppBarKt.f6561a;
                return DefaultSingleRowTopAppBarOverride.f6891a;
            case 6:
                DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal3 = AppBarKt.f6561a;
                return DefaultTwoRowsTopAppBarOverride.f6898a;
            case 7:
                AppConfigCache.Companion companion = AppConfigCache.Companion;
                return new ArrayListSerializer(AbTestCache$$serializer.f45462a);
            case 8:
                AppConfigCache.Companion companion2 = AppConfigCache.Companion;
                return new ArrayListSerializer(StringSerializer.f75684a);
            case 9:
                AppConfigCache.Companion companion3 = AppConfigCache.Companion;
                return new ArrayListSerializer(StringSerializer.f75684a);
            case 10:
                AppConfigCache.Companion companion4 = AppConfigCache.Companion;
                return new ArrayListSerializer(UrlCatchingConfigCache$$serializer.f45538a);
            case 11:
                AppConfigDto.Companion companion5 = AppConfigDto.INSTANCE;
                return new ArrayListSerializer(AbTestDto$$serializer.f45377a);
            case 12:
                AppConfigDto.Companion companion6 = AppConfigDto.INSTANCE;
                return new ArrayListSerializer(StringSerializer.f75684a);
            case 13:
                AppConfigDto.Companion companion7 = AppConfigDto.INSTANCE;
                return new ArrayListSerializer(UrlCatchingConfigDto$$serializer.f45443a);
            case 14:
                AppConfigDto.Companion companion8 = AppConfigDto.INSTANCE;
                return new ArrayListSerializer(StringSerializer.f75684a);
            case 15:
                ApplicationEventProperties.Companion companion9 = ApplicationEventProperties.Companion;
                CurrencyType[] currencyTypeArrValues = CurrencyType.values();
                currencyTypeArrValues.getClass();
                return new EnumSerializer("com.dynamicyield.sdk.wrapper.core.enums.CurrencyType", currencyTypeArrValues);
            case 16:
                ApplicationEventProperties.Companion companion10 = ApplicationEventProperties.Companion;
                return new ArrayListSerializer(CartInnerItem$$serializer.f26300a);
            case 17:
                return Unit.f71739a;
            case 18:
                AppointmentAvailabilitiesDtoResponse.Companion companion11 = AppointmentAvailabilitiesDtoResponse.Companion;
                return new ArrayListSerializer(StringSerializer.f75684a);
            case 19:
                AppointmentAvailabilitiesDtoResponse.Companion companion12 = AppointmentAvailabilitiesDtoResponse.Companion;
                return new ArrayListSerializer(StoreSlotInfoDto$$serializer.f45737a);
            case 20:
                AppointmentItemDto.Companion companion13 = AppointmentItemDto.Companion;
                return AppointmentTypeDto.INSTANCE.serializer();
            case 21:
                return EnumsKt.a("com.vuitton.android.data.dto.distantrepairs.AppointmentTypeDto", AppointmentTypeDto.values(), new String[]{"inStore", "distant"}, new Annotation[][]{null, null});
            case 22:
                AppointmentsDto.Companion companion14 = AppointmentsDto.Companion;
                return new ArrayListSerializer(AppointmentItemDto$$serializer.f46144a);
            case 23:
                AppointmentsDto.Companion companion15 = AppointmentsDto.Companion;
                return new ArrayListSerializer(AppointmentItemDto$$serializer.f46144a);
            case 24:
                StaticProvidableCompositionLocal staticProvidableCompositionLocal2 = AppsFlyerTrackerEntryPointKt.f65808a;
                throw new IllegalStateException("no local AppsFlyerUiTracker provided");
            case 25:
                return new ObjectSerializer("com.vuitton.android.presentation.screen.distantrepairs.assessment.components.AssessmentRoutes.Confirmation", AssessmentRoutes.Confirmation.INSTANCE, new Annotation[0]);
            case 26:
                return new ObjectSerializer("com.vuitton.android.presentation.screen.distantrepairs.assessment.components.AssessmentRoutes.Form", AssessmentRoutes.Form.INSTANCE, new Annotation[0]);
            case 27:
                AssetImageDto.Companion companion16 = AssetImageDto.INSTANCE;
                return ScaleDto.INSTANCE.serializer();
            case 28:
                return EnumsKt.a("com.vuitton.android.data.dto.common.editorial.AssetLayoutDto", AssetLayoutDto.values(), new String[]{"fullWidth", "marieLouiseCentered", "marieLouiseLeft"}, new Annotation[][]{null, null, null});
            default:
                AssetVideoCache.Companion companion17 = AssetVideoCache.Companion;
                return LiveVideoStatusCache.INSTANCE.serializer();
        }
    }
}
