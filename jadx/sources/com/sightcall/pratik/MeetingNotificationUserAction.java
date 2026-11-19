package com.sightcall.pratik;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001:\u0002\b\tB\u0011\b\u0004\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007\u0082\u0001\u0002\n\u000b¨\u0006\f"}, d2 = {"Lcom/sightcall/pratik/MeetingNotificationUserAction;", "", "userAction", "", "<init>", "(Ljava/lang/String;)V", "getUserAction", "()Ljava/lang/String;", "Accepted", "Clicked", "Lcom/sightcall/pratik/MeetingNotificationUserAction$Accepted;", "Lcom/sightcall/pratik/MeetingNotificationUserAction$Clicked;", "pratik_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class MeetingNotificationUserAction {
    private final String userAction;

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/sightcall/pratik/MeetingNotificationUserAction$Accepted;", "Lcom/sightcall/pratik/MeetingNotificationUserAction;", "<init>", "()V", "pratik_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Accepted extends MeetingNotificationUserAction {
        public static final Accepted INSTANCE = new Accepted();

        private Accepted() {
            super("accepted", null);
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/sightcall/pratik/MeetingNotificationUserAction$Clicked;", "Lcom/sightcall/pratik/MeetingNotificationUserAction;", "<init>", "()V", "pratik_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Clicked extends MeetingNotificationUserAction {
        public static final Clicked INSTANCE = new Clicked();

        private Clicked() {
            super("clicked", null);
        }
    }

    private MeetingNotificationUserAction(String str) {
        this.userAction = str;
    }

    public final String getUserAction() {
        return this.userAction;
    }

    public /* synthetic */ MeetingNotificationUserAction(String str, DefaultConstructorMarker defaultConstructorMarker) {
        this(str);
    }
}
