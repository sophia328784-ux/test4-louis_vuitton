package com.vuitton.android.presentation.screen.main.models;

import defpackage.a;
import defpackage.o60;
import defpackage.pq0;
import defpackage.tr;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\b\u0087\b\u0018\u00002\u00020\u0001Be\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0002\u0012\b\b\u0002\u0010\b\u001a\u00020\u0002\u0012\b\b\u0002\u0010\n\u001a\u00020\t\u0012\b\b\u0002\u0010\f\u001a\u00020\u000b\u0012\b\b\u0002\u0010\r\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u000e\u001a\u00020\u0002¢\u0006\u0004\b\u000f\u0010\u0010¨\u0006\u0011"}, d2 = {"Lcom/vuitton/android/presentation/screen/main/models/MainActivityViewState;", "", "", "isFadingOut", "", "cartUrl", "confirmationPageUrl", "shouldShowNavigationBar", "shouldShowBottomBar", "Lcom/vuitton/android/presentation/screen/main/models/MainActivityFeatureFlags;", "mainActivityFeatureFlags", "", "cartCount", "isAICompanionEnabled", "hasAITooltipBeenDisplayed", "<init>", "(ZLjava/lang/String;Ljava/lang/String;ZZLcom/vuitton/android/presentation/screen/main/models/MainActivityFeatureFlags;IZZ)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class MainActivityViewState {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f59139a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f59140b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f59141c;
    public final boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f59142e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final MainActivityFeatureFlags f59143f;
    public final int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final boolean f59144h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final boolean f59145i;

    public /* synthetic */ MainActivityViewState(boolean z, String str, String str2, boolean z2, boolean z3, MainActivityFeatureFlags mainActivityFeatureFlags, int i2, boolean z4, boolean z5, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this((i3 & 1) != 0 ? true : z, (i3 & 2) != 0 ? null : str, (i3 & 4) != 0 ? null : str2, (i3 & 8) != 0 ? true : z2, (i3 & 16) != 0 ? true : z3, (i3 & 32) != 0 ? new MainActivityFeatureFlags(false, false, 3, null) : mainActivityFeatureFlags, (i3 & 64) != 0 ? 0 : i2, (i3 & 128) != 0 ? false : z4, (i3 & 256) != 0 ? false : z5);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof MainActivityViewState)) {
            return false;
        }
        MainActivityViewState mainActivityViewState = (MainActivityViewState) obj;
        return this.f59139a == mainActivityViewState.f59139a && Intrinsics.c(this.f59140b, mainActivityViewState.f59140b) && Intrinsics.c(this.f59141c, mainActivityViewState.f59141c) && this.d == mainActivityViewState.d && this.f59142e == mainActivityViewState.f59142e && Intrinsics.c(this.f59143f, mainActivityViewState.f59143f) && this.g == mainActivityViewState.g && this.f59144h == mainActivityViewState.f59144h && this.f59145i == mainActivityViewState.f59145i;
    }

    public final int hashCode() {
        int iHashCode = Boolean.hashCode(this.f59139a) * 31;
        String str = this.f59140b;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.f59141c;
        return Boolean.hashCode(this.f59145i) + o60.b(tr.b(this.g, (this.f59143f.hashCode() + o60.b(o60.b((iHashCode2 + (str2 != null ? str2.hashCode() : 0)) * 31, 31, this.d), 31, this.f59142e)) * 31, 31), 31, this.f59144h);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("MainActivityViewState(isFadingOut=");
        sb.append(this.f59139a);
        sb.append(", cartUrl=");
        sb.append(this.f59140b);
        sb.append(", confirmationPageUrl=");
        pq0.A(this.f59141c, ", shouldShowNavigationBar=", ", shouldShowBottomBar=", sb, this.d);
        sb.append(this.f59142e);
        sb.append(", mainActivityFeatureFlags=");
        sb.append(this.f59143f);
        sb.append(", cartCount=");
        sb.append(this.g);
        sb.append(", isAICompanionEnabled=");
        sb.append(this.f59144h);
        sb.append(", hasAITooltipBeenDisplayed=");
        return a.p(sb, this.f59145i, ")");
    }

    public MainActivityViewState(boolean z, String str, String str2, boolean z2, boolean z3, MainActivityFeatureFlags mainActivityFeatureFlags, int i2, boolean z4, boolean z5) {
        mainActivityFeatureFlags.getClass();
        this.f59139a = z;
        this.f59140b = str;
        this.f59141c = str2;
        this.d = z2;
        this.f59142e = z3;
        this.f59143f = mainActivityFeatureFlags;
        this.g = i2;
        this.f59144h = z4;
        this.f59145i = z5;
    }

    public MainActivityViewState() {
        this(false, null, null, false, false, null, 0, false, false, 511, null);
    }
}
