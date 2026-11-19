package com.vuitton.android.presentation.screen.spotlight.models;

import com.batch.android.s.b;
import com.networkbench.agent.impl.harvest.ConfigurationName;
import com.vuitton.android.presentation.contributionlink.ContributionLinkUiModel;
import com.vuitton.android.presentation.model.common.AssetImageUiModel;
import com.vuitton.android.presentation.model.common.AssetUiModel;
import com.vuitton.android.presentation.model.common.AssetVideoUiModel;
import com.vuitton.android.presentation.model.common.FeatureThemeUiModel;
import com.vuitton.android.presentation.model.common.VideoIdUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import com.vuitton.foundation.model.domain.model.common.LiveVideoStatus;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class SpotlightMockKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final SpotlightUiModel f64646a;

    static {
        AssetUiModel assetUiModel = new AssetUiModel(new AssetImageUiModel("", null, null, 6, null), null);
        VideoIdUiModel.Companion companion = VideoIdUiModel.f51798c;
        LiveVideoStatus liveVideoStatus = LiveVideoStatus.LIVE;
        AssetVideoUiModel assetVideoUiModel = new AssetVideoUiModel(b.a.f24015b, "https://example.com/intro1.mp4", null, null, null, liveVideoStatus, ConfigurationName.DOWNLOAD_PLUGIN_URL, 12, null);
        AssetVideoUiModel assetVideoUiModel2 = new AssetVideoUiModel(b.a.f24015b, "https://example.com/outro1.mp4", null, null, null, liveVideoStatus, ConfigurationName.DOWNLOAD_PLUGIN_URL, 12, null);
        HotspotPositionUiModel hotspotPositionUiModel = new HotspotPositionUiModel(0.1f, 0.2f);
        AssetUiModel assetUiModel2 = new AssetUiModel(null, new AssetVideoUiModel(b.a.f24015b, "https://example.com/hotspot1.mp4", null, null, null, liveVideoStatus, ConfigurationName.DOWNLOAD_PLUGIN_URL, 12, null));
        SkuIdUiModel.Companion companion2 = SkuIdUiModel.f61763c;
        f64646a = new SpotlightUiModel("spotlight_1", CollectionsKt.O(new SpotlightSlideUiModel("slide_1", "Slide 1", assetUiModel, 1.5f, assetVideoUiModel, assetVideoUiModel2, CollectionsKt.P(new SpotlightHotspotUiModel("hotspot_1", hotspotPositionUiModel, assetUiModel2, new HotspotContentUiModel("sku_1", new HotspotDetailUiModel("TODO()", " TODO()", new AssetImageUiModel("https://example.com/image.jpg", null, null, 6, null), new SpotlightCtaUiModel("Shop Now", new ContributionLinkUiModel.WebView("https://example.com/shopnow"))), new SpotlightProductUiModel("sku_1", "Product 1", "https://example.com/product1.jpg", "$100", null), null)), new SpotlightHotspotUiModel("hotspot_2", new HotspotPositionUiModel(0.3f, 0.4f), new AssetUiModel(null, new AssetVideoUiModel(b.a.f24015b, "https://example.com/hotspot2.mp4", null, null, null, liveVideoStatus, ConfigurationName.DOWNLOAD_PLUGIN_URL, 12, null)), new HotspotContentUiModel("sku_1", new HotspotDetailUiModel("Content 1", "Description of content 1", new AssetImageUiModel("https://example.com/content1.jpg", null, null, 6, null), new SpotlightCtaUiModel("Learn More", new ContributionLinkUiModel.WebView("https://example.com/shopnow"))), null, 4, null))), FeatureThemeUiModel.DARK, new SpotlightCtaUiModel("Shop Now", new ContributionLinkUiModel.WebView("https://example.com/shopnow")), false)));
    }
}
