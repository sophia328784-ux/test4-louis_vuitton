package com.vuitton.android.presentation.screen.authentication.welcome.model;

import com.vuitton.android.presentation.model.common.AssetVideoUiModel;
import defpackage.a;
import defpackage.fc;
import defpackage.o60;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.bouncycastle.asn1.eac.CertificateBody;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\b\b\u0087\b\u0018\u00002\u00020\u0001BM\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006\u0012\b\b\u0002\u0010\b\u001a\u00020\u0006\u0012\b\b\u0002\u0010\t\u001a\u00020\u0006\u0012\b\b\u0002\u0010\n\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u000b\u001a\u00020\u0006¢\u0006\u0004\b\f\u0010\r¨\u0006\u000e"}, d2 = {"Lcom/vuitton/android/presentation/screen/authentication/welcome/model/WelcomeViewState;", "", "Lcom/vuitton/android/presentation/screen/authentication/welcome/model/LoginContext;", "loginContext", "Lcom/vuitton/android/presentation/model/common/AssetVideoUiModel;", "loginAsset", "", "displayFallbackLoginImage", "displayGuestCta", "displayConnectedObjectCta", "displaySettingsCta", "displayAccessibilityCta", "<init>", "(Lcom/vuitton/android/presentation/screen/authentication/welcome/model/LoginContext;Lcom/vuitton/android/presentation/model/common/AssetVideoUiModel;ZZZZZ)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class WelcomeViewState {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final LoginContext f54278a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AssetVideoUiModel f54279b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f54280c;
    public final boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f54281e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f54282f;
    public final boolean g;

    public /* synthetic */ WelcomeViewState(LoginContext loginContext, AssetVideoUiModel assetVideoUiModel, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? LoginContext.DEFAULT : loginContext, (i2 & 2) != 0 ? new AssetVideoUiModel(null, null, "https://player.louisvuitton.com/media/img/poster/video/1080x1920/1485/1485502.jpg?1698249852", null, null, null, null, 123, null) : assetVideoUiModel, (i2 & 4) != 0 ? false : z, (i2 & 8) != 0 ? false : z2, (i2 & 16) != 0 ? false : z3, (i2 & 32) != 0 ? false : z4, (i2 & 64) != 0 ? false : z5);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof WelcomeViewState)) {
            return false;
        }
        WelcomeViewState welcomeViewState = (WelcomeViewState) obj;
        return this.f54278a == welcomeViewState.f54278a && Intrinsics.c(this.f54279b, welcomeViewState.f54279b) && this.f54280c == welcomeViewState.f54280c && this.d == welcomeViewState.d && this.f54281e == welcomeViewState.f54281e && this.f54282f == welcomeViewState.f54282f && this.g == welcomeViewState.g;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.g) + o60.b(o60.b(o60.b(o60.b((this.f54279b.hashCode() + (this.f54278a.hashCode() * 31)) * 31, 31, this.f54280c), 31, this.d), 31, this.f54281e), 31, this.f54282f);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("WelcomeViewState(loginContext=");
        sb.append(this.f54278a);
        sb.append(", loginAsset=");
        sb.append(this.f54279b);
        sb.append(", displayFallbackLoginImage=");
        fc.y(sb, this.f54280c, ", displayGuestCta=", this.d, ", displayConnectedObjectCta=");
        fc.y(sb, this.f54281e, ", displaySettingsCta=", this.f54282f, ", displayAccessibilityCta=");
        return a.p(sb, this.g, ")");
    }

    public WelcomeViewState(LoginContext loginContext, AssetVideoUiModel assetVideoUiModel, boolean z, boolean z2, boolean z3, boolean z4, boolean z5) {
        loginContext.getClass();
        assetVideoUiModel.getClass();
        this.f54278a = loginContext;
        this.f54279b = assetVideoUiModel;
        this.f54280c = z;
        this.d = z2;
        this.f54281e = z3;
        this.f54282f = z4;
        this.g = z5;
    }

    public WelcomeViewState() {
        this(null, null, false, false, false, false, false, CertificateBody.profileType, null);
    }
}
