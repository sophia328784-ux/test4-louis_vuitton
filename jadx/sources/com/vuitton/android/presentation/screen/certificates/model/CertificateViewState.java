package com.vuitton.android.presentation.screen.certificates.model;

import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b7\u0018\u00002\u00020\u0001:\u0003\u0002\u0003\u0004\u0082\u0001\u0003\u0005\u0006\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/certificates/model/CertificateViewState;", "", "Loading", "Error", "Success", "Lcom/vuitton/android/presentation/screen/certificates/model/CertificateViewState$Error;", "Lcom/vuitton/android/presentation/screen/certificates/model/CertificateViewState$Loading;", "Lcom/vuitton/android/presentation/screen/certificates/model/CertificateViewState$Success;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class CertificateViewState {

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/certificates/model/CertificateViewState$Error;", "Lcom/vuitton/android/presentation/screen/certificates/model/CertificateViewState;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Error extends CertificateViewState {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final Error f55878a = new Error(null);

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof Error);
        }

        public final int hashCode() {
            return 1364034151;
        }

        public final String toString() {
            return "Error";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/certificates/model/CertificateViewState$Loading;", "Lcom/vuitton/android/presentation/screen/certificates/model/CertificateViewState;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Loading extends CertificateViewState {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final Loading f55879a = new Loading(null);

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof Loading);
        }

        public final int hashCode() {
            return -1607535141;
        }

        public final String toString() {
            return "Loading";
        }
    }

    public CertificateViewState(DefaultConstructorMarker defaultConstructorMarker) {
    }

    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B1\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\b\b\u0002\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"Lcom/vuitton/android/presentation/screen/certificates/model/CertificateViewState$Success;", "Lcom/vuitton/android/presentation/screen/certificates/model/CertificateViewState;", "", "Lcom/vuitton/android/presentation/screen/certificates/model/CertificateUiModel;", "certificateList", "Lcom/vuitton/android/presentation/screen/certificates/model/CertificateFeatureFlags;", "featureFlags", "", "username", "", "isDiamondCertificateLoading", "<init>", "(Ljava/util/List;Lcom/vuitton/android/presentation/screen/certificates/model/CertificateFeatureFlags;Ljava/lang/String;Z)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Success extends CertificateViewState {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final List f55880a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final CertificateFeatureFlags f55881b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f55882c;
        public final boolean d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Success(List<? extends CertificateUiModel> list, CertificateFeatureFlags certificateFeatureFlags, String str, boolean z) {
            super(null);
            list.getClass();
            certificateFeatureFlags.getClass();
            this.f55880a = list;
            this.f55881b = certificateFeatureFlags;
            this.f55882c = str;
            this.d = z;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Success)) {
                return false;
            }
            Success success = (Success) obj;
            return Intrinsics.c(this.f55880a, success.f55880a) && Intrinsics.c(this.f55881b, success.f55881b) && Intrinsics.c(this.f55882c, success.f55882c) && this.d == success.d;
        }

        public final int hashCode() {
            int iHashCode = (this.f55881b.hashCode() + (this.f55880a.hashCode() * 31)) * 31;
            String str = this.f55882c;
            return Boolean.hashCode(this.d) + ((iHashCode + (str == null ? 0 : str.hashCode())) * 31);
        }

        public final String toString() {
            return "Success(certificateList=" + this.f55880a + ", featureFlags=" + this.f55881b + ", username=" + this.f55882c + ", isDiamondCertificateLoading=" + this.d + ")";
        }

        public /* synthetic */ Success(List list, CertificateFeatureFlags certificateFeatureFlags, String str, boolean z, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this(list, certificateFeatureFlags, str, (i2 & 8) != 0 ? false : z);
        }
    }
}
