package com.vuitton.android.presentation.screen.booking.summary;

import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0004\u0002\u0003\u0004\u0005\u0082\u0001\u0004\u0006\u0007\b\t¨\u0006\nÀ\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/booking/summary/PrebookNavigationEvent;", "", "NavigateToBookingSummary", "NavigateToPersonalInfo", "NavigateToConfirmation", "NavigateToPayment", "Lcom/vuitton/android/presentation/screen/booking/summary/PrebookNavigationEvent$NavigateToBookingSummary;", "Lcom/vuitton/android/presentation/screen/booking/summary/PrebookNavigationEvent$NavigateToConfirmation;", "Lcom/vuitton/android/presentation/screen/booking/summary/PrebookNavigationEvent$NavigateToPayment;", "Lcom/vuitton/android/presentation/screen/booking/summary/PrebookNavigationEvent$NavigateToPersonalInfo;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface PrebookNavigationEvent {

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/booking/summary/PrebookNavigationEvent$NavigateToBookingSummary;", "Lcom/vuitton/android/presentation/screen/booking/summary/PrebookNavigationEvent;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class NavigateToBookingSummary implements PrebookNavigationEvent {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final NavigateToBookingSummary f54736a = new NavigateToBookingSummary();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof NavigateToBookingSummary);
        }

        public final int hashCode() {
            return 357212081;
        }

        public final String toString() {
            return "NavigateToBookingSummary";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/booking/summary/PrebookNavigationEvent$NavigateToConfirmation;", "Lcom/vuitton/android/presentation/screen/booking/summary/PrebookNavigationEvent;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class NavigateToConfirmation implements PrebookNavigationEvent {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final NavigateToConfirmation f54737a = new NavigateToConfirmation();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof NavigateToConfirmation);
        }

        public final int hashCode() {
            return -10439719;
        }

        public final String toString() {
            return "NavigateToConfirmation";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/booking/summary/PrebookNavigationEvent$NavigateToPayment;", "Lcom/vuitton/android/presentation/screen/booking/summary/PrebookNavigationEvent;", "", "paymentUrl", "<init>", "(Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class NavigateToPayment implements PrebookNavigationEvent {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f54738a;

        public NavigateToPayment(String str) {
            str.getClass();
            this.f54738a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof NavigateToPayment) && Intrinsics.c(this.f54738a, ((NavigateToPayment) obj).f54738a);
        }

        public final int hashCode() {
            return this.f54738a.hashCode();
        }

        public final String toString() {
            return fc.h("NavigateToPayment(paymentUrl=", this.f54738a, ")");
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/booking/summary/PrebookNavigationEvent$NavigateToPersonalInfo;", "Lcom/vuitton/android/presentation/screen/booking/summary/PrebookNavigationEvent;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class NavigateToPersonalInfo implements PrebookNavigationEvent {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final NavigateToPersonalInfo f54739a = new NavigateToPersonalInfo();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof NavigateToPersonalInfo);
        }

        public final int hashCode() {
            return 1926366898;
        }

        public final String toString() {
            return "NavigateToPersonalInfo";
        }
    }
}
