package defpackage;

import androidx.activity.compose.LocalActivityResultRegistryOwner;
import androidx.compose.foundation.lazy.layout.LazyLayoutItemAnimation;
import androidx.compose.foundation.lazy.staggeredgrid.LazyStaggeredGridState;
import androidx.compose.runtime.DynamicProvidableCompositionLocal;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.lifecycle.compose.LocalLifecycleOwnerKt;
import coil3.compose.AsyncImageModelEqualityDelegate;
import coil3.compose.LocalAsyncImageModelEqualityDelegateKt;
import com.vuitton.android.data.connectivity.lightup.LightUpProductDao;
import com.vuitton.android.data.di.DataModule;
import com.vuitton.android.data.dto.common.editorial.LiveFormatDto;
import com.vuitton.android.data.dto.config.cache.LiveVideoStatusCache;
import com.vuitton.android.data.dto.connectivity.common.FaqCategoryDto$$serializer;
import com.vuitton.android.data.dto.connectivity.lightup.LightUpSectionDto;
import com.vuitton.android.data.dto.legal.ConsentRequirementDto$$serializer;
import com.vuitton.android.data.dto.legal.LegalConsentDto;
import com.vuitton.android.data.dto.producttiny.ProductTinyDto$$serializer;
import com.vuitton.android.data.dto.search.LiveSearchDto;
import com.vuitton.android.data.dto.search.LiveSearchTypeDto;
import com.vuitton.android.data.dto.search.TrendingDto$$serializer;
import com.vuitton.android.data.repository.LastViewedProductData$$serializer;
import com.vuitton.android.data.repository.LastViewedProductListData;
import com.vuitton.android.designkit.ui.theme.atoms.LVRadioButtonKt;
import com.vuitton.android.designkit.ui.theme.atoms.LVSkeletonKt;
import com.vuitton.android.designkit.ui.theme.atoms.LVSwitchKt;
import com.vuitton.android.designkit.ui.theme.atoms.LVTagButtonKt;
import com.vuitton.android.designkit.ui.theme.atoms.LVTagKt;
import com.vuitton.android.designkit.ui.theme.atoms.textfield.LVTextFieldKt;
import com.vuitton.android.designkit.ui.theme.molecules.LVSearchBarKt;
import com.vuitton.android.designkit.ui.theme.molecules.LVSegmentedControlKt;
import com.vuitton.android.designkit.ui.theme.molecules.LVSnackbarKt;
import com.vuitton.android.presentation.screen.tracking.LegalConsentsTrackerKt;
import java.lang.annotation.Annotation;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.internal.ArrayListSerializer;
import kotlinx.serialization.internal.EnumSerializer;
import kotlinx.serialization.internal.EnumsKt;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class c70 implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f21085b;

    public /* synthetic */ c70(int i2) {
        this.f21085b = i2;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        switch (this.f21085b) {
            case 0:
                StaticProvidableCompositionLocal staticProvidableCompositionLocal = LVRadioButtonKt.f48494a;
                throw new IllegalStateException("no local LV radio buttons provided");
            case 1:
                StaticProvidableCompositionLocal staticProvidableCompositionLocal2 = LVSearchBarKt.f48654a;
                return Unit.f71739a;
            case 2:
                StaticProvidableCompositionLocal staticProvidableCompositionLocal3 = LVSearchBarKt.f48654a;
                return Unit.f71739a;
            case 3:
                StaticProvidableCompositionLocal staticProvidableCompositionLocal4 = LVSearchBarKt.f48654a;
                throw new IllegalStateException("no local LV SearchBar provided");
            case 4:
                StaticProvidableCompositionLocal staticProvidableCompositionLocal5 = LVSearchBarKt.f48654a;
                return Unit.f71739a;
            case 5:
                StaticProvidableCompositionLocal staticProvidableCompositionLocal6 = LVSegmentedControlKt.f48661b;
                throw new IllegalStateException("no local LV segmented controls provided");
            case 6:
                StaticProvidableCompositionLocal staticProvidableCompositionLocal7 = LVSkeletonKt.f48504a;
                throw new IllegalStateException("no local LV Skeleton provided");
            case 7:
                StaticProvidableCompositionLocal staticProvidableCompositionLocal8 = LVSnackbarKt.f48665a;
                throw new IllegalStateException("no local LV Snackbars provided");
            case 8:
                StaticProvidableCompositionLocal staticProvidableCompositionLocal9 = LVSwitchKt.f48506a;
                throw new IllegalStateException("no local LV switches provided");
            case 9:
                StaticProvidableCompositionLocal staticProvidableCompositionLocal10 = LVTagButtonKt.f48511a;
                throw new IllegalStateException("no local LV tagButtons provided");
            case 10:
                StaticProvidableCompositionLocal staticProvidableCompositionLocal11 = LVTagKt.f48516a;
                throw new IllegalStateException("no local LV tags provided");
            case 11:
                StaticProvidableCompositionLocal staticProvidableCompositionLocal12 = LVTextFieldKt.f48633a;
                throw new IllegalStateException("no local LV textFields provided");
            case 12:
                LastViewedProductListData.Companion companion = LastViewedProductListData.Companion;
                return new ArrayListSerializer(LastViewedProductData$$serializer.f47748a);
            case 13:
                LazyLayoutItemAnimation.Companion companion2 = LazyLayoutItemAnimation.s;
                return Unit.f71739a;
            case 14:
                return new LazyStaggeredGridState(0, 0);
            case 15:
                LegalConsentDto.Companion companion3 = LegalConsentDto.INSTANCE;
                return new ArrayListSerializer(ConsentRequirementDto$$serializer.f45988a);
            case 16:
                StaticProvidableCompositionLocal staticProvidableCompositionLocal13 = LegalConsentsTrackerKt.f65398a;
                throw new IllegalStateException("no local LegalConsentsTracker provided");
            case 17:
                LightUpProductDao lightUpProductDao = DataModule.f44283a;
                if (lightUpProductDao != null) {
                    return lightUpProductDao;
                }
                Intrinsics.h("lightUpProductDao");
                throw null;
            case 18:
                LightUpSectionDto.Companion companion4 = LightUpSectionDto.Companion;
                return new ArrayListSerializer(FaqCategoryDto$$serializer.f45564a);
            case 19:
                LightUpSectionDto.Companion companion5 = LightUpSectionDto.Companion;
                return new ArrayListSerializer(FaqCategoryDto$$serializer.f45564a);
            case 20:
                LightUpSectionDto.Companion companion6 = LightUpSectionDto.Companion;
                return new ArrayListSerializer(FaqCategoryDto$$serializer.f45564a);
            case 21:
                return EnumsKt.a("com.vuitton.android.data.dto.common.editorial.LiveFormatDto", LiveFormatDto.values(), new String[]{"landscape", "portrait"}, new Annotation[][]{null, null});
            case 22:
                LiveSearchDto.Companion companion7 = LiveSearchDto.Companion;
                return new ArrayListSerializer(ProductTinyDto$$serializer.f46669a);
            case 23:
                LiveSearchDto.Companion companion8 = LiveSearchDto.Companion;
                return LiveSearchTypeDto.Companion.serializer();
            case 24:
                LiveSearchDto.Companion companion9 = LiveSearchDto.Companion;
                return new ArrayListSerializer(TrendingDto$$serializer.f46794a);
            case 25:
                return EnumsKt.a("com.vuitton.android.data.dto.search.LiveSearchTypeDto", LiveSearchTypeDto.values(), new String[]{"searchRelatedResults", "suggestionResults"}, new Annotation[][]{null, null});
            case 26:
                LiveVideoStatusCache[] liveVideoStatusCacheArrValues = LiveVideoStatusCache.values();
                liveVideoStatusCacheArrValues.getClass();
                return new EnumSerializer("com.vuitton.android.data.dto.config.cache.LiveVideoStatusCache", liveVideoStatusCacheArrValues);
            case 27:
                DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal = LocalActivityResultRegistryOwner.f709a;
                return null;
            case 28:
                StaticProvidableCompositionLocal staticProvidableCompositionLocal14 = LocalAsyncImageModelEqualityDelegateKt.f21308a;
                return AsyncImageModelEqualityDelegate.f21270a;
            default:
                StaticProvidableCompositionLocal staticProvidableCompositionLocal15 = LocalLifecycleOwnerKt.f13562a;
                throw new IllegalStateException("CompositionLocal LocalLifecycleOwner not present");
        }
    }
}
