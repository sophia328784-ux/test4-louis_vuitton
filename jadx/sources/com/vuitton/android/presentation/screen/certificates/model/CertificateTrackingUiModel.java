package com.vuitton.android.presentation.screen.certificates.model;

import defpackage.tr;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0082\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u001d\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u001d\u0002\u0003\u0004\u0005\u0006\u0007\b\t\n\u000b\f\r\u000e\u000f\u0010\u0011\u0012\u0013\u0014\u0015\u0016\u0017\u0018\u0019\u001a\u001b\u001c\u001d\u001e\u0082\u0001\u001d\u001f !\"#$%&'()*+,-./0123456789:;¨\u0006<À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel;", "", "CertificateScreen", "CertificateTransferScreen", "CertificateTransferConfirmationScreen", "CertificateActivationScreen", "CertificateActivationConfirmationScreen", "CertificateUnlockNfcScreen", "CertificateVisionnaireDetailsScreen", "OpenCertificateEvent", "AddCertificateEvent", "ActivateCertificateEvent", "ActivateCertificateSuccessManualEvent", "ActivateCertificateErrorManualEvent", "OpenIndividualNumberInfoEvent", "OpenBuyerNameInfoEvent", "ConsentCheckboxToggledEvent", "OpenCertificateListFromContifrmationEvent", "TransferCertificateEvent", "AcceptTransferCertificateEvent", "CancelTransferCertificateEvent", "TransferCertificateActivationEvent", "HitOnStoneEngravingEvent", "ActivateCertificateIntentionEvent", "StartDetectionNfcEvent", "ActivateCertificateSuccessEvent", "NfcErrorEvent", "NeedHelpNfcEvent", "ViewJourneyEvent", "ProductSummarySectionEvent", "DetailsSectionEvent", "Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$AcceptTransferCertificateEvent;", "Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$ActivateCertificateErrorManualEvent;", "Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$ActivateCertificateEvent;", "Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$ActivateCertificateIntentionEvent;", "Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$ActivateCertificateSuccessEvent;", "Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$ActivateCertificateSuccessManualEvent;", "Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$AddCertificateEvent;", "Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$CancelTransferCertificateEvent;", "Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$CertificateActivationConfirmationScreen;", "Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$CertificateActivationScreen;", "Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$CertificateScreen;", "Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$CertificateTransferConfirmationScreen;", "Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$CertificateTransferScreen;", "Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$CertificateUnlockNfcScreen;", "Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$CertificateVisionnaireDetailsScreen;", "Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$ConsentCheckboxToggledEvent;", "Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$DetailsSectionEvent;", "Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$HitOnStoneEngravingEvent;", "Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$NeedHelpNfcEvent;", "Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$NfcErrorEvent;", "Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$OpenBuyerNameInfoEvent;", "Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$OpenCertificateEvent;", "Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$OpenCertificateListFromContifrmationEvent;", "Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$OpenIndividualNumberInfoEvent;", "Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$ProductSummarySectionEvent;", "Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$StartDetectionNfcEvent;", "Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$TransferCertificateActivationEvent;", "Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$TransferCertificateEvent;", "Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$ViewJourneyEvent;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface CertificateTrackingUiModel {

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$AcceptTransferCertificateEvent;", "Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel;", "Lcom/vuitton/android/presentation/screen/certificates/model/CertificateUiModel;", "certificate", "<init>", "(Lcom/vuitton/android/presentation/screen/certificates/model/CertificateUiModel;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class AcceptTransferCertificateEvent implements CertificateTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final CertificateUiModel f55846a;

        public AcceptTransferCertificateEvent(CertificateUiModel certificateUiModel) {
            certificateUiModel.getClass();
            this.f55846a = certificateUiModel;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof AcceptTransferCertificateEvent) && Intrinsics.c(this.f55846a, ((AcceptTransferCertificateEvent) obj).f55846a);
        }

        public final int hashCode() {
            return this.f55846a.hashCode();
        }

        public final String toString() {
            return "AcceptTransferCertificateEvent(certificate=" + this.f55846a + ")";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$ActivateCertificateErrorManualEvent;", "Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ActivateCertificateErrorManualEvent implements CertificateTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final ActivateCertificateErrorManualEvent f55847a = new ActivateCertificateErrorManualEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof ActivateCertificateErrorManualEvent);
        }

        public final int hashCode() {
            return -1755256383;
        }

        public final String toString() {
            return "ActivateCertificateErrorManualEvent";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$ActivateCertificateEvent;", "Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ActivateCertificateEvent implements CertificateTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final ActivateCertificateEvent f55848a = new ActivateCertificateEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof ActivateCertificateEvent);
        }

        public final int hashCode() {
            return 643680069;
        }

        public final String toString() {
            return "ActivateCertificateEvent";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$ActivateCertificateIntentionEvent;", "Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel;", "Lcom/vuitton/android/presentation/screen/certificates/model/CertificateUiModel;", "certificate", "<init>", "(Lcom/vuitton/android/presentation/screen/certificates/model/CertificateUiModel;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ActivateCertificateIntentionEvent implements CertificateTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final CertificateUiModel f55849a;

        public ActivateCertificateIntentionEvent(CertificateUiModel certificateUiModel) {
            certificateUiModel.getClass();
            this.f55849a = certificateUiModel;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof ActivateCertificateIntentionEvent) && Intrinsics.c(this.f55849a, ((ActivateCertificateIntentionEvent) obj).f55849a);
        }

        public final int hashCode() {
            return this.f55849a.hashCode();
        }

        public final String toString() {
            return "ActivateCertificateIntentionEvent(certificate=" + this.f55849a + ")";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$ActivateCertificateSuccessEvent;", "Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel;", "Lcom/vuitton/android/presentation/screen/certificates/model/CertificateVisionnaireUiModel;", "certificate", "<init>", "(Lcom/vuitton/android/presentation/screen/certificates/model/CertificateVisionnaireUiModel;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ActivateCertificateSuccessEvent implements CertificateTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final CertificateVisionnaireUiModel f55850a;

        public ActivateCertificateSuccessEvent(CertificateVisionnaireUiModel certificateVisionnaireUiModel) {
            certificateVisionnaireUiModel.getClass();
            this.f55850a = certificateVisionnaireUiModel;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof ActivateCertificateSuccessEvent) && Intrinsics.c(this.f55850a, ((ActivateCertificateSuccessEvent) obj).f55850a);
        }

        public final int hashCode() {
            return this.f55850a.hashCode();
        }

        public final String toString() {
            return "ActivateCertificateSuccessEvent(certificate=" + this.f55850a + ")";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$ActivateCertificateSuccessManualEvent;", "Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ActivateCertificateSuccessManualEvent implements CertificateTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final ActivateCertificateSuccessManualEvent f55851a = new ActivateCertificateSuccessManualEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof ActivateCertificateSuccessManualEvent);
        }

        public final int hashCode() {
            return -1641498714;
        }

        public final String toString() {
            return "ActivateCertificateSuccessManualEvent";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$AddCertificateEvent;", "Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class AddCertificateEvent implements CertificateTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final AddCertificateEvent f55852a = new AddCertificateEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof AddCertificateEvent);
        }

        public final int hashCode() {
            return -1421534283;
        }

        public final String toString() {
            return "AddCertificateEvent";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$CancelTransferCertificateEvent;", "Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel;", "Lcom/vuitton/android/presentation/screen/certificates/model/CertificateUiModel;", "certificate", "<init>", "(Lcom/vuitton/android/presentation/screen/certificates/model/CertificateUiModel;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class CancelTransferCertificateEvent implements CertificateTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final CertificateUiModel f55853a;

        public CancelTransferCertificateEvent(CertificateUiModel certificateUiModel) {
            certificateUiModel.getClass();
            this.f55853a = certificateUiModel;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof CancelTransferCertificateEvent) && Intrinsics.c(this.f55853a, ((CancelTransferCertificateEvent) obj).f55853a);
        }

        public final int hashCode() {
            return this.f55853a.hashCode();
        }

        public final String toString() {
            return "CancelTransferCertificateEvent(certificate=" + this.f55853a + ")";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$CertificateActivationConfirmationScreen;", "Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class CertificateActivationConfirmationScreen implements CertificateTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final CertificateActivationConfirmationScreen f55854a = new CertificateActivationConfirmationScreen();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof CertificateActivationConfirmationScreen);
        }

        public final int hashCode() {
            return 1431754015;
        }

        public final String toString() {
            return "CertificateActivationConfirmationScreen";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$CertificateActivationScreen;", "Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class CertificateActivationScreen implements CertificateTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final CertificateActivationScreen f55855a = new CertificateActivationScreen();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof CertificateActivationScreen);
        }

        public final int hashCode() {
            return 2078201226;
        }

        public final String toString() {
            return "CertificateActivationScreen";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$CertificateScreen;", "Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class CertificateScreen implements CertificateTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final CertificateScreen f55856a = new CertificateScreen();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof CertificateScreen);
        }

        public final int hashCode() {
            return 1821962964;
        }

        public final String toString() {
            return "CertificateScreen";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$CertificateTransferConfirmationScreen;", "Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class CertificateTransferConfirmationScreen implements CertificateTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final CertificateTransferConfirmationScreen f55857a = new CertificateTransferConfirmationScreen();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof CertificateTransferConfirmationScreen);
        }

        public final int hashCode() {
            return 1386797748;
        }

        public final String toString() {
            return "CertificateTransferConfirmationScreen";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$CertificateTransferScreen;", "Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class CertificateTransferScreen implements CertificateTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final CertificateTransferScreen f55858a = new CertificateTransferScreen();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof CertificateTransferScreen);
        }

        public final int hashCode() {
            return 981783199;
        }

        public final String toString() {
            return "CertificateTransferScreen";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$CertificateUnlockNfcScreen;", "Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class CertificateUnlockNfcScreen implements CertificateTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final CertificateUnlockNfcScreen f55859a = new CertificateUnlockNfcScreen();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof CertificateUnlockNfcScreen);
        }

        public final int hashCode() {
            return -1467655765;
        }

        public final String toString() {
            return "CertificateUnlockNfcScreen";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$CertificateVisionnaireDetailsScreen;", "Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel;", "Lcom/vuitton/android/presentation/screen/certificates/model/CertificateVisionnaireUiModel;", "certificate", "<init>", "(Lcom/vuitton/android/presentation/screen/certificates/model/CertificateVisionnaireUiModel;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class CertificateVisionnaireDetailsScreen implements CertificateTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final CertificateVisionnaireUiModel f55860a;

        public CertificateVisionnaireDetailsScreen(CertificateVisionnaireUiModel certificateVisionnaireUiModel) {
            certificateVisionnaireUiModel.getClass();
            this.f55860a = certificateVisionnaireUiModel;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof CertificateVisionnaireDetailsScreen) && Intrinsics.c(this.f55860a, ((CertificateVisionnaireDetailsScreen) obj).f55860a);
        }

        public final int hashCode() {
            return this.f55860a.hashCode();
        }

        public final String toString() {
            return "CertificateVisionnaireDetailsScreen(certificate=" + this.f55860a + ")";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$ConsentCheckboxToggledEvent;", "Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel;", "", "isChecked", "<init>", "(Z)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ConsentCheckboxToggledEvent implements CertificateTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final boolean f55861a;

        public ConsentCheckboxToggledEvent(boolean z) {
            this.f55861a = z;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof ConsentCheckboxToggledEvent) && this.f55861a == ((ConsentCheckboxToggledEvent) obj).f55861a;
        }

        public final int hashCode() {
            return Boolean.hashCode(this.f55861a);
        }

        public final String toString() {
            return tr.i("ConsentCheckboxToggledEvent(isChecked=", ")", this.f55861a);
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$DetailsSectionEvent;", "Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel;", "Lcom/vuitton/android/presentation/screen/certificates/model/CertificateVisionnaireUiModel;", "certificate", "<init>", "(Lcom/vuitton/android/presentation/screen/certificates/model/CertificateVisionnaireUiModel;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class DetailsSectionEvent implements CertificateTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final CertificateVisionnaireUiModel f55862a;

        public DetailsSectionEvent(CertificateVisionnaireUiModel certificateVisionnaireUiModel) {
            certificateVisionnaireUiModel.getClass();
            this.f55862a = certificateVisionnaireUiModel;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof DetailsSectionEvent) && Intrinsics.c(this.f55862a, ((DetailsSectionEvent) obj).f55862a);
        }

        public final int hashCode() {
            return this.f55862a.hashCode();
        }

        public final String toString() {
            return "DetailsSectionEvent(certificate=" + this.f55862a + ")";
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$HitOnStoneEngravingEvent;", "Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel;", "Lcom/vuitton/android/presentation/screen/certificates/model/CertificateDiamondUiModel;", "certificate", "", "stoneId", "<init>", "(Lcom/vuitton/android/presentation/screen/certificates/model/CertificateDiamondUiModel;Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class HitOnStoneEngravingEvent implements CertificateTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final CertificateDiamondUiModel f55863a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f55864b;

        public HitOnStoneEngravingEvent(CertificateDiamondUiModel certificateDiamondUiModel, String str) {
            certificateDiamondUiModel.getClass();
            str.getClass();
            this.f55863a = certificateDiamondUiModel;
            this.f55864b = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof HitOnStoneEngravingEvent)) {
                return false;
            }
            HitOnStoneEngravingEvent hitOnStoneEngravingEvent = (HitOnStoneEngravingEvent) obj;
            return Intrinsics.c(this.f55863a, hitOnStoneEngravingEvent.f55863a) && Intrinsics.c(this.f55864b, hitOnStoneEngravingEvent.f55864b);
        }

        public final int hashCode() {
            return this.f55864b.hashCode() + (this.f55863a.hashCode() * 31);
        }

        public final String toString() {
            return "HitOnStoneEngravingEvent(certificate=" + this.f55863a + ", stoneId=" + this.f55864b + ")";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$NeedHelpNfcEvent;", "Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel;", "Lcom/vuitton/android/presentation/screen/certificates/model/CertificateVisionnaireUiModel;", "certificate", "<init>", "(Lcom/vuitton/android/presentation/screen/certificates/model/CertificateVisionnaireUiModel;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class NeedHelpNfcEvent implements CertificateTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final CertificateVisionnaireUiModel f55865a;

        public NeedHelpNfcEvent(CertificateVisionnaireUiModel certificateVisionnaireUiModel) {
            certificateVisionnaireUiModel.getClass();
            this.f55865a = certificateVisionnaireUiModel;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof NeedHelpNfcEvent) && Intrinsics.c(this.f55865a, ((NeedHelpNfcEvent) obj).f55865a);
        }

        public final int hashCode() {
            return this.f55865a.hashCode();
        }

        public final String toString() {
            return "NeedHelpNfcEvent(certificate=" + this.f55865a + ")";
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$NfcErrorEvent;", "Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel;", "Lcom/vuitton/android/presentation/screen/certificates/model/CertificateVisionnaireUiModel;", "certificate", "", "errorType", "<init>", "(Lcom/vuitton/android/presentation/screen/certificates/model/CertificateVisionnaireUiModel;Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class NfcErrorEvent implements CertificateTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final CertificateVisionnaireUiModel f55866a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f55867b;

        public NfcErrorEvent(CertificateVisionnaireUiModel certificateVisionnaireUiModel, String str) {
            certificateVisionnaireUiModel.getClass();
            str.getClass();
            this.f55866a = certificateVisionnaireUiModel;
            this.f55867b = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof NfcErrorEvent)) {
                return false;
            }
            NfcErrorEvent nfcErrorEvent = (NfcErrorEvent) obj;
            return Intrinsics.c(this.f55866a, nfcErrorEvent.f55866a) && Intrinsics.c(this.f55867b, nfcErrorEvent.f55867b);
        }

        public final int hashCode() {
            return this.f55867b.hashCode() + (this.f55866a.hashCode() * 31);
        }

        public final String toString() {
            return "NfcErrorEvent(certificate=" + this.f55866a + ", errorType=" + this.f55867b + ")";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$OpenBuyerNameInfoEvent;", "Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OpenBuyerNameInfoEvent implements CertificateTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final OpenBuyerNameInfoEvent f55868a = new OpenBuyerNameInfoEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OpenBuyerNameInfoEvent);
        }

        public final int hashCode() {
            return -1929161241;
        }

        public final String toString() {
            return "OpenBuyerNameInfoEvent";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$OpenCertificateEvent;", "Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel;", "Lcom/vuitton/android/presentation/screen/certificates/model/CertificateUiModel;", "certificate", "<init>", "(Lcom/vuitton/android/presentation/screen/certificates/model/CertificateUiModel;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OpenCertificateEvent implements CertificateTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final CertificateUiModel f55869a;

        public OpenCertificateEvent(CertificateUiModel certificateUiModel) {
            certificateUiModel.getClass();
            this.f55869a = certificateUiModel;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof OpenCertificateEvent) && Intrinsics.c(this.f55869a, ((OpenCertificateEvent) obj).f55869a);
        }

        public final int hashCode() {
            return this.f55869a.hashCode();
        }

        public final String toString() {
            return "OpenCertificateEvent(certificate=" + this.f55869a + ")";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$OpenCertificateListFromContifrmationEvent;", "Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OpenCertificateListFromContifrmationEvent implements CertificateTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final OpenCertificateListFromContifrmationEvent f55870a = new OpenCertificateListFromContifrmationEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OpenCertificateListFromContifrmationEvent);
        }

        public final int hashCode() {
            return -485802059;
        }

        public final String toString() {
            return "OpenCertificateListFromContifrmationEvent";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$OpenIndividualNumberInfoEvent;", "Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OpenIndividualNumberInfoEvent implements CertificateTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final OpenIndividualNumberInfoEvent f55871a = new OpenIndividualNumberInfoEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OpenIndividualNumberInfoEvent);
        }

        public final int hashCode() {
            return -662658383;
        }

        public final String toString() {
            return "OpenIndividualNumberInfoEvent";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$ProductSummarySectionEvent;", "Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel;", "Lcom/vuitton/android/presentation/screen/certificates/model/CertificateVisionnaireUiModel;", "certificate", "<init>", "(Lcom/vuitton/android/presentation/screen/certificates/model/CertificateVisionnaireUiModel;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ProductSummarySectionEvent implements CertificateTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final CertificateVisionnaireUiModel f55872a;

        public ProductSummarySectionEvent(CertificateVisionnaireUiModel certificateVisionnaireUiModel) {
            certificateVisionnaireUiModel.getClass();
            this.f55872a = certificateVisionnaireUiModel;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof ProductSummarySectionEvent) && Intrinsics.c(this.f55872a, ((ProductSummarySectionEvent) obj).f55872a);
        }

        public final int hashCode() {
            return this.f55872a.hashCode();
        }

        public final String toString() {
            return "ProductSummarySectionEvent(certificate=" + this.f55872a + ")";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$StartDetectionNfcEvent;", "Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel;", "Lcom/vuitton/android/presentation/screen/certificates/model/CertificateVisionnaireUiModel;", "certificate", "<init>", "(Lcom/vuitton/android/presentation/screen/certificates/model/CertificateVisionnaireUiModel;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class StartDetectionNfcEvent implements CertificateTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final CertificateVisionnaireUiModel f55873a;

        public StartDetectionNfcEvent(CertificateVisionnaireUiModel certificateVisionnaireUiModel) {
            certificateVisionnaireUiModel.getClass();
            this.f55873a = certificateVisionnaireUiModel;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof StartDetectionNfcEvent) && Intrinsics.c(this.f55873a, ((StartDetectionNfcEvent) obj).f55873a);
        }

        public final int hashCode() {
            return this.f55873a.hashCode();
        }

        public final String toString() {
            return "StartDetectionNfcEvent(certificate=" + this.f55873a + ")";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$TransferCertificateActivationEvent;", "Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel;", "Lcom/vuitton/android/presentation/screen/certificates/model/CertificateUiModel;", "certificate", "<init>", "(Lcom/vuitton/android/presentation/screen/certificates/model/CertificateUiModel;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class TransferCertificateActivationEvent implements CertificateTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final CertificateUiModel f55874a;

        public TransferCertificateActivationEvent(CertificateUiModel certificateUiModel) {
            certificateUiModel.getClass();
            this.f55874a = certificateUiModel;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof TransferCertificateActivationEvent) && Intrinsics.c(this.f55874a, ((TransferCertificateActivationEvent) obj).f55874a);
        }

        public final int hashCode() {
            return this.f55874a.hashCode();
        }

        public final String toString() {
            return "TransferCertificateActivationEvent(certificate=" + this.f55874a + ")";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$TransferCertificateEvent;", "Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel;", "Lcom/vuitton/android/presentation/screen/certificates/model/CertificateUiModel;", "certificate", "<init>", "(Lcom/vuitton/android/presentation/screen/certificates/model/CertificateUiModel;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class TransferCertificateEvent implements CertificateTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final CertificateUiModel f55875a;

        public TransferCertificateEvent(CertificateUiModel certificateUiModel) {
            certificateUiModel.getClass();
            this.f55875a = certificateUiModel;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof TransferCertificateEvent) && Intrinsics.c(this.f55875a, ((TransferCertificateEvent) obj).f55875a);
        }

        public final int hashCode() {
            return this.f55875a.hashCode();
        }

        public final String toString() {
            return "TransferCertificateEvent(certificate=" + this.f55875a + ")";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$ViewJourneyEvent;", "Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel;", "Lcom/vuitton/android/presentation/screen/certificates/model/CertificateVisionnaireUiModel;", "certificate", "<init>", "(Lcom/vuitton/android/presentation/screen/certificates/model/CertificateVisionnaireUiModel;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ViewJourneyEvent implements CertificateTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final CertificateVisionnaireUiModel f55876a;

        public ViewJourneyEvent(CertificateVisionnaireUiModel certificateVisionnaireUiModel) {
            certificateVisionnaireUiModel.getClass();
            this.f55876a = certificateVisionnaireUiModel;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof ViewJourneyEvent) && Intrinsics.c(this.f55876a, ((ViewJourneyEvent) obj).f55876a);
        }

        public final int hashCode() {
            return this.f55876a.hashCode();
        }

        public final String toString() {
            return "ViewJourneyEvent(certificate=" + this.f55876a + ")";
        }
    }
}
