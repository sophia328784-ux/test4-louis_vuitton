package com.vuitton.android.presentation.screen.options.dispatch.models;

import com.vuitton.foundation.model.domain.model.dispatch.DispatchArea;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import defpackage.n00;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.EmptyList;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u00002\u00020\u0001BC\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u001a\b\u0002\u0010\t\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\u00020\u00070\u0006\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"Lcom/vuitton/android/presentation/screen/options/dispatch/models/DispatchViewState;", "", "", "isLoading", "Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;", "inAppDispatch", "", "Lkotlin/Pair;", "Lcom/vuitton/foundation/model/domain/model/dispatch/DispatchArea;", "dispatchCountryList", "selectedCountry", "<init>", "(ZLcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Ljava/util/List;Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class DispatchViewState {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f59830a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final InAppDispatch f59831b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final List f59832c;
    public final InAppDispatch d;

    public DispatchViewState(boolean z, InAppDispatch inAppDispatch, List list, InAppDispatch inAppDispatch2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(z, (i2 & 2) != 0 ? null : inAppDispatch, (i2 & 4) != 0 ? EmptyList.f71768b : list, (i2 & 8) != 0 ? null : inAppDispatch2);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof DispatchViewState)) {
            return false;
        }
        DispatchViewState dispatchViewState = (DispatchViewState) obj;
        return this.f59830a == dispatchViewState.f59830a && Intrinsics.c(this.f59831b, dispatchViewState.f59831b) && Intrinsics.c(this.f59832c, dispatchViewState.f59832c) && Intrinsics.c(this.d, dispatchViewState.d);
    }

    public final int hashCode() {
        int iHashCode = Boolean.hashCode(this.f59830a) * 31;
        InAppDispatch inAppDispatch = this.f59831b;
        int iA = n00.a((iHashCode + (inAppDispatch == null ? 0 : inAppDispatch.hashCode())) * 31, 31, this.f59832c);
        InAppDispatch inAppDispatch2 = this.d;
        return iA + (inAppDispatch2 != null ? inAppDispatch2.hashCode() : 0);
    }

    public final String toString() {
        return "DispatchViewState(isLoading=" + this.f59830a + ", inAppDispatch=" + this.f59831b + ", dispatchCountryList=" + this.f59832c + ", selectedCountry=" + this.d + ")";
    }

    public DispatchViewState(boolean z, InAppDispatch inAppDispatch, List<Pair<DispatchArea, Boolean>> list, InAppDispatch inAppDispatch2) {
        list.getClass();
        this.f59830a = z;
        this.f59831b = inAppDispatch;
        this.f59832c = list;
        this.d = inAppDispatch2;
    }
}
