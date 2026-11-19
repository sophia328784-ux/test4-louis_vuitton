package com.vuitton.android.presentation.screen.audioguide.models;

import android.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import com.vuitton.android.presentation.common.editorial.models.CarouselItemTitlesUiModel;
import com.vuitton.android.presentation.common.editorial.models.CarouselMItemUiModel;
import com.vuitton.android.presentation.common.editorial.models.EditorialModuleUiModel;
import com.vuitton.android.presentation.common.editorial.models.TargetingUiModel;
import com.vuitton.android.presentation.contributionlink.ContributionLinkUiModel;
import com.vuitton.android.presentation.model.common.AssetImageUiModel;
import com.vuitton.android.presentation.model.common.AssetUiModel;
import com.vuitton.android.presentation.model.common.FeatureThemeUiModel;
import com.vuitton.android.presentation.model.common.SoundUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class AudioGuideMockKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final TrackDetailUiModel f53160a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final AudioGuideUiModel f53161b;

    static {
        AssetUiModel assetUiModel = new AssetUiModel(new AssetImageUiModel("https://pass-prp.louisvuitton.com/media/app-bo/2f21de32-7aa3-4dcc-8147-0d051fbf1f81.jpeg", null, null, 6, null), null);
        ContributionLinkUiModel.ImmersiveArticle immersiveArticle = new ContributionLinkUiModel.ImmersiveArticle("FS-W-SS-23");
        CarouselItemTitlesUiModel carouselItemTitlesUiModel = new CarouselItemTitlesUiModel("Explorez les Essentiels de l'Automne", "Prêt-à-porter Femme");
        EmptyList emptyList = EmptyList.f71768b;
        CarouselMItemUiModel carouselMItemUiModel = new CarouselMItemUiModel("carouselM_01", carouselItemTitlesUiModel, immersiveArticle, assetUiModel, new TargetingUiModel(emptyList));
        AssetUiModel assetUiModel2 = new AssetUiModel(new AssetImageUiModel("https://pass-prp.louisvuitton.com/media/app-bo/2f21de32-7aa3-4dcc-8147-0d051fbf1f81.jpeg", null, null, 6, null), null);
        SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
        f53160a = new TrackDetailUiModel("track-01", "Introduction", "01", CollectionsKt.O(new EditorialModuleUiModel.CarouselMUiModel("carousel_M", "Selectionnés pour vous", CollectionsKt.P(carouselMItemUiModel, new CarouselMItemUiModel("carouselM_02", new CarouselItemTitlesUiModel("Découvrez l’écharpe Reykjvaik", "Accessoires Femme"), new ContributionLinkUiModel.Product("M41414", false, null), assetUiModel2, new TargetingUiModel(emptyList))), new TargetingUiModel(emptyList))), CollectionsKt.P(new TrackDetailUiModel.CueUiModel(0L, 4000L, "Bienvenue à la Fondation Louis Vuitton."), new TrackDetailUiModel.CueUiModel(4000L, 10000L, "Cette collection permanente vous invite à découvrir les œuvres majeures du XXe siècle."), new TrackDetailUiModel.CueUiModel(10000L, 18000L, "Laissez-vous guider à travers les grandes salles lumineuses conçues par Frank Gehry.")));
        f53161b = new AudioGuideUiModel("preview-id", "Fondation Louis Vuitton", "Collection permanente", new AssetImageUiModel("", null, null, 6, null), ColorKt.b(Color.parseColor("#0B230A")), FeatureThemeUiModel.DARK, 3, null, new AudioGuideUiModel.AvailableLanguageUiModel("fr", "Français"), emptyList, new AudioGuideUiModel.AudioGuideCardUiModel("Jean Paul Gaultier", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", new AssetImageUiModel("", null, null, 6, null)), new AudioGuideUiModel.SummaryUiModel("12 pistes", "26 minutes"), CollectionsKt.P(new AudioGuideUiModel.TrackUiModel("track-01", "Introduction", "01", new AssetImageUiModel("https://eu.louisvuitton.com/images/is/image/lv/track_01_thumb", null, null, 6, null), new AssetImageUiModel("https://eu.louisvuitton.com/images/is/image/lv/track_01", null, null, 6, null), new SoundUiModel("sound-01", "https://cdn.louisvuitton.com/audio/track_01.mp3", 180000L, "3:00"), null, 64, null), new AudioGuideUiModel.TrackUiModel("track-02", "Galerie des collections", "02", new AssetImageUiModel("https://eu.louisvuitton.com/images/is/image/lv/track_02_thumb", null, null, 6, null), new AssetImageUiModel("https://eu.louisvuitton.com/images/is/image/lv/track_02", null, null, 6, null), new SoundUiModel("sound-02", "https://cdn.louisvuitton.com/audio/track_02.mp3", 240000L, "4:00"), null, 64, null)), new AudioGuideUiModel.CreditsUiModel("Crédits : Fondation Louis Vuitton, tous droits réservés.", "Voir les crédits"), null);
    }
}
