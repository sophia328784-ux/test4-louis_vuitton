package com.vuitton.android.presentation.screen.catalog.models;

import com.linkplay.medialib.ContentTree;
import com.vuitton.android.presentation.common.editorial.models.CarouselItemTitlesUiModel;
import com.vuitton.android.presentation.common.editorial.models.CarouselMItemUiModel;
import com.vuitton.android.presentation.common.editorial.models.EditorialModuleUiModel;
import com.vuitton.android.presentation.model.common.AssetImageUiModel;
import com.vuitton.android.presentation.model.common.AssetUiModel;
import com.vuitton.android.presentation.screen.feed.models.FeedMocksKt;
import defpackage.fa0;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class MocksKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final CategoryTagUiModel f55368a = new CategoryTagUiModel("NEW");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final List f55369b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final CategoryRedirectionUiModel f55370c;
    public static final EditorialModuleUiModel.CarouselMUiModel d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final Lazy f55371e;

    static {
        List listP = CollectionsKt.P(new SubcategoryGroupsUiModel("Subcategory Group 1", CollectionsKt.P(new SubcategoryUiModel("1", "Subcategory 1", null), new SubcategoryUiModel(ContentTree.AUDIO_ID, "Subcategory 2", null))), new SubcategoryGroupsUiModel("Subcategory Group 2", CollectionsKt.P(new SubcategoryUiModel("1", "Subcategory 1", null), new SubcategoryUiModel(ContentTree.AUDIO_ID, "Subcategory 2", null))));
        f55369b = listP;
        f55370c = new CategoryRedirectionUiModel(null, null, listP, null, 8, null);
        CarouselItemTitlesUiModel carouselItemTitlesUiModel = new CarouselItemTitlesUiModel("Slide 1", "Subtitle 1");
        AssetImageUiModel assetImageUiModel = FeedMocksKt.f57918a;
        d = new EditorialModuleUiModel.CarouselMUiModel("1", null, CollectionsKt.P(new CarouselMItemUiModel("1", carouselItemTitlesUiModel, null, new AssetUiModel(assetImageUiModel, null), null), new CarouselMItemUiModel(ContentTree.AUDIO_ID, new CarouselItemTitlesUiModel("Slide 2", "Subtitle 2"), null, new AssetUiModel(assetImageUiModel, null), null)), null, 8, null);
        f55371e = LazyKt.b(new fa0(19));
    }
}
