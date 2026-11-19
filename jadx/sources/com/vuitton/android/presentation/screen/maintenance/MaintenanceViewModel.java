package com.vuitton.android.presentation.screen.maintenance;

import defpackage.fc;
import defpackage.tr;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001:\u0002\u0002\u0003¨\u0006\u0004À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/maintenance/MaintenanceViewModel;", "", "MaintenanceViewState", "Navigation", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface MaintenanceViewModel {

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b7\u0018\u00002\u00020\u0001:\u0002\u0002\u0003\u0082\u0001\u0002\u0004\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/maintenance/MaintenanceViewModel$Navigation;", "", "GoToContactUs", "GoToClientServices", "Lcom/vuitton/android/presentation/screen/maintenance/MaintenanceViewModel$Navigation$GoToClientServices;", "Lcom/vuitton/android/presentation/screen/maintenance/MaintenanceViewModel$Navigation$GoToContactUs;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static abstract class Navigation {

        @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/maintenance/MaintenanceViewModel$Navigation$GoToClientServices;", "Lcom/vuitton/android/presentation/screen/maintenance/MaintenanceViewModel$Navigation;", "", "customerServicePhoneNumber", "<init>", "(Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class GoToClientServices extends Navigation {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final String f59210a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public GoToClientServices(String str) {
                super(null);
                str.getClass();
                this.f59210a = str;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof GoToClientServices) && Intrinsics.c(this.f59210a, ((GoToClientServices) obj).f59210a);
            }

            public final int hashCode() {
                return this.f59210a.hashCode();
            }

            public final String toString() {
                return fc.h("GoToClientServices(customerServicePhoneNumber=", this.f59210a, ")");
            }
        }

        @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/maintenance/MaintenanceViewModel$Navigation$GoToContactUs;", "Lcom/vuitton/android/presentation/screen/maintenance/MaintenanceViewModel$Navigation;", "", "contactUs", "<init>", "(Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class GoToContactUs extends Navigation {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final String f59211a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public GoToContactUs(String str) {
                super(null);
                str.getClass();
                this.f59211a = str;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof GoToContactUs) && Intrinsics.c(this.f59211a, ((GoToContactUs) obj).f59211a);
            }

            public final int hashCode() {
                return this.f59211a.hashCode();
            }

            public final String toString() {
                return fc.h("GoToContactUs(contactUs=", this.f59211a, ")");
            }
        }

        public Navigation(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0011\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/maintenance/MaintenanceViewModel$MaintenanceViewState;", "", "", "displayLoader", "<init>", "(Z)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class MaintenanceViewState {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final boolean f59209a;

        public /* synthetic */ MaintenanceViewState(boolean z, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this((i2 & 1) != 0 ? false : z);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof MaintenanceViewState) && this.f59209a == ((MaintenanceViewState) obj).f59209a;
        }

        public final int hashCode() {
            return Boolean.hashCode(this.f59209a);
        }

        public final String toString() {
            return tr.i("MaintenanceViewState(displayLoader=", ")", this.f59209a);
        }

        public MaintenanceViewState(boolean z) {
            this.f59209a = z;
        }

        public MaintenanceViewState() {
            this(false, 1, null);
        }
    }
}
