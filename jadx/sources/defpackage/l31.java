package defpackage;

import androidx.compose.material3.TopAppBarDefaults;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.room.TriggerBasedInvalidationTracker;
import com.dynamicyield.sdk.wrapper.core.models.engagment.TrackingData;
import com.dynamicyield.sdk.wrapper.core.models.engagment.TrackingDataEvent;
import com.dynamicyield.sdk.wrapper.core.models.engagment.TrackingDataEvent$$serializer;
import com.squareup.wire.MapProtoAdapter;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoAdapterKt$commonUint32$1;
import com.vuitton.android.data.dto.account.orders.DeliveryStateDto$$serializer;
import com.vuitton.android.data.dto.account.orders.TimelineDto;
import com.vuitton.android.data.dto.account.orders.ValidationDto;
import com.vuitton.android.data.dto.audioguide.TrackDetailDto;
import com.vuitton.android.data.dto.audioguide.TrackDetailDto$CueDto$$serializer;
import com.vuitton.android.data.dto.catalog.thematicplp.ThematicPlpThemesDto;
import com.vuitton.android.data.dto.catalog.thematicplp.ThemeDto$$serializer;
import com.vuitton.android.data.dto.common.AssetDto$$serializer;
import com.vuitton.android.data.dto.common.editorial.EditorialSectionDtoSerializer;
import com.vuitton.android.data.dto.connectivity.common.FaqCategoryDto$$serializer;
import com.vuitton.android.data.dto.connectivity.trunkspeaker.TrunkSpeakerSectionDto;
import com.vuitton.android.data.dto.product.vto.BeautyProductTypeDto;
import com.vuitton.android.data.dto.product.vto.LookDto$$serializer;
import com.vuitton.android.data.dto.product.vto.TryOnProductDto;
import com.vuitton.android.data.dto.product.vto.TryOnProductDto$$serializer;
import com.vuitton.android.data.dto.product.vto.TryOnProductResponseDto;
import com.vuitton.android.data.dto.product.vto.TutorialDto;
import com.vuitton.android.data.dto.product.vto.TutorialSectionDataDto;
import com.vuitton.android.data.dto.product.vto.TutorialSectionDto$$serializer;
import com.vuitton.android.data.dto.travel.TrainTravelDto;
import com.vuitton.android.data.dto.travel.Traveler$$serializer;
import com.vuitton.android.designkit.ui.theme.ThemeKt;
import com.vuitton.android.presentation.screen.search.mocks.TrendingMockKt;
import com.vuitton.android.presentation.screen.search.models.TrendingItemUiModel;
import com.vuitton.android.presentation.screen.thankyou.components.ThankYouScreenKt;
import com.vuitton.android.presentation.screen.thelookimmersivearticle.components.TheLookImmersiveArticleRoutes;
import java.lang.annotation.Annotation;
import kotlin.Lazy;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlinx.serialization.internal.ArrayListSerializer;
import kotlinx.serialization.internal.IntSerializer;
import kotlinx.serialization.internal.ObjectSerializer;
import kotlinx.serialization.internal.StringSerializer;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class l31 implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f75932b;

    public /* synthetic */ l31(int i2) {
        this.f75932b = i2;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        switch (this.f75932b) {
            case 0:
                return SnapshotStateKt.g(Boolean.FALSE);
            case 1:
                float f2 = ThankYouScreenKt.f65243a;
                return Unit.f71739a;
            case 2:
                float f3 = ThankYouScreenKt.f65243a;
                return SnapshotStateKt.g(Boolean.TRUE);
            case 3:
                return new ObjectSerializer("com.vuitton.android.presentation.screen.thelookimmersivearticle.components.TheLookImmersiveArticleRoutes.LookDetail", TheLookImmersiveArticleRoutes.LookDetail.INSTANCE, new Annotation[0]);
            case 4:
                return new ObjectSerializer("com.vuitton.android.presentation.screen.thelookimmersivearticle.components.TheLookImmersiveArticleRoutes.LookList", TheLookImmersiveArticleRoutes.LookList.INSTANCE, new Annotation[0]);
            case 5:
                return Unit.f71739a;
            case 6:
                ThematicPlpThemesDto.Companion companion = ThematicPlpThemesDto.Companion;
                return new ArrayListSerializer(ThemeDto$$serializer.f45136a);
            case 7:
                StaticProvidableCompositionLocal staticProvidableCompositionLocal = ThemeKt.f48435a;
                throw new IllegalStateException("no local theme provided");
            case 8:
                StaticProvidableCompositionLocal staticProvidableCompositionLocal2 = ThemeKt.f48435a;
                throw new IllegalStateException("no local theme provided");
            case 9:
                TimelineDto.Companion companion2 = TimelineDto.Companion;
                return ValidationDto.INSTANCE.serializer();
            case 10:
                TimelineDto.Companion companion3 = TimelineDto.Companion;
                return new ArrayListSerializer(DeliveryStateDto$$serializer.f44354a);
            case 11:
                int i2 = Tombstone$Companion$ADAPTER$1.w;
                ProtoAdapter.Companion companion4 = ProtoAdapter.f43453f;
                ProtoAdapterKt$commonUint32$1 protoAdapterKt$commonUint32$1 = ProtoAdapter.f43455i;
                Thread$Companion$ADAPTER$1 thread$Companion$ADAPTER$1 = Thread.n;
                companion4.getClass();
                protoAdapterKt$commonUint32$1.getClass();
                thread$Companion$ADAPTER$1.getClass();
                return new MapProtoAdapter(protoAdapterKt$commonUint32$1, thread$Companion$ADAPTER$1);
            case 12:
                int i3 = Tombstone$Companion$ADAPTER$1.w;
                ProtoAdapter.Companion companion5 = ProtoAdapter.f43453f;
                ProtoAdapterKt$commonUint32$1 protoAdapterKt$commonUint32$2 = ProtoAdapter.f43455i;
                Thread$Companion$ADAPTER$1 thread$Companion$ADAPTER$2 = Thread.n;
                companion5.getClass();
                protoAdapterKt$commonUint32$2.getClass();
                thread$Companion$ADAPTER$2.getClass();
                return new MapProtoAdapter(protoAdapterKt$commonUint32$2, thread$Companion$ADAPTER$2);
            case 13:
                float f4 = TopAppBarDefaults.f7433a;
                return Boolean.TRUE;
            case 14:
                TrackDetailDto.Companion companion6 = TrackDetailDto.INSTANCE;
                return new ArrayListSerializer(EditorialSectionDtoSerializer.f45347a);
            case 15:
                TrackDetailDto.Companion companion7 = TrackDetailDto.INSTANCE;
                return new ArrayListSerializer(TrackDetailDto$CueDto$$serializer.f44534a);
            case 16:
                TrackingData.Companion companion8 = TrackingData.Companion;
                return new ArrayListSerializer(TrackingDataEvent$$serializer.f26283a);
            case 17:
                TrackingDataEvent.Companion companion9 = TrackingDataEvent.Companion;
                return new ArrayListSerializer(IntSerializer.f75624a);
            case 18:
                TrainTravelDto.Companion companion10 = TrainTravelDto.INSTANCE;
                return new ArrayListSerializer(Traveler$$serializer.f46931a);
            case 19:
                Lazy lazy = TrendingMockKt.f64238a;
                return new TrendingItemUiModel("Sac FW 24", "Sac FW 24");
            case 20:
                TriggerBasedInvalidationTracker.Companion companion11 = TriggerBasedInvalidationTracker.l;
                return Boolean.TRUE;
            case 21:
                TrunkSpeakerSectionDto.Companion companion12 = TrunkSpeakerSectionDto.INSTANCE;
                return new ArrayListSerializer(FaqCategoryDto$$serializer.f45564a);
            case 22:
                TrunkSpeakerSectionDto.Companion companion13 = TrunkSpeakerSectionDto.INSTANCE;
                return new ArrayListSerializer(StringSerializer.f75684a);
            case 23:
                TryOnProductDto.Companion companion14 = TryOnProductDto.Companion;
                return BeautyProductTypeDto.INSTANCE.serializer();
            case 24:
                TryOnProductDto.Companion companion15 = TryOnProductDto.Companion;
                return BeautyProductTypeDto.INSTANCE.serializer();
            case 25:
                TryOnProductDto.Companion companion16 = TryOnProductDto.Companion;
                return new ArrayListSerializer(LookDto$$serializer.f46533a);
            case 26:
                TryOnProductResponseDto.Companion companion17 = TryOnProductResponseDto.Companion;
                return new ArrayListSerializer(TryOnProductDto$$serializer.f46565a);
            case 27:
                return Unit.f71739a;
            case 28:
                TutorialDto.Companion companion18 = TutorialDto.Companion;
                return new ArrayListSerializer(TutorialSectionDto$$serializer.f46587a);
            default:
                TutorialSectionDataDto.AssetListSectionDto.Companion companion19 = TutorialSectionDataDto.AssetListSectionDto.Companion;
                return new ArrayListSerializer(AssetDto$$serializer.f45238a);
        }
    }
}
