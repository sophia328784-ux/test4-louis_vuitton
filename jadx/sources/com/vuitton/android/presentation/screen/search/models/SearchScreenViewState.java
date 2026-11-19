package com.vuitton.android.presentation.screen.search.models;

import defpackage.a;
import defpackage.fc;
import defpackage.n00;
import defpackage.o60;
import defpackage.pq0;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.EmptyList;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\b\u0087\b\u0018\u00002\u00020\u0001Bw\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\u000e\b\u0002\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006\u0012\u000e\b\u0002\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\u0006\u0012\u000e\b\u0002\u0010\r\u001a\b\u0012\u0004\u0012\u00020\f0\u000b\u0012\u000e\b\u0002\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u000e0\u000b\u0012\b\b\u0002\u0010\u0011\u001a\u00020\u0010\u0012\b\b\u0002\u0010\u0013\u001a\u00020\u0012\u0012\b\b\u0002\u0010\u0014\u001a\u00020\u0012¢\u0006\u0004\b\u0015\u0010\u0016¨\u0006\u0017"}, d2 = {"Lcom/vuitton/android/presentation/screen/search/models/SearchScreenViewState;", "", "Lcom/vuitton/android/presentation/screen/search/models/SearchState;", "state", "Lcom/vuitton/android/presentation/screen/search/models/HistoryUiModel;", "history", "Lcom/vuitton/android/presentation/screen/search/models/SearchListState;", "Lcom/vuitton/android/presentation/screen/search/models/TrendingItemUiModel;", "trendingList", "Lcom/vuitton/android/presentation/screen/search/models/SuggestionItemUiModel;", "suggestionList", "", "Lcom/vuitton/android/presentation/screen/search/models/SearchMatchUiModel;", "autocompleteSearchMatchList", "Lcom/vuitton/android/presentation/screen/search/models/SearchHintUiModel;", "autocompleteSearchHintList", "", "currentQuery", "", "isHistoryEmpty", "isAICompanionEnabled", "<init>", "(Lcom/vuitton/android/presentation/screen/search/models/SearchState;Lcom/vuitton/android/presentation/screen/search/models/HistoryUiModel;Lcom/vuitton/android/presentation/screen/search/models/SearchListState;Lcom/vuitton/android/presentation/screen/search/models/SearchListState;Ljava/util/List;Ljava/util/List;Ljava/lang/String;ZZ)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class SearchScreenViewState {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final SearchState f64257a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final HistoryUiModel f64258b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final SearchListState f64259c;
    public final SearchListState d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final List f64260e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final List f64261f;
    public final String g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final boolean f64262h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final boolean f64263i;

    public SearchScreenViewState(SearchState searchState, HistoryUiModel historyUiModel, SearchListState searchListState, SearchListState searchListState2, List list, List list2, String str, boolean z, boolean z2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(searchState, (i2 & 2) != 0 ? new HistoryUiModel(null, 1, null) : historyUiModel, (i2 & 4) != 0 ? new SearchListState.Idle() : searchListState, (i2 & 8) != 0 ? new SearchListState.Idle() : searchListState2, (i2 & 16) != 0 ? EmptyList.f71768b : list, (i2 & 32) != 0 ? EmptyList.f71768b : list2, (i2 & 64) != 0 ? "" : str, (i2 & 128) == 0 ? z : true, (i2 & 256) != 0 ? false : z2);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SearchScreenViewState)) {
            return false;
        }
        SearchScreenViewState searchScreenViewState = (SearchScreenViewState) obj;
        return this.f64257a == searchScreenViewState.f64257a && Intrinsics.c(this.f64258b, searchScreenViewState.f64258b) && Intrinsics.c(this.f64259c, searchScreenViewState.f64259c) && Intrinsics.c(this.d, searchScreenViewState.d) && Intrinsics.c(this.f64260e, searchScreenViewState.f64260e) && Intrinsics.c(this.f64261f, searchScreenViewState.f64261f) && Intrinsics.c(this.g, searchScreenViewState.g) && this.f64262h == searchScreenViewState.f64262h && this.f64263i == searchScreenViewState.f64263i;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.f64263i) + o60.b(fc.b(n00.a(n00.a((this.d.hashCode() + ((this.f64259c.hashCode() + n00.a(this.f64257a.hashCode() * 31, 31, this.f64258b.f64248a)) * 31)) * 31, 31, this.f64260e), 31, this.f64261f), 31, this.g), 31, this.f64262h);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("SearchScreenViewState(state=");
        sb.append(this.f64257a);
        sb.append(", history=");
        sb.append(this.f64258b);
        sb.append(", trendingList=");
        sb.append(this.f64259c);
        sb.append(", suggestionList=");
        sb.append(this.d);
        sb.append(", autocompleteSearchMatchList=");
        a.C(sb, this.f64260e, ", autocompleteSearchHintList=", this.f64261f, ", currentQuery=");
        pq0.A(this.g, ", isHistoryEmpty=", ", isAICompanionEnabled=", sb, this.f64262h);
        return a.p(sb, this.f64263i, ")");
    }

    public SearchScreenViewState(SearchState searchState, HistoryUiModel historyUiModel, SearchListState<TrendingItemUiModel> searchListState, SearchListState<SuggestionItemUiModel> searchListState2, List<SearchMatchUiModel> list, List<SearchHintUiModel> list2, String str, boolean z, boolean z2) {
        searchState.getClass();
        historyUiModel.getClass();
        searchListState.getClass();
        searchListState2.getClass();
        list.getClass();
        list2.getClass();
        str.getClass();
        this.f64257a = searchState;
        this.f64258b = historyUiModel;
        this.f64259c = searchListState;
        this.d = searchListState2;
        this.f64260e = list;
        this.f64261f = list2;
        this.g = str;
        this.f64262h = z;
        this.f64263i = z2;
    }
}
