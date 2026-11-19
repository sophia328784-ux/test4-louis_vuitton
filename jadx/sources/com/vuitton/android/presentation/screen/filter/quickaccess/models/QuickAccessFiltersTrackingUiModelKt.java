package com.vuitton.android.presentation.screen.filter.quickaccess.models;

import com.vuitton.android.presentation.screen.filter.quickaccess.QafSource;
import com.vuitton.foundation.model.domain.model.analytics.AdditionalProperty;
import com.vuitton.foundation.model.domain.model.analytics.Hit;
import defpackage.v40;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class QuickAccessFiltersTrackingUiModelKt {

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f58168a;

        static {
            int[] iArr = new int[QafSource.values().length];
            try {
                iArr[QafSource.PLP.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[QafSource.SEARCH.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f58168a = iArr;
        }
    }

    public static final String a(QafSource qafSource) {
        qafSource.getClass();
        int i2 = WhenMappings.f58168a[qafSource.ordinal()];
        if (i2 == 1) {
            return "product_list";
        }
        if (i2 == 2) {
            return "search_result";
        }
        v40.g();
        return null;
    }

    public static final String b(QafSource qafSource) {
        int i2 = qafSource == null ? -1 : WhenMappings.f58168a[qafSource.ordinal()];
        if (i2 != 1) {
            return i2 != 2 ? "" : "LVPass/search_catalog";
        }
        return "LVPass/products_catalog";
    }

    public static final Hit c(QuickAccessFiltersTrackingUiModel quickAccessFiltersTrackingUiModel) {
        String str;
        String str2;
        String str3;
        String str4;
        if (quickAccessFiltersTrackingUiModel instanceof QuickAccessFiltersTrackingUiModel.QuickAccessFiltersScreen) {
            return new Hit.ScreenHit.DefaultScreenHit(null, "quick_access_filters", "shop", "filters", CollectionsKt.O(new AdditionalProperty.Origin(a(((QuickAccessFiltersTrackingUiModel.QuickAccessFiltersScreen) quickAccessFiltersTrackingUiModel).f58165a))), 1, null);
        }
        if (quickAccessFiltersTrackingUiModel instanceof QuickAccessFiltersTrackingUiModel.SortFiltersOverlayScreen) {
            return new Hit.ScreenHit.DefaultScreenHit(null, "quick_access_filters_sort", "shop", "filters", CollectionsKt.O(new AdditionalProperty.Origin(a(((QuickAccessFiltersTrackingUiModel.SortFiltersOverlayScreen) quickAccessFiltersTrackingUiModel).f58166a))), 1, null);
        }
        if (quickAccessFiltersTrackingUiModel instanceof QuickAccessFiltersTrackingUiModel.BooleanFiltersOverlayScreen) {
            return new Hit.ScreenHit.DefaultScreenHit(null, "quick_access_more_filters", "shop", "filters", CollectionsKt.O(new AdditionalProperty.Origin(a(((QuickAccessFiltersTrackingUiModel.BooleanFiltersOverlayScreen) quickAccessFiltersTrackingUiModel).f58149a))), 1, null);
        }
        if (quickAccessFiltersTrackingUiModel instanceof QuickAccessFiltersTrackingUiModel.OpenFiltersEvent) {
            int i2 = WhenMappings.f58168a[((QuickAccessFiltersTrackingUiModel.OpenFiltersEvent) quickAccessFiltersTrackingUiModel).f58163a.ordinal()];
            if (i2 == 1) {
                str4 = "LVPass/products_catalog";
            } else {
                if (i2 != 2) {
                    v40.g();
                    return null;
                }
                str4 = "LVPass/search_catalog";
            }
            return new Hit.EventHit.DefaultEventHit(null, str4, "show_filters", "filters", "click", null, null, 97, null);
        }
        if (quickAccessFiltersTrackingUiModel instanceof QuickAccessFiltersTrackingUiModel.CloseFiltersEvent) {
            return new Hit.EventHit.DefaultEventHit(null, "quick_access_filters", "close", "filters", "click", null, null, 97, null);
        }
        if (quickAccessFiltersTrackingUiModel instanceof QuickAccessFiltersTrackingUiModel.HitOnSimpleFilterEvent) {
            QuickAccessFiltersTrackingUiModel.HitOnSimpleFilterEvent hitOnSimpleFilterEvent = (QuickAccessFiltersTrackingUiModel.HitOnSimpleFilterEvent) quickAccessFiltersTrackingUiModel;
            boolean z = hitOnSimpleFilterEvent.f58158a;
            if (z) {
                str2 = "unselect_filter";
            } else {
                if (z) {
                    v40.g();
                    return null;
                }
                str2 = "select_filter";
            }
            AdditionalProperty.FilterId filterId = new AdditionalProperty.FilterId(hitOnSimpleFilterEvent.f58160c);
            AdditionalProperty.CategoryId categoryId = new AdditionalProperty.CategoryId(hitOnSimpleFilterEvent.d);
            boolean z2 = hitOnSimpleFilterEvent.f58159b;
            if (z2) {
                str3 = "multiselectable";
            } else {
                if (z2) {
                    v40.g();
                    return null;
                }
                str3 = "";
            }
            return new Hit.EventHit.DefaultEventHit(null, "quick_access_filters", str2, "filters", "click", null, CollectionsKt.P(filterId, categoryId, new AdditionalProperty.ContentId(str3)), 33, null);
        }
        if (quickAccessFiltersTrackingUiModel instanceof QuickAccessFiltersTrackingUiModel.SwipeSimpleFiltersEvent) {
            return new Hit.EventHit.DefaultEventHit(null, "quick_access_filters", "filters_list", "filters", "swipe", null, CollectionsKt.O(new AdditionalProperty.CategoryId(((QuickAccessFiltersTrackingUiModel.SwipeSimpleFiltersEvent) quickAccessFiltersTrackingUiModel).f58167a)), 33, null);
        }
        if (quickAccessFiltersTrackingUiModel instanceof QuickAccessFiltersTrackingUiModel.OpenSortByPanelEvent) {
            return new Hit.EventHit.DefaultEventHit(null, "quick_access_filters", "open_sort_by", "filters", "click", null, null, 97, null);
        }
        if (quickAccessFiltersTrackingUiModel instanceof QuickAccessFiltersTrackingUiModel.HitOnSortFilterEvent) {
            return new Hit.EventHit.DefaultEventHit(null, "quick_access_filters", "select_filter", "filters", "click", null, CollectionsKt.O(new AdditionalProperty.FilterId(((QuickAccessFiltersTrackingUiModel.HitOnSortFilterEvent) quickAccessFiltersTrackingUiModel).f58161a)), 33, null);
        }
        if (quickAccessFiltersTrackingUiModel instanceof QuickAccessFiltersTrackingUiModel.OpenBooleansPanelEvent) {
            return new Hit.EventHit.DefaultEventHit(null, "quick_access_filters", "open_more_filters", "filters", "click", null, null, 97, null);
        }
        if (!(quickAccessFiltersTrackingUiModel instanceof QuickAccessFiltersTrackingUiModel.HitOnBooleanFilterEvent)) {
            if (quickAccessFiltersTrackingUiModel instanceof QuickAccessFiltersTrackingUiModel.FiltersErrorEvent) {
                return new Hit.EventHit.DefaultEventHit(null, b(((QuickAccessFiltersTrackingUiModel.FiltersErrorEvent) quickAccessFiltersTrackingUiModel).f58154a), "error", "filters", MvelScriptManager.VAR_EVENT, null, null, 97, null);
            }
            if (quickAccessFiltersTrackingUiModel instanceof QuickAccessFiltersTrackingUiModel.ClearFilterEvent) {
                QuickAccessFiltersTrackingUiModel.ClearFilterEvent clearFilterEvent = (QuickAccessFiltersTrackingUiModel.ClearFilterEvent) quickAccessFiltersTrackingUiModel;
                return new Hit.EventHit.DefaultEventHit(null, b(clearFilterEvent.f58151a), "clear_filter", "filters", "click", null, CollectionsKt.O(new AdditionalProperty.CategoryId(clearFilterEvent.f58152b)), 33, null);
            }
            if (quickAccessFiltersTrackingUiModel instanceof QuickAccessFiltersTrackingUiModel.ClearAllFiltersEvent) {
                return new Hit.EventHit.DefaultEventHit(null, b(((QuickAccessFiltersTrackingUiModel.ClearAllFiltersEvent) quickAccessFiltersTrackingUiModel).f58150a), "clear_all_filters", "filters", "click", null, null, 97, null);
            }
            v40.g();
            return null;
        }
        QuickAccessFiltersTrackingUiModel.HitOnBooleanFilterEvent hitOnBooleanFilterEvent = (QuickAccessFiltersTrackingUiModel.HitOnBooleanFilterEvent) quickAccessFiltersTrackingUiModel;
        String str5 = hitOnBooleanFilterEvent.f58155a ? "quick_access_more_filters" : "quick_access_filters";
        boolean z3 = hitOnBooleanFilterEvent.f58156b;
        if (z3) {
            str = "unselect_filter";
        } else {
            if (z3) {
                v40.g();
                return null;
            }
            str = "select_filter";
        }
        return new Hit.EventHit.DefaultEventHit(null, str5, str, "filters", "click", null, CollectionsKt.O(new AdditionalProperty.FilterId(hitOnBooleanFilterEvent.f58157c)), 33, null);
    }
}
