package com.vuitton.android.presentation.screen.permissions.models;

import com.vuitton.android.presentation.screen.permissions.PermissionContext;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0003\u0002\u0003\u0004\u0082\u0001\u0003\u0005\u0006\u0007¨\u0006\bÀ\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsTrackingUIModel;", "", "CustomizationEnabled", "EnableDeviceNotifications", "NotifyMeEnabled", "Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsTrackingUIModel$CustomizationEnabled;", "Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsTrackingUIModel$EnableDeviceNotifications;", "Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsTrackingUIModel$NotifyMeEnabled;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface PermissionsTrackingUIModel {

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsTrackingUIModel$CustomizationEnabled;", "Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsTrackingUIModel;", "Lcom/vuitton/android/presentation/screen/permissions/PermissionContext;", "contextPermission", "<init>", "(Lcom/vuitton/android/presentation/screen/permissions/PermissionContext;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class CustomizationEnabled implements PermissionsTrackingUIModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final PermissionContext f62368a;

        public CustomizationEnabled(PermissionContext permissionContext) {
            permissionContext.getClass();
            this.f62368a = permissionContext;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof CustomizationEnabled) && this.f62368a == ((CustomizationEnabled) obj).f62368a;
        }

        public final int hashCode() {
            return this.f62368a.hashCode();
        }

        public final String toString() {
            return "CustomizationEnabled(contextPermission=" + this.f62368a + ")";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsTrackingUIModel$EnableDeviceNotifications;", "Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsTrackingUIModel;", "Lcom/vuitton/android/presentation/screen/permissions/PermissionContext;", "contextPermission", "<init>", "(Lcom/vuitton/android/presentation/screen/permissions/PermissionContext;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class EnableDeviceNotifications implements PermissionsTrackingUIModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final PermissionContext f62369a;

        public EnableDeviceNotifications(PermissionContext permissionContext) {
            permissionContext.getClass();
            this.f62369a = permissionContext;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof EnableDeviceNotifications) && this.f62369a == ((EnableDeviceNotifications) obj).f62369a;
        }

        public final int hashCode() {
            return this.f62369a.hashCode();
        }

        public final String toString() {
            return "EnableDeviceNotifications(contextPermission=" + this.f62369a + ")";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsTrackingUIModel$NotifyMeEnabled;", "Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsTrackingUIModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class NotifyMeEnabled implements PermissionsTrackingUIModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final NotifyMeEnabled f62370a = new NotifyMeEnabled();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof NotifyMeEnabled);
        }

        public final int hashCode() {
            return -1546618809;
        }

        public final String toString() {
            return "NotifyMeEnabled";
        }
    }
}
