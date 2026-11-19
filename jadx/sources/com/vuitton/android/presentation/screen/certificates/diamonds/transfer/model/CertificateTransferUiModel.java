package com.vuitton.android.presentation.screen.certificates.diamonds.transfer.model;

import com.vuitton.android.presentation.screen.certificates.model.CertificateUiModel;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import defpackage.o60;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001BI\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\"\b\u0002\u0010\b\u001a\u001c\u0012\u0004\u0012\u00020\u0004\u0012\u0012\u0012\u0010\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u00060\u0006\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\t¢\u0006\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"Lcom/vuitton/android/presentation/screen/certificates/diamonds/transfer/model/CertificateTransferUiModel;", "", "Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;", "inAppDispatch", "", "transferPending", "Lkotlin/Pair;", "", "transferred", "Lcom/vuitton/android/presentation/screen/certificates/model/CertificateUiModel;", "certificate", "<init>", "(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;ZLkotlin/Pair;Lcom/vuitton/android/presentation/screen/certificates/model/CertificateUiModel;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class CertificateTransferUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final InAppDispatch f55811a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f55812b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Pair f55813c;
    public final CertificateUiModel d;

    public /* synthetic */ CertificateTransferUiModel(InAppDispatch inAppDispatch, boolean z, Pair pair, CertificateUiModel certificateUiModel, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(inAppDispatch, (i2 & 2) != 0 ? false : z, (i2 & 4) != 0 ? new Pair(Boolean.FALSE, null) : pair, (i2 & 8) != 0 ? null : certificateUiModel);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CertificateTransferUiModel)) {
            return false;
        }
        CertificateTransferUiModel certificateTransferUiModel = (CertificateTransferUiModel) obj;
        return Intrinsics.c(this.f55811a, certificateTransferUiModel.f55811a) && this.f55812b == certificateTransferUiModel.f55812b && Intrinsics.c(this.f55813c, certificateTransferUiModel.f55813c) && Intrinsics.c(this.d, certificateTransferUiModel.d);
    }

    public final int hashCode() {
        int iHashCode = (this.f55813c.hashCode() + o60.b(this.f55811a.hashCode() * 31, 31, this.f55812b)) * 31;
        CertificateUiModel certificateUiModel = this.d;
        return iHashCode + (certificateUiModel == null ? 0 : certificateUiModel.hashCode());
    }

    public final String toString() {
        return "CertificateTransferUiModel(inAppDispatch=" + this.f55811a + ", transferPending=" + this.f55812b + ", transferred=" + this.f55813c + ", certificate=" + this.d + ")";
    }

    public CertificateTransferUiModel(InAppDispatch inAppDispatch, boolean z, Pair<Boolean, Pair<String, String>> pair, CertificateUiModel certificateUiModel) {
        inAppDispatch.getClass();
        pair.getClass();
        this.f55811a = inAppDispatch;
        this.f55812b = z;
        this.f55813c = pair;
        this.d = certificateUiModel;
    }
}
