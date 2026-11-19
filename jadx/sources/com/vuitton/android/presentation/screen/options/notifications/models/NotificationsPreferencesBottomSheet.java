package com.vuitton.android.presentation.screen.options.notifications.models;

import com.vuitton.android.R;
import com.vuitton.android.presentation.model.stringhandling.StringResourceUiModel;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\b\u0017\u0018\u00002\u00020\u0001:\u0004\t\n\u000b\fB+\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0002¢\u0006\u0004\b\u0007\u0010\b¨\u0006\r"}, d2 = {"Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreferencesBottomSheet;", "", "Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;", "title", "message", "link", "positiveText", "<init>", "(Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;)V", "None", "NotifyMeDisabled", "NoOptInCustomization", "SystemNotificationDisabled", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public class NotificationsPreferencesBottomSheet {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final StringResourceUiModel f59944a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final StringResourceUiModel f59945b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final StringResourceUiModel f59946c;
    public final StringResourceUiModel d;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreferencesBottomSheet$NoOptInCustomization;", "Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreferencesBottomSheet;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class NoOptInCustomization extends NotificationsPreferencesBottomSheet {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public static final NoOptInCustomization f59947e = new NoOptInCustomization(new StringResourceUiModel.ResId(R.string.notif_redirection_title_legal, null, 2, null), new StringResourceUiModel.ResId(R.string.notif_redirection_description_legal, null, 2, null), null, new StringResourceUiModel.ResId(R.string.notif_redirection_CTA_legal, null, 2, null), 4, null);
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreferencesBottomSheet$None;", "Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreferencesBottomSheet;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class None extends NotificationsPreferencesBottomSheet {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public static final None f59948e;

        static {
            StringResourceUiModel.Empty empty = StringResourceUiModel.Empty.f51825b;
            f59948e = new None(empty, empty, empty, empty);
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreferencesBottomSheet$NotifyMeDisabled;", "Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreferencesBottomSheet;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class NotifyMeDisabled extends NotificationsPreferencesBottomSheet {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public static final NotifyMeDisabled f59949e = new NotifyMeDisabled(new StringResourceUiModel.ResId(R.string.notify_back_in_stock_disable_title, null, 2, null), new StringResourceUiModel.ResId(R.string.notify_back_in_stock_disable_description, null, 2, null), new StringResourceUiModel.ResId(R.string.gdpr_privacy_policy, null, 2, null), new StringResourceUiModel.ResId(R.string.confirm, null, 2, null));
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreferencesBottomSheet$SystemNotificationDisabled;", "Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreferencesBottomSheet;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class SystemNotificationDisabled extends NotificationsPreferencesBottomSheet {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public static final SystemNotificationDisabled f59950e = new SystemNotificationDisabled(new StringResourceUiModel.ResId(R.string.notif_redirection_title, null, 2, null), new StringResourceUiModel.ResId(R.string.notif_redirection_description, null, 2, null), null, new StringResourceUiModel.ResId(R.string.notif_redirection_CTA, null, 2, null), 4, null);
    }

    public NotificationsPreferencesBottomSheet(StringResourceUiModel stringResourceUiModel, StringResourceUiModel stringResourceUiModel2, StringResourceUiModel stringResourceUiModel3, StringResourceUiModel stringResourceUiModel4) {
        stringResourceUiModel.getClass();
        stringResourceUiModel2.getClass();
        stringResourceUiModel4.getClass();
        this.f59944a = stringResourceUiModel;
        this.f59945b = stringResourceUiModel2;
        this.f59946c = stringResourceUiModel3;
        this.d = stringResourceUiModel4;
    }

    public /* synthetic */ NotificationsPreferencesBottomSheet(StringResourceUiModel stringResourceUiModel, StringResourceUiModel stringResourceUiModel2, StringResourceUiModel stringResourceUiModel3, StringResourceUiModel stringResourceUiModel4, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(stringResourceUiModel, stringResourceUiModel2, (i2 & 4) != 0 ? null : stringResourceUiModel3, stringResourceUiModel4);
    }
}
