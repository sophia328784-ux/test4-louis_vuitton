package com.vuitton.android.presentation.screen.plp.models;

import com.vuitton.android.presentation.notification.NotificationUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import defpackage.d21;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0004\u0002\u0003\u0004\u0005\u0082\u0001\u0003\u0006\u0007\b¨\u0006\tÀ\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/plp/models/PLPWishlistFeedbackUiModel;", "", "Message", "Error", "RequestAuth", "UpdateItems", "Lcom/vuitton/android/presentation/screen/plp/models/PLPWishlistFeedbackUiModel$Message;", "Lcom/vuitton/android/presentation/screen/plp/models/PLPWishlistFeedbackUiModel$RequestAuth;", "Lcom/vuitton/android/presentation/screen/plp/models/PLPWishlistFeedbackUiModel$UpdateItems;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface PLPWishlistFeedbackUiModel {

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0017\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/plp/models/PLPWishlistFeedbackUiModel$Message;", "Lcom/vuitton/android/presentation/screen/plp/models/PLPWishlistFeedbackUiModel;", "Lcom/vuitton/android/presentation/notification/NotificationUiModel;", "notification", "<init>", "(Lcom/vuitton/android/presentation/notification/NotificationUiModel;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static class Message implements PLPWishlistFeedbackUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final NotificationUiModel f62904a;

        public Message(NotificationUiModel notificationUiModel) {
            notificationUiModel.getClass();
            this.f62904a = notificationUiModel;
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/plp/models/PLPWishlistFeedbackUiModel$RequestAuth;", "Lcom/vuitton/android/presentation/screen/plp/models/PLPWishlistFeedbackUiModel;", "Lcom/vuitton/android/presentation/screen/plp/models/PLPWishlistUpdateUiModel;", "wishlistUpdate", "<init>", "(Lcom/vuitton/android/presentation/screen/plp/models/PLPWishlistUpdateUiModel;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class RequestAuth implements PLPWishlistFeedbackUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final PLPWishlistUpdateUiModel f62905a;

        public RequestAuth(PLPWishlistUpdateUiModel pLPWishlistUpdateUiModel) {
            pLPWishlistUpdateUiModel.getClass();
            this.f62905a = pLPWishlistUpdateUiModel;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof RequestAuth) && Intrinsics.c(this.f62905a, ((RequestAuth) obj).f62905a);
        }

        public final int hashCode() {
            return this.f62905a.hashCode();
        }

        public final String toString() {
            return "RequestAuth(wishlistUpdate=" + this.f62905a + ")";
        }
    }

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0015\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/presentation/screen/plp/models/PLPWishlistFeedbackUiModel$UpdateItems;", "Lcom/vuitton/android/presentation/screen/plp/models/PLPWishlistFeedbackUiModel;", "", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;", "updatedWishlist", "<init>", "(Ljava/util/List;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class UpdateItems implements PLPWishlistFeedbackUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final List f62906a;

        public UpdateItems(List<SkuIdUiModel> list) {
            list.getClass();
            this.f62906a = list;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof UpdateItems) && Intrinsics.c(this.f62906a, ((UpdateItems) obj).f62906a);
        }

        public final int hashCode() {
            return this.f62906a.hashCode();
        }

        public final String toString() {
            return d21.o("UpdateItems(updatedWishlist=", ")", this.f62906a);
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u001b\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/plp/models/PLPWishlistFeedbackUiModel$Error;", "Lcom/vuitton/android/presentation/screen/plp/models/PLPWishlistFeedbackUiModel$Message;", "Lcom/vuitton/android/presentation/notification/NotificationUiModel;", "message", "", "resetIsInWishlist", "<init>", "(Lcom/vuitton/android/presentation/notification/NotificationUiModel;Ljava/lang/Boolean;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Error extends Message {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final NotificationUiModel f62902b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Boolean f62903c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Error(NotificationUiModel notificationUiModel, Boolean bool) {
            super(notificationUiModel);
            notificationUiModel.getClass();
            this.f62902b = notificationUiModel;
            this.f62903c = bool;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Error)) {
                return false;
            }
            Error error = (Error) obj;
            return Intrinsics.c(this.f62902b, error.f62902b) && Intrinsics.c(this.f62903c, error.f62903c);
        }

        public final int hashCode() {
            int iHashCode = this.f62902b.hashCode() * 31;
            Boolean bool = this.f62903c;
            return iHashCode + (bool == null ? 0 : bool.hashCode());
        }

        public final String toString() {
            return "Error(message=" + this.f62902b + ", resetIsInWishlist=" + this.f62903c + ")";
        }

        public /* synthetic */ Error(NotificationUiModel notificationUiModel, Boolean bool, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this(notificationUiModel, (i2 & 2) != 0 ? null : bool);
        }
    }
}
