package com.vuitton.android.domain.monitoring.mylv;

import com.batch.android.v0.a;
import com.vuitton.android.domain.monitoring.MonitorActionError;
import com.vuitton.android.domain.monitoring.MonitorActionName;
import defpackage.d21;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001:\u0002\u0002\u0003¨\u0006\u0004À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/domain/monitoring/mylv/MyInformationMonitoring;", "", a.d, "Error", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface MyInformationMonitoring {

    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0004\u0002\u0003\u0004\u0005\u0082\u0001\u0004\u0006\u0007\b\t¨\u0006\nÀ\u0006\u0003"}, d2 = {"Lcom/vuitton/android/domain/monitoring/mylv/MyInformationMonitoring$Action;", "Lcom/vuitton/android/domain/monitoring/MonitorActionName;", "OpenMyInformation", "EditProfile", "EditPassword", "DeleteAccount", "Lcom/vuitton/android/domain/monitoring/mylv/MyInformationMonitoring$Action$DeleteAccount;", "Lcom/vuitton/android/domain/monitoring/mylv/MyInformationMonitoring$Action$EditPassword;", "Lcom/vuitton/android/domain/monitoring/mylv/MyInformationMonitoring$Action$EditProfile;", "Lcom/vuitton/android/domain/monitoring/mylv/MyInformationMonitoring$Action$OpenMyInformation;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public interface Action extends MonitorActionName {

        @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/domain/monitoring/mylv/MyInformationMonitoring$Action$DeleteAccount;", "Lcom/vuitton/android/domain/monitoring/mylv/MyInformationMonitoring$Action;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class DeleteAccount implements Action {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final DeleteAccount f48919a = new DeleteAccount();

            @Override // com.vuitton.android.domain.monitoring.MonitorActionName
            public final String a() {
                return "Delete Account";
            }

            public final boolean equals(Object obj) {
                return this == obj || (obj instanceof DeleteAccount);
            }

            public final int hashCode() {
                return 1074635867;
            }

            public final String toString() {
                return "DeleteAccount";
            }
        }

        @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/domain/monitoring/mylv/MyInformationMonitoring$Action$EditPassword;", "Lcom/vuitton/android/domain/monitoring/mylv/MyInformationMonitoring$Action;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class EditPassword implements Action {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final EditPassword f48920a = new EditPassword();

            @Override // com.vuitton.android.domain.monitoring.MonitorActionName
            public final String a() {
                return "Edit Password";
            }

            public final boolean equals(Object obj) {
                return this == obj || (obj instanceof EditPassword);
            }

            public final int hashCode() {
                return 372737356;
            }

            public final String toString() {
                return "EditPassword";
            }
        }

        @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/domain/monitoring/mylv/MyInformationMonitoring$Action$EditProfile;", "Lcom/vuitton/android/domain/monitoring/mylv/MyInformationMonitoring$Action;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class EditProfile implements Action {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final EditProfile f48921a = new EditProfile();

            @Override // com.vuitton.android.domain.monitoring.MonitorActionName
            public final String a() {
                return "Edit profile";
            }

            public final boolean equals(Object obj) {
                return this == obj || (obj instanceof EditProfile);
            }

            public final int hashCode() {
                return -2137774888;
            }

            public final String toString() {
                return "EditProfile";
            }
        }

        @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/domain/monitoring/mylv/MyInformationMonitoring$Action$OpenMyInformation;", "Lcom/vuitton/android/domain/monitoring/mylv/MyInformationMonitoring$Action;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class OpenMyInformation implements Action {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final OpenMyInformation f48922a = new OpenMyInformation();

            @Override // com.vuitton.android.domain.monitoring.MonitorActionName
            public final String a() {
                return "Open MyInfo";
            }

            public final boolean equals(Object obj) {
                return this == obj || (obj instanceof OpenMyInformation);
            }

            public final int hashCode() {
                return -1480329329;
            }

            public final String toString() {
                return "OpenMyInformation";
            }
        }
    }

    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0004\u0002\u0003\u0004\u0005\u0082\u0001\u0004\u0006\u0007\b\t¨\u0006\nÀ\u0006\u0003"}, d2 = {"Lcom/vuitton/android/domain/monitoring/mylv/MyInformationMonitoring$Error;", "Lcom/vuitton/android/domain/monitoring/MonitorActionError;", "OpenMyInformationError", "EditProfileError", "EditPasswordError", "DeleteAccountError", "Lcom/vuitton/android/domain/monitoring/mylv/MyInformationMonitoring$Error$DeleteAccountError;", "Lcom/vuitton/android/domain/monitoring/mylv/MyInformationMonitoring$Error$EditPasswordError;", "Lcom/vuitton/android/domain/monitoring/mylv/MyInformationMonitoring$Error$EditProfileError;", "Lcom/vuitton/android/domain/monitoring/mylv/MyInformationMonitoring$Error$OpenMyInformationError;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public interface Error extends MonitorActionError {

        @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/domain/monitoring/mylv/MyInformationMonitoring$Error$DeleteAccountError;", "Lcom/vuitton/android/domain/monitoring/mylv/MyInformationMonitoring$Error;", "", "error", "<init>", "(Ljava/lang/Throwable;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class DeleteAccountError implements Error {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final Throwable f48923a;

            public DeleteAccountError(Throwable th) {
                th.getClass();
                this.f48923a = th;
            }

            @Override // com.vuitton.android.domain.monitoring.MonitorActionError
            /* JADX INFO: renamed from: a, reason: from getter */
            public final Throwable getF48926a() {
                return this.f48923a;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof DeleteAccountError) && Intrinsics.c(this.f48923a, ((DeleteAccountError) obj).f48923a);
            }

            @Override // com.vuitton.android.domain.monitoring.MonitorActionError
            /* JADX INFO: renamed from: getName */
            public final String getF48843c() {
                return "delete_account_error";
            }

            public final int hashCode() {
                return this.f48923a.hashCode();
            }

            public final String toString() {
                return d21.n("DeleteAccountError(error=", ")", this.f48923a);
            }
        }

        @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/domain/monitoring/mylv/MyInformationMonitoring$Error$EditPasswordError;", "Lcom/vuitton/android/domain/monitoring/mylv/MyInformationMonitoring$Error;", "", "error", "<init>", "(Ljava/lang/Throwable;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class EditPasswordError implements Error {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final Throwable f48924a;

            public EditPasswordError(Throwable th) {
                th.getClass();
                this.f48924a = th;
            }

            @Override // com.vuitton.android.domain.monitoring.MonitorActionError
            /* JADX INFO: renamed from: a, reason: from getter */
            public final Throwable getF48926a() {
                return this.f48924a;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof EditPasswordError) && Intrinsics.c(this.f48924a, ((EditPasswordError) obj).f48924a);
            }

            @Override // com.vuitton.android.domain.monitoring.MonitorActionError
            /* JADX INFO: renamed from: getName */
            public final String getF48843c() {
                return "edit_password_error";
            }

            public final int hashCode() {
                return this.f48924a.hashCode();
            }

            public final String toString() {
                return d21.n("EditPasswordError(error=", ")", this.f48924a);
            }
        }

        @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/domain/monitoring/mylv/MyInformationMonitoring$Error$EditProfileError;", "Lcom/vuitton/android/domain/monitoring/mylv/MyInformationMonitoring$Error;", "", "error", "<init>", "(Ljava/lang/Throwable;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class EditProfileError implements Error {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final Throwable f48925a;

            public EditProfileError(Throwable th) {
                th.getClass();
                this.f48925a = th;
            }

            @Override // com.vuitton.android.domain.monitoring.MonitorActionError
            /* JADX INFO: renamed from: a, reason: from getter */
            public final Throwable getF48926a() {
                return this.f48925a;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof EditProfileError) && Intrinsics.c(this.f48925a, ((EditProfileError) obj).f48925a);
            }

            @Override // com.vuitton.android.domain.monitoring.MonitorActionError
            /* JADX INFO: renamed from: getName */
            public final String getF48843c() {
                return "edit_profile_error";
            }

            public final int hashCode() {
                return this.f48925a.hashCode();
            }

            public final String toString() {
                return d21.n("EditProfileError(error=", ")", this.f48925a);
            }
        }

        @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/domain/monitoring/mylv/MyInformationMonitoring$Error$OpenMyInformationError;", "Lcom/vuitton/android/domain/monitoring/mylv/MyInformationMonitoring$Error;", "", "error", "<init>", "(Ljava/lang/Throwable;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class OpenMyInformationError implements Error {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final Throwable f48926a;

            public OpenMyInformationError(Throwable th) {
                th.getClass();
                this.f48926a = th;
            }

            @Override // com.vuitton.android.domain.monitoring.MonitorActionError
            /* JADX INFO: renamed from: a, reason: from getter */
            public final Throwable getF48926a() {
                return this.f48926a;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof OpenMyInformationError) && Intrinsics.c(this.f48926a, ((OpenMyInformationError) obj).f48926a);
            }

            @Override // com.vuitton.android.domain.monitoring.MonitorActionError
            /* JADX INFO: renamed from: getName */
            public final String getF48843c() {
                return "open_myinfo_error";
            }

            public final int hashCode() {
                return this.f48926a.hashCode();
            }

            public final String toString() {
                return d21.n("OpenMyInformationError(error=", ")", this.f48926a);
            }
        }
    }
}
