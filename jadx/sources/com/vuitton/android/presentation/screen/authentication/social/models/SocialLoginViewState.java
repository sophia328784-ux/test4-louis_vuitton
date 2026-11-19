package com.vuitton.android.presentation.screen.authentication.social.models;

import com.vuitton.android.presentation.screen.authentication.models.TrackingAuthEntryPoint;
import com.vuitton.android.presentation.screen.authentication.models.TrackingAuthOrigin;
import com.vuitton.foundation.model.domain.model.authentication.social.SocialAuthMode;
import defpackage.fc;
import defpackage.o60;
import defpackage.pq0;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\b\b\u0087\b\u0018\u00002\u00020\u0001BC\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0004\u0012\b\b\u0002\u0010\b\u001a\u00020\u0004\u0012\b\b\u0002\u0010\t\u001a\u00020\u0004¢\u0006\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginViewState;", "", "Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginUiModel;", "socialLoginUiModel", "", "isGoogleSignInEnabled", "isSocialSignInDebugModeEnabled", "isLineSignInEnabled", "isKakaoSignInEnabled", "isLoading", "<init>", "(Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginUiModel;ZZZZZ)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class SocialLoginViewState {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final SocialLoginUiModel f54193a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f54194b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f54195c;
    public final boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f54196e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f54197f;

    public /* synthetic */ SocialLoginViewState(SocialLoginUiModel socialLoginUiModel, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? new SocialLoginUiModel((String) null, (String) null, (String) null, (String) null, (String) null, (String) null, (String) null, (String) null, (String) null, (TrackingAuthOrigin) null, (TrackingAuthEntryPoint) null, (SocialAuthMode) null, 4095, (DefaultConstructorMarker) null) : socialLoginUiModel, (i2 & 2) != 0 ? false : z, (i2 & 4) != 0 ? false : z2, (i2 & 8) != 0 ? false : z3, (i2 & 16) != 0 ? false : z4, (i2 & 32) != 0 ? false : z5);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SocialLoginViewState)) {
            return false;
        }
        SocialLoginViewState socialLoginViewState = (SocialLoginViewState) obj;
        return Intrinsics.c(this.f54193a, socialLoginViewState.f54193a) && this.f54194b == socialLoginViewState.f54194b && this.f54195c == socialLoginViewState.f54195c && this.d == socialLoginViewState.d && this.f54196e == socialLoginViewState.f54196e && this.f54197f == socialLoginViewState.f54197f;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.f54197f) + o60.b(o60.b(o60.b(o60.b(this.f54193a.hashCode() * 31, 31, this.f54194b), 31, this.f54195c), 31, this.d), 31, this.f54196e);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("SocialLoginViewState(socialLoginUiModel=");
        sb.append(this.f54193a);
        sb.append(", isGoogleSignInEnabled=");
        sb.append(this.f54194b);
        sb.append(", isSocialSignInDebugModeEnabled=");
        fc.y(sb, this.f54195c, ", isLineSignInEnabled=", this.d, ", isKakaoSignInEnabled=");
        return pq0.p(sb, this.f54196e, ", isLoading=", this.f54197f, ")");
    }

    public SocialLoginViewState(SocialLoginUiModel socialLoginUiModel, boolean z, boolean z2, boolean z3, boolean z4, boolean z5) {
        socialLoginUiModel.getClass();
        this.f54193a = socialLoginUiModel;
        this.f54194b = z;
        this.f54195c = z2;
        this.d = z3;
        this.f54196e = z4;
        this.f54197f = z5;
    }

    public SocialLoginViewState() {
        this(null, false, false, false, false, false, 63, null);
    }
}
