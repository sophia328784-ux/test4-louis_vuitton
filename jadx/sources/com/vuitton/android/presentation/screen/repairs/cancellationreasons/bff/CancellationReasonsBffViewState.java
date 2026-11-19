package com.vuitton.android.presentation.screen.repairs.cancellationreasons.bff;

import com.vuitton.android.presentation.screen.repairs.models.bff.CareServiceDetailUiModel;
import defpackage.cj;
import defpackage.n00;
import defpackage.o60;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.EmptyList;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u00002\u00020\u0001BA\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0002\u0012\u000e\b\u0002\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0007¢\u0006\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/vuitton/android/presentation/screen/repairs/cancellationreasons/bff/CancellationReasonsBffViewState;", "", "", "isLoading", "isError", "isAssessmentDone", "", "Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel$CancellationReason;", "cancellationReasonList", "selectedCancellationReason", "<init>", "(ZZZLjava/util/List;Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel$CancellationReason;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class CancellationReasonsBffViewState {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f63612a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f63613b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f63614c;
    public final List d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final CareServiceDetailUiModel.CancellationReason f63615e;

    public CancellationReasonsBffViewState(boolean z, boolean z2, boolean z3, List list, CareServiceDetailUiModel.CancellationReason cancellationReason, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? false : z, (i2 & 2) != 0 ? false : z2, (i2 & 4) != 0 ? false : z3, (i2 & 8) != 0 ? EmptyList.f71768b : list, (i2 & 16) != 0 ? null : cancellationReason);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CancellationReasonsBffViewState)) {
            return false;
        }
        CancellationReasonsBffViewState cancellationReasonsBffViewState = (CancellationReasonsBffViewState) obj;
        return this.f63612a == cancellationReasonsBffViewState.f63612a && this.f63613b == cancellationReasonsBffViewState.f63613b && this.f63614c == cancellationReasonsBffViewState.f63614c && Intrinsics.c(this.d, cancellationReasonsBffViewState.d) && Intrinsics.c(this.f63615e, cancellationReasonsBffViewState.f63615e);
    }

    public final int hashCode() {
        int iA = n00.a(o60.b(o60.b(Boolean.hashCode(this.f63612a) * 31, 31, this.f63613b), 31, this.f63614c), 31, this.d);
        CareServiceDetailUiModel.CancellationReason cancellationReason = this.f63615e;
        return iA + (cancellationReason == null ? 0 : cancellationReason.hashCode());
    }

    public final String toString() {
        StringBuilder sbM = cj.m("CancellationReasonsBffViewState(isLoading=", ", isError=", ", isAssessmentDone=", this.f63612a, this.f63613b);
        sbM.append(this.f63614c);
        sbM.append(", cancellationReasonList=");
        sbM.append(this.d);
        sbM.append(", selectedCancellationReason=");
        sbM.append(this.f63615e);
        sbM.append(")");
        return sbM.toString();
    }

    public CancellationReasonsBffViewState(boolean z, boolean z2, boolean z3, List<CareServiceDetailUiModel.CancellationReason> list, CareServiceDetailUiModel.CancellationReason cancellationReason) {
        list.getClass();
        this.f63612a = z;
        this.f63613b = z2;
        this.f63614c = z3;
        this.d = list;
        this.f63615e = cancellationReason;
    }

    public CancellationReasonsBffViewState() {
        this(false, false, false, null, null, 31, null);
    }
}
