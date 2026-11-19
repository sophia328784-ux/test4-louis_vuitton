package com.vuitton.android.presentation.screen.osa.list.models;

import com.vuitton.android.presentation.screen.osa.models.OsaItemUiModel;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
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
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0087\b\u0018\u00002\u00020\u0001Ba\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0004\u0012\u000e\b\u0002\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\b\u0012\u000e\b\u0002\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\t0\b\u0012\b\b\u0002\u0010\f\u001a\u00020\u0004\u0012\b\b\u0002\u0010\r\u001a\u00020\u0004¢\u0006\u0004\b\u000e\u0010\u000f¨\u0006\u0010"}, d2 = {"Lcom/vuitton/android/presentation/screen/osa/list/models/OsaListViewState;", "", "Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;", "inAppDispatch", "", "isLoading", "isScreenLoading", "isError", "", "Lcom/vuitton/android/presentation/screen/osa/models/OsaItemUiModel;", "historyAppointmentList", "ongoingAppointmentList", "isOsaReasonEnabled", "isOsaModifyEnabled", "<init>", "(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;ZZZLjava/util/List;Ljava/util/List;ZZ)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class OsaListViewState {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final InAppDispatch f60905a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f60906b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f60907c;
    public final boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final List f60908e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final List f60909f;
    public final boolean g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final boolean f60910h;

    public OsaListViewState(InAppDispatch inAppDispatch, boolean z, boolean z2, boolean z3, List list, List list2, boolean z4, boolean z5, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(inAppDispatch, (i2 & 2) != 0 ? false : z, (i2 & 4) != 0 ? false : z2, (i2 & 8) != 0 ? false : z3, (i2 & 16) != 0 ? EmptyList.f71768b : list, (i2 & 32) != 0 ? EmptyList.f71768b : list2, (i2 & 64) != 0 ? false : z4, (i2 & 128) != 0 ? false : z5);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof OsaListViewState)) {
            return false;
        }
        OsaListViewState osaListViewState = (OsaListViewState) obj;
        return Intrinsics.c(this.f60905a, osaListViewState.f60905a) && this.f60906b == osaListViewState.f60906b && this.f60907c == osaListViewState.f60907c && this.d == osaListViewState.d && Intrinsics.c(this.f60908e, osaListViewState.f60908e) && Intrinsics.c(this.f60909f, osaListViewState.f60909f) && this.g == osaListViewState.g && this.f60910h == osaListViewState.f60910h;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.f60910h) + o60.b(n00.a(n00.a(o60.b(o60.b(o60.b(this.f60905a.hashCode() * 31, 31, this.f60906b), 31, this.f60907c), 31, this.d), 31, this.f60908e), 31, this.f60909f), 31, this.g);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("OsaListViewState(inAppDispatch=");
        sb.append(this.f60905a);
        sb.append(", isLoading=");
        sb.append(this.f60906b);
        sb.append(", isScreenLoading=");
        fc.y(sb, this.f60907c, ", isError=", this.d, ", historyAppointmentList=");
        a.C(sb, this.f60908e, ", ongoingAppointmentList=", this.f60909f, ", isOsaReasonEnabled=");
        return pq0.p(sb, this.g, ", isOsaModifyEnabled=", this.f60910h, ")");
    }

    public OsaListViewState(InAppDispatch inAppDispatch, boolean z, boolean z2, boolean z3, List<OsaItemUiModel> list, List<OsaItemUiModel> list2, boolean z4, boolean z5) {
        inAppDispatch.getClass();
        list.getClass();
        list2.getClass();
        this.f60905a = inAppDispatch;
        this.f60906b = z;
        this.f60907c = z2;
        this.d = z3;
        this.f60908e = list;
        this.f60909f = list2;
        this.g = z4;
        this.f60910h = z5;
    }
}
