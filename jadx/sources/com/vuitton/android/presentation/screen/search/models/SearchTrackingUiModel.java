package com.vuitton.android.presentation.screen.search.models;

import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import defpackage.d21;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0011\u0002\u0003\u0004\u0005\u0006\u0007\b\t\n\u000b\f\r\u000e\u000f\u0010\u0011\u0012\u0082\u0001\u0011\u0013\u0014\u0015\u0016\u0017\u0018\u0019\u001a\u001b\u001c\u001d\u001e\u001f !\"#¨\u0006$À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/search/models/SearchTrackingUiModel;", "", "Screen", "OnNoResult", "OnHitOnBottomSearchBar", "OnHitOnTextualHistory", "OnHitOnProductHistory", "OnClearHistory", "OnHitOnTrending", "OnHitOnAutocomplete", "OnBackHitSearch", "OnBlankHitSearch", "OnHitClearSearch", "OnHitOnResultCarouselProduct", "OnHitOnSuggestionsCarouselProduct", "OnSwipeResultCarousel", "OnSwipeSuggestionCarousel", "OnHitOnSearch", "OnHitOnKeywordCardEvent", "Lcom/vuitton/android/presentation/screen/search/models/SearchTrackingUiModel$OnBackHitSearch;", "Lcom/vuitton/android/presentation/screen/search/models/SearchTrackingUiModel$OnBlankHitSearch;", "Lcom/vuitton/android/presentation/screen/search/models/SearchTrackingUiModel$OnClearHistory;", "Lcom/vuitton/android/presentation/screen/search/models/SearchTrackingUiModel$OnHitClearSearch;", "Lcom/vuitton/android/presentation/screen/search/models/SearchTrackingUiModel$OnHitOnAutocomplete;", "Lcom/vuitton/android/presentation/screen/search/models/SearchTrackingUiModel$OnHitOnBottomSearchBar;", "Lcom/vuitton/android/presentation/screen/search/models/SearchTrackingUiModel$OnHitOnKeywordCardEvent;", "Lcom/vuitton/android/presentation/screen/search/models/SearchTrackingUiModel$OnHitOnProductHistory;", "Lcom/vuitton/android/presentation/screen/search/models/SearchTrackingUiModel$OnHitOnResultCarouselProduct;", "Lcom/vuitton/android/presentation/screen/search/models/SearchTrackingUiModel$OnHitOnSearch;", "Lcom/vuitton/android/presentation/screen/search/models/SearchTrackingUiModel$OnHitOnSuggestionsCarouselProduct;", "Lcom/vuitton/android/presentation/screen/search/models/SearchTrackingUiModel$OnHitOnTextualHistory;", "Lcom/vuitton/android/presentation/screen/search/models/SearchTrackingUiModel$OnHitOnTrending;", "Lcom/vuitton/android/presentation/screen/search/models/SearchTrackingUiModel$OnNoResult;", "Lcom/vuitton/android/presentation/screen/search/models/SearchTrackingUiModel$OnSwipeResultCarousel;", "Lcom/vuitton/android/presentation/screen/search/models/SearchTrackingUiModel$OnSwipeSuggestionCarousel;", "Lcom/vuitton/android/presentation/screen/search/models/SearchTrackingUiModel$Screen;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface SearchTrackingUiModel {

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/search/models/SearchTrackingUiModel$OnBackHitSearch;", "Lcom/vuitton/android/presentation/screen/search/models/SearchTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnBackHitSearch implements SearchTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final OnBackHitSearch f64264a = new OnBackHitSearch();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OnBackHitSearch);
        }

        public final int hashCode() {
            return 1891636096;
        }

        public final String toString() {
            return "OnBackHitSearch";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/search/models/SearchTrackingUiModel$OnBlankHitSearch;", "Lcom/vuitton/android/presentation/screen/search/models/SearchTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnBlankHitSearch implements SearchTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final OnBlankHitSearch f64265a = new OnBlankHitSearch();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OnBlankHitSearch);
        }

        public final int hashCode() {
            return 467726363;
        }

        public final String toString() {
            return "OnBlankHitSearch";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/search/models/SearchTrackingUiModel$OnClearHistory;", "Lcom/vuitton/android/presentation/screen/search/models/SearchTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnClearHistory implements SearchTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final OnClearHistory f64266a = new OnClearHistory();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OnClearHistory);
        }

        public final int hashCode() {
            return -1080464773;
        }

        public final String toString() {
            return "OnClearHistory";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/search/models/SearchTrackingUiModel$OnHitClearSearch;", "Lcom/vuitton/android/presentation/screen/search/models/SearchTrackingUiModel;", "", "previousQuery", "<init>", "(Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnHitClearSearch implements SearchTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f64267a;

        public OnHitClearSearch(String str) {
            str.getClass();
            this.f64267a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof OnHitClearSearch) && Intrinsics.c(this.f64267a, ((OnHitClearSearch) obj).f64267a);
        }

        public final int hashCode() {
            return this.f64267a.hashCode();
        }

        public final String toString() {
            return fc.h("OnHitClearSearch(previousQuery=", this.f64267a, ")");
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/search/models/SearchTrackingUiModel$OnHitOnAutocomplete;", "Lcom/vuitton/android/presentation/screen/search/models/SearchTrackingUiModel;", "", "autocomplete", "<init>", "(Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnHitOnAutocomplete implements SearchTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f64268a;

        public OnHitOnAutocomplete(String str) {
            str.getClass();
            this.f64268a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof OnHitOnAutocomplete) && Intrinsics.c(this.f64268a, ((OnHitOnAutocomplete) obj).f64268a);
        }

        public final int hashCode() {
            return this.f64268a.hashCode();
        }

        public final String toString() {
            return fc.h("OnHitOnAutocomplete(autocomplete=", this.f64268a, ")");
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/search/models/SearchTrackingUiModel$OnHitOnBottomSearchBar;", "Lcom/vuitton/android/presentation/screen/search/models/SearchTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnHitOnBottomSearchBar implements SearchTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final OnHitOnBottomSearchBar f64269a = new OnHitOnBottomSearchBar();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OnHitOnBottomSearchBar);
        }

        public final int hashCode() {
            return 1059490082;
        }

        public final String toString() {
            return "OnHitOnBottomSearchBar";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0087\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/presentation/screen/search/models/SearchTrackingUiModel$OnHitOnKeywordCardEvent;", "Lcom/vuitton/android/presentation/screen/search/models/SearchTrackingUiModel;", "", "bannerTitle", "keyword", "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnHitOnKeywordCardEvent implements SearchTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f64270a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f64271b;

        public OnHitOnKeywordCardEvent(String str, String str2) {
            str.getClass();
            str2.getClass();
            this.f64270a = str;
            this.f64271b = str2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof OnHitOnKeywordCardEvent)) {
                return false;
            }
            OnHitOnKeywordCardEvent onHitOnKeywordCardEvent = (OnHitOnKeywordCardEvent) obj;
            return Intrinsics.c(this.f64270a, onHitOnKeywordCardEvent.f64270a) && Intrinsics.c(this.f64271b, onHitOnKeywordCardEvent.f64271b);
        }

        public final int hashCode() {
            return this.f64271b.hashCode() + (this.f64270a.hashCode() * 31);
        }

        public final String toString() {
            return d21.l("OnHitOnKeywordCardEvent(bannerTitle=", this.f64270a, ", keyword=", this.f64271b, ")");
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/search/models/SearchTrackingUiModel$OnHitOnProductHistory;", "Lcom/vuitton/android/presentation/screen/search/models/SearchTrackingUiModel;", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;", "sku", "<init>", "(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnHitOnProductHistory implements SearchTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f64272a;

        public OnHitOnProductHistory(String str, DefaultConstructorMarker defaultConstructorMarker) {
            str.getClass();
            this.f64272a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof OnHitOnProductHistory)) {
                return false;
            }
            String str = ((OnHitOnProductHistory) obj).f64272a;
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return this.f64272a.equals(str);
        }

        public final int hashCode() {
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return this.f64272a.hashCode();
        }

        public final String toString() {
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return fc.h("OnHitOnProductHistory(sku=", this.f64272a, ")");
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/search/models/SearchTrackingUiModel$OnHitOnResultCarouselProduct;", "Lcom/vuitton/android/presentation/screen/search/models/SearchTrackingUiModel;", "", "query", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;", "sku", "<init>", "(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnHitOnResultCarouselProduct implements SearchTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f64273a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f64274b;

        public OnHitOnResultCarouselProduct(String str, String str2, DefaultConstructorMarker defaultConstructorMarker) {
            str.getClass();
            str2.getClass();
            this.f64273a = str;
            this.f64274b = str2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof OnHitOnResultCarouselProduct)) {
                return false;
            }
            OnHitOnResultCarouselProduct onHitOnResultCarouselProduct = (OnHitOnResultCarouselProduct) obj;
            if (!this.f64273a.equals(onHitOnResultCarouselProduct.f64273a)) {
                return false;
            }
            String str = onHitOnResultCarouselProduct.f64274b;
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return this.f64274b.equals(str);
        }

        public final int hashCode() {
            int iHashCode = this.f64273a.hashCode() * 31;
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return this.f64274b.hashCode() + iHashCode;
        }

        public final String toString() {
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return d21.l("OnHitOnResultCarouselProduct(query=", this.f64273a, ", sku=", this.f64274b, ")");
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/search/models/SearchTrackingUiModel$OnHitOnSearch;", "Lcom/vuitton/android/presentation/screen/search/models/SearchTrackingUiModel;", "", "query", "<init>", "(Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnHitOnSearch implements SearchTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f64275a;

        public OnHitOnSearch(String str) {
            str.getClass();
            this.f64275a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof OnHitOnSearch) && Intrinsics.c(this.f64275a, ((OnHitOnSearch) obj).f64275a);
        }

        public final int hashCode() {
            return this.f64275a.hashCode();
        }

        public final String toString() {
            return fc.h("OnHitOnSearch(query=", this.f64275a, ")");
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/search/models/SearchTrackingUiModel$OnHitOnSuggestionsCarouselProduct;", "Lcom/vuitton/android/presentation/screen/search/models/SearchTrackingUiModel;", "", "query", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;", "sku", "<init>", "(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnHitOnSuggestionsCarouselProduct implements SearchTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f64276a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f64277b;

        public OnHitOnSuggestionsCarouselProduct(String str, String str2, DefaultConstructorMarker defaultConstructorMarker) {
            str.getClass();
            str2.getClass();
            this.f64276a = str;
            this.f64277b = str2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof OnHitOnSuggestionsCarouselProduct)) {
                return false;
            }
            OnHitOnSuggestionsCarouselProduct onHitOnSuggestionsCarouselProduct = (OnHitOnSuggestionsCarouselProduct) obj;
            if (!this.f64276a.equals(onHitOnSuggestionsCarouselProduct.f64276a)) {
                return false;
            }
            String str = onHitOnSuggestionsCarouselProduct.f64277b;
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return this.f64277b.equals(str);
        }

        public final int hashCode() {
            int iHashCode = this.f64276a.hashCode() * 31;
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return this.f64277b.hashCode() + iHashCode;
        }

        public final String toString() {
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return d21.l("OnHitOnSuggestionsCarouselProduct(query=", this.f64276a, ", sku=", this.f64277b, ")");
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/search/models/SearchTrackingUiModel$OnHitOnTextualHistory;", "Lcom/vuitton/android/presentation/screen/search/models/SearchTrackingUiModel;", "", "textualSearch", "<init>", "(Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnHitOnTextualHistory implements SearchTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f64278a;

        public OnHitOnTextualHistory(String str) {
            str.getClass();
            this.f64278a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof OnHitOnTextualHistory) && Intrinsics.c(this.f64278a, ((OnHitOnTextualHistory) obj).f64278a);
        }

        public final int hashCode() {
            return this.f64278a.hashCode();
        }

        public final String toString() {
            return fc.h("OnHitOnTextualHistory(textualSearch=", this.f64278a, ")");
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/search/models/SearchTrackingUiModel$OnHitOnTrending;", "Lcom/vuitton/android/presentation/screen/search/models/SearchTrackingUiModel;", "", "trending", "<init>", "(Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnHitOnTrending implements SearchTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f64279a;

        public OnHitOnTrending(String str) {
            str.getClass();
            this.f64279a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof OnHitOnTrending) && Intrinsics.c(this.f64279a, ((OnHitOnTrending) obj).f64279a);
        }

        public final int hashCode() {
            return this.f64279a.hashCode();
        }

        public final String toString() {
            return fc.h("OnHitOnTrending(trending=", this.f64279a, ")");
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/search/models/SearchTrackingUiModel$OnNoResult;", "Lcom/vuitton/android/presentation/screen/search/models/SearchTrackingUiModel;", "", "query", "<init>", "(Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnNoResult implements SearchTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f64280a;

        public OnNoResult(String str) {
            str.getClass();
            this.f64280a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof OnNoResult) && Intrinsics.c(this.f64280a, ((OnNoResult) obj).f64280a);
        }

        public final int hashCode() {
            return this.f64280a.hashCode();
        }

        public final String toString() {
            return fc.h("OnNoResult(query=", this.f64280a, ")");
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/search/models/SearchTrackingUiModel$OnSwipeResultCarousel;", "Lcom/vuitton/android/presentation/screen/search/models/SearchTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnSwipeResultCarousel implements SearchTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final OnSwipeResultCarousel f64281a = new OnSwipeResultCarousel();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OnSwipeResultCarousel);
        }

        public final int hashCode() {
            return 1926061827;
        }

        public final String toString() {
            return "OnSwipeResultCarousel";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/search/models/SearchTrackingUiModel$OnSwipeSuggestionCarousel;", "Lcom/vuitton/android/presentation/screen/search/models/SearchTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnSwipeSuggestionCarousel implements SearchTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final OnSwipeSuggestionCarousel f64282a = new OnSwipeSuggestionCarousel();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OnSwipeSuggestionCarousel);
        }

        public final int hashCode() {
            return 2036393706;
        }

        public final String toString() {
            return "OnSwipeSuggestionCarousel";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/search/models/SearchTrackingUiModel$Screen;", "Lcom/vuitton/android/presentation/screen/search/models/SearchTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Screen implements SearchTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final Screen f64283a = new Screen();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof Screen);
        }

        public final int hashCode() {
            return -1482727711;
        }

        public final String toString() {
            return "Screen";
        }
    }
}
