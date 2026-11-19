package com.vuitton.android.presentation.screen.certificates.nfc.model;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b7\u0018\u00002\u00020\u0001:\u0005\u0002\u0003\u0004\u0005\u0006\u0082\u0001\u0005\u0007\b\t\n\u000b¨\u0006\f"}, d2 = {"Lcom/vuitton/android/presentation/screen/certificates/nfc/model/NfcScanState;", "", "Scanning", "Processing", "NfcDisabled", "Success", "Error", "Lcom/vuitton/android/presentation/screen/certificates/nfc/model/NfcScanState$Error;", "Lcom/vuitton/android/presentation/screen/certificates/nfc/model/NfcScanState$NfcDisabled;", "Lcom/vuitton/android/presentation/screen/certificates/nfc/model/NfcScanState$Processing;", "Lcom/vuitton/android/presentation/screen/certificates/nfc/model/NfcScanState$Scanning;", "Lcom/vuitton/android/presentation/screen/certificates/nfc/model/NfcScanState$Success;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class NfcScanState {

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/certificates/nfc/model/NfcScanState$Error;", "Lcom/vuitton/android/presentation/screen/certificates/nfc/model/NfcScanState;", "Lcom/vuitton/android/presentation/screen/certificates/nfc/model/NfcErrorType;", "errorType", "", "message", "<init>", "(Lcom/vuitton/android/presentation/screen/certificates/nfc/model/NfcErrorType;Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Error extends NfcScanState {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final NfcErrorType f55935a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f55936b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Error(NfcErrorType nfcErrorType, String str) {
            super(null);
            nfcErrorType.getClass();
            this.f55935a = nfcErrorType;
            this.f55936b = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Error)) {
                return false;
            }
            Error error = (Error) obj;
            return this.f55935a == error.f55935a && Intrinsics.c(this.f55936b, error.f55936b);
        }

        public final int hashCode() {
            int iHashCode = this.f55935a.hashCode() * 31;
            String str = this.f55936b;
            return iHashCode + (str == null ? 0 : str.hashCode());
        }

        public final String toString() {
            return "Error(errorType=" + this.f55935a + ", message=" + this.f55936b + ")";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/certificates/nfc/model/NfcScanState$NfcDisabled;", "Lcom/vuitton/android/presentation/screen/certificates/nfc/model/NfcScanState;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class NfcDisabled extends NfcScanState {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final NfcDisabled f55937a = new NfcDisabled(null);
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/certificates/nfc/model/NfcScanState$Processing;", "Lcom/vuitton/android/presentation/screen/certificates/nfc/model/NfcScanState;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Processing extends NfcScanState {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final Processing f55938a = new Processing(null);
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/certificates/nfc/model/NfcScanState$Scanning;", "Lcom/vuitton/android/presentation/screen/certificates/nfc/model/NfcScanState;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Scanning extends NfcScanState {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final Scanning f55939a = new Scanning(null);
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/certificates/nfc/model/NfcScanState$Success;", "Lcom/vuitton/android/presentation/screen/certificates/nfc/model/NfcScanState;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Success extends NfcScanState {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final Success f55940a = new Success(null);
    }

    public NfcScanState(DefaultConstructorMarker defaultConstructorMarker) {
    }
}
