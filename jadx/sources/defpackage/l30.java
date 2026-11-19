package defpackage;

import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.runtime.tooling.InspectionTablesKt;
import com.dynamicyield.sdk.wrapper.core.enums.EngagementType;
import com.dynamicyield.sdk.wrapper.core.models.engagment.ImpressionEngagement;
import com.dynamicyield.sdk.wrapper.core.models.event.InformAffinityData;
import com.dynamicyield.sdk.wrapper.core.models.event.InformAffinityData$$serializer;
import com.dynamicyield.sdk.wrapper.core.models.event.InformAffinityEventProperties;
import com.vuitton.android.data.dto.immersivearticle.ImmersiveArticleCtaDto$$serializer;
import com.vuitton.android.data.dto.immersivearticle.ImmersiveArticleFontDto;
import com.vuitton.android.data.dto.immersivearticle.ImmersiveArticleProductDisplayStyleDto;
import com.vuitton.android.data.dto.immersivearticle.ImmersiveArticleProductImageStyleDto;
import com.vuitton.android.data.dto.immersivearticle.ImmersiveArticleProductListDataDto;
import com.vuitton.android.data.dto.immersivearticle.ImmersiveArticleProductModelDto$$serializer;
import com.vuitton.android.data.dto.immersivearticle.ImmersiveArticleProductTabsDataDto;
import com.vuitton.android.data.dto.immersivearticle.ImmersiveArticleProductTabsDto;
import com.vuitton.android.data.dto.immersivearticle.ImmersiveArticleProductTabsDto$$serializer;
import com.vuitton.android.data.dto.immersivearticle.ImmersiveArticleProductsDataDto;
import com.vuitton.android.data.dto.immersivearticle.ImmersiveArticleSizeCardDto;
import com.vuitton.android.data.dto.immersivearticle.ImmersiveArticleSlideDto;
import com.vuitton.android.data.dto.immersivearticle.ImmersiveArticleSlideDto$$serializer;
import com.vuitton.android.data.dto.immersivearticle.ImmersiveArticleSliderDataDto;
import com.vuitton.android.data.dto.immersivearticle.ImmersiveArticleTextDataDto;
import com.vuitton.android.data.dto.immersivearticle.ImmersiveArticleTextModuleAlignmentDto;
import com.vuitton.android.data.dto.immersivearticle.ImmersiveArticleTextModuleTypeDto;
import com.vuitton.android.data.dto.immersivearticle.ImmersiveArticleVideoDataDto;
import com.vuitton.android.data.dto.immersivearticle.ImmersiveArticleWallpaperDataDto;
import com.vuitton.android.data.dto.producttiny.ProductTinyDto$$serializer;
import java.lang.annotation.Annotation;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlinx.serialization.internal.ArrayListSerializer;
import kotlinx.serialization.internal.EnumSerializer;
import kotlinx.serialization.internal.EnumsKt;
import kotlinx.serialization.internal.IntSerializer;
import kotlinx.serialization.internal.StringSerializer;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class l30 implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f75931b;

    public /* synthetic */ l30(int i2) {
        this.f75931b = i2;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        switch (this.f75931b) {
            case 0:
                ImmersiveArticleProductListDataDto.Companion companion = ImmersiveArticleProductListDataDto.Companion;
                return new ArrayListSerializer(ProductTinyDto$$serializer.f46669a);
            case 1:
                ImmersiveArticleProductListDataDto.Companion companion2 = ImmersiveArticleProductListDataDto.Companion;
                return ImmersiveArticleProductImageStyleDto.INSTANCE.serializer();
            case 2:
                ImmersiveArticleProductListDataDto.Companion companion3 = ImmersiveArticleProductListDataDto.Companion;
                return ImmersiveArticleProductDisplayStyleDto.INSTANCE.serializer();
            case 3:
                ImmersiveArticleProductTabsDataDto.Companion companion4 = ImmersiveArticleProductTabsDataDto.Companion;
                return new ArrayListSerializer(ImmersiveArticleProductTabsDto$$serializer.f45895a);
            case 4:
                ImmersiveArticleProductTabsDto.Companion companion5 = ImmersiveArticleProductTabsDto.Companion;
                return new ArrayListSerializer(ProductTinyDto$$serializer.f46669a);
            case 5:
                ImmersiveArticleProductsDataDto.Companion companion6 = ImmersiveArticleProductsDataDto.Companion;
                return new ArrayListSerializer(ImmersiveArticleProductModelDto$$serializer.f45887a);
            case 6:
                ImmersiveArticleProductsDataDto.Companion companion7 = ImmersiveArticleProductsDataDto.Companion;
                return ImmersiveArticleProductImageStyleDto.INSTANCE.serializer();
            case 7:
                ImmersiveArticleProductsDataDto.Companion companion8 = ImmersiveArticleProductsDataDto.Companion;
                return ImmersiveArticleProductDisplayStyleDto.INSTANCE.serializer();
            case 8:
                ImmersiveArticleProductsDataDto.Companion companion9 = ImmersiveArticleProductsDataDto.Companion;
                return ImmersiveArticleSizeCardDto.Companion.serializer();
            case 9:
                return EnumsKt.a("com.vuitton.android.data.dto.immersivearticle.ImmersiveArticleSizeCardDto", ImmersiveArticleSizeCardDto.values(), new String[]{"full-screen", "16/9", "9/16", "2/3", "4/5", "1/1"}, new Annotation[][]{null, null, null, null, null, null});
            case 10:
                ImmersiveArticleSlideDto.Companion companion10 = ImmersiveArticleSlideDto.Companion;
                return ImmersiveArticleSizeCardDto.Companion.serializer();
            case 11:
                ImmersiveArticleSliderDataDto.Companion companion11 = ImmersiveArticleSliderDataDto.Companion;
                return new ArrayListSerializer(ImmersiveArticleSlideDto$$serializer.f45915a);
            case 12:
                ImmersiveArticleTextDataDto.Companion companion12 = ImmersiveArticleTextDataDto.Companion;
                return ImmersiveArticleFontDto.INSTANCE.serializer();
            case 13:
                ImmersiveArticleTextDataDto.Companion companion13 = ImmersiveArticleTextDataDto.Companion;
                return ImmersiveArticleFontDto.INSTANCE.serializer();
            case 14:
                ImmersiveArticleTextDataDto.Companion companion14 = ImmersiveArticleTextDataDto.Companion;
                return ImmersiveArticleFontDto.INSTANCE.serializer();
            case 15:
                ImmersiveArticleTextDataDto.Companion companion15 = ImmersiveArticleTextDataDto.Companion;
                return ImmersiveArticleSizeCardDto.Companion.serializer();
            case 16:
                ImmersiveArticleTextDataDto.Companion companion16 = ImmersiveArticleTextDataDto.Companion;
                return ImmersiveArticleTextModuleTypeDto.Companion.serializer();
            case 17:
                ImmersiveArticleTextDataDto.Companion companion17 = ImmersiveArticleTextDataDto.Companion;
                return ImmersiveArticleTextModuleAlignmentDto.Companion.serializer();
            case 18:
                ImmersiveArticleTextDataDto.Companion companion18 = ImmersiveArticleTextDataDto.Companion;
                return new ArrayListSerializer(ImmersiveArticleCtaDto$$serializer.f45816a);
            case 19:
                return EnumsKt.a("com.vuitton.android.data.dto.immersivearticle.ImmersiveArticleTextModuleAlignmentDto", ImmersiveArticleTextModuleAlignmentDto.values(), new String[]{"center", "right", "left"}, new Annotation[][]{null, null, null});
            case 20:
                return EnumsKt.a("com.vuitton.android.data.dto.immersivearticle.ImmersiveArticleTextModuleTypeDto", ImmersiveArticleTextModuleTypeDto.values(), new String[]{"citation", "paragraph"}, new Annotation[][]{null, null});
            case 21:
                ImmersiveArticleVideoDataDto.Companion companion19 = ImmersiveArticleVideoDataDto.Companion;
                return ImmersiveArticleSizeCardDto.Companion.serializer();
            case 22:
                ImmersiveArticleWallpaperDataDto.Companion companion20 = ImmersiveArticleWallpaperDataDto.Companion;
                return ImmersiveArticleSizeCardDto.Companion.serializer();
            case 23:
                ImmersiveArticleWallpaperDataDto.Companion companion21 = ImmersiveArticleWallpaperDataDto.Companion;
                return new ArrayListSerializer(StringSerializer.f75684a);
            case 24:
                ImpressionEngagement.Companion companion22 = ImpressionEngagement.INSTANCE;
                return new ArrayListSerializer(IntSerializer.f75624a);
            case 25:
                ImpressionEngagement.Companion companion23 = ImpressionEngagement.INSTANCE;
                EngagementType[] engagementTypeArrValues = EngagementType.values();
                engagementTypeArrValues.getClass();
                return new EnumSerializer("com.dynamicyield.sdk.wrapper.core.enums.EngagementType", engagementTypeArrValues);
            case 26:
                return Unit.f71739a;
            case 27:
                InformAffinityData.Companion companion24 = InformAffinityData.Companion;
                return new ArrayListSerializer(StringSerializer.f75684a);
            case 28:
                InformAffinityEventProperties.Companion companion25 = InformAffinityEventProperties.Companion;
                return new ArrayListSerializer(InformAffinityData$$serializer.f26321a);
            default:
                StaticProvidableCompositionLocal staticProvidableCompositionLocal = InspectionTablesKt.f8563a;
                return null;
        }
    }
}
