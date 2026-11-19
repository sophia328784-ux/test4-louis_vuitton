package com.vuitton.android.presentation.screen.options.accessibility.models;

import defpackage.a;
import defpackage.cj;
import defpackage.fc;
import defpackage.o60;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\b\b\b\u0087\b\u0018\u00002\u00020\u0001B9\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0002¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/vuitton/android/presentation/screen/options/accessibility/models/AccessibilityPreferencesFeatureFlags;", "", "", "isSimplifyNavigationEnabled", "isDisableAutoplayEnabled", "isEnhancedContrastEnabled", "isStatementEnabled", "isContrastSystemEnabled", "<init>", "(ZZZZZ)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class AccessibilityPreferencesFeatureFlags {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f59723a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f59724b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f59725c;
    public final boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f59726e;

    public /* synthetic */ AccessibilityPreferencesFeatureFlags(boolean z, boolean z2, boolean z3, boolean z4, boolean z5, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? false : z, (i2 & 2) != 0 ? false : z2, (i2 & 4) != 0 ? false : z3, (i2 & 8) != 0 ? false : z4, (i2 & 16) != 0 ? false : z5);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AccessibilityPreferencesFeatureFlags)) {
            return false;
        }
        AccessibilityPreferencesFeatureFlags accessibilityPreferencesFeatureFlags = (AccessibilityPreferencesFeatureFlags) obj;
        return this.f59723a == accessibilityPreferencesFeatureFlags.f59723a && this.f59724b == accessibilityPreferencesFeatureFlags.f59724b && this.f59725c == accessibilityPreferencesFeatureFlags.f59725c && this.d == accessibilityPreferencesFeatureFlags.d && this.f59726e == accessibilityPreferencesFeatureFlags.f59726e;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.f59726e) + o60.b(o60.b(o60.b(Boolean.hashCode(this.f59723a) * 31, 31, this.f59724b), 31, this.f59725c), 31, this.d);
    }

    public final String toString() {
        StringBuilder sbM = cj.m("AccessibilityPreferencesFeatureFlags(isSimplifyNavigationEnabled=", ", isDisableAutoplayEnabled=", ", isEnhancedContrastEnabled=", this.f59723a, this.f59724b);
        fc.y(sbM, this.f59725c, ", isStatementEnabled=", this.d, ", isContrastSystemEnabled=");
        return a.p(sbM, this.f59726e, ")");
    }

    public AccessibilityPreferencesFeatureFlags(boolean z, boolean z2, boolean z3, boolean z4, boolean z5) {
        this.f59723a = z;
        this.f59724b = z2;
        this.f59725c = z3;
        this.d = z4;
        this.f59726e = z5;
    }

    public AccessibilityPreferencesFeatureFlags() {
        this(false, false, false, false, false, 31, null);
    }
}
