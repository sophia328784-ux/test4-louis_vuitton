package com.vuitton.android.presentation.screen.authentication.social.models;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\b\u0087\b\u0018\u00002\u00020\u0001B\u001b\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterFeatureFlags;", "", "", "isEmailTrackingConsentEnabled", "isLegalNoticeEnabled", "<init>", "(ZZ)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class SocialRegisterFeatureFlags {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f54198a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f54199b;

    public /* synthetic */ SocialRegisterFeatureFlags(boolean z, boolean z2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? false : z, (i2 & 2) != 0 ? false : z2);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SocialRegisterFeatureFlags)) {
            return false;
        }
        SocialRegisterFeatureFlags socialRegisterFeatureFlags = (SocialRegisterFeatureFlags) obj;
        return this.f54198a == socialRegisterFeatureFlags.f54198a && this.f54199b == socialRegisterFeatureFlags.f54199b;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.f54199b) + (Boolean.hashCode(this.f54198a) * 31);
    }

    public final String toString() {
        return "SocialRegisterFeatureFlags(isEmailTrackingConsentEnabled=" + this.f54198a + ", isLegalNoticeEnabled=" + this.f54199b + ")";
    }

    public SocialRegisterFeatureFlags(boolean z, boolean z2) {
        this.f54198a = z;
        this.f54199b = z2;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public SocialRegisterFeatureFlags() {
        boolean z = false;
        this(z, z, 3, null);
    }
}
