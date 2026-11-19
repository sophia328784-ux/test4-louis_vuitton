package com.vuitton.android.presentation.screen.options.settings.models;

import com.vuitton.android.presentation.screen.mylv.models.UserConsentsUiModel;
import defpackage.a;
import defpackage.fc;
import defpackage.o60;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000f\b\u0087\b\u0018\u00002\u00020\u0001B\u0089\u0001\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0002\u0012\b\b\u0002\u0010\b\u001a\u00020\u0002\u0012\b\b\u0002\u0010\t\u001a\u00020\u0002\u0012\b\b\u0002\u0010\n\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u000b\u001a\u00020\u0002\u0012\b\b\u0002\u0010\f\u001a\u00020\u0002\u0012\b\b\u0002\u0010\r\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u000e\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u000f\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0010\u001a\u00020\u0002¢\u0006\u0004\b\u0011\u0010\u0012¨\u0006\u0013"}, d2 = {"Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsViewState;", "", "", "isLoading", "Lcom/vuitton/android/presentation/screen/mylv/models/UserConsentsUiModel;", "userConsents", "tmpConsents", "shouldDisplayGcm", "isEligibleToGcm", "isConsentBySmsEnabled", "isPowerfrontEnabled", "isEuropeanLocale", "isCnLocale", "isCcpaLocale", "isCanadaFrenchLocale", "isUserHasSavedPhoneNumber", "isEmailTrackingConsentEnabled", "<init>", "(ZLcom/vuitton/android/presentation/screen/mylv/models/UserConsentsUiModel;Lcom/vuitton/android/presentation/screen/mylv/models/UserConsentsUiModel;ZZZZZZZZZZ)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class SettingsViewState {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f60067a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final UserConsentsUiModel f60068b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final UserConsentsUiModel f60069c;
    public final boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f60070e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f60071f;
    public final boolean g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final boolean f60072h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final boolean f60073i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final boolean f60074j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final boolean f60075k;
    public final boolean l;
    public final boolean m;

    public /* synthetic */ SettingsViewState(boolean z, UserConsentsUiModel userConsentsUiModel, UserConsentsUiModel userConsentsUiModel2, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7, boolean z8, boolean z9, boolean z10, boolean z11, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? false : z, (i2 & 2) != 0 ? new UserConsentsUiModel(null, null, 3, null) : userConsentsUiModel, (i2 & 4) != 0 ? new UserConsentsUiModel(null, null, 3, null) : userConsentsUiModel2, (i2 & 8) != 0 ? false : z2, (i2 & 16) != 0 ? false : z3, (i2 & 32) != 0 ? false : z4, (i2 & 64) != 0 ? false : z5, (i2 & 128) != 0 ? false : z6, (i2 & 256) != 0 ? false : z7, (i2 & 512) != 0 ? false : z8, (i2 & 1024) != 0 ? false : z9, (i2 & 2048) != 0 ? false : z10, (i2 & 4096) != 0 ? false : z11);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SettingsViewState)) {
            return false;
        }
        SettingsViewState settingsViewState = (SettingsViewState) obj;
        return this.f60067a == settingsViewState.f60067a && Intrinsics.c(this.f60068b, settingsViewState.f60068b) && Intrinsics.c(this.f60069c, settingsViewState.f60069c) && this.d == settingsViewState.d && this.f60070e == settingsViewState.f60070e && this.f60071f == settingsViewState.f60071f && this.g == settingsViewState.g && this.f60072h == settingsViewState.f60072h && this.f60073i == settingsViewState.f60073i && this.f60074j == settingsViewState.f60074j && this.f60075k == settingsViewState.f60075k && this.l == settingsViewState.l && this.m == settingsViewState.m;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.m) + o60.b(o60.b(o60.b(o60.b(o60.b(o60.b(o60.b(o60.b(o60.b((this.f60069c.hashCode() + ((this.f60068b.hashCode() + (Boolean.hashCode(this.f60067a) * 31)) * 31)) * 31, 31, this.d), 31, this.f60070e), 31, this.f60071f), 31, this.g), 31, this.f60072h), 31, this.f60073i), 31, this.f60074j), 31, this.f60075k), 31, this.l);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("SettingsViewState(isLoading=");
        sb.append(this.f60067a);
        sb.append(", userConsents=");
        sb.append(this.f60068b);
        sb.append(", tmpConsents=");
        sb.append(this.f60069c);
        sb.append(", shouldDisplayGcm=");
        sb.append(this.d);
        sb.append(", isEligibleToGcm=");
        fc.y(sb, this.f60070e, ", isConsentBySmsEnabled=", this.f60071f, ", isPowerfrontEnabled=");
        fc.y(sb, this.g, ", isEuropeanLocale=", this.f60072h, ", isCnLocale=");
        fc.y(sb, this.f60073i, ", isCcpaLocale=", this.f60074j, ", isCanadaFrenchLocale=");
        fc.y(sb, this.f60075k, ", isUserHasSavedPhoneNumber=", this.l, ", isEmailTrackingConsentEnabled=");
        return a.p(sb, this.m, ")");
    }

    public SettingsViewState(boolean z, UserConsentsUiModel userConsentsUiModel, UserConsentsUiModel userConsentsUiModel2, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7, boolean z8, boolean z9, boolean z10, boolean z11) {
        userConsentsUiModel.getClass();
        userConsentsUiModel2.getClass();
        this.f60067a = z;
        this.f60068b = userConsentsUiModel;
        this.f60069c = userConsentsUiModel2;
        this.d = z2;
        this.f60070e = z3;
        this.f60071f = z4;
        this.g = z5;
        this.f60072h = z6;
        this.f60073i = z7;
        this.f60074j = z8;
        this.f60075k = z9;
        this.l = z10;
        this.m = z11;
    }

    public SettingsViewState() {
        this(false, null, null, false, false, false, false, false, false, false, false, false, false, 8191, null);
    }
}
