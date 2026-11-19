package com.vuitton.android.presentation.screen.booking.list.models;

import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import defpackage.a;
import defpackage.n00;
import defpackage.o60;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.EmptyList;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001BC\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0004\u0012\u000e\b\u0002\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\u0007\u0012\u000e\b\u0002\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\n0\u0007¢\u0006\u0004\b\f\u0010\r¨\u0006\u000e"}, d2 = {"Lcom/vuitton/android/presentation/screen/booking/list/models/BookingListViewState;", "", "Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;", "inAppDispatch", "", "isLoading", "isError", "", "Lcom/vuitton/android/presentation/screen/booking/list/models/BookingUiModel;", "onGoings", "Lcom/vuitton/android/presentation/screen/booking/list/models/BookingAdditionalUiModel;", "additional", "<init>", "(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;ZZLjava/util/List;Ljava/util/List;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class BookingListViewState {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final InAppDispatch f54610a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f54611b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f54612c;
    public final List d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final List f54613e;

    public BookingListViewState(InAppDispatch inAppDispatch, boolean z, boolean z2, List list, List list2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(inAppDispatch, (i2 & 2) != 0 ? true : z, (i2 & 4) != 0 ? false : z2, (i2 & 8) != 0 ? EmptyList.f71768b : list, (i2 & 16) != 0 ? EmptyList.f71768b : list2);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof BookingListViewState)) {
            return false;
        }
        BookingListViewState bookingListViewState = (BookingListViewState) obj;
        return Intrinsics.c(this.f54610a, bookingListViewState.f54610a) && this.f54611b == bookingListViewState.f54611b && this.f54612c == bookingListViewState.f54612c && Intrinsics.c(this.d, bookingListViewState.d) && Intrinsics.c(this.f54613e, bookingListViewState.f54613e);
    }

    public final int hashCode() {
        return this.f54613e.hashCode() + n00.a(o60.b(o60.b(this.f54610a.hashCode() * 31, 31, this.f54611b), 31, this.f54612c), 31, this.d);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("BookingListViewState(inAppDispatch=");
        sb.append(this.f54610a);
        sb.append(", isLoading=");
        sb.append(this.f54611b);
        sb.append(", isError=");
        sb.append(this.f54612c);
        sb.append(", onGoings=");
        sb.append(this.d);
        sb.append(", additional=");
        return a.o(sb, this.f54613e, ")");
    }

    public BookingListViewState(InAppDispatch inAppDispatch, boolean z, boolean z2, List<BookingUiModel> list, List<BookingAdditionalUiModel> list2) {
        inAppDispatch.getClass();
        list.getClass();
        list2.getClass();
        this.f54610a = inAppDispatch;
        this.f54611b = z;
        this.f54612c = z2;
        this.d = list;
        this.f54613e = list2;
    }
}
