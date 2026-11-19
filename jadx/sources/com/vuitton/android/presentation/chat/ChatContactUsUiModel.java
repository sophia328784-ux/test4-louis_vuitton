package com.vuitton.android.presentation.chat;

import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0004\u0002\u0003\u0004\u0005\u0082\u0001\u0004\u0006\u0007\b\t¨\u0006\nÀ\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/chat/ChatContactUsUiModel;", "", "Available", "AdvisorNotAvailable", "UserOptOut", "ChatDisabled", "Lcom/vuitton/android/presentation/chat/ChatContactUsUiModel$AdvisorNotAvailable;", "Lcom/vuitton/android/presentation/chat/ChatContactUsUiModel$Available;", "Lcom/vuitton/android/presentation/chat/ChatContactUsUiModel$ChatDisabled;", "Lcom/vuitton/android/presentation/chat/ChatContactUsUiModel$UserOptOut;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface ChatContactUsUiModel {

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/chat/ChatContactUsUiModel$AdvisorNotAvailable;", "Lcom/vuitton/android/presentation/chat/ChatContactUsUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class AdvisorNotAvailable implements ChatContactUsUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final AdvisorNotAvailable f50673a = new AdvisorNotAvailable();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof AdvisorNotAvailable);
        }

        public final int hashCode() {
            return 1940396778;
        }

        public final String toString() {
            return "AdvisorNotAvailable";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/chat/ChatContactUsUiModel$Available;", "Lcom/vuitton/android/presentation/chat/ChatContactUsUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Available implements ChatContactUsUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final Available f50674a = new Available();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof Available);
        }

        public final int hashCode() {
            return -2003071587;
        }

        public final String toString() {
            return "Available";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/chat/ChatContactUsUiModel$ChatDisabled;", "Lcom/vuitton/android/presentation/chat/ChatContactUsUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ChatDisabled implements ChatContactUsUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final ChatDisabled f50675a = new ChatDisabled();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof ChatDisabled);
        }

        public final int hashCode() {
            return 2193056;
        }

        public final String toString() {
            return "ChatDisabled";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/chat/ChatContactUsUiModel$UserOptOut;", "Lcom/vuitton/android/presentation/chat/ChatContactUsUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class UserOptOut implements ChatContactUsUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final UserOptOut f50676a = new UserOptOut();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof UserOptOut);
        }

        public final int hashCode() {
            return 784405234;
        }

        public final String toString() {
            return "UserOptOut";
        }
    }
}
