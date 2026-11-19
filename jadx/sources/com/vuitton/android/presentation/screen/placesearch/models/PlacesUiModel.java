package com.vuitton.android.presentation.screen.placesearch.models;

import com.vuitton.foundation.model.domain.model.place.PlaceAutocomplete;
import defpackage.a;
import defpackage.o60;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.EmptyList;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\b\u0087\b\u0018\u00002\u00020\u0001B+\u0012\u000e\b\u0002\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0005¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/vuitton/android/presentation/screen/placesearch/models/PlacesUiModel;", "", "", "Lcom/vuitton/foundation/model/domain/model/place/PlaceAutocomplete;", "places", "", "isLoading", "isError", "<init>", "(Ljava/util/List;ZZ)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class PlacesUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f62694a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f62695b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f62696c;

    public PlacesUiModel(List list, boolean z, boolean z2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? EmptyList.f71768b : list, (i2 & 2) != 0 ? false : z, (i2 & 4) != 0 ? false : z2);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PlacesUiModel)) {
            return false;
        }
        PlacesUiModel placesUiModel = (PlacesUiModel) obj;
        return Intrinsics.c(this.f62694a, placesUiModel.f62694a) && this.f62695b == placesUiModel.f62695b && this.f62696c == placesUiModel.f62696c;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.f62696c) + o60.b(this.f62694a.hashCode() * 31, 31, this.f62695b);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("PlacesUiModel(places=");
        sb.append(this.f62694a);
        sb.append(", isLoading=");
        sb.append(this.f62695b);
        sb.append(", isError=");
        return a.p(sb, this.f62696c, ")");
    }

    public PlacesUiModel(List<PlaceAutocomplete> list, boolean z, boolean z2) {
        list.getClass();
        this.f62694a = list;
        this.f62695b = z;
        this.f62696c = z2;
    }

    public PlacesUiModel() {
        this(null, false, false, 7, null);
    }
}
