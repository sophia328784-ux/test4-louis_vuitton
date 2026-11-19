package com.vuitton.android.presentation.screen.osa.reasons.models;

import defpackage.cj;
import defpackage.n00;
import defpackage.o60;
import defpackage.pq0;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.EmptyList;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0087\b\u0018\u00002\u00020\u0001BK\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0002\u0012\u000e\b\u0002\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0006\u0012\b\b\u0002\u0010\t\u001a\u00020\u0002\u0012\b\b\u0002\u0010\n\u001a\u00020\u0002¢\u0006\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"Lcom/vuitton/android/presentation/screen/osa/reasons/models/OsaReasonsFormViewState;", "", "", "isLoading", "isError", "", "Lcom/vuitton/android/presentation/screen/osa/reasons/models/OsaReasonUiModel;", "reasonsList", "selectedReason", "isExpanded", "isPrefilledMode", "<init>", "(ZZLjava/util/List;Lcom/vuitton/android/presentation/screen/osa/reasons/models/OsaReasonUiModel;ZZ)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class OsaReasonsFormViewState {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f60968a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f60969b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final List f60970c;
    public final OsaReasonUiModel d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f60971e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f60972f;

    public OsaReasonsFormViewState(boolean z, boolean z2, List list, OsaReasonUiModel osaReasonUiModel, boolean z3, boolean z4, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? true : z, (i2 & 2) != 0 ? false : z2, (i2 & 4) != 0 ? EmptyList.f71768b : list, (i2 & 8) != 0 ? null : osaReasonUiModel, (i2 & 16) != 0 ? false : z3, (i2 & 32) != 0 ? false : z4);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof OsaReasonsFormViewState)) {
            return false;
        }
        OsaReasonsFormViewState osaReasonsFormViewState = (OsaReasonsFormViewState) obj;
        return this.f60968a == osaReasonsFormViewState.f60968a && this.f60969b == osaReasonsFormViewState.f60969b && Intrinsics.c(this.f60970c, osaReasonsFormViewState.f60970c) && Intrinsics.c(this.d, osaReasonsFormViewState.d) && this.f60971e == osaReasonsFormViewState.f60971e && this.f60972f == osaReasonsFormViewState.f60972f;
    }

    public final int hashCode() {
        int iA = n00.a(o60.b(Boolean.hashCode(this.f60968a) * 31, 31, this.f60969b), 31, this.f60970c);
        OsaReasonUiModel osaReasonUiModel = this.d;
        return Boolean.hashCode(this.f60972f) + o60.b((iA + (osaReasonUiModel == null ? 0 : osaReasonUiModel.hashCode())) * 31, 31, this.f60971e);
    }

    public final String toString() {
        StringBuilder sbM = cj.m("OsaReasonsFormViewState(isLoading=", ", isError=", ", reasonsList=", this.f60968a, this.f60969b);
        sbM.append(this.f60970c);
        sbM.append(", selectedReason=");
        sbM.append(this.d);
        sbM.append(", isExpanded=");
        return pq0.p(sbM, this.f60971e, ", isPrefilledMode=", this.f60972f, ")");
    }

    public OsaReasonsFormViewState(boolean z, boolean z2, List<OsaReasonUiModel> list, OsaReasonUiModel osaReasonUiModel, boolean z3, boolean z4) {
        list.getClass();
        this.f60968a = z;
        this.f60969b = z2;
        this.f60970c = list;
        this.d = osaReasonUiModel;
        this.f60971e = z3;
        this.f60972f = z4;
    }

    public OsaReasonsFormViewState() {
        this(false, false, null, null, false, false, 63, null);
    }
}
