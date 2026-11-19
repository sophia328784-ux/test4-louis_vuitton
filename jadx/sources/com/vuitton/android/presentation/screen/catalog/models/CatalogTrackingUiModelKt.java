package com.vuitton.android.presentation.screen.catalog.models;

import com.vuitton.foundation.model.domain.model.analytics.AdditionalProperty;
import com.vuitton.foundation.model.domain.model.analytics.Hit;
import com.vuitton.foundation.model.domain.model.analytics.HitType;
import defpackage.cj;
import defpackage.tr;
import defpackage.v40;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class CatalogTrackingUiModelKt {
    public static final Hit a(CatalogTrackingUiModel catalogTrackingUiModel) {
        catalogTrackingUiModel.getClass();
        if (catalogTrackingUiModel instanceof CatalogTrackingUiModel.CategoryScreen) {
            return new Hit.ScreenHit.DefaultScreenHit(null, "catalog", "catalog", "catalog", null, 17, null);
        }
        if (catalogTrackingUiModel instanceof CatalogTrackingUiModel.SubcategoryScreen) {
            CatalogTrackingUiModel.SubcategoryScreen subcategoryScreen = (CatalogTrackingUiModel.SubcategoryScreen) catalogTrackingUiModel;
            return new Hit.ScreenHit.DefaultScreenHit(null, "catalog_l2", subcategoryScreen.f55351b, "catalog", CollectionsKt.O(new AdditionalProperty.ContentId(subcategoryScreen.f55350a)), 1, null);
        }
        if (catalogTrackingUiModel instanceof CatalogTrackingUiModel.OnCategoryClickEvent) {
            CatalogTrackingUiModel.OnCategoryClickEvent onCategoryClickEvent = (CatalogTrackingUiModel.OnCategoryClickEvent) catalogTrackingUiModel;
            String str = onCategoryClickEvent.f55333b;
            return new Hit.EventHit.DefaultEventHit(null, "catalog", "open_l2", "catalog", "click", null, ArraysKt.v(new AdditionalProperty[]{str != null ? new AdditionalProperty.ContentId(str) : null, new AdditionalProperty.ContentType(onCategoryClickEvent.f55332a)}), 33, null);
        }
        if (catalogTrackingUiModel instanceof CatalogTrackingUiModel.OnSubcategoryClickEvent) {
            CatalogTrackingUiModel.OnSubcategoryClickEvent onSubcategoryClickEvent = (CatalogTrackingUiModel.OnSubcategoryClickEvent) catalogTrackingUiModel;
            return new Hit.EventHit.DefaultEventHit(null, tr.g("catalog_", onSubcategoryClickEvent.f55345a), "open_l3", "catalog", "click", null, CollectionsKt.P(new AdditionalProperty.ContentId(onSubcategoryClickEvent.f55347c), new AdditionalProperty.ContentType(onSubcategoryClickEvent.f55346b)), 33, null);
        }
        if (catalogTrackingUiModel instanceof CatalogTrackingUiModel.OnSubcategoryCardClickEvent) {
            return new Hit.EventHit.DefaultEventHit(null, tr.g("catalog_", ((CatalogTrackingUiModel.OnSubcategoryCardClickEvent) catalogTrackingUiModel).f55344a), "open_push", "catalog", "click", null, null, 97, null);
        }
        if (catalogTrackingUiModel instanceof CatalogTrackingUiModel.OnPlpClickEvent) {
            CatalogTrackingUiModel.OnPlpClickEvent onPlpClickEvent = (CatalogTrackingUiModel.OnPlpClickEvent) catalogTrackingUiModel;
            return new Hit.EventHit.DefaultEventHit(null, tr.g("product_list_", onPlpClickEvent.f55337a), "select_plp", "catalog", "click", null, CollectionsKt.P(new AdditionalProperty.ContentId(onPlpClickEvent.f55339c), new AdditionalProperty.ContentType(onPlpClickEvent.f55338b), new AdditionalProperty.CategoryWithImage(onPlpClickEvent.d)), 33, null);
        }
        if (catalogTrackingUiModel instanceof CatalogTrackingUiModel.OnCategoryScrollEvent) {
            return new Hit.EventHit.DefaultEventHit(null, "catalog", "scroll_l1", "catalog", "scroll", null, CollectionsKt.O(new AdditionalProperty.ContentId(cj.d(((CatalogTrackingUiModel.OnCategoryScrollEvent) catalogTrackingUiModel).f55334a, "_scroll"))), 33, null);
        }
        if (catalogTrackingUiModel instanceof CatalogTrackingUiModel.OnSubcategoryScrollEvent) {
            CatalogTrackingUiModel.OnSubcategoryScrollEvent onSubcategoryScrollEvent = (CatalogTrackingUiModel.OnSubcategoryScrollEvent) catalogTrackingUiModel;
            return new Hit.EventHit.DefaultEventHit(null, tr.g("catalog_", onSubcategoryScrollEvent.f55348a), "scroll_l2", "catalog", "scroll", null, CollectionsKt.O(new AdditionalProperty.ContentId(cj.d(onSubcategoryScrollEvent.f55349b, "_scroll"))), 33, null);
        }
        if (catalogTrackingUiModel instanceof CatalogTrackingUiModel.OnPlpSwipeEvent) {
            CatalogTrackingUiModel.OnPlpSwipeEvent onPlpSwipeEvent = (CatalogTrackingUiModel.OnPlpSwipeEvent) catalogTrackingUiModel;
            return new Hit.EventHit.DefaultEventHit(null, tr.g("product_list_", onPlpSwipeEvent.f55342a), "swipe_l3", "catalog", "swipe", null, CollectionsKt.O(new AdditionalProperty.ContentId(cj.d(onPlpSwipeEvent.f55343b, "_swipe"))), 33, null);
        }
        if (catalogTrackingUiModel instanceof CatalogTrackingUiModel.OnCarouselSwipeEvent) {
            return new Hit.EventHit.DefaultEventHit(null, tr.g("catalog_", ((CatalogTrackingUiModel.OnCarouselSwipeEvent) catalogTrackingUiModel).f55331a), "swipe_carousel", "catalog", "swipe", null, CollectionsKt.O(new AdditionalProperty.ContentType("CarouselMedium")), 33, null);
        }
        if (catalogTrackingUiModel instanceof CatalogTrackingUiModel.OnHitCarouselItemEvent) {
            CatalogTrackingUiModel.OnHitCarouselItemEvent onHitCarouselItemEvent = (CatalogTrackingUiModel.OnHitCarouselItemEvent) catalogTrackingUiModel;
            return new Hit.EventHit.DefaultEventHit(null, tr.g("catalog_", onHitCarouselItemEvent.f55335a), "select_carousel", "catalog", "click", null, CollectionsKt.P(new AdditionalProperty.ContentType("CarouselMedium"), new AdditionalProperty.Index(onHitCarouselItemEvent.f55336b + 1)), 33, null);
        }
        if (catalogTrackingUiModel instanceof CatalogTrackingUiModel.OnPlpScrollEvent) {
            CatalogTrackingUiModel.OnPlpScrollEvent onPlpScrollEvent = (CatalogTrackingUiModel.OnPlpScrollEvent) catalogTrackingUiModel;
            return new Hit.EventHit.DefaultEventHit(HitType.Scroll.f66520a, tr.g("product_list_", onPlpScrollEvent.f55340a), cj.d(onPlpScrollEvent.f55341b, "%"), "catalog", "scroll", null, null, 96, null);
        }
        v40.g();
        return null;
    }
}
