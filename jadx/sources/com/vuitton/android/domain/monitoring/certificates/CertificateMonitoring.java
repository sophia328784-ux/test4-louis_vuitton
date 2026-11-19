package com.vuitton.android.domain.monitoring.certificates;

import com.batch.android.v0.a;
import com.vuitton.android.domain.monitoring.MonitorActionError;
import com.vuitton.android.domain.monitoring.MonitorActionName;
import defpackage.d21;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\bv\u0018\u00002\u00020\u0001:\u0002\u0002\u0003¨\u0006\u0004À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/domain/monitoring/certificates/CertificateMonitoring;", "", a.d, "Error", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface CertificateMonitoring {

    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0004\u0002\u0003\u0004\u0005\u0082\u0001\u0004\u0006\u0007\b\t¨\u0006\nÀ\u0006\u0003"}, d2 = {"Lcom/vuitton/android/domain/monitoring/certificates/CertificateMonitoring$Action;", "Lcom/vuitton/android/domain/monitoring/MonitorActionName;", "OpenMyCertificates", "NfcScanActivation", "ActivateCertificate", "TransferCertificate", "Lcom/vuitton/android/domain/monitoring/certificates/CertificateMonitoring$Action$ActivateCertificate;", "Lcom/vuitton/android/domain/monitoring/certificates/CertificateMonitoring$Action$NfcScanActivation;", "Lcom/vuitton/android/domain/monitoring/certificates/CertificateMonitoring$Action$OpenMyCertificates;", "Lcom/vuitton/android/domain/monitoring/certificates/CertificateMonitoring$Action$TransferCertificate;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public interface Action extends MonitorActionName {

        @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/domain/monitoring/certificates/CertificateMonitoring$Action$ActivateCertificate;", "Lcom/vuitton/android/domain/monitoring/certificates/CertificateMonitoring$Action;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class ActivateCertificate implements Action {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final ActivateCertificate f48893a = new ActivateCertificate();

            @Override // com.vuitton.android.domain.monitoring.MonitorActionName
            public final String a() {
                return "Activate Certificate";
            }

            public final boolean equals(Object obj) {
                return this == obj || (obj instanceof ActivateCertificate);
            }

            public final int hashCode() {
                return -1617644064;
            }

            public final String toString() {
                return "ActivateCertificate";
            }
        }

        @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/domain/monitoring/certificates/CertificateMonitoring$Action$NfcScanActivation;", "Lcom/vuitton/android/domain/monitoring/certificates/CertificateMonitoring$Action;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class NfcScanActivation implements Action {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final NfcScanActivation f48894a = new NfcScanActivation();

            @Override // com.vuitton.android.domain.monitoring.MonitorActionName
            public final String a() {
                return "NFC scan activation";
            }

            public final boolean equals(Object obj) {
                return this == obj || (obj instanceof NfcScanActivation);
            }

            public final int hashCode() {
                return 689397818;
            }

            public final String toString() {
                return "NfcScanActivation";
            }
        }

        @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/domain/monitoring/certificates/CertificateMonitoring$Action$OpenMyCertificates;", "Lcom/vuitton/android/domain/monitoring/certificates/CertificateMonitoring$Action;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class OpenMyCertificates implements Action {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final OpenMyCertificates f48895a = new OpenMyCertificates();

            @Override // com.vuitton.android.domain.monitoring.MonitorActionName
            public final String a() {
                return "Open MyCertificates";
            }

            public final boolean equals(Object obj) {
                return this == obj || (obj instanceof OpenMyCertificates);
            }

            public final int hashCode() {
                return -914728010;
            }

            public final String toString() {
                return "OpenMyCertificates";
            }
        }

        @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/domain/monitoring/certificates/CertificateMonitoring$Action$TransferCertificate;", "Lcom/vuitton/android/domain/monitoring/certificates/CertificateMonitoring$Action;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class TransferCertificate implements Action {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final TransferCertificate f48896a = new TransferCertificate();

            @Override // com.vuitton.android.domain.monitoring.MonitorActionName
            public final String a() {
                return "Transfer Certificate";
            }

            public final boolean equals(Object obj) {
                return this == obj || (obj instanceof TransferCertificate);
            }

            public final int hashCode() {
                return -1726035992;
            }

            public final String toString() {
                return "TransferCertificate";
            }
        }
    }

    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0004\u0002\u0003\u0004\u0005\u0082\u0001\u0004\u0006\u0007\b\t¨\u0006\nÀ\u0006\u0003"}, d2 = {"Lcom/vuitton/android/domain/monitoring/certificates/CertificateMonitoring$Error;", "Lcom/vuitton/android/domain/monitoring/MonitorActionError;", "OpenMyCertificatesError", "NfcScanError", "ActivateCertificateError", "TransferCertificateError", "Lcom/vuitton/android/domain/monitoring/certificates/CertificateMonitoring$Error$ActivateCertificateError;", "Lcom/vuitton/android/domain/monitoring/certificates/CertificateMonitoring$Error$NfcScanError;", "Lcom/vuitton/android/domain/monitoring/certificates/CertificateMonitoring$Error$OpenMyCertificatesError;", "Lcom/vuitton/android/domain/monitoring/certificates/CertificateMonitoring$Error$TransferCertificateError;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public interface Error extends MonitorActionError {

        @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/domain/monitoring/certificates/CertificateMonitoring$Error$ActivateCertificateError;", "Lcom/vuitton/android/domain/monitoring/certificates/CertificateMonitoring$Error;", "", "error", "<init>", "(Ljava/lang/Throwable;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class ActivateCertificateError implements Error {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final Throwable f48897a;

            public ActivateCertificateError(Throwable th) {
                th.getClass();
                this.f48897a = th;
            }

            @Override // com.vuitton.android.domain.monitoring.MonitorActionError
            /* JADX INFO: renamed from: a, reason: from getter */
            public final Throwable getF48910a() {
                return this.f48897a;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof ActivateCertificateError) && Intrinsics.c(this.f48897a, ((ActivateCertificateError) obj).f48897a);
            }

            @Override // com.vuitton.android.domain.monitoring.MonitorActionError
            /* JADX INFO: renamed from: getName */
            public final String getF48843c() {
                return "activate_certificate_error";
            }

            public final int hashCode() {
                return this.f48897a.hashCode();
            }

            public final String toString() {
                return d21.n("ActivateCertificateError(error=", ")", this.f48897a);
            }
        }

        @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/domain/monitoring/certificates/CertificateMonitoring$Error$NfcScanError;", "Lcom/vuitton/android/domain/monitoring/certificates/CertificateMonitoring$Error;", "", "error", "<init>", "(Ljava/lang/Throwable;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class NfcScanError implements Error {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final Throwable f48898a;

            public NfcScanError(Throwable th) {
                th.getClass();
                this.f48898a = th;
            }

            @Override // com.vuitton.android.domain.monitoring.MonitorActionError
            /* JADX INFO: renamed from: a, reason: from getter */
            public final Throwable getF48910a() {
                return this.f48898a;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof NfcScanError) && Intrinsics.c(this.f48898a, ((NfcScanError) obj).f48898a);
            }

            @Override // com.vuitton.android.domain.monitoring.MonitorActionError
            /* JADX INFO: renamed from: getName */
            public final String getF48843c() {
                return "nfc_scan_error";
            }

            public final int hashCode() {
                return this.f48898a.hashCode();
            }

            public final String toString() {
                return d21.n("NfcScanError(error=", ")", this.f48898a);
            }
        }

        @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/domain/monitoring/certificates/CertificateMonitoring$Error$OpenMyCertificatesError;", "Lcom/vuitton/android/domain/monitoring/certificates/CertificateMonitoring$Error;", "", "error", "<init>", "(Ljava/lang/Throwable;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class OpenMyCertificatesError implements Error {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final Throwable f48899a;

            public OpenMyCertificatesError(Throwable th) {
                th.getClass();
                this.f48899a = th;
            }

            @Override // com.vuitton.android.domain.monitoring.MonitorActionError
            /* JADX INFO: renamed from: a, reason: from getter */
            public final Throwable getF48910a() {
                return this.f48899a;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof OpenMyCertificatesError) && Intrinsics.c(this.f48899a, ((OpenMyCertificatesError) obj).f48899a);
            }

            @Override // com.vuitton.android.domain.monitoring.MonitorActionError
            /* JADX INFO: renamed from: getName */
            public final String getF48843c() {
                return "open_mycertificates_error";
            }

            public final int hashCode() {
                return this.f48899a.hashCode();
            }

            public final String toString() {
                return d21.n("OpenMyCertificatesError(error=", ")", this.f48899a);
            }
        }

        @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/domain/monitoring/certificates/CertificateMonitoring$Error$TransferCertificateError;", "Lcom/vuitton/android/domain/monitoring/certificates/CertificateMonitoring$Error;", "", "error", "<init>", "(Ljava/lang/Throwable;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class TransferCertificateError implements Error {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final Throwable f48900a;

            public TransferCertificateError(Throwable th) {
                th.getClass();
                this.f48900a = th;
            }

            @Override // com.vuitton.android.domain.monitoring.MonitorActionError
            /* JADX INFO: renamed from: a, reason: from getter */
            public final Throwable getF48910a() {
                return this.f48900a;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof TransferCertificateError) && Intrinsics.c(this.f48900a, ((TransferCertificateError) obj).f48900a);
            }

            @Override // com.vuitton.android.domain.monitoring.MonitorActionError
            /* JADX INFO: renamed from: getName */
            public final String getF48843c() {
                return "transfer_certificate_error";
            }

            public final int hashCode() {
                return this.f48900a.hashCode();
            }

            public final String toString() {
                return d21.n("TransferCertificateError(error=", ")", this.f48900a);
            }
        }
    }
}
