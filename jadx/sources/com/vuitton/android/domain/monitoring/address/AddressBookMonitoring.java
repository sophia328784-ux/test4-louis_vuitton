package com.vuitton.android.domain.monitoring.address;

import com.batch.android.v0.a;
import com.vuitton.android.domain.monitoring.MonitorActionError;
import com.vuitton.android.domain.monitoring.MonitorActionName;
import defpackage.d21;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001:\u0002\u0002\u0003¨\u0006\u0004À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/domain/monitoring/address/AddressBookMonitoring;", "", a.d, "Error", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface AddressBookMonitoring {

    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0005\u0002\u0003\u0004\u0005\u0006\u0082\u0001\u0005\u0007\b\t\n\u000b¨\u0006\fÀ\u0006\u0003"}, d2 = {"Lcom/vuitton/android/domain/monitoring/address/AddressBookMonitoring$Action;", "Lcom/vuitton/android/domain/monitoring/MonitorActionName;", "OpenAddressBook", "SaveAddress", "DeleteAddress", "OpenAddEditAddress", "AddressAutocomplete", "Lcom/vuitton/android/domain/monitoring/address/AddressBookMonitoring$Action$AddressAutocomplete;", "Lcom/vuitton/android/domain/monitoring/address/AddressBookMonitoring$Action$DeleteAddress;", "Lcom/vuitton/android/domain/monitoring/address/AddressBookMonitoring$Action$OpenAddEditAddress;", "Lcom/vuitton/android/domain/monitoring/address/AddressBookMonitoring$Action$OpenAddressBook;", "Lcom/vuitton/android/domain/monitoring/address/AddressBookMonitoring$Action$SaveAddress;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public interface Action extends MonitorActionName {

        @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/domain/monitoring/address/AddressBookMonitoring$Action$AddressAutocomplete;", "Lcom/vuitton/android/domain/monitoring/address/AddressBookMonitoring$Action;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class AddressAutocomplete implements Action {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final AddressAutocomplete f48808a = new AddressAutocomplete();

            @Override // com.vuitton.android.domain.monitoring.MonitorActionName
            public final String a() {
                return "Address autocomplete";
            }

            public final boolean equals(Object obj) {
                return this == obj || (obj instanceof AddressAutocomplete);
            }

            public final int hashCode() {
                return -1630529324;
            }

            public final String toString() {
                return "AddressAutocomplete";
            }
        }

        @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/domain/monitoring/address/AddressBookMonitoring$Action$DeleteAddress;", "Lcom/vuitton/android/domain/monitoring/address/AddressBookMonitoring$Action;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class DeleteAddress implements Action {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final DeleteAddress f48809a = new DeleteAddress();

            @Override // com.vuitton.android.domain.monitoring.MonitorActionName
            public final String a() {
                return "Delete Address";
            }

            public final boolean equals(Object obj) {
                return this == obj || (obj instanceof DeleteAddress);
            }

            public final int hashCode() {
                return 443846817;
            }

            public final String toString() {
                return "DeleteAddress";
            }
        }

        @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/domain/monitoring/address/AddressBookMonitoring$Action$OpenAddEditAddress;", "Lcom/vuitton/android/domain/monitoring/address/AddressBookMonitoring$Action;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class OpenAddEditAddress implements Action {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final OpenAddEditAddress f48810a = new OpenAddEditAddress();

            @Override // com.vuitton.android.domain.monitoring.MonitorActionName
            public final String a() {
                return "Open Address form";
            }

            public final boolean equals(Object obj) {
                return this == obj || (obj instanceof OpenAddEditAddress);
            }

            public final int hashCode() {
                return -1866310085;
            }

            public final String toString() {
                return "OpenAddEditAddress";
            }
        }

        @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/domain/monitoring/address/AddressBookMonitoring$Action$OpenAddressBook;", "Lcom/vuitton/android/domain/monitoring/address/AddressBookMonitoring$Action;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class OpenAddressBook implements Action {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final OpenAddressBook f48811a = new OpenAddressBook();

            @Override // com.vuitton.android.domain.monitoring.MonitorActionName
            public final String a() {
                return "Open MyAddressBook";
            }

            public final boolean equals(Object obj) {
                return this == obj || (obj instanceof OpenAddressBook);
            }

            public final int hashCode() {
                return 760116011;
            }

            public final String toString() {
                return "OpenAddressBook";
            }
        }

        @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/domain/monitoring/address/AddressBookMonitoring$Action$SaveAddress;", "Lcom/vuitton/android/domain/monitoring/address/AddressBookMonitoring$Action;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class SaveAddress implements Action {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final SaveAddress f48812a = new SaveAddress();

            @Override // com.vuitton.android.domain.monitoring.MonitorActionName
            public final String a() {
                return "Save Address";
            }

            public final boolean equals(Object obj) {
                return this == obj || (obj instanceof SaveAddress);
            }

            public final int hashCode() {
                return -607118705;
            }

            public final String toString() {
                return "SaveAddress";
            }
        }
    }

    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0004\u0002\u0003\u0004\u0005\u0082\u0001\u0004\u0006\u0007\b\t¨\u0006\nÀ\u0006\u0003"}, d2 = {"Lcom/vuitton/android/domain/monitoring/address/AddressBookMonitoring$Error;", "Lcom/vuitton/android/domain/monitoring/MonitorActionError;", "OpenAddressBookError", "DeleteAddressError", "OpenAddEditAddressError", "AddressAutocompleteError", "Lcom/vuitton/android/domain/monitoring/address/AddressBookMonitoring$Error$AddressAutocompleteError;", "Lcom/vuitton/android/domain/monitoring/address/AddressBookMonitoring$Error$DeleteAddressError;", "Lcom/vuitton/android/domain/monitoring/address/AddressBookMonitoring$Error$OpenAddEditAddressError;", "Lcom/vuitton/android/domain/monitoring/address/AddressBookMonitoring$Error$OpenAddressBookError;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public interface Error extends MonitorActionError {

        @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/domain/monitoring/address/AddressBookMonitoring$Error$AddressAutocompleteError;", "Lcom/vuitton/android/domain/monitoring/address/AddressBookMonitoring$Error;", "", "error", "<init>", "(Ljava/lang/Throwable;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class AddressAutocompleteError implements Error {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final Throwable f48813a;

            public AddressAutocompleteError(Throwable th) {
                th.getClass();
                this.f48813a = th;
            }

            @Override // com.vuitton.android.domain.monitoring.MonitorActionError
            /* JADX INFO: renamed from: a, reason: from getter */
            public final Throwable getF48819a() {
                return this.f48813a;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof AddressAutocompleteError) && Intrinsics.c(this.f48813a, ((AddressAutocompleteError) obj).f48813a);
            }

            @Override // com.vuitton.android.domain.monitoring.MonitorActionError
            public final String getName() {
                return "address_autocomplete_error";
            }

            public final int hashCode() {
                return this.f48813a.hashCode();
            }

            public final String toString() {
                return d21.n("AddressAutocompleteError(error=", ")", this.f48813a);
            }
        }

        @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/domain/monitoring/address/AddressBookMonitoring$Error$DeleteAddressError;", "Lcom/vuitton/android/domain/monitoring/address/AddressBookMonitoring$Error;", "", "error", "<init>", "(Ljava/lang/Throwable;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class DeleteAddressError implements Error {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final Throwable f48814a;

            public DeleteAddressError(Throwable th) {
                th.getClass();
                this.f48814a = th;
            }

            @Override // com.vuitton.android.domain.monitoring.MonitorActionError
            /* JADX INFO: renamed from: a, reason: from getter */
            public final Throwable getF48819a() {
                return this.f48814a;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof DeleteAddressError) && Intrinsics.c(this.f48814a, ((DeleteAddressError) obj).f48814a);
            }

            @Override // com.vuitton.android.domain.monitoring.MonitorActionError
            public final String getName() {
                return "delete_address_error";
            }

            public final int hashCode() {
                return this.f48814a.hashCode();
            }

            public final String toString() {
                return d21.n("DeleteAddressError(error=", ")", this.f48814a);
            }
        }

        @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/domain/monitoring/address/AddressBookMonitoring$Error$OpenAddEditAddressError;", "Lcom/vuitton/android/domain/monitoring/address/AddressBookMonitoring$Error;", "", "error", "<init>", "(Ljava/lang/Throwable;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class OpenAddEditAddressError implements Error {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final Throwable f48815a;

            public OpenAddEditAddressError(Throwable th) {
                th.getClass();
                this.f48815a = th;
            }

            @Override // com.vuitton.android.domain.monitoring.MonitorActionError
            /* JADX INFO: renamed from: a, reason: from getter */
            public final Throwable getF48819a() {
                return this.f48815a;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof OpenAddEditAddressError) && Intrinsics.c(this.f48815a, ((OpenAddEditAddressError) obj).f48815a);
            }

            @Override // com.vuitton.android.domain.monitoring.MonitorActionError
            public final String getName() {
                return "open_address_form_error";
            }

            public final int hashCode() {
                return this.f48815a.hashCode();
            }

            public final String toString() {
                return d21.n("OpenAddEditAddressError(error=", ")", this.f48815a);
            }
        }

        @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/domain/monitoring/address/AddressBookMonitoring$Error$OpenAddressBookError;", "Lcom/vuitton/android/domain/monitoring/address/AddressBookMonitoring$Error;", "", "error", "<init>", "(Ljava/lang/Throwable;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class OpenAddressBookError implements Error {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final Throwable f48816a;

            public OpenAddressBookError(Throwable th) {
                th.getClass();
                this.f48816a = th;
            }

            @Override // com.vuitton.android.domain.monitoring.MonitorActionError
            /* JADX INFO: renamed from: a, reason: from getter */
            public final Throwable getF48819a() {
                return this.f48816a;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof OpenAddressBookError) && Intrinsics.c(this.f48816a, ((OpenAddressBookError) obj).f48816a);
            }

            @Override // com.vuitton.android.domain.monitoring.MonitorActionError
            public final String getName() {
                return "open_myaddressbook_error";
            }

            public final int hashCode() {
                return this.f48816a.hashCode();
            }

            public final String toString() {
                return d21.n("OpenAddressBookError(error=", ")", this.f48816a);
            }
        }
    }
}
