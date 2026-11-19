package com.vuitton.android.domain.repository;

import defpackage.tr;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0002\u0002\u0003\u0082\u0001\u0002\u0004\u0005¨\u0006\u0006À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/domain/repository/PrivacyRelatedToolRequirements;", "", "NotificationsManagerRequirements", "Nothing", "Lcom/vuitton/android/domain/repository/PrivacyRelatedToolRequirements$Nothing;", "Lcom/vuitton/android/domain/repository/PrivacyRelatedToolRequirements$NotificationsManagerRequirements;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface PrivacyRelatedToolRequirements {

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/domain/repository/PrivacyRelatedToolRequirements$Nothing;", "Lcom/vuitton/android/domain/repository/PrivacyRelatedToolRequirements;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Nothing implements PrivacyRelatedToolRequirements {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final Nothing f49005a = new Nothing();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof Nothing);
        }

        public final int hashCode() {
            return 453128725;
        }

        public final String toString() {
            return "Nothing";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/domain/repository/PrivacyRelatedToolRequirements$NotificationsManagerRequirements;", "Lcom/vuitton/android/domain/repository/PrivacyRelatedToolRequirements;", "", "isEnabled", "<init>", "(Z)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class NotificationsManagerRequirements implements PrivacyRelatedToolRequirements {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final boolean f49006a;

        public NotificationsManagerRequirements(boolean z) {
            this.f49006a = z;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof NotificationsManagerRequirements) && this.f49006a == ((NotificationsManagerRequirements) obj).f49006a;
        }

        public final int hashCode() {
            return Boolean.hashCode(this.f49006a);
        }

        public final String toString() {
            return tr.i("NotificationsManagerRequirements(isEnabled=", ")", this.f49006a);
        }
    }
}
