package com.vuitton.android.presentation.screen.feed.models;

import defpackage.a;
import defpackage.cj;
import defpackage.fc;
import defpackage.o60;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\b\f\b\u0087\b\u0018\u00002\u00020\u0001Ba\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0002\u0012\b\b\u0002\u0010\b\u001a\u00020\u0002\u0012\b\b\u0002\u0010\t\u001a\u00020\u0002\u0012\b\b\u0002\u0010\n\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u000b\u001a\u00020\u0002¢\u0006\u0004\b\f\u0010\r¨\u0006\u000e"}, d2 = {"Lcom/vuitton/android/presentation/screen/feed/models/FeedFeatureFlags;", "", "", "isInboxAvailable", "isVATIncluded", "isRecommendedForYouSectionEnabled", "isLastViewedProductSectionEnabled", "isUserWorldwideIdEnabled", "isGoogleSignInEnabled", "isLineSignInEnabled", "isFeedRevampV2Enabled", "isAICompanionEnabled", "<init>", "(ZZZZZZZZZ)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class FeedFeatureFlags {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f57911a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f57912b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f57913c;
    public final boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f57914e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f57915f;
    public final boolean g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final boolean f57916h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final boolean f57917i;

    public /* synthetic */ FeedFeatureFlags(boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7, boolean z8, boolean z9, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? false : z, (i2 & 2) != 0 ? false : z2, (i2 & 4) != 0 ? false : z3, (i2 & 8) != 0 ? false : z4, (i2 & 16) != 0 ? false : z5, (i2 & 32) != 0 ? false : z6, (i2 & 64) != 0 ? false : z7, (i2 & 128) != 0 ? false : z8, (i2 & 256) != 0 ? false : z9);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof FeedFeatureFlags)) {
            return false;
        }
        FeedFeatureFlags feedFeatureFlags = (FeedFeatureFlags) obj;
        return this.f57911a == feedFeatureFlags.f57911a && this.f57912b == feedFeatureFlags.f57912b && this.f57913c == feedFeatureFlags.f57913c && this.d == feedFeatureFlags.d && this.f57914e == feedFeatureFlags.f57914e && this.f57915f == feedFeatureFlags.f57915f && this.g == feedFeatureFlags.g && this.f57916h == feedFeatureFlags.f57916h && this.f57917i == feedFeatureFlags.f57917i;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.f57917i) + o60.b(o60.b(o60.b(o60.b(o60.b(o60.b(o60.b(Boolean.hashCode(this.f57911a) * 31, 31, this.f57912b), 31, this.f57913c), 31, this.d), 31, this.f57914e), 31, this.f57915f), 31, this.g), 31, this.f57916h);
    }

    public final String toString() {
        StringBuilder sbM = cj.m("FeedFeatureFlags(isInboxAvailable=", ", isVATIncluded=", ", isRecommendedForYouSectionEnabled=", this.f57911a, this.f57912b);
        fc.y(sbM, this.f57913c, ", isLastViewedProductSectionEnabled=", this.d, ", isUserWorldwideIdEnabled=");
        fc.y(sbM, this.f57914e, ", isGoogleSignInEnabled=", this.f57915f, ", isLineSignInEnabled=");
        fc.y(sbM, this.g, ", isFeedRevampV2Enabled=", this.f57916h, ", isAICompanionEnabled=");
        return a.p(sbM, this.f57917i, ")");
    }

    public FeedFeatureFlags(boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7, boolean z8, boolean z9) {
        this.f57911a = z;
        this.f57912b = z2;
        this.f57913c = z3;
        this.d = z4;
        this.f57914e = z5;
        this.f57915f = z6;
        this.g = z7;
        this.f57916h = z8;
        this.f57917i = z9;
    }

    public FeedFeatureFlags() {
        this(false, false, false, false, false, false, false, false, false, 511, null);
    }
}
