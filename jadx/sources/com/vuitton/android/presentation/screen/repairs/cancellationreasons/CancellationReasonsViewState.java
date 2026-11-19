package com.vuitton.android.presentation.screen.repairs.cancellationreasons;

import com.vuitton.android.presentation.screen.repairs.models.CancellationReasonUiModel;
import defpackage.cj;
import defpackage.n00;
import defpackage.o60;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.EmptyList;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u00002\u00020\u0001B7\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0002\u0012\u000e\b\u0002\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/vuitton/android/presentation/screen/repairs/cancellationreasons/CancellationReasonsViewState;", "", "", "isLoading", "isError", "", "Lcom/vuitton/android/presentation/screen/repairs/models/CancellationReasonUiModel;", "cancellationReasonList", "selectedCancellationReason", "<init>", "(ZZLjava/util/List;Lcom/vuitton/android/presentation/screen/repairs/models/CancellationReasonUiModel;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class CancellationReasonsViewState {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f63588a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f63589b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final List f63590c;
    public final CancellationReasonUiModel d;

    public CancellationReasonsViewState(boolean z, boolean z2, List list, CancellationReasonUiModel cancellationReasonUiModel, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? false : z, (i2 & 2) != 0 ? false : z2, (i2 & 4) != 0 ? EmptyList.f71768b : list, (i2 & 8) != 0 ? null : cancellationReasonUiModel);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CancellationReasonsViewState)) {
            return false;
        }
        CancellationReasonsViewState cancellationReasonsViewState = (CancellationReasonsViewState) obj;
        return this.f63588a == cancellationReasonsViewState.f63588a && this.f63589b == cancellationReasonsViewState.f63589b && Intrinsics.c(this.f63590c, cancellationReasonsViewState.f63590c) && Intrinsics.c(this.d, cancellationReasonsViewState.d);
    }

    public final int hashCode() {
        int iA = n00.a(o60.b(Boolean.hashCode(this.f63588a) * 31, 31, this.f63589b), 31, this.f63590c);
        CancellationReasonUiModel cancellationReasonUiModel = this.d;
        return iA + (cancellationReasonUiModel == null ? 0 : cancellationReasonUiModel.hashCode());
    }

    public final String toString() {
        StringBuilder sbM = cj.m("CancellationReasonsViewState(isLoading=", ", isError=", ", cancellationReasonList=", this.f63588a, this.f63589b);
        sbM.append(this.f63590c);
        sbM.append(", selectedCancellationReason=");
        sbM.append(this.d);
        sbM.append(")");
        return sbM.toString();
    }

    public CancellationReasonsViewState(boolean z, boolean z2, List<CancellationReasonUiModel> list, CancellationReasonUiModel cancellationReasonUiModel) {
        list.getClass();
        this.f63588a = z;
        this.f63589b = z2;
        this.f63590c = list;
        this.d = cancellationReasonUiModel;
    }

    public CancellationReasonsViewState() {
        this(false, false, null, null, 15, null);
    }
}
