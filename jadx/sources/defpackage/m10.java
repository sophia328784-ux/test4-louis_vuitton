package defpackage;

import androidx.compose.runtime.DynamicProvidableCompositionLocal;
import androidx.compose.runtime.HostDefaultProviderKt;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import coil3.disk.DiskCache;
import coil3.disk.UtilsKt;
import com.dynamicyield.sdk.wrapper.core.models.event.IdentifyUserProperties;
import com.dynamicyield.sdk.wrapper.core.models.event.SecondaryIdentifier$$serializer;
import com.vuitton.android.data.dto.common.AssetDto$$serializer;
import com.vuitton.android.data.dto.common.IconDto;
import com.vuitton.android.data.dto.connectivity.common.TutorialDto$$serializer;
import com.vuitton.android.data.dto.connectivity.horizon.HorizonSpeakerSectionDto;
import com.vuitton.android.data.dto.immersivearticle.ImmersiveArticleAssetDataDto;
import com.vuitton.android.data.dto.immersivearticle.ImmersiveArticleAssetDto;
import com.vuitton.android.data.dto.immersivearticle.ImmersiveArticleAssetDto$$serializer;
import com.vuitton.android.data.dto.immersivearticle.ImmersiveArticleCarouselDataDto;
import com.vuitton.android.data.dto.immersivearticle.ImmersiveArticleCtaDataDto;
import com.vuitton.android.data.dto.immersivearticle.ImmersiveArticleCtaDto$$serializer;
import com.vuitton.android.data.dto.immersivearticle.ImmersiveArticleCtaListDataDto;
import com.vuitton.android.data.dto.immersivearticle.ImmersiveArticleEventDataDto;
import com.vuitton.android.data.dto.immersivearticle.ImmersiveArticleExpansionDataDto;
import com.vuitton.android.data.dto.immersivearticle.ImmersiveArticleExpansionPanelDto$$serializer;
import com.vuitton.android.data.dto.immersivearticle.ImmersiveArticleFashionShowDataDto;
import com.vuitton.android.data.dto.immersivearticle.ImmersiveArticleFontDto;
import com.vuitton.android.data.dto.immersivearticle.ImmersiveArticleLookCardDto;
import com.vuitton.android.data.dto.immersivearticle.ImmersiveArticleLookCardDto$$serializer;
import com.vuitton.android.data.dto.immersivearticle.ImmersiveArticlePageDto;
import com.vuitton.android.data.dto.immersivearticle.ImmersiveArticleProductDisplayStyleDto;
import com.vuitton.android.data.dto.immersivearticle.ImmersiveArticleProductImageStyleDto;
import com.vuitton.android.data.dto.immersivearticle.ImmersiveArticleSectionsDtoSerializer;
import com.vuitton.android.data.dto.immersivearticle.ImmersiveArticleSizeCardDto;
import com.vuitton.android.designkit.ui.theme.IconKt;
import com.vuitton.android.presentation.screen.immersivearticle.components.ImmersiveArticleContentKt;
import java.lang.annotation.Annotation;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.internal.MainDispatcherLoader;
import kotlinx.coroutines.scheduling.DefaultScheduler;
import kotlinx.serialization.internal.ArrayListSerializer;
import kotlinx.serialization.internal.EnumsKt;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class m10 implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f76146b;

    public /* synthetic */ m10(int i2) {
        this.f76146b = i2;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        switch (this.f76146b) {
            case 0:
                HorizonSpeakerSectionDto.Companion companion = HorizonSpeakerSectionDto.Companion;
                return new ArrayListSerializer(TutorialDto$$serializer.f45574a);
            case 1:
                DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal = HostDefaultProviderKt.f8003a;
                throw new IllegalStateException("CompositionLocal LocalHostDefaultProvider not present");
            case 2:
                return EnumsKt.a("com.vuitton.android.data.dto.common.IconDto", IconDto.values(), new String[]{"aiCompanion"}, new Annotation[][]{null});
            case 3:
                StaticProvidableCompositionLocal staticProvidableCompositionLocal = IconKt.f48346a;
                throw new IllegalStateException("no local LV icons provided");
            case 4:
                IdentifyUserProperties.Companion companion2 = IdentifyUserProperties.Companion;
                return new ArrayListSerializer(SecondaryIdentifier$$serializer.f26358a);
            case 5:
                DefaultScheduler defaultScheduler = Dispatchers.f74659a;
                return MainDispatcherLoader.f75131a.r();
            case 6:
                return (DiskCache) UtilsKt.f21418a.getF71699b();
            case 7:
                ImmersiveArticleAssetDataDto.Companion companion3 = ImmersiveArticleAssetDataDto.Companion;
                return ImmersiveArticleFontDto.INSTANCE.serializer();
            case 8:
                ImmersiveArticleAssetDataDto.Companion companion4 = ImmersiveArticleAssetDataDto.Companion;
                return ImmersiveArticleFontDto.INSTANCE.serializer();
            case 9:
                ImmersiveArticleAssetDataDto.Companion companion5 = ImmersiveArticleAssetDataDto.Companion;
                return ImmersiveArticleSizeCardDto.INSTANCE.serializer();
            case 10:
                ImmersiveArticleAssetDto.Companion companion6 = ImmersiveArticleAssetDto.Companion;
                return ImmersiveArticleSizeCardDto.INSTANCE.serializer();
            case 11:
                ImmersiveArticleCarouselDataDto.Companion companion7 = ImmersiveArticleCarouselDataDto.Companion;
                return ImmersiveArticleSizeCardDto.INSTANCE.serializer();
            case 12:
                ImmersiveArticleCarouselDataDto.Companion companion8 = ImmersiveArticleCarouselDataDto.Companion;
                return new ArrayListSerializer(ImmersiveArticleAssetDto$$serializer.f45778a);
            case 13:
                float f2 = ImmersiveArticleContentKt.f58386a;
                return SnapshotStateKt.g(Boolean.TRUE);
            case 14:
                float f3 = ImmersiveArticleContentKt.f58386a;
                return SnapshotStateKt.g(Boolean.TRUE);
            case 15:
                float f4 = ImmersiveArticleContentKt.f58386a;
                return SnapshotStateKt.g(Boolean.FALSE);
            case 16:
                ImmersiveArticleCtaDataDto.Companion companion9 = ImmersiveArticleCtaDataDto.Companion;
                return ImmersiveArticleFontDto.INSTANCE.serializer();
            case 17:
                ImmersiveArticleCtaDataDto.Companion companion10 = ImmersiveArticleCtaDataDto.Companion;
                return ImmersiveArticleFontDto.INSTANCE.serializer();
            case 18:
                ImmersiveArticleCtaDataDto.Companion companion11 = ImmersiveArticleCtaDataDto.Companion;
                return ImmersiveArticleSizeCardDto.INSTANCE.serializer();
            case 19:
                ImmersiveArticleCtaDataDto.Companion companion12 = ImmersiveArticleCtaDataDto.Companion;
                return new ArrayListSerializer(ImmersiveArticleLookCardDto$$serializer.f45869a);
            case 20:
                ImmersiveArticleCtaListDataDto.Companion companion13 = ImmersiveArticleCtaListDataDto.Companion;
                return new ArrayListSerializer(ImmersiveArticleCtaDto$$serializer.f45816a);
            case 21:
                ImmersiveArticleEventDataDto.Companion companion14 = ImmersiveArticleEventDataDto.Companion;
                return ImmersiveArticleSizeCardDto.INSTANCE.serializer();
            case 22:
                ImmersiveArticleExpansionDataDto.Companion companion15 = ImmersiveArticleExpansionDataDto.Companion;
                return new ArrayListSerializer(ImmersiveArticleExpansionPanelDto$$serializer.f45848a);
            case 23:
                ImmersiveArticleFashionShowDataDto.Companion companion16 = ImmersiveArticleFashionShowDataDto.Companion;
                return ImmersiveArticleSizeCardDto.INSTANCE.serializer();
            case 24:
                return Unit.f71739a;
            case 25:
                return EnumsKt.a("com.vuitton.android.data.dto.immersivearticle.ImmersiveArticleFontDto", ImmersiveArticleFontDto.values(), new String[]{"default", "hanley-pro", "anglaise-f", "cond"}, new Annotation[][]{null, null, null, null});
            case 26:
                ImmersiveArticleLookCardDto.Companion companion17 = ImmersiveArticleLookCardDto.Companion;
                return new ArrayListSerializer(AssetDto$$serializer.f45238a);
            case 27:
                ImmersiveArticlePageDto.Companion companion18 = ImmersiveArticlePageDto.INSTANCE;
                return new ArrayListSerializer(ImmersiveArticleSectionsDtoSerializer.f45909c);
            case 28:
                return EnumsKt.a("com.vuitton.android.data.dto.immersivearticle.ImmersiveArticleProductDisplayStyleDto", ImmersiveArticleProductDisplayStyleDto.values(), new String[]{"full-details", "image-only"}, new Annotation[][]{null, null});
            default:
                return EnumsKt.a("com.vuitton.android.data.dto.immersivearticle.ImmersiveArticleProductImageStyleDto", ImmersiveArticleProductImageStyleDto.values(), new String[]{"regular", "marie-louise"}, new Annotation[][]{null, null});
        }
    }
}
