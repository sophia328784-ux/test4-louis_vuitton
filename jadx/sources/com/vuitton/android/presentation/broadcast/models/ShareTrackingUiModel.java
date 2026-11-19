package com.vuitton.android.presentation.broadcast.models;

import defpackage.fc;
import defpackage.n00;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0001\u0002\u0082\u0001\u0001\u0003¨\u0006\u0004À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/broadcast/models/ShareTrackingUiModel;", "", "ShareChannelSelectionEvent", "Lcom/vuitton/android/presentation/broadcast/models/ShareTrackingUiModel$ShareChannelSelectionEvent;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface ShareTrackingUiModel {

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\b\u0087\b\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/broadcast/models/ShareTrackingUiModel$ShareChannelSelectionEvent;", "Lcom/vuitton/android/presentation/broadcast/models/ShareTrackingUiModel;", "", "pageName", "pagePosition", "channelId", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ShareChannelSelectionEvent implements ShareTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f50668a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f50669b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f50670c;

        public ShareChannelSelectionEvent(String str, String str2, String str3) {
            str.getClass();
            str2.getClass();
            this.f50668a = str;
            this.f50669b = str2;
            this.f50670c = str3;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ShareChannelSelectionEvent)) {
                return false;
            }
            ShareChannelSelectionEvent shareChannelSelectionEvent = (ShareChannelSelectionEvent) obj;
            return Intrinsics.c(this.f50668a, shareChannelSelectionEvent.f50668a) && Intrinsics.c(this.f50669b, shareChannelSelectionEvent.f50669b) && Intrinsics.c(this.f50670c, shareChannelSelectionEvent.f50670c);
        }

        public final int hashCode() {
            int iB = fc.b(this.f50668a.hashCode() * 31, 31, this.f50669b);
            String str = this.f50670c;
            return iB + (str == null ? 0 : str.hashCode());
        }

        public final String toString() {
            return n00.r(this.f50670c, ")", fc.s("ShareChannelSelectionEvent(pageName=", this.f50668a, ", pagePosition=", this.f50669b, ", channelId="));
        }
    }
}
