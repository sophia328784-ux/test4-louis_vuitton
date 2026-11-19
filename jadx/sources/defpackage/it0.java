package defpackage;

import androidx.compose.foundation.ScrollState;
import androidx.compose.foundation.text.selection.SelectionRegistrarKt;
import androidx.compose.material3.RippleConfiguration;
import androidx.compose.material3.RippleKt;
import androidx.compose.runtime.DynamicProvidableCompositionLocal;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.runtime.saveable.SaveableStateRegistryKt;
import androidx.navigation3.scene.SceneSetupNavEntryDecoratorKt;
import androidx.savedstate.internal.SavedStateRegistryImpl;
import com.dynamicyield.sdk.wrapper.core.enums.SearchType;
import com.dynamicyield.sdk.wrapper.core.models.choose.payload.Selector;
import com.dynamicyield.sdk.wrapper.core.models.search.payload.SearchSelector;
import com.squareup.wire.ReverseProtoWriter;
import com.vuitton.android.data.dto.catalog.CategoryDto$$serializer;
import com.vuitton.android.data.dto.catalog.SectionDto;
import com.vuitton.android.data.dto.common.ScaleDto;
import com.vuitton.android.data.dto.connectivity.common.FaqCategoryDto$$serializer;
import com.vuitton.android.data.dto.connectivity.common.TutorialDto$$serializer;
import com.vuitton.android.data.dto.connectivity.sync.FaqDto$$serializer;
import com.vuitton.android.data.dto.connectivity.sync.SectionFaqDto;
import com.vuitton.android.data.dto.connectivity.sync.SectionFaqDto$$serializer;
import com.vuitton.android.data.dto.connectivity.sync.SectionTutorialsDto;
import com.vuitton.android.data.dto.connectivity.sync.SectionTutorialsDto$$serializer;
import com.vuitton.android.data.dto.connectivity.sync.WatchTutorialDto$$serializer;
import com.vuitton.android.data.dto.connectivity.watch.SectionPromiseDto;
import com.vuitton.android.data.dto.connectivity.watch.SectionWatchfacesDto;
import com.vuitton.android.data.dto.connectivity.watch.SectionWatchfacesDto$$serializer;
import com.vuitton.android.data.dto.connectivity.watchv3.SectionWatchV3Dto;
import com.vuitton.android.data.dto.personalselections.SelectionAssetDto;
import com.vuitton.android.data.dto.personalselections.SelectionTypeDto;
import com.vuitton.android.data.dto.search.AutocompleteDisplayDto$$serializer;
import com.vuitton.android.data.dto.search.SearchAutocompleteDto;
import com.vuitton.android.data.dto.search.SearchHintDto$$serializer;
import com.vuitton.android.data.dto.search.SearchMatchDto;
import com.vuitton.android.data.dto.search.SearchMatchDto$$serializer;
import com.vuitton.android.presentation.screen.search.components.SearchRoutes;
import java.lang.annotation.Annotation;
import java.util.HashSet;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlinx.serialization.internal.ArrayListSerializer;
import kotlinx.serialization.internal.EnumsKt;
import kotlinx.serialization.internal.IntSerializer;
import kotlinx.serialization.internal.ObjectSerializer;
import kotlinx.serialization.internal.StringSerializer;
import okio.Buffer;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class it0 implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f71200b;

    public /* synthetic */ it0(int i2) {
        this.f71200b = i2;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        switch (this.f71200b) {
            case 0:
                byte[] bArr = ReverseProtoWriter.f43475h;
                return new Buffer();
            case 1:
                DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal = RippleKt.f7164a;
                return new RippleConfiguration(0L, null, 3, null);
            case 2:
                StaticProvidableCompositionLocal staticProvidableCompositionLocal = SaveableStateRegistryKt.f8434a;
                return null;
            case 3:
                int i2 = SavedStateRegistryImpl.f19793i;
                return Unit.f71739a;
            case 4:
                return EnumsKt.a("com.vuitton.android.data.dto.common.ScaleDto", ScaleDto.values(), new String[]{"fit", "fill"}, new Annotation[][]{null, null});
            case 5:
                return Unit.f71739a;
            case 6:
                DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal2 = SceneSetupNavEntryDecoratorKt.f18411a;
                return new HashSet();
            case 7:
                return Unit.f71739a;
            case 8:
                return new ScrollState(0);
            case 9:
                SearchAutocompleteDto.Companion companion = SearchAutocompleteDto.Companion;
                return new ArrayListSerializer(SearchMatchDto$$serializer.f46791a);
            case 10:
                SearchAutocompleteDto.Companion companion2 = SearchAutocompleteDto.Companion;
                return new ArrayListSerializer(SearchHintDto$$serializer.f46787a);
            case 11:
                SearchMatchDto.Companion companion3 = SearchMatchDto.Companion;
                return new ArrayListSerializer(AutocompleteDisplayDto$$serializer.f46775a);
            case 12:
                return new ObjectSerializer("com.vuitton.android.presentation.screen.search.components.SearchRoutes.PSP", SearchRoutes.PSP.INSTANCE, new Annotation[0]);
            case 13:
                return new ObjectSerializer("com.vuitton.android.presentation.screen.search.components.SearchRoutes.Search", SearchRoutes.Search.INSTANCE, new Annotation[0]);
            case 14:
                SearchSelector.Companion companion4 = SearchSelector.Companion;
                return EnumsKt.a("com.dynamicyield.sdk.wrapper.core.enums.SearchType", SearchType.values(), new String[]{"Semantic Search", "Visual Search"}, new Annotation[][]{null, null});
            case 15:
                SectionDto.Companion companion5 = SectionDto.Companion;
                return new ArrayListSerializer(CategoryDto$$serializer.f45096a);
            case 16:
                SectionFaqDto.Companion companion6 = SectionFaqDto.Companion;
                return new ArrayListSerializer(FaqDto$$serializer.f45603a);
            case 17:
                SectionPromiseDto.Companion companion7 = SectionPromiseDto.Companion;
                return new ArrayListSerializer(SectionFaqDto$$serializer.f45611a);
            case 18:
                SectionPromiseDto.Companion companion8 = SectionPromiseDto.Companion;
                return new ArrayListSerializer(SectionTutorialsDto$$serializer.f45620a);
            case 19:
                SectionPromiseDto.Companion companion9 = SectionPromiseDto.Companion;
                return new ArrayListSerializer(SectionWatchfacesDto$$serializer.f45654a);
            case 20:
                SectionTutorialsDto.Companion companion10 = SectionTutorialsDto.Companion;
                return new ArrayListSerializer(WatchTutorialDto$$serializer.f45626a);
            case 21:
                SectionWatchV3Dto.Companion companion11 = SectionWatchV3Dto.Companion;
                return new ArrayListSerializer(FaqCategoryDto$$serializer.f45564a);
            case 22:
                SectionWatchV3Dto.Companion companion12 = SectionWatchV3Dto.Companion;
                return new ArrayListSerializer(TutorialDto$$serializer.f45574a);
            case 23:
                SectionWatchV3Dto.Companion companion13 = SectionWatchV3Dto.Companion;
                return new ArrayListSerializer(StringSerializer.f75684a);
            case 24:
                SectionWatchfacesDto.Companion companion14 = SectionWatchfacesDto.Companion;
                return new ArrayListSerializer(IntSerializer.f75624a);
            case 25:
                SelectionAssetDto.Companion companion15 = SelectionAssetDto.Companion;
                return new ArrayListSerializer(StringSerializer.f75684a);
            case 26:
                DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal3 = SelectionRegistrarKt.f6442a;
                return null;
            case 27:
                return EnumsKt.a("com.vuitton.android.data.dto.personalselections.SelectionTypeDto", SelectionTypeDto.values(), new String[]{"inStore", "wardrobing"}, new Annotation[][]{null, null});
            case 28:
                Selector.Companion companion16 = Selector.Companion;
                return new ArrayListSerializer(StringSerializer.f75684a);
            default:
                Selector.Companion companion17 = Selector.Companion;
                return new ArrayListSerializer(StringSerializer.f75684a);
        }
    }
}
