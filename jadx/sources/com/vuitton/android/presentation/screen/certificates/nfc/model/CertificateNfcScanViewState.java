package com.vuitton.android.presentation.screen.certificates.nfc.model;

import com.vuitton.android.presentation.contact.models.ContactUsUiModel;
import defpackage.a;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B'\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/vuitton/android/presentation/screen/certificates/nfc/model/CertificateNfcScanViewState;", "", "Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;", "contactUsUiModel", "Lcom/vuitton/android/presentation/screen/certificates/nfc/model/NfcScanState;", "nfcScanState", "", "isScanInProgress", "<init>", "(Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;Lcom/vuitton/android/presentation/screen/certificates/nfc/model/NfcScanState;Z)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class CertificateNfcScanViewState {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ContactUsUiModel f55932a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final NfcScanState f55933b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f55934c;

    public /* synthetic */ CertificateNfcScanViewState(ContactUsUiModel contactUsUiModel, NfcScanState nfcScanState, boolean z, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? new ContactUsUiModel(false, null, null, null, null, null, null, null, false, false, false, null, 4095, null) : contactUsUiModel, (i2 & 2) != 0 ? null : nfcScanState, (i2 & 4) != 0 ? false : z);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CertificateNfcScanViewState)) {
            return false;
        }
        CertificateNfcScanViewState certificateNfcScanViewState = (CertificateNfcScanViewState) obj;
        return Intrinsics.c(this.f55932a, certificateNfcScanViewState.f55932a) && Intrinsics.c(this.f55933b, certificateNfcScanViewState.f55933b) && this.f55934c == certificateNfcScanViewState.f55934c;
    }

    public final int hashCode() {
        int iHashCode = this.f55932a.hashCode() * 31;
        NfcScanState nfcScanState = this.f55933b;
        return Boolean.hashCode(this.f55934c) + ((iHashCode + (nfcScanState == null ? 0 : nfcScanState.hashCode())) * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("CertificateNfcScanViewState(contactUsUiModel=");
        sb.append(this.f55932a);
        sb.append(", nfcScanState=");
        sb.append(this.f55933b);
        sb.append(", isScanInProgress=");
        return a.p(sb, this.f55934c, ")");
    }

    public CertificateNfcScanViewState(ContactUsUiModel contactUsUiModel, NfcScanState nfcScanState, boolean z) {
        contactUsUiModel.getClass();
        this.f55932a = contactUsUiModel;
        this.f55933b = nfcScanState;
        this.f55934c = z;
    }

    public CertificateNfcScanViewState() {
        this(null, null, false, 7, null);
    }
}
