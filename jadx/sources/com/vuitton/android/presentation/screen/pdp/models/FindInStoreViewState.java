package com.vuitton.android.presentation.screen.pdp.models;

import com.vuitton.android.presentation.model.storelocator.StoreUiModel;
import com.vuitton.android.presentation.model.stringhandling.StringResourceUiModel;
import com.vuitton.android.presentation.screen.account.addressautocomplete.model.PlaceAutocompleteUiModel;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import defpackage.n00;
import defpackage.o60;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.EmptyList;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001BM\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0004\u0012\b\b\u0002\u0010\b\u001a\u00020\u0007\u0012\u000e\b\u0002\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\n0\t\u0012\u000e\b\u0002\u0010\r\u001a\b\u0012\u0004\u0012\u00020\f0\t¢\u0006\u0004\b\u000e\u0010\u000f¨\u0006\u0010"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/models/FindInStoreViewState;", "", "Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;", "inAppDispatch", "", "isLoading", "isError", "Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;", "locationText", "", "Lcom/vuitton/android/presentation/model/storelocator/StoreUiModel;", "storeList", "Lcom/vuitton/android/presentation/screen/account/addressautocomplete/model/PlaceAutocompleteUiModel;", "placeList", "<init>", "(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;ZZLcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;Ljava/util/List;Ljava/util/List;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class FindInStoreViewState {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final InAppDispatch f61544a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f61545b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f61546c;
    public final StringResourceUiModel d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final List f61547e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final List f61548f;

    public FindInStoreViewState(InAppDispatch inAppDispatch, boolean z, boolean z2, StringResourceUiModel stringResourceUiModel, List list, List list2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(inAppDispatch, (i2 & 2) != 0 ? false : z, (i2 & 4) != 0 ? false : z2, (i2 & 8) != 0 ? StringResourceUiModel.Empty.f51825b : stringResourceUiModel, (i2 & 16) != 0 ? EmptyList.f71768b : list, (i2 & 32) != 0 ? EmptyList.f71768b : list2);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof FindInStoreViewState)) {
            return false;
        }
        FindInStoreViewState findInStoreViewState = (FindInStoreViewState) obj;
        return Intrinsics.c(this.f61544a, findInStoreViewState.f61544a) && this.f61545b == findInStoreViewState.f61545b && this.f61546c == findInStoreViewState.f61546c && Intrinsics.c(this.d, findInStoreViewState.d) && Intrinsics.c(this.f61547e, findInStoreViewState.f61547e) && Intrinsics.c(this.f61548f, findInStoreViewState.f61548f);
    }

    public final int hashCode() {
        return this.f61548f.hashCode() + n00.a((this.d.hashCode() + o60.b(o60.b(this.f61544a.hashCode() * 31, 31, this.f61545b), 31, this.f61546c)) * 31, 31, this.f61547e);
    }

    public final String toString() {
        return "FindInStoreViewState(inAppDispatch=" + this.f61544a + ", isLoading=" + this.f61545b + ", isError=" + this.f61546c + ", locationText=" + this.d + ", storeList=" + this.f61547e + ", placeList=" + this.f61548f + ")";
    }

    public FindInStoreViewState(InAppDispatch inAppDispatch, boolean z, boolean z2, StringResourceUiModel stringResourceUiModel, List<StoreUiModel> list, List<PlaceAutocompleteUiModel> list2) {
        inAppDispatch.getClass();
        stringResourceUiModel.getClass();
        list.getClass();
        list2.getClass();
        this.f61544a = inAppDispatch;
        this.f61545b = z;
        this.f61546c = z2;
        this.d = stringResourceUiModel;
        this.f61547e = list;
        this.f61548f = list2;
    }
}
