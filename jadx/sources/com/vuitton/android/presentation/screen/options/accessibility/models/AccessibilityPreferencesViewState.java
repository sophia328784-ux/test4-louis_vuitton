package com.vuitton.android.presentation.screen.options.accessibility.models;

import defpackage.cj;
import defpackage.o60;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B/\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/vuitton/android/presentation/screen/options/accessibility/models/AccessibilityPreferencesViewState;", "", "", "simplifiedNavigation", "disableAutoplay", "enhancedContrast", "Lcom/vuitton/android/presentation/screen/options/accessibility/models/AccessibilityPreferencesFeatureFlags;", "featureFlags", "<init>", "(ZZZLcom/vuitton/android/presentation/screen/options/accessibility/models/AccessibilityPreferencesFeatureFlags;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class AccessibilityPreferencesViewState {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f59736a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f59737b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f59738c;
    public final AccessibilityPreferencesFeatureFlags d;

    public /* synthetic */ AccessibilityPreferencesViewState(boolean z, boolean z2, boolean z3, AccessibilityPreferencesFeatureFlags accessibilityPreferencesFeatureFlags, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? false : z, (i2 & 2) != 0 ? false : z2, (i2 & 4) != 0 ? false : z3, (i2 & 8) != 0 ? new AccessibilityPreferencesFeatureFlags(false, false, false, false, false, 31, null) : accessibilityPreferencesFeatureFlags);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AccessibilityPreferencesViewState)) {
            return false;
        }
        AccessibilityPreferencesViewState accessibilityPreferencesViewState = (AccessibilityPreferencesViewState) obj;
        return this.f59736a == accessibilityPreferencesViewState.f59736a && this.f59737b == accessibilityPreferencesViewState.f59737b && this.f59738c == accessibilityPreferencesViewState.f59738c && Intrinsics.c(this.d, accessibilityPreferencesViewState.d);
    }

    public final int hashCode() {
        return this.d.hashCode() + o60.b(o60.b(Boolean.hashCode(this.f59736a) * 31, 31, this.f59737b), 31, this.f59738c);
    }

    public final String toString() {
        StringBuilder sbM = cj.m("AccessibilityPreferencesViewState(simplifiedNavigation=", ", disableAutoplay=", ", enhancedContrast=", this.f59736a, this.f59737b);
        sbM.append(this.f59738c);
        sbM.append(", featureFlags=");
        sbM.append(this.d);
        sbM.append(")");
        return sbM.toString();
    }

    public AccessibilityPreferencesViewState(boolean z, boolean z2, boolean z3, AccessibilityPreferencesFeatureFlags accessibilityPreferencesFeatureFlags) {
        accessibilityPreferencesFeatureFlags.getClass();
        this.f59736a = z;
        this.f59737b = z2;
        this.f59738c = z3;
        this.d = accessibilityPreferencesFeatureFlags;
    }

    public AccessibilityPreferencesViewState() {
        this(false, false, false, null, 15, null);
    }
}
