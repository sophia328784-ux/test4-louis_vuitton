package com.vuitton.android.presentation.screen.permissions.models;

import com.vuitton.android.R;
import com.vuitton.android.presentation.model.stringhandling.StringResourceUiModel;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\b\b\u0017\u0018\u00002\u00020\u0001:\u0004\u000b\f\r\u000eB5\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\b\b\u0002\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\n¨\u0006\u000f"}, d2 = {"Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsBottomSheet;", "", "Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;", "title", "message", "link", "positiveText", "", "isFromBackInStock", "<init>", "(Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;Z)V", "None", "CookiesAcceptanceBottomSheet", "AllowDeviceNotificationsPermissionsBottomSheet", "AllowCommunicationBottomSheet", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public class PermissionsBottomSheet {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final StringResourceUiModel.ResId f62363a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final StringResourceUiModel.ResId f62364b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final StringResourceUiModel.ResId f62365c;
    public final StringResourceUiModel.ResId d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f62366e;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsBottomSheet$None;", "Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsBottomSheet;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class None extends PermissionsBottomSheet {

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public static final None f62367f = new None(new StringResourceUiModel.ResId(0, null, 2, null), new StringResourceUiModel.ResId(0, null, 2, null), null, new StringResourceUiModel.ResId(0, null, 2, null), false, 20, null);
    }

    public PermissionsBottomSheet(StringResourceUiModel.ResId resId, StringResourceUiModel.ResId resId2, StringResourceUiModel.ResId resId3, StringResourceUiModel.ResId resId4, boolean z) {
        resId.getClass();
        resId2.getClass();
        resId4.getClass();
        this.f62363a = resId;
        this.f62364b = resId2;
        this.f62365c = resId3;
        this.d = resId4;
        this.f62366e = z;
    }

    public /* synthetic */ PermissionsBottomSheet(StringResourceUiModel.ResId resId, StringResourceUiModel.ResId resId2, StringResourceUiModel.ResId resId3, StringResourceUiModel.ResId resId4, boolean z, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(resId, resId2, (i2 & 4) != 0 ? null : resId3, resId4, (i2 & 16) != 0 ? false : z);
    }

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u0001B\u0011\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsBottomSheet$AllowCommunicationBottomSheet;", "Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsBottomSheet;", "isFromBackInStock", "", "<init>", "(Z)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class AllowCommunicationBottomSheet extends PermissionsBottomSheet {
        public AllowCommunicationBottomSheet(boolean z) {
            super(new StringResourceUiModel.ResId(R.string.notify_lv_title, null, 2, null), new StringResourceUiModel.ResId(R.string.notify_back_in_stock_description, null, 2, null), new StringResourceUiModel.ResId(R.string.gdpr_privacy_policy, null, 2, null), new StringResourceUiModel.ResId(R.string.accept_cta, null, 2, null), z);
        }

        public /* synthetic */ AllowCommunicationBottomSheet(boolean z, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this((i2 & 1) != 0 ? false : z);
        }

        public AllowCommunicationBottomSheet() {
            this(false, 1, null);
        }
    }

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u0001B\u0011\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsBottomSheet$AllowDeviceNotificationsPermissionsBottomSheet;", "Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsBottomSheet;", "isFromBackInStock", "", "<init>", "(Z)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class AllowDeviceNotificationsPermissionsBottomSheet extends PermissionsBottomSheet {
        public AllowDeviceNotificationsPermissionsBottomSheet(boolean z) {
            super(new StringResourceUiModel.ResId(R.string.notify_settings_disabled_title, null, 2, null), new StringResourceUiModel.ResId(R.string.notify_settings_enable_description, null, 2, null), new StringResourceUiModel.ResId(R.string.gdpr_privacy_policy, null, 2, null), new StringResourceUiModel.ResId(R.string.activate_cta, null, 2, null), z);
        }

        public /* synthetic */ AllowDeviceNotificationsPermissionsBottomSheet(boolean z, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this((i2 & 1) != 0 ? false : z);
        }

        public AllowDeviceNotificationsPermissionsBottomSheet() {
            this(false, 1, null);
        }
    }

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u0001B\u0011\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsBottomSheet$CookiesAcceptanceBottomSheet;", "Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsBottomSheet;", "isFromBackInStock", "", "<init>", "(Z)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class CookiesAcceptanceBottomSheet extends PermissionsBottomSheet {
        public CookiesAcceptanceBottomSheet(boolean z) {
            super(new StringResourceUiModel.ResId(R.string.notify_personalization_title, null, 2, null), new StringResourceUiModel.ResId(R.string.notify_personalization_description, null, 2, null), new StringResourceUiModel.ResId(R.string.gdpr_privacy_policy, null, 2, null), new StringResourceUiModel.ResId(R.string.accept_cta, null, 2, null), z);
        }

        public /* synthetic */ CookiesAcceptanceBottomSheet(boolean z, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this((i2 & 1) != 0 ? false : z);
        }

        public CookiesAcceptanceBottomSheet() {
            this(false, 1, null);
        }
    }
}
