package com.vuitton.android.presentation.screen.feed.models;

import com.vuitton.android.R;
import com.vuitton.android.presentation.common.editorial.models.AssetLayoutUiModel;
import com.vuitton.android.presentation.common.editorial.models.CarouselItemTitlesUiModel;
import com.vuitton.android.presentation.common.editorial.models.CarouselLMultipleItemUiModel;
import com.vuitton.android.presentation.common.editorial.models.CarouselLSingleItemUiModel;
import com.vuitton.android.presentation.common.editorial.models.CarouselMItemUiModel;
import com.vuitton.android.presentation.common.editorial.models.CarouselSItemUiModel;
import com.vuitton.android.presentation.common.editorial.models.EditorialModuleCardTypeUiModel;
import com.vuitton.android.presentation.common.editorial.models.EditorialModuleUiModel;
import com.vuitton.android.presentation.common.editorial.models.HeaderUiModel;
import com.vuitton.android.presentation.common.editorial.models.LiveFormatUiModel;
import com.vuitton.android.presentation.common.editorial.models.LiveInfoUiModel;
import com.vuitton.android.presentation.common.editorial.models.RatioUiModel;
import com.vuitton.android.presentation.common.editorial.models.SlideShowItemUiModel;
import com.vuitton.android.presentation.common.editorial.models.TargetingUiModel;
import com.vuitton.android.presentation.common.editorial.models.TitlesUiModel;
import com.vuitton.android.presentation.contributionlink.ContributionLinkUiModel;
import com.vuitton.android.presentation.model.common.AssetImageUiModel;
import com.vuitton.android.presentation.model.common.AssetUiModel;
import com.vuitton.android.presentation.model.common.AssetVideoUiModel;
import com.vuitton.android.presentation.model.common.VideoIdUiModel;
import com.vuitton.android.presentation.screen.feed.models.uimodels.FeedUiModel;
import com.vuitton.android.presentation.screen.livevideo.models.LiveVideoStatusUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.ProductShortPriceUiModel;
import com.vuitton.foundation.model.domain.model.common.editorial.AlgorithmType;
import java.time.Instant;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class FeedMocksKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final AssetImageUiModel f57918a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final FeedUiModel f57919b;

    static {
        AssetUiModel assetUiModel = new AssetUiModel(new AssetImageUiModel("https://pass-prp.louisvuitton.com/media/app-bo/2f21de32-7aa3-4dcc-8147-0d051fbf1f81.jpeg", null, null, 6, null), null);
        VideoIdUiModel.f51798c.getClass();
        new LiveInfoUiModel(VideoIdUiModel.d, LiveVideoStatusUiModel.LIVE_UPCOMING, Instant.now().plusMillis(30000000L), null, null, null, 56, null);
        AssetImageUiModel assetImageUiModel = new AssetImageUiModel("https://pass-prp.louisvuitton.com/media/app-bo/2f21de32-7aa3-4dcc-8147-0d051fbf1f81.jpeg", null, null, 6, null);
        f57918a = assetImageUiModel;
        AssetUiModel assetUiModel2 = new AssetUiModel(null, new AssetVideoUiModel(null, "https://vod.fl.freecaster.net/vod/louisvuitton/tou7XlcVyZ_1080p.mp4", null, null, null, null, null, 125, null));
        ContributionLinkUiModel.ImmersiveArticle immersiveArticle = new ContributionLinkUiModel.ImmersiveArticle("A11Y-IMMERSIVE");
        SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
        CarouselSItemUiModel carouselSItemUiModel = new CarouselSItemUiModel("skuId", "Lorem Ipsum", "https://us-ppf.louisvuitton.com/images/is/image/lvprp/1/PP_VP_L/louis-vuitton-apogee--LP0001_PM2_Front%20view.jpg", R.drawable.background_product_default, new ProductShortPriceUiModel(false, "1000.00 $", Double.valueOf(1000.0d), "USD"), null, null, 96, null);
        EditorialModuleCardTypeUiModel.Simple simple = new EditorialModuleCardTypeUiModel.Simple(AssetLayoutUiModel.MARIELOUISE_CENTERED);
        RatioUiModel ratioUiModel = RatioUiModel.RATIO_2X3;
        EditorialModuleUiModel.CardUiModel cardUiModel = new EditorialModuleUiModel.CardUiModel("SIMPLE-section", new TitlesUiModel("Simple Card", "Drawing inspiration from Louis Vuitton’s trunkmaking craftsmanship Lorem ipsum dolor sit amet, consectetur adipiscing elit "), immersiveArticle, assetUiModel, ratioUiModel, null, simple, 32, null);
        EditorialModuleUiModel.CardUiModel cardUiModel2 = new EditorialModuleUiModel.CardUiModel("LIVE-section", new TitlesUiModel("Drawing inspiration from Louis Vuitton’s trunkmaking craftsmanship Lorem ipsum dolor sit amet, consectetur adipiscing elit ", "Live"), null, assetUiModel2, ratioUiModel, null, new EditorialModuleCardTypeUiModel.Live(new LiveInfoUiModel("liveshow", LiveVideoStatusUiModel.LIVE, null, null, null, null, 60, null), LiveFormatUiModel.LANDSCAPE, false), 32, null);
        EditorialModuleUiModel.CardUiModel cardUiModel3 = new EditorialModuleUiModel.CardUiModel("EVENT-section", new TitlesUiModel("Drawing inspiration from Louis Vuitton’s trunkmaking craftsmanship Lorem ipsum dolor sit amet, consectetur adipiscing elit ", "Event card"), immersiveArticle, assetUiModel2, ratioUiModel, null, new EditorialModuleCardTypeUiModel.Event(Instant.now().plusMillis(30000000L), true), 32, null);
        EditorialModuleUiModel.CardUiModel cardUiModel4 = new EditorialModuleUiModel.CardUiModel("16x9-section", new TitlesUiModel("Drawing inspiration from Louis Vuitton’s trunkmaking craftsmanship Lorem ipsum dolor sit amet, consectetur adipiscing elit ", "16/9 card"), immersiveArticle, assetUiModel2, RatioUiModel.RATIO_16X9, null, new EditorialModuleCardTypeUiModel.Simple(null, 1, null), 32, null);
        CarouselItemTitlesUiModel carouselItemTitlesUiModel = new CarouselItemTitlesUiModel("Découvrez la collection Vivienne pour la fin d’année", "Vivienne Winter holiday");
        List listP = CollectionsKt.P(new CarouselLSingleItemUiModel("slide_01", assetUiModel, null), new CarouselLSingleItemUiModel("slide_02", assetUiModel, null));
        EmptyList emptyList = EmptyList.f71768b;
        EditorialModuleUiModel.CarouselLSingleUiModel carouselLSingleUiModel = new EditorialModuleUiModel.CarouselLSingleUiModel("feed_carousel_L_single", carouselItemTitlesUiModel, listP, immersiveArticle, new TargetingUiModel(emptyList));
        EditorialModuleUiModel.CarouselLMultipleUiModel carouselLMultipleUiModel = new EditorialModuleUiModel.CarouselLMultipleUiModel("feed_carousel_multi", null, CollectionsKt.P(new CarouselLMultipleItemUiModel("slide_01", new CarouselItemTitlesUiModel("Mon monogram personalization", null), immersiveArticle, assetUiModel, new TargetingUiModel(emptyList)), new CarouselLMultipleItemUiModel("slide_02", new CarouselItemTitlesUiModel("Sacs Femme", null), immersiveArticle, assetUiModel, new TargetingUiModel(emptyList))), new TargetingUiModel(emptyList));
        EditorialModuleUiModel.CarouselLMultipleUiModel carouselLMultipleUiModel2 = new EditorialModuleUiModel.CarouselLMultipleUiModel("feed_carousel_multi_with_titles", new CarouselItemTitlesUiModel("Découvrez le dernier défilé de la maison", "Défilés"), CollectionsKt.P(new CarouselLMultipleItemUiModel("slide_01", new CarouselItemTitlesUiModel("Découvrir le défilé Femme Printemps-Été 2026", "Surtitle"), immersiveArticle, assetUiModel2, new TargetingUiModel(emptyList)), new CarouselLMultipleItemUiModel("slide_02", new CarouselItemTitlesUiModel("Découvrir le défilé Homme Printemps-Été 2026", "Surtitle"), immersiveArticle, assetUiModel, new TargetingUiModel(emptyList))), new TargetingUiModel(emptyList));
        EditorialModuleUiModel.HighLightUiModel highLightUiModel = new EditorialModuleUiModel.HighLightUiModel("capsule_section_key", "Explore the new arrivals", "Discover the latest trends in fashion with our new arrivals section.", assetImageUiModel, null, 16, null);
        EditorialModuleUiModel.CarouselSmallUiModel carouselSmallUiModel = new EditorialModuleUiModel.CarouselSmallUiModel("carousel_S", new HeaderUiModel("Products for you", null, null, 6, null), AlgorithmType.DYNAMIC_YIELD, null, CollectionsKt.P(carouselSItemUiModel, carouselSItemUiModel, carouselSItemUiModel), null, false, 96, null);
        EditorialModuleUiModel.CarouselMUiModel carouselMUiModel = new EditorialModuleUiModel.CarouselMUiModel("feed_carousel_M", "Sélectionnés pour vous", CollectionsKt.P(new CarouselMItemUiModel("carouselM_01", new CarouselItemTitlesUiModel("Explorez les Essentiels de l'Automne", "Prêt-à-porter Femme"), immersiveArticle, assetUiModel, new TargetingUiModel(emptyList)), new CarouselMItemUiModel("carouselM_02", new CarouselItemTitlesUiModel("Découvrez l’écharpe Reykjvaik", "Accessoires Femme"), immersiveArticle, assetUiModel, new TargetingUiModel(emptyList))), new TargetingUiModel(emptyList));
        EditorialModuleUiModel.SlideShowUiModel slideShowUiModel = new EditorialModuleUiModel.SlideShowUiModel("slideshow_section_key", "Slide Show", CollectionsKt.P(new SlideShowItemUiModel("SlideShowId_1", "SlideShow Title 1", "SlideShow Surtitle 1", immersiveArticle, assetUiModel, null, 32, null), new SlideShowItemUiModel("SlideShowId_2", "SlideShow Title 2", "SlideShow Surtitle 2", immersiveArticle, assetUiModel, null, 32, null)), null, 8, null);
        f57919b = new FeedUiModel(CollectionsKt.P(cardUiModel2, cardUiModel3, carouselLMultipleUiModel, cardUiModel, carouselLSingleUiModel, highLightUiModel, cardUiModel4, carouselLMultipleUiModel2));
        new FeedUiModel(CollectionsKt.P(carouselMUiModel, carouselSmallUiModel, slideShowUiModel));
    }
}
