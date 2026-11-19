package defpackage;

import android.os.StatFs;
import androidx.compose.material3.Typography;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.ui.text.font.FontListFontFamily;
import androidx.lifecycle.viewmodel.CreationExtras;
import coil3.disk.DiskCache;
import coil3.disk.RealDiskCache;
import coil3.disk.UtilsKt;
import com.dynamicyield.sdk.wrapper.core.enums.VideoProgressType;
import com.dynamicyield.sdk.wrapper.core.managers.serialization.customSerialization.FacetSerializer;
import com.dynamicyield.sdk.wrapper.core.models.choose.response.Cookie$$serializer;
import com.dynamicyield.sdk.wrapper.core.models.choose.response.RecsSlot$$serializer;
import com.dynamicyield.sdk.wrapper.core.models.choose.response.Variation;
import com.dynamicyield.sdk.wrapper.core.models.choose.response.VisualSearchChoice;
import com.dynamicyield.sdk.wrapper.core.models.choose.response.VisualSearchData;
import com.dynamicyield.sdk.wrapper.core.models.choose.response.VisualSearchResponse;
import com.dynamicyield.sdk.wrapper.core.models.event.VideoWatchEventProperties;
import com.vuitton.android.data.dto.account.orders.ValidationDto;
import com.vuitton.android.data.dto.cart.bff.UpdateCartSampleDto;
import com.vuitton.android.data.dto.cart.bff.UpdateCartSampleItemDto$$serializer;
import com.vuitton.android.data.dto.certificate.CertificateStatusDto;
import com.vuitton.android.data.dto.certificate.UnknownCertificateDto;
import com.vuitton.android.data.dto.config.VirtualStudioConfigDto;
import com.vuitton.android.data.dto.config.cache.VirtualStudioConfigCache;
import com.vuitton.android.data.dto.distantrepairs.AppointmentTypeDto;
import com.vuitton.android.data.dto.osa.twist.UpdateAppointmentDtoRequest;
import com.vuitton.android.data.dto.product.virtualtryon.VirtualTryOnDto;
import com.vuitton.android.data.dto.product.vto.BeautyProductTypeDto;
import com.vuitton.android.data.dto.product.vto.TutorialSectionDataDto;
import com.vuitton.android.data.dto.product.vto.TutorialSectionDto;
import com.vuitton.android.data.dto.product.vto.TutorialSectionTypeDto;
import com.vuitton.android.designkit.ui.theme.TypographyKt;
import com.vuitton.android.presentation.screen.authentication.base.WebViewAuthChromeClient;
import com.vuitton.android.presentation.screen.connectivity.watchface.WatchfaceImagePagerAdapter;
import com.vuitton.android.presentation.screen.connectivity.watchface.WatchfacePresentationFragment;
import java.io.File;
import java.lang.annotation.Annotation;
import kotlin.Lazy;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Reflection;
import kotlin.ranges.RangesKt;
import kotlinx.serialization.PolymorphicSerializer;
import kotlinx.serialization.internal.ArrayListSerializer;
import kotlinx.serialization.internal.EnumSerializer;
import kotlinx.serialization.internal.EnumsKt;
import kotlinx.serialization.internal.StringSerializer;
import okio.FileSystem;
import okio.Path;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class b51 implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f20759b;

    public /* synthetic */ b51(int i2) {
        this.f20759b = i2;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        long jE;
        switch (this.f20759b) {
            case 0:
                TutorialSectionDataDto.StepsSectionDto.Companion companion = TutorialSectionDataDto.StepsSectionDto.Companion;
                return new ArrayListSerializer(StringSerializer.f75684a);
            case 1:
                TutorialSectionDto.Companion companion2 = TutorialSectionDto.Companion;
                return TutorialSectionTypeDto.Companion.serializer();
            case 2:
                return EnumsKt.a("com.vuitton.android.data.dto.product.vto.TutorialSectionTypeDto", TutorialSectionTypeDto.values(), new String[]{"assetList", "steps"}, new Annotation[][]{null, null});
            case 3:
                FontListFontFamily fontListFontFamily = TypographyKt.f48438a;
                return CollectionsKt.P("ar", "ja", "ko", "ru", "zh");
            case 4:
                StaticProvidableCompositionLocal staticProvidableCompositionLocal = androidx.compose.material3.TypographyKt.f7451a;
                return new Typography(null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 32767, null);
            case 5:
                FontListFontFamily fontListFontFamily2 = TypographyKt.f48438a;
                throw new IllegalStateException("no local LV typography provided");
            case 6:
                UnknownCertificateDto.Companion companion3 = UnknownCertificateDto.INSTANCE;
                return CertificateStatusDto.INSTANCE.serializer();
            case 7:
                UpdateAppointmentDtoRequest.Companion companion4 = UpdateAppointmentDtoRequest.Companion;
                return AppointmentTypeDto.INSTANCE.serializer();
            case 8:
                UpdateCartSampleDto.Companion companion5 = UpdateCartSampleDto.Companion;
                return new ArrayListSerializer(UpdateCartSampleItemDto$$serializer.f45077a);
            case 9:
                Lazy lazy = UtilsKt.f21418a;
                DiskCache.Builder builder = new DiskCache.Builder();
                Path pathE = FileSystem.f77415c.e("coil3_disk_cache");
                double d = builder.f21388b;
                if (d > 0.0d) {
                    try {
                        File file = pathE.toFile();
                        file.mkdir();
                        StatFs statFs = new StatFs(file.getAbsolutePath());
                        jE = RangesKt.e((long) (d * statFs.getBlockSizeLong() * statFs.getBlockCountLong()), builder.f21389c, builder.d);
                    } catch (Exception unused) {
                        jE = builder.f21389c;
                    }
                    break;
                } else {
                    jE = 0;
                }
                return new RealDiskCache(jE, pathE, builder.f21387a, builder.f21390e);
            case 10:
                return EnumsKt.a("com.vuitton.android.data.dto.account.orders.ValidationDto", ValidationDto.values(), new String[]{"validated", "pending", "cancelled"}, new Annotation[][]{null, null, null});
            case 11:
                Variation.Companion companion6 = Variation.INSTANCE;
                return new PolymorphicSerializer(Reflection.f71922a.b(Variation.class), new Annotation[0]);
            case 12:
                VideoWatchEventProperties.Companion companion7 = VideoWatchEventProperties.Companion;
                return new ArrayListSerializer(StringSerializer.f75684a);
            case 13:
                VideoWatchEventProperties.Companion companion8 = VideoWatchEventProperties.Companion;
                VideoProgressType[] videoProgressTypeArrValues = VideoProgressType.values();
                videoProgressTypeArrValues.getClass();
                return new EnumSerializer("com.dynamicyield.sdk.wrapper.core.enums.VideoProgressType", videoProgressTypeArrValues);
            case 14:
                return CreationExtras.Empty.f13578c;
            case 15:
                VirtualStudioConfigCache.Companion companion9 = VirtualStudioConfigCache.Companion;
                return new ArrayListSerializer(StringSerializer.f75684a);
            case 16:
                VirtualStudioConfigDto.Companion companion10 = VirtualStudioConfigDto.Companion;
                return new ArrayListSerializer(StringSerializer.f75684a);
            case 17:
                VirtualTryOnDto.Companion companion11 = VirtualTryOnDto.Companion;
                return BeautyProductTypeDto.INSTANCE.serializer();
            case 18:
                VisualSearchData.Companion companion12 = VisualSearchData.INSTANCE;
                return new ArrayListSerializer(FacetSerializer.f25967a);
            case 19:
                VisualSearchData.Companion companion13 = VisualSearchData.INSTANCE;
                return new ArrayListSerializer(RecsSlot$$serializer.f26114a);
            case 20:
                VisualSearchResponse.Companion companion14 = VisualSearchResponse.INSTANCE;
                return new ArrayListSerializer(VisualSearchChoice.INSTANCE.serializer());
            case 21:
                VisualSearchResponse.Companion companion15 = VisualSearchResponse.INSTANCE;
                return new ArrayListSerializer(Cookie$$serializer.f26072a);
            case 22:
                WatchfacePresentationFragment.Companion companion16 = WatchfacePresentationFragment.L;
                return new WatchfaceImagePagerAdapter();
            case 23:
                WatchfacePresentationFragment.Companion companion17 = WatchfacePresentationFragment.L;
                return new WatchfaceImagePagerAdapter();
            case 24:
                int i2 = WebViewAuthChromeClient.f53454e;
                return Unit.f71739a;
            case 25:
                return Unit.f71739a;
            case 26:
                return Unit.f71739a;
            case 27:
                return Unit.f71739a;
            case 28:
                return Unit.f71739a;
            default:
                return Unit.f71739a;
        }
    }
}
