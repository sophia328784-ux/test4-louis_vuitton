package com.vuitton.android.presentation.screen.deeplink;

import com.vuitton.android.presentation.link.models.LinkRoutingData;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0003\u0002\u0003\u0004\u0082\u0001\u0003\u0005\u0006\u0007¨\u0006\bÀ\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/deeplink/RoutingDataState;", "", "Loading", "Success", "Failure", "Lcom/vuitton/android/presentation/screen/deeplink/RoutingDataState$Failure;", "Lcom/vuitton/android/presentation/screen/deeplink/RoutingDataState$Loading;", "Lcom/vuitton/android/presentation/screen/deeplink/RoutingDataState$Success;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface RoutingDataState {

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/deeplink/RoutingDataState$Failure;", "Lcom/vuitton/android/presentation/screen/deeplink/RoutingDataState;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Failure implements RoutingDataState {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final Failure f56869a = new Failure();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof Failure);
        }

        public final int hashCode() {
            return 145913766;
        }

        public final String toString() {
            return "Failure";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/deeplink/RoutingDataState$Loading;", "Lcom/vuitton/android/presentation/screen/deeplink/RoutingDataState;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Loading implements RoutingDataState {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final Loading f56870a = new Loading();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof Loading);
        }

        public final int hashCode() {
            return 1569138520;
        }

        public final String toString() {
            return "Loading";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/deeplink/RoutingDataState$Success;", "Lcom/vuitton/android/presentation/screen/deeplink/RoutingDataState;", "Lcom/vuitton/android/presentation/link/models/LinkRoutingData;", "routingData", "<init>", "(Lcom/vuitton/android/presentation/link/models/LinkRoutingData;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Success implements RoutingDataState {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final LinkRoutingData f56871a;

        public Success(LinkRoutingData linkRoutingData) {
            linkRoutingData.getClass();
            this.f56871a = linkRoutingData;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof Success) && Intrinsics.c(this.f56871a, ((Success) obj).f56871a);
        }

        public final int hashCode() {
            return this.f56871a.hashCode();
        }

        public final String toString() {
            return "Success(routingData=" + this.f56871a + ")";
        }
    }
}
