package com.vuitton.android.presentation.screen.portal.models;

import com.networkbench.agent.impl.harvest.ConfigurationName;
import com.vuitton.android.presentation.contributionlink.ContributionLinkUiModel;
import com.vuitton.android.presentation.model.common.AssetImageUiModel;
import com.vuitton.android.presentation.model.common.AssetUiModel;
import com.vuitton.android.presentation.model.common.AssetVideoUiModel;
import com.vuitton.android.presentation.model.common.VideoIdUiModel;
import com.vuitton.foundation.model.domain.model.common.LiveVideoStatus;
import com.vuitton.foundation.util.StringKtExtKt;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class MocksKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final AssetUiModel f63304a;

    static {
        AssetUiModel assetUiModel = new AssetUiModel(new AssetImageUiModel("https://pass-prp.louisvuitton.com/media/app-bo/e7d186e4-774b-4bb3-8c58-d232ef0d1c84.jpeg", null, null, 6, null), null);
        f63304a = assetUiModel;
        LiveVideoStatus liveVideoStatus = LiveVideoStatus.LIVE;
        VideoIdUiModel.Companion companion = VideoIdUiModel.f51798c;
        AssetUiModel assetUiModel2 = new AssetUiModel(null, new AssetVideoUiModel("videoId", "https://vod.fl.freecaster.net/vod/louisvuitton/IfOBTlFfWQ_1080p.mp4", "https://posters.freecaster-uat.com/videos/louisvuitton/d3ae6f7a-6c13-3c29-a3cb-72839555a7d4-1705373593/1920x1080.jpg", null, null, liveVideoStatus, ConfigurationName.DOWNLOAD_PLUGIN_URL, 8, null));
        PortalCtaUiModel portalCtaUiModel = new PortalCtaUiModel("Discover to immersive", new ContributionLinkUiModel.ImmersiveArticle("FS-M-SS2023-Show-Aranya"));
        PortalCtaUiModel portalCtaUiModel2 = new PortalCtaUiModel("Discover to webview", new ContributionLinkUiModel.WebView("https://fr-ppf.louisvuitton.com/fra-fr/histoires/the-capucines"));
        PortalDataUiModel portalDataUiModel = new PortalDataUiModel("The Art of Gifting V11", "Story", "Explore Master Perfumer Jacques Cavallier Belletrud’s fragrances, a myriad of olfactory compositions with precious accords.", assetUiModel2, portalCtaUiModel, new PortalTeaserUiModel(StringKtExtKt.c("2024-10-09T08:39:00Z"), assetUiModel, "The Art of Gifting V11", "Story", "Explore Master Perfumer Jacques Cavallier Belletrud’s fragrances, a myriad of olfactory compositions with precious accords.", new PortalCtaUiModel("Notify me", ContributionLinkUiModel.PushNotification.f51178b)));
        PortalDataUiModel portalDataUiModel2 = new PortalDataUiModel("The Campaign V11 to V12", "Holiday Season", "Louis Vuitton celebrates the festive season with a magical new campaign featuring Vivienne, the Maison's mascot.", new AssetUiModel(assetUiModel2.f51780b, new AssetVideoUiModel("videoId", "https://vod.fl.freecaster.net/vod/louisvuitton/l8FfFpSumU_1080p.mp4", "https://posters.freecaster-uat.com/videos/louisvuitton/af918909-67bb-312c-bdfa-140f3d2caa1e-1705373528/1920x1080.jpg", null, null, liveVideoStatus, ConfigurationName.DOWNLOAD_PLUGIN_URL, 8, null)), portalCtaUiModel2, null);
        PortalSlideTypeUiModel portalSlideTypeUiModel = PortalSlideTypeUiModel.CONTENT;
        new PortalUiModel("portal619", "Discover the gift guide", "Holiday season", assetUiModel, CollectionsKt.P(new PortalUiModel.SlideUiModel("portal619-1", portalSlideTypeUiModel, portalDataUiModel), new PortalUiModel.SlideUiModel("portal619-2", portalSlideTypeUiModel, portalDataUiModel2)), "https://vod.fl.freecaster.net/vod/louisvuitton/RWKgfdNM2G_128k.mp3");
    }
}
