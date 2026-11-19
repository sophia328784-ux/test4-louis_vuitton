package defpackage;

import androidx.compose.runtime.SnapshotStateKt;
import com.dynamicyield.sdk.wrapper.core.enums.DayPart;
import com.dynamicyield.sdk.wrapper.core.enums.OrderFulfillment;
import com.dynamicyield.sdk.wrapper.core.models.choose.payload.Branch;
import com.dynamicyield.sdk.wrapper.core.models.choose.response.AssistantResponse;
import com.dynamicyield.sdk.wrapper.core.models.choose.response.AssistantResponse$$serializer;
import com.dynamicyield.sdk.wrapper.core.models.choose.response.CampaignsResponse;
import com.dynamicyield.sdk.wrapper.core.models.choose.response.ChooseResponse;
import com.dynamicyield.sdk.wrapper.core.models.choose.response.ChooseResponse$$serializer;
import com.dynamicyield.sdk.wrapper.core.models.choose.response.SemanticSearchResponse;
import com.dynamicyield.sdk.wrapper.core.models.choose.response.SemanticSearchResponse$$serializer;
import com.dynamicyield.sdk.wrapper.core.models.choose.response.VisualSearchResponse;
import com.dynamicyield.sdk.wrapper.core.models.choose.response.VisualSearchResponse$$serializer;
import com.vuitton.android.data.dto.booking.BookingTypeDto;
import com.vuitton.android.data.dto.careservices.CareServiceDto;
import com.vuitton.android.data.dto.careservices.CareServiceLineDto$$serializer;
import com.vuitton.android.data.dto.careservices.CareServiceListDto;
import com.vuitton.android.data.dto.careservices.CareServiceOriginDto;
import com.vuitton.android.data.dto.careservices.CareServicesDto$$serializer;
import com.vuitton.android.data.dto.careservices.bff.CareServiceContactMethodDto;
import com.vuitton.android.data.dto.careservices.bff.CareServiceCreationDto;
import com.vuitton.android.data.dto.careservices.bff.CareServiceDetailDto;
import com.vuitton.android.data.dto.careservices.bff.CareServiceDetailDto$AssessmentItem$$serializer;
import com.vuitton.android.data.dto.careservices.bff.CareServiceDetailDto$CancellationReason$$serializer;
import com.vuitton.android.data.dto.careservices.bff.CareServiceDetailDto$InformationSection$$serializer;
import com.vuitton.android.data.dto.careservices.bff.CareServiceDetailDto$Step$$serializer;
import com.vuitton.android.data.dto.cart.bff.BundleDto;
import com.vuitton.android.data.dto.cart.bff.CartItemDto$$serializer;
import com.vuitton.android.data.dto.repair.RepairStatusDto;
import com.vuitton.android.data.dto.repair.RepairTypeDto;
import com.vuitton.android.data.repository.CalendarEventsListData;
import com.vuitton.android.presentation.screen.booking.BookingRoutes;
import com.vuitton.foundation.model.domain.model.calendar.CalendarEvent$$serializer;
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
import kotlinx.serialization.internal.StringSerializer;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class lg implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f76025b;

    public /* synthetic */ lg(int i2) {
        this.f76025b = i2;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        switch (this.f76025b) {
            case 0:
                return new ObjectSerializer("com.vuitton.android.presentation.screen.booking.BookingRoutes.Confirmation", BookingRoutes.Confirmation.INSTANCE, new Annotation[0]);
            case 1:
                return new ObjectSerializer("com.vuitton.android.presentation.screen.booking.BookingRoutes.PersonalInfo", BookingRoutes.PersonalInfo.INSTANCE, new Annotation[0]);
            case 2:
                return new ObjectSerializer("com.vuitton.android.presentation.screen.booking.BookingRoutes.Summary", BookingRoutes.Summary.INSTANCE, new Annotation[0]);
            case 3:
                return Unit.f71739a;
            case 4:
                return EnumsKt.a("com.vuitton.android.data.dto.booking.BookingTypeDto", BookingTypeDto.values(), new String[]{"appointment", "experience"}, new Annotation[][]{null, null});
            case 5:
                Branch.Companion companion = Branch.Companion;
                DayPart[] dayPartArrValues = DayPart.values();
                dayPartArrValues.getClass();
                return new EnumSerializer("com.dynamicyield.sdk.wrapper.core.enums.DayPart", dayPartArrValues);
            case 6:
                Branch.Companion companion2 = Branch.Companion;
                OrderFulfillment[] orderFulfillmentArrValues = OrderFulfillment.values();
                orderFulfillmentArrValues.getClass();
                return new EnumSerializer("com.dynamicyield.sdk.wrapper.core.enums.OrderFulfillment", orderFulfillmentArrValues);
            case 7:
                BundleDto.Companion companion3 = BundleDto.Companion;
                return new ArrayListSerializer(CartItemDto$$serializer.f44996a);
            case 8:
                return Unit.f71739a;
            case 9:
                return Unit.f71739a;
            case 10:
                CalendarEventsListData.Companion companion4 = CalendarEventsListData.Companion;
                return new ArrayListSerializer(CalendarEvent$$serializer.f66782a);
            case 11:
                CampaignsResponse.Companion companion5 = CampaignsResponse.Companion;
                ReflectionFactory reflectionFactory = Reflection.f71922a;
                return new SealedClassSerializer("com.dynamicyield.sdk.wrapper.core.models.choose.response.CampaignsResponse", reflectionFactory.b(CampaignsResponse.class), new KClass[]{reflectionFactory.b(AssistantResponse.class), reflectionFactory.b(ChooseResponse.class), reflectionFactory.b(SemanticSearchResponse.class), reflectionFactory.b(VisualSearchResponse.class)}, new KSerializer[]{AssistantResponse$$serializer.f26062a, ChooseResponse$$serializer.f26068a, SemanticSearchResponse$$serializer.f26135a, VisualSearchResponse$$serializer.f26174a}, new Annotation[0]);
            case 12:
                return SnapshotStateKt.g(Boolean.FALSE);
            case 13:
                return SnapshotStateKt.g(Boolean.FALSE);
            case 14:
                return EnumsKt.a("com.vuitton.android.data.dto.careservices.bff.CareServiceContactMethodDto", CareServiceContactMethodDto.values(), new String[]{"email", "phoneCall", "videoCall"}, new Annotation[][]{null, null, null});
            case 15:
                CareServiceCreationDto.Companion companion6 = CareServiceCreationDto.INSTANCE;
                return CareServiceContactMethodDto.INSTANCE.serializer();
            case 16:
                CareServiceCreationDto.Companion companion7 = CareServiceCreationDto.INSTANCE;
                return new ArrayListSerializer(StringSerializer.f75684a);
            case 17:
                CareServiceDetailDto.Companion companion8 = CareServiceDetailDto.INSTANCE;
                return new ArrayListSerializer(CareServiceDetailDto$Step$$serializer.f44934a);
            case 18:
                com.vuitton.android.data.dto.careservices.CareServiceDetailDto.Companion companion9 = com.vuitton.android.data.dto.careservices.CareServiceDetailDto.Companion;
                return RepairTypeDto.INSTANCE.serializer();
            case 19:
                CareServiceDetailDto.Companion companion10 = CareServiceDetailDto.INSTANCE;
                return new ArrayListSerializer(CareServiceDetailDto$CancellationReason$$serializer.f44917a);
            case 20:
                com.vuitton.android.data.dto.careservices.CareServiceDetailDto.Companion companion11 = com.vuitton.android.data.dto.careservices.CareServiceDetailDto.Companion;
                return RepairStatusDto.INSTANCE.serializer();
            case 21:
                CareServiceDetailDto.Companion companion12 = CareServiceDetailDto.INSTANCE;
                return new ArrayListSerializer(CareServiceDetailDto$InformationSection$$serializer.f44925a);
            case 22:
                com.vuitton.android.data.dto.careservices.CareServiceDetailDto.Companion companion13 = com.vuitton.android.data.dto.careservices.CareServiceDetailDto.Companion;
                return CareServiceOriginDto.INSTANCE.serializer();
            case 23:
                com.vuitton.android.data.dto.careservices.CareServiceDetailDto.Companion companion14 = com.vuitton.android.data.dto.careservices.CareServiceDetailDto.Companion;
                return new ArrayListSerializer(CareServiceLineDto$$serializer.f44823a);
            case 24:
                CareServiceDetailDto.Assessment.Companion companion15 = CareServiceDetailDto.Assessment.INSTANCE;
                return new ArrayListSerializer(CareServiceDetailDto$AssessmentItem$$serializer.f44914a);
            case 25:
                CareServiceDetailDto.ShippingInformation.Companion companion16 = CareServiceDetailDto.ShippingInformation.INSTANCE;
                return new ArrayListSerializer(StringSerializer.f75684a);
            case 26:
                CareServiceDto.Companion companion17 = CareServiceDto.Companion;
                return CareServiceOriginDto.INSTANCE.serializer();
            case 27:
                CareServiceDto.Companion companion18 = CareServiceDto.Companion;
                return new ArrayListSerializer(StringSerializer.f75684a);
            case 28:
                CareServiceListDto.Companion companion19 = CareServiceListDto.Companion;
                return new ArrayListSerializer(CareServicesDto$$serializer.f44848a);
            default:
                return EnumsKt.a("com.vuitton.android.data.dto.careservices.CareServiceOriginDto", CareServiceOriginDto.values(), new String[]{"LV App-Form", "LV App-Appointment Call", "LV App-Appointment Video Call", "CSC Call", "CSC Email"}, new Annotation[][]{null, null, null, null, null});
        }
    }
}
