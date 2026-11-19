package com.vuitton.core.infrastructure.chat.model;

import com.batch.android.s.b;
import com.networkbench.agent.impl.harvest.ConfigurationName;
import com.vuitton.foundation.model.domain.model.chat.ChatResponseEvent;
import defpackage.d21;
import defpackage.fc;
import defpackage.n00;
import defpackage.o60;
import defpackage.tr;
import defpackage.v40;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u000f\u0002\u0003\u0004\u0005\u0006\u0007\b\t\n\u000b\f\r\u000e\u000f\u0010\u0082\u0001\u000e\u0011\u0012\u0013\u0014\u0015\u0016\u0017\u0018\u0019\u001a\u001b\u001c\u001d\u001e¨\u0006\u001fÀ\u0006\u0003"}, d2 = {"Lcom/vuitton/core/infrastructure/chat/model/ChatEvent;", "", "ChatIsLoading", "ChatIsVisible", "ChatIsClosing", "ChatMinimising", "DisConnectedToChat", "ClearChatEvent", "UnReadCount", "UrlType", "ChatNotificationReceived", "ChatEndedBy", "RequirePermissions", "AddToBasket", "ViewProductDetails", "Error", "Companion", "Lcom/vuitton/core/infrastructure/chat/model/ChatEvent$AddToBasket;", "Lcom/vuitton/core/infrastructure/chat/model/ChatEvent$ChatEndedBy;", "Lcom/vuitton/core/infrastructure/chat/model/ChatEvent$ChatIsClosing;", "Lcom/vuitton/core/infrastructure/chat/model/ChatEvent$ChatIsLoading;", "Lcom/vuitton/core/infrastructure/chat/model/ChatEvent$ChatIsVisible;", "Lcom/vuitton/core/infrastructure/chat/model/ChatEvent$ChatMinimising;", "Lcom/vuitton/core/infrastructure/chat/model/ChatEvent$ChatNotificationReceived;", "Lcom/vuitton/core/infrastructure/chat/model/ChatEvent$ClearChatEvent;", "Lcom/vuitton/core/infrastructure/chat/model/ChatEvent$DisConnectedToChat;", "Lcom/vuitton/core/infrastructure/chat/model/ChatEvent$Error;", "Lcom/vuitton/core/infrastructure/chat/model/ChatEvent$RequirePermissions;", "Lcom/vuitton/core/infrastructure/chat/model/ChatEvent$UnReadCount;", "Lcom/vuitton/core/infrastructure/chat/model/ChatEvent$UrlType;", "Lcom/vuitton/core/infrastructure/chat/model/ChatEvent$ViewProductDetails;", "chat"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface ChatEvent {

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0086\b\u0018\u00002\u00020\u0001B\u001b\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/core/infrastructure/chat/model/ChatEvent$AddToBasket;", "Lcom/vuitton/core/infrastructure/chat/model/ChatEvent;", "", "productId", "skuId", "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "chat"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class AddToBasket implements ChatEvent {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f65898a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f65899b;

        public AddToBasket(String str, String str2) {
            this.f65898a = str;
            this.f65899b = str2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof AddToBasket)) {
                return false;
            }
            AddToBasket addToBasket = (AddToBasket) obj;
            return Intrinsics.c(this.f65898a, addToBasket.f65898a) && Intrinsics.c(this.f65899b, addToBasket.f65899b);
        }

        public final int hashCode() {
            String str = this.f65898a;
            int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
            String str2 = this.f65899b;
            return iHashCode + (str2 != null ? str2.hashCode() : 0);
        }

        public final String toString() {
            return d21.l("AddToBasket(productId=", this.f65898a, ", skuId=", this.f65899b, ")");
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u0011\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/core/infrastructure/chat/model/ChatEvent$ChatEndedBy;", "Lcom/vuitton/core/infrastructure/chat/model/ChatEvent;", "", "message", "<init>", "(Ljava/lang/String;)V", "chat"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ChatEndedBy implements ChatEvent {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f65900a;

        public ChatEndedBy(String str) {
            this.f65900a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof ChatEndedBy) && Intrinsics.c(this.f65900a, ((ChatEndedBy) obj).f65900a);
        }

        public final int hashCode() {
            String str = this.f65900a;
            if (str == null) {
                return 0;
            }
            return str.hashCode();
        }

        public final String toString() {
            return fc.h("ChatEndedBy(message=", this.f65900a, ")");
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/core/infrastructure/chat/model/ChatEvent$ChatIsClosing;", "Lcom/vuitton/core/infrastructure/chat/model/ChatEvent;", "chat"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ChatIsClosing implements ChatEvent {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final ChatIsClosing f65901a = new ChatIsClosing();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof ChatIsClosing);
        }

        public final int hashCode() {
            return 233730330;
        }

        public final String toString() {
            return "ChatIsClosing";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/core/infrastructure/chat/model/ChatEvent$ChatIsLoading;", "Lcom/vuitton/core/infrastructure/chat/model/ChatEvent;", "chat"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ChatIsLoading implements ChatEvent {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final ChatIsLoading f65902a = new ChatIsLoading();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof ChatIsLoading);
        }

        public final int hashCode() {
            return -296159839;
        }

        public final String toString() {
            return "ChatIsLoading";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/core/infrastructure/chat/model/ChatEvent$ChatIsVisible;", "Lcom/vuitton/core/infrastructure/chat/model/ChatEvent;", "chat"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ChatIsVisible implements ChatEvent {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final ChatIsVisible f65903a = new ChatIsVisible();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof ChatIsVisible);
        }

        public final int hashCode() {
            return -166066985;
        }

        public final String toString() {
            return "ChatIsVisible";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/core/infrastructure/chat/model/ChatEvent$ChatMinimising;", "Lcom/vuitton/core/infrastructure/chat/model/ChatEvent;", "chat"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ChatMinimising implements ChatEvent {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final ChatMinimising f65904a = new ChatMinimising();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof ChatMinimising);
        }

        public final int hashCode() {
            return -2037983693;
        }

        public final String toString() {
            return "ChatMinimising";
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0006\b\u0086\b\u0018\u00002\u00020\u0001B-\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/vuitton/core/infrastructure/chat/model/ChatEvent$ChatNotificationReceived;", "Lcom/vuitton/core/infrastructure/chat/model/ChatEvent;", "", "message", "", "isProactiveChat", "fromName", "image", "<init>", "(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V", "chat"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ChatNotificationReceived implements ChatEvent {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f65905a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final boolean f65906b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f65907c;
        public final String d;

        public ChatNotificationReceived(String str, boolean z, String str2, String str3) {
            this.f65905a = str;
            this.f65906b = z;
            this.f65907c = str2;
            this.d = str3;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ChatNotificationReceived)) {
                return false;
            }
            ChatNotificationReceived chatNotificationReceived = (ChatNotificationReceived) obj;
            return Intrinsics.c(this.f65905a, chatNotificationReceived.f65905a) && this.f65906b == chatNotificationReceived.f65906b && Intrinsics.c(this.f65907c, chatNotificationReceived.f65907c) && Intrinsics.c(this.d, chatNotificationReceived.d);
        }

        public final int hashCode() {
            String str = this.f65905a;
            int iB = o60.b((str == null ? 0 : str.hashCode()) * 31, 31, this.f65906b);
            String str2 = this.f65907c;
            int iHashCode = (iB + (str2 == null ? 0 : str2.hashCode())) * 31;
            String str3 = this.d;
            return iHashCode + (str3 != null ? str3.hashCode() : 0);
        }

        public final String toString() {
            return tr.l(d21.s("ChatNotificationReceived(message=", this.f65905a, ", isProactiveChat=", ", fromName=", this.f65906b), this.f65907c, ", image=", this.d, ")");
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/core/infrastructure/chat/model/ChatEvent$ClearChatEvent;", "Lcom/vuitton/core/infrastructure/chat/model/ChatEvent;", "chat"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ClearChatEvent implements ChatEvent {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final ClearChatEvent f65908a = new ClearChatEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof ClearChatEvent);
        }

        public final int hashCode() {
            return -1839979058;
        }

        public final String toString() {
            return "ClearChatEvent";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/core/infrastructure/chat/model/ChatEvent$Companion;", "", "chat"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public static ChatResponseEvent a(ChatEvent chatEvent) {
            if (!(chatEvent instanceof AddToBasket) && !(chatEvent instanceof ChatEndedBy)) {
                if (chatEvent.equals(ChatIsClosing.f65901a)) {
                    return ChatResponseEvent.UiNotification.ChatIsClosedUiNotification.f67098a;
                }
                if (chatEvent.equals(ChatIsLoading.f65902a)) {
                    return ChatResponseEvent.OnLoadingChat.f67093a;
                }
                if (chatEvent.equals(ChatIsVisible.f65903a)) {
                    return ChatResponseEvent.UiNotification.ChatIsVisibleUiNotification.f67100a;
                }
                if (chatEvent.equals(ChatMinimising.f65904a)) {
                    return ChatResponseEvent.UiNotification.ChatIsMinimisedUiNotification.f67099a;
                }
                if (chatEvent instanceof ChatNotificationReceived) {
                    ChatNotificationReceived chatNotificationReceived = (ChatNotificationReceived) chatEvent;
                    String str = chatNotificationReceived.f65905a;
                    if (str == null) {
                        str = "";
                    }
                    boolean z = chatNotificationReceived.f65906b;
                    String str2 = chatNotificationReceived.f65907c;
                    return new ChatResponseEvent.UiNotification.MessageChatUiNotificationReceived(str, z, str2 != null ? str2 : "", chatNotificationReceived.d);
                }
                if (!chatEvent.equals(DisConnectedToChat.f65909a) && !(chatEvent instanceof Error)) {
                    if (chatEvent instanceof RequirePermissions) {
                        return ChatResponseEvent.UiNotification.AppShouldAskForPermissions.f67097a;
                    }
                    if (chatEvent instanceof UnReadCount) {
                        return new ChatResponseEvent.UiNotification.UnReadCountNotification(((UnReadCount) chatEvent).f65913a);
                    }
                    if (chatEvent instanceof UrlType.WebAppLinkUrl) {
                        return new ChatResponseEvent.TargetedUrlReceived.WebAppLinkUrl(((UrlType.WebAppLinkUrl) chatEvent).f65916a);
                    }
                    if (chatEvent instanceof UrlType.DeepLinkUrl) {
                        return new ChatResponseEvent.TargetedUrlReceived.DeepLinkUrl(((UrlType.DeepLinkUrl) chatEvent).f65914a);
                    }
                    if (chatEvent.equals(UrlType.UnknownUrl.f65915a)) {
                        return ChatResponseEvent.TargetedUrlReceived.UnknownUrl.f67095a;
                    }
                    if (!(chatEvent instanceof ViewProductDetails) && !(chatEvent instanceof ClearChatEvent)) {
                        v40.g();
                        return null;
                    }
                }
            }
            return ChatResponseEvent.UnhandledChatEvent.f67105a;
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/core/infrastructure/chat/model/ChatEvent$DisConnectedToChat;", "Lcom/vuitton/core/infrastructure/chat/model/ChatEvent;", "chat"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class DisConnectedToChat implements ChatEvent {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final DisConnectedToChat f65909a = new DisConnectedToChat();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof DisConnectedToChat);
        }

        public final int hashCode() {
            return -1570822809;
        }

        public final String toString() {
            return "DisConnectedToChat";
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u0019\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/core/infrastructure/chat/model/ChatEvent$Error;", "Lcom/vuitton/core/infrastructure/chat/model/ChatEvent;", "", "message", "", "errorCode", "<init>", "(Ljava/lang/String;I)V", "chat"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Error implements ChatEvent {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f65910a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f65911b;

        public Error(String str, int i2) {
            this.f65910a = str;
            this.f65911b = i2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Error)) {
                return false;
            }
            Error error = (Error) obj;
            return Intrinsics.c(this.f65910a, error.f65910a) && this.f65911b == error.f65911b;
        }

        public final int hashCode() {
            String str = this.f65910a;
            return Integer.hashCode(this.f65911b) + ((str == null ? 0 : str.hashCode()) * 31);
        }

        public final String toString() {
            return "Error(message=" + this.f65910a + ", errorCode=" + this.f65911b + ")";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/core/infrastructure/chat/model/ChatEvent$RequirePermissions;", "Lcom/vuitton/core/infrastructure/chat/model/ChatEvent;", "chat"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class RequirePermissions implements ChatEvent {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final RequirePermissions f65912a = new RequirePermissions();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof RequirePermissions);
        }

        public final int hashCode() {
            return 419661016;
        }

        public final String toString() {
            return "RequirePermissions";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/core/infrastructure/chat/model/ChatEvent$UnReadCount;", "Lcom/vuitton/core/infrastructure/chat/model/ChatEvent;", "", b.a.f24018f, "<init>", "(I)V", "chat"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class UnReadCount implements ChatEvent {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f65913a;

        public UnReadCount(int i2) {
            this.f65913a = i2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof UnReadCount) && this.f65913a == ((UnReadCount) obj).f65913a;
        }

        public final int hashCode() {
            return Integer.hashCode(this.f65913a);
        }

        public final String toString() {
            return n00.m(this.f65913a, "UnReadCount(count=", ")");
        }
    }

    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0003\u0002\u0003\u0004\u0082\u0001\u0003\u0005\u0006\u0007¨\u0006\bÀ\u0006\u0003"}, d2 = {"Lcom/vuitton/core/infrastructure/chat/model/ChatEvent$UrlType;", "Lcom/vuitton/core/infrastructure/chat/model/ChatEvent;", "DeepLinkUrl", "WebAppLinkUrl", "UnknownUrl", "Lcom/vuitton/core/infrastructure/chat/model/ChatEvent$UrlType$DeepLinkUrl;", "Lcom/vuitton/core/infrastructure/chat/model/ChatEvent$UrlType$UnknownUrl;", "Lcom/vuitton/core/infrastructure/chat/model/ChatEvent$UrlType$WebAppLinkUrl;", "chat"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public interface UrlType extends ChatEvent {

        @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/core/infrastructure/chat/model/ChatEvent$UrlType$DeepLinkUrl;", "Lcom/vuitton/core/infrastructure/chat/model/ChatEvent$UrlType;", "", ConfigurationName.DOWNLOAD_PLUGIN_URL, "<init>", "(Ljava/lang/String;)V", "chat"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class DeepLinkUrl implements UrlType {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final String f65914a;

            public DeepLinkUrl(String str) {
                str.getClass();
                this.f65914a = str;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof DeepLinkUrl) && Intrinsics.c(this.f65914a, ((DeepLinkUrl) obj).f65914a);
            }

            public final int hashCode() {
                return this.f65914a.hashCode();
            }

            public final String toString() {
                return fc.h("DeepLinkUrl(url=", this.f65914a, ")");
            }
        }

        @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/core/infrastructure/chat/model/ChatEvent$UrlType$UnknownUrl;", "Lcom/vuitton/core/infrastructure/chat/model/ChatEvent$UrlType;", "chat"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class UnknownUrl implements UrlType {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final UnknownUrl f65915a = new UnknownUrl();

            public final boolean equals(Object obj) {
                return this == obj || (obj instanceof UnknownUrl);
            }

            public final int hashCode() {
                return -1725359709;
            }

            public final String toString() {
                return "UnknownUrl";
            }
        }

        @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/core/infrastructure/chat/model/ChatEvent$UrlType$WebAppLinkUrl;", "Lcom/vuitton/core/infrastructure/chat/model/ChatEvent$UrlType;", "", ConfigurationName.DOWNLOAD_PLUGIN_URL, "<init>", "(Ljava/lang/String;)V", "chat"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class WebAppLinkUrl implements UrlType {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final String f65916a;

            public WebAppLinkUrl(String str) {
                str.getClass();
                this.f65916a = str;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof WebAppLinkUrl) && Intrinsics.c(this.f65916a, ((WebAppLinkUrl) obj).f65916a);
            }

            public final int hashCode() {
                return this.f65916a.hashCode();
            }

            public final String toString() {
                return fc.h("WebAppLinkUrl(url=", this.f65916a, ")");
            }
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0086\b\u0018\u00002\u00020\u0001B\u001b\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/core/infrastructure/chat/model/ChatEvent$ViewProductDetails;", "Lcom/vuitton/core/infrastructure/chat/model/ChatEvent;", "", "productId", "skuId", "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "chat"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ViewProductDetails implements ChatEvent {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f65917a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f65918b;

        public ViewProductDetails(String str, String str2) {
            this.f65917a = str;
            this.f65918b = str2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ViewProductDetails)) {
                return false;
            }
            ViewProductDetails viewProductDetails = (ViewProductDetails) obj;
            return Intrinsics.c(this.f65917a, viewProductDetails.f65917a) && Intrinsics.c(this.f65918b, viewProductDetails.f65918b);
        }

        public final int hashCode() {
            String str = this.f65917a;
            int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
            String str2 = this.f65918b;
            return iHashCode + (str2 != null ? str2.hashCode() : 0);
        }

        public final String toString() {
            return d21.l("ViewProductDetails(productId=", this.f65917a, ", skuId=", this.f65918b, ")");
        }
    }
}
