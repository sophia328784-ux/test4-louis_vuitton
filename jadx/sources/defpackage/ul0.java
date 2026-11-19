package defpackage;

import androidx.compose.foundation.text.selection.PlatformSelectionBehaviors_androidKt;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import com.vuitton.android.data.dto.booking.BookingAdditionalDto$$serializer;
import com.vuitton.android.data.dto.booking.BookingInfoDto$$serializer;
import com.vuitton.android.data.dto.booking.BookingTypeDto;
import com.vuitton.android.data.dto.booking.PreBookDto;
import com.vuitton.android.data.dto.booking.PreBookDto$$serializer;
import com.vuitton.android.data.dto.booking.PreBookSummaryDto;
import com.vuitton.android.data.dto.common.editorial.EditorialSectionDtoSerializer;
import com.vuitton.android.data.dto.config.cache.PersonalisationConfigCache;
import com.vuitton.android.data.dto.config.cache.RegionCache;
import com.vuitton.android.data.dto.distantrepairs.AppointmentTypeDto;
import com.vuitton.android.data.dto.distantrepairs.PrebookAppointmentDtoRequest;
import com.vuitton.android.data.dto.distantrepairs.PrebookContextDto;
import com.vuitton.android.data.dto.personalselections.PersonalSelectionsDetailDto;
import com.vuitton.android.data.dto.personalselections.PersonalSelectionsDto;
import com.vuitton.android.data.dto.personalselections.PersonalSharingDto;
import com.vuitton.android.data.dto.personalselections.PersonalSharingDto$$serializer;
import com.vuitton.android.data.dto.personalselections.SelectionAssetDto$$serializer;
import com.vuitton.android.data.dto.personalselections.SelectionProductDto$$serializer;
import com.vuitton.android.data.dto.personalselections.SelectionTypeDto;
import com.vuitton.android.data.dto.portal.PortalDto;
import com.vuitton.android.data.dto.portal.SlideDtoSerializer;
import com.vuitton.android.presentation.screen.pdp.PdpActivity;
import com.vuitton.android.presentation.screen.pdp.PdpRoutes;
import com.vuitton.android.presentation.screen.pdp.models.tracking.PdpTrackerEntryPointKt;
import com.vuitton.android.presentation.screen.personalselections.PersonalSelectionsRoute;
import com.vuitton.android.presentation.screen.personalselections.detail.curationadvisor.PersonalSelectionDetailRoutes;
import java.lang.annotation.Annotation;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.scheduling.DefaultIoScheduler;
import kotlinx.coroutines.scheduling.DefaultScheduler;
import kotlinx.serialization.internal.ArrayListSerializer;
import kotlinx.serialization.internal.ObjectSerializer;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class ul0 implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f80349b;

    public /* synthetic */ ul0(int i2) {
        this.f80349b = i2;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        switch (this.f80349b) {
            case 0:
                return Unit.f71739a;
            case 1:
                return Unit.f71739a;
            case 2:
                return Unit.f71739a;
            case 3:
                PdpActivity.Companion companion = PdpActivity.D;
                return Unit.f71739a;
            case 4:
                return new ObjectSerializer("com.vuitton.android.presentation.screen.pdp.PdpRoutes.ContextualSize", PdpRoutes.ContextualSize.INSTANCE, new Annotation[0]);
            case 5:
                return new ObjectSerializer("com.vuitton.android.presentation.screen.pdp.PdpRoutes.Pdp", PdpRoutes.Pdp.INSTANCE, new Annotation[0]);
            case 6:
                return Unit.f71739a;
            case 7:
                StaticProvidableCompositionLocal staticProvidableCompositionLocal = PdpTrackerEntryPointKt.f61588a;
                throw new IllegalStateException("no local PdpTracker provided");
            case 8:
                return Unit.f71739a;
            case 9:
                return new ObjectSerializer("com.vuitton.android.presentation.screen.personalselections.detail.curationadvisor.PersonalSelectionDetailRoutes.Detail", PersonalSelectionDetailRoutes.Detail.INSTANCE, new Annotation[0]);
            case 10:
                return new ObjectSerializer("com.vuitton.android.presentation.screen.personalselections.detail.curationadvisor.PersonalSelectionDetailRoutes.Look", PersonalSelectionDetailRoutes.Look.INSTANCE, new Annotation[0]);
            case 11:
                PersonalSelectionsDetailDto.Companion companion2 = PersonalSelectionsDetailDto.Companion;
                return SelectionTypeDto.INSTANCE.serializer();
            case 12:
                PersonalSelectionsDetailDto.Companion companion3 = PersonalSelectionsDetailDto.Companion;
                return new ArrayListSerializer(SelectionAssetDto$$serializer.f46337a);
            case 13:
                PersonalSelectionsDetailDto.Companion companion4 = PersonalSelectionsDetailDto.Companion;
                return new ArrayListSerializer(SelectionProductDto$$serializer.f46341a);
            case 14:
                PersonalSelectionsDetailDto.Companion companion5 = PersonalSelectionsDetailDto.Companion;
                return new ArrayListSerializer(EditorialSectionDtoSerializer.f45347a);
            case 15:
                PersonalSelectionsDto.Companion companion6 = PersonalSelectionsDto.Companion;
                return new ArrayListSerializer(PersonalSharingDto$$serializer.f46333a);
            case 16:
                PersonalSelectionsDto.Companion companion7 = PersonalSelectionsDto.Companion;
                return new ArrayListSerializer(PersonalSharingDto$$serializer.f46333a);
            case 17:
                return Unit.f71739a;
            case 18:
                return Unit.f71739a;
            case 19:
                return new ObjectSerializer("com.vuitton.android.presentation.screen.personalselections.PersonalSelectionsRoute.List", PersonalSelectionsRoute.List.INSTANCE, new Annotation[0]);
            case 20:
                PersonalSharingDto.Companion companion8 = PersonalSharingDto.Companion;
                return SelectionTypeDto.INSTANCE.serializer();
            case 21:
                PersonalisationConfigCache.Companion companion9 = PersonalisationConfigCache.Companion;
                return RegionCache.INSTANCE.serializer();
            case 22:
                StaticProvidableCompositionLocal staticProvidableCompositionLocal2 = PlatformSelectionBehaviors_androidKt.f6384a;
                DefaultScheduler defaultScheduler = Dispatchers.f74659a;
                return DefaultIoScheduler.f75161b;
            case 23:
                PortalDto.Companion companion10 = PortalDto.INSTANCE;
                return new ArrayListSerializer(SlideDtoSerializer.f46415c);
            case 24:
                PreBookDto.Companion companion11 = PreBookDto.Companion;
                return BookingTypeDto.INSTANCE.serializer();
            case 25:
                PreBookDto.Companion companion12 = PreBookDto.Companion;
                return new ArrayListSerializer(BookingInfoDto$$serializer.f44725a);
            case 26:
                PreBookSummaryDto.Companion companion13 = PreBookSummaryDto.Companion;
                return new ArrayListSerializer(PreBookDto$$serializer.f44758a);
            case 27:
                PreBookSummaryDto.Companion companion14 = PreBookSummaryDto.Companion;
                return new ArrayListSerializer(BookingAdditionalDto$$serializer.f44628a);
            case 28:
                PrebookAppointmentDtoRequest.Companion companion15 = PrebookAppointmentDtoRequest.Companion;
                return AppointmentTypeDto.INSTANCE.serializer();
            default:
                PrebookAppointmentDtoRequest.Companion companion16 = PrebookAppointmentDtoRequest.Companion;
                return PrebookContextDto.INSTANCE.serializer();
        }
    }
}
