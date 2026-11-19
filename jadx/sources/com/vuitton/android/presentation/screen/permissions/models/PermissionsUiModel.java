package com.vuitton.android.presentation.screen.permissions.models;

import com.vuitton.android.presentation.screen.feed.models.uimodels.ContactabilityUiModel;
import defpackage.fc;
import defpackage.o60;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001BE\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0004\u0012\b\b\u0002\u0010\b\u001a\u00020\u0004\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\t¢\u0006\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsUiModel;", "", "Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsBottomSheet;", "currentBottomSheet", "", "notificationIsActivated", "areNotificationsOnDeviceEnabled", "personalizationIsEnabled", "shouldHandleAppSettingsResult", "Lcom/vuitton/android/presentation/screen/feed/models/uimodels/ContactabilityUiModel;", "contactability", "<init>", "(Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsBottomSheet;ZZZZLcom/vuitton/android/presentation/screen/feed/models/uimodels/ContactabilityUiModel;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class PermissionsUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final PermissionsBottomSheet f62372a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f62373b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f62374c;
    public final boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f62375e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ContactabilityUiModel f62376f;

    public /* synthetic */ PermissionsUiModel(PermissionsBottomSheet permissionsBottomSheet, boolean z, boolean z2, boolean z3, boolean z4, ContactabilityUiModel contactabilityUiModel, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? PermissionsBottomSheet.None.f62367f : permissionsBottomSheet, (i2 & 2) != 0 ? false : z, (i2 & 4) != 0 ? false : z2, (i2 & 8) != 0 ? false : z3, (i2 & 16) != 0 ? false : z4, (i2 & 32) != 0 ? null : contactabilityUiModel);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PermissionsUiModel)) {
            return false;
        }
        PermissionsUiModel permissionsUiModel = (PermissionsUiModel) obj;
        return Intrinsics.c(this.f62372a, permissionsUiModel.f62372a) && this.f62373b == permissionsUiModel.f62373b && this.f62374c == permissionsUiModel.f62374c && this.d == permissionsUiModel.d && this.f62375e == permissionsUiModel.f62375e && Intrinsics.c(this.f62376f, permissionsUiModel.f62376f);
    }

    public final int hashCode() {
        int iB = o60.b(o60.b(o60.b(o60.b(this.f62372a.hashCode() * 31, 31, this.f62373b), 31, this.f62374c), 31, this.d), 31, this.f62375e);
        ContactabilityUiModel contactabilityUiModel = this.f62376f;
        return iB + (contactabilityUiModel == null ? 0 : contactabilityUiModel.hashCode());
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("PermissionsUiModel(currentBottomSheet=");
        sb.append(this.f62372a);
        sb.append(", notificationIsActivated=");
        sb.append(this.f62373b);
        sb.append(", areNotificationsOnDeviceEnabled=");
        fc.y(sb, this.f62374c, ", personalizationIsEnabled=", this.d, ", shouldHandleAppSettingsResult=");
        sb.append(this.f62375e);
        sb.append(", contactability=");
        sb.append(this.f62376f);
        sb.append(")");
        return sb.toString();
    }

    public PermissionsUiModel(PermissionsBottomSheet permissionsBottomSheet, boolean z, boolean z2, boolean z3, boolean z4, ContactabilityUiModel contactabilityUiModel) {
        permissionsBottomSheet.getClass();
        this.f62372a = permissionsBottomSheet;
        this.f62373b = z;
        this.f62374c = z2;
        this.d = z3;
        this.f62375e = z4;
        this.f62376f = contactabilityUiModel;
    }

    public PermissionsUiModel() {
        this(null, false, false, false, false, null, 63, null);
    }
}
