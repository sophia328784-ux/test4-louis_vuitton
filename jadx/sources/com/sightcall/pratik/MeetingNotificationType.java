package com.sightcall.pratik;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001:\u0003\b\t\nB\u0011\b\u0004\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007\u0082\u0001\u0003\u000b\f\r¨\u0006\u000e"}, d2 = {"Lcom/sightcall/pratik/MeetingNotificationType;", "", "type", "", "<init>", "(Ljava/lang/String;)V", "getType", "()Ljava/lang/String;", "MeetingRequest", "MeetingDismissNotifications", "MeetingRequestCanceled", "Lcom/sightcall/pratik/MeetingNotificationType$MeetingDismissNotifications;", "Lcom/sightcall/pratik/MeetingNotificationType$MeetingRequest;", "Lcom/sightcall/pratik/MeetingNotificationType$MeetingRequestCanceled;", "pratik_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class MeetingNotificationType {
    private final String type;

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/sightcall/pratik/MeetingNotificationType$MeetingDismissNotifications;", "Lcom/sightcall/pratik/MeetingNotificationType;", "<init>", "()V", "pratik_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class MeetingDismissNotifications extends MeetingNotificationType {
        public static final MeetingDismissNotifications INSTANCE = new MeetingDismissNotifications();

        private MeetingDismissNotifications() {
            super("dismissNotifications", null);
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/sightcall/pratik/MeetingNotificationType$MeetingRequest;", "Lcom/sightcall/pratik/MeetingNotificationType;", "<init>", "()V", "pratik_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class MeetingRequest extends MeetingNotificationType {
        public static final MeetingRequest INSTANCE = new MeetingRequest();

        private MeetingRequest() {
            super("meetingRequest", null);
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/sightcall/pratik/MeetingNotificationType$MeetingRequestCanceled;", "Lcom/sightcall/pratik/MeetingNotificationType;", "<init>", "()V", "pratik_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class MeetingRequestCanceled extends MeetingNotificationType {
        public static final MeetingRequestCanceled INSTANCE = new MeetingRequestCanceled();

        private MeetingRequestCanceled() {
            super("meetingRequestCanceled", null);
        }
    }

    private MeetingNotificationType(String str) {
        this.type = str;
    }

    public final String getType() {
        return this.type;
    }

    public /* synthetic */ MeetingNotificationType(String str, DefaultConstructorMarker defaultConstructorMarker) {
        this(str);
    }
}
