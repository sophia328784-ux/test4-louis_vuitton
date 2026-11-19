package com.vuitton.android.presentation.screen.search.models;

import defpackage.cj;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/vuitton/android/presentation/screen/search/models/SearchMatchUiModel;", "", "", "query", "", "Lcom/vuitton/android/presentation/screen/search/models/AutocompleteDisplayUiModel;", "display", "<init>", "(Ljava/lang/String;Ljava/util/List;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class SearchMatchUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f64255a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f64256b;

    public SearchMatchUiModel(String str, List<AutocompleteDisplayUiModel> list) {
        str.getClass();
        list.getClass();
        this.f64255a = str;
        this.f64256b = list;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SearchMatchUiModel)) {
            return false;
        }
        SearchMatchUiModel searchMatchUiModel = (SearchMatchUiModel) obj;
        return Intrinsics.c(this.f64255a, searchMatchUiModel.f64255a) && Intrinsics.c(this.f64256b, searchMatchUiModel.f64256b);
    }

    public final int hashCode() {
        return this.f64256b.hashCode() + (this.f64255a.hashCode() * 31);
    }

    public final String toString() {
        return cj.k("SearchMatchUiModel(query=", this.f64255a, ", display=", this.f64256b, ")");
    }
}
