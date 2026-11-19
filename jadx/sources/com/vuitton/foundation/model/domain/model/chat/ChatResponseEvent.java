package com.vuitton.foundation.model.domain.model.chat;

import com.batch.android.s.b;
import com.networkbench.agent.impl.harvest.ConfigurationName;
import defpackage.d21;
import defpackage.fc;
import defpackage.n00;
import defpackage.o60;
import defpackage.tr;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0004\u0002\u0003\u0004\u0005\u0082\u0001\u0003\u0006\u0007\b¨\u0006\tÀ\u0006\u0003"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/chat/ChatResponseEvent;", "", "TargetedUrlReceived", "UiNotification", "OnLoadingChat", "UnhandledChatEvent", "Lcom/vuitton/foundation/model/domain/model/chat/ChatResponseEvent$TargetedUrlReceived;", "Lcom/vuitton/foundation/model/domain/model/chat/ChatResponseEvent$UiNotification;", "Lcom/vuitton/foundation/model/domain/model/chat/ChatResponseEvent$UnhandledChatEvent;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface ChatResponseEvent {

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/chat/ChatResponseEvent$OnLoadingChat;", "Lcom/vuitton/foundation/model/domain/model/chat/ChatResponseEvent$UiNotification;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnLoadingChat implements UiNotification {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final OnLoadingChat f67093a = new OnLoadingChat();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OnLoadingChat);
        }

        public final int hashCode() {
            return -873844557;
        }

        public final String toString() {
            return "OnLoadingChat";
        }
    }

    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0003\u0002\u0003\u0004\u0082\u0001\u0003\u0005\u0006\u0007¨\u0006\bÀ\u0006\u0003"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/chat/ChatResponseEvent$TargetedUrlReceived;", "Lcom/vuitton/foundation/model/domain/model/chat/ChatResponseEvent;", "DeepLinkUrl", "WebAppLinkUrl", "UnknownUrl", "Lcom/vuitton/foundation/model/domain/model/chat/ChatResponseEvent$TargetedUrlReceived$DeepLinkUrl;", "Lcom/vuitton/foundation/model/domain/model/chat/ChatResponseEvent$TargetedUrlReceived$UnknownUrl;", "Lcom/vuitton/foundation/model/domain/model/chat/ChatResponseEvent$TargetedUrlReceived$WebAppLinkUrl;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public interface TargetedUrlReceived extends ChatResponseEvent {

        @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/chat/ChatResponseEvent$TargetedUrlReceived$DeepLinkUrl;", "Lcom/vuitton/foundation/model/domain/model/chat/ChatResponseEvent$TargetedUrlReceived;", "", ConfigurationName.DOWNLOAD_PLUGIN_URL, "<init>", "(Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class DeepLinkUrl implements TargetedUrlReceived {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final String f67094a;

            public DeepLinkUrl(String str) {
                str.getClass();
                this.f67094a = str;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof DeepLinkUrl) && Intrinsics.c(this.f67094a, ((DeepLinkUrl) obj).f67094a);
            }

            public final int hashCode() {
                return this.f67094a.hashCode();
            }

            public final String toString() {
                return fc.h("DeepLinkUrl(url=", this.f67094a, ")");
            }
        }

        @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/chat/ChatResponseEvent$TargetedUrlReceived$UnknownUrl;", "Lcom/vuitton/foundation/model/domain/model/chat/ChatResponseEvent$TargetedUrlReceived;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class UnknownUrl implements TargetedUrlReceived {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final UnknownUrl f67095a = new UnknownUrl();

            public final boolean equals(Object obj) {
                return this == obj || (obj instanceof UnknownUrl);
            }

            public final int hashCode() {
                return 206718357;
            }

            public final String toString() {
                return "UnknownUrl";
            }
        }

        @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/chat/ChatResponseEvent$TargetedUrlReceived$WebAppLinkUrl;", "Lcom/vuitton/foundation/model/domain/model/chat/ChatResponseEvent$TargetedUrlReceived;", "", ConfigurationName.DOWNLOAD_PLUGIN_URL, "<init>", "(Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class WebAppLinkUrl implements TargetedUrlReceived {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final String f67096a;

            public WebAppLinkUrl(String str) {
                str.getClass();
                this.f67096a = str;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof WebAppLinkUrl) && Intrinsics.c(this.f67096a, ((WebAppLinkUrl) obj).f67096a);
            }

            public final int hashCode() {
                return this.f67096a.hashCode();
            }

            public final String toString() {
                return fc.h("WebAppLinkUrl(url=", this.f67096a, ")");
            }
        }
    }

    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0006\u0002\u0003\u0004\u0005\u0006\u0007\u0082\u0001\u0007\b\t\n\u000b\f\r\u000e¨\u0006\u000fÀ\u0006\u0003"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/chat/ChatResponseEvent$UiNotification;", "Lcom/vuitton/foundation/model/domain/model/chat/ChatResponseEvent;", "ChatIsClosedUiNotification", "ChatIsMinimisedUiNotification", "ChatIsVisibleUiNotification", "MessageChatUiNotificationReceived", "UnReadCountNotification", "AppShouldAskForPermissions", "Lcom/vuitton/foundation/model/domain/model/chat/ChatResponseEvent$OnLoadingChat;", "Lcom/vuitton/foundation/model/domain/model/chat/ChatResponseEvent$UiNotification$AppShouldAskForPermissions;", "Lcom/vuitton/foundation/model/domain/model/chat/ChatResponseEvent$UiNotification$ChatIsClosedUiNotification;", "Lcom/vuitton/foundation/model/domain/model/chat/ChatResponseEvent$UiNotification$ChatIsMinimisedUiNotification;", "Lcom/vuitton/foundation/model/domain/model/chat/ChatResponseEvent$UiNotification$ChatIsVisibleUiNotification;", "Lcom/vuitton/foundation/model/domain/model/chat/ChatResponseEvent$UiNotification$MessageChatUiNotificationReceived;", "Lcom/vuitton/foundation/model/domain/model/chat/ChatResponseEvent$UiNotification$UnReadCountNotification;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public interface UiNotification extends ChatResponseEvent {

        @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/chat/ChatResponseEvent$UiNotification$AppShouldAskForPermissions;", "Lcom/vuitton/foundation/model/domain/model/chat/ChatResponseEvent$UiNotification;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class AppShouldAskForPermissions implements UiNotification {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final AppShouldAskForPermissions f67097a = new AppShouldAskForPermissions();

            public final boolean equals(Object obj) {
                return this == obj || (obj instanceof AppShouldAskForPermissions);
            }

            public final int hashCode() {
                return 1043750957;
            }

            public final String toString() {
                return "AppShouldAskForPermissions";
            }
        }

        @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/chat/ChatResponseEvent$UiNotification$ChatIsClosedUiNotification;", "Lcom/vuitton/foundation/model/domain/model/chat/ChatResponseEvent$UiNotification;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class ChatIsClosedUiNotification implements UiNotification {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final ChatIsClosedUiNotification f67098a = new ChatIsClosedUiNotification();

            public final boolean equals(Object obj) {
                return this == obj || (obj instanceof ChatIsClosedUiNotification);
            }

            public final int hashCode() {
                return -1109610982;
            }

            public final String toString() {
                return "ChatIsClosedUiNotification";
            }
        }

        @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/chat/ChatResponseEvent$UiNotification$ChatIsMinimisedUiNotification;", "Lcom/vuitton/foundation/model/domain/model/chat/ChatResponseEvent$UiNotification;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class ChatIsMinimisedUiNotification implements UiNotification {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final ChatIsMinimisedUiNotification f67099a = new ChatIsMinimisedUiNotification();

            public final boolean equals(Object obj) {
                return this == obj || (obj instanceof ChatIsMinimisedUiNotification);
            }

            public final int hashCode() {
                return -2091919249;
            }

            public final String toString() {
                return "ChatIsMinimisedUiNotification";
            }
        }

        @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/chat/ChatResponseEvent$UiNotification$ChatIsVisibleUiNotification;", "Lcom/vuitton/foundation/model/domain/model/chat/ChatResponseEvent$UiNotification;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class ChatIsVisibleUiNotification implements UiNotification {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final ChatIsVisibleUiNotification f67100a = new ChatIsVisibleUiNotification();

            public final boolean equals(Object obj) {
                return this == obj || (obj instanceof ChatIsVisibleUiNotification);
            }

            public final int hashCode() {
                return 1470527650;
            }

            public final String toString() {
                return "ChatIsVisibleUiNotification";
            }
        }

        @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0006\b\u0086\b\u0018\u00002\u00020\u0001B)\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/chat/ChatResponseEvent$UiNotification$MessageChatUiNotificationReceived;", "Lcom/vuitton/foundation/model/domain/model/chat/ChatResponseEvent$UiNotification;", "", "message", "", "isProactiveChat", "fromName", "image", "<init>", "(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class MessageChatUiNotificationReceived implements UiNotification {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final String f67101a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final boolean f67102b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final String f67103c;
            public final String d;

            public MessageChatUiNotificationReceived(String str, boolean z, String str2, String str3) {
                str.getClass();
                str2.getClass();
                this.f67101a = str;
                this.f67102b = z;
                this.f67103c = str2;
                this.d = str3;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (!(obj instanceof MessageChatUiNotificationReceived)) {
                    return false;
                }
                MessageChatUiNotificationReceived messageChatUiNotificationReceived = (MessageChatUiNotificationReceived) obj;
                return Intrinsics.c(this.f67101a, messageChatUiNotificationReceived.f67101a) && this.f67102b == messageChatUiNotificationReceived.f67102b && Intrinsics.c(this.f67103c, messageChatUiNotificationReceived.f67103c) && Intrinsics.c(this.d, messageChatUiNotificationReceived.d);
            }

            public final int hashCode() {
                int iB = fc.b(o60.b(this.f67101a.hashCode() * 31, 31, this.f67102b), 31, this.f67103c);
                String str = this.d;
                return iB + (str == null ? 0 : str.hashCode());
            }

            public final String toString() {
                return tr.l(d21.s("MessageChatUiNotificationReceived(message=", this.f67101a, ", isProactiveChat=", ", fromName=", this.f67102b), this.f67103c, ", image=", this.d, ")");
            }
        }

        @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/chat/ChatResponseEvent$UiNotification$UnReadCountNotification;", "Lcom/vuitton/foundation/model/domain/model/chat/ChatResponseEvent$UiNotification;", "", b.a.f24018f, "<init>", "(I)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class UnReadCountNotification implements UiNotification {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final int f67104a;

            public UnReadCountNotification(int i2) {
                this.f67104a = i2;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof UnReadCountNotification) && this.f67104a == ((UnReadCountNotification) obj).f67104a;
            }

            public final int hashCode() {
                return Integer.hashCode(this.f67104a);
            }

            public final String toString() {
                return n00.m(this.f67104a, "UnReadCountNotification(count=", ")");
            }
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/chat/ChatResponseEvent$UnhandledChatEvent;", "Lcom/vuitton/foundation/model/domain/model/chat/ChatResponseEvent;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class UnhandledChatEvent implements ChatResponseEvent {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final UnhandledChatEvent f67105a = new UnhandledChatEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof UnhandledChatEvent);
        }

        public final int hashCode() {
            return 138157121;
        }

        public final String toString() {
            return "UnhandledChatEvent";
        }
    }
}
