package com.vuitton.android.presentation.screen.options.models;

import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import defpackage.a;
import defpackage.cj;
import defpackage.fc;
import defpackage.o60;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u000b\b\u0087\b\u0018\u00002\u00020\u0001Bu\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0004\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\b\b\u0002\u0010\t\u001a\u00020\u0004\u0012\b\b\u0002\u0010\n\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u000b\u001a\u00020\u0004\u0012\b\b\u0002\u0010\f\u001a\u00020\u0004\u0012\b\b\u0002\u0010\r\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u000e\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u000f\u001a\u00020\u0004¢\u0006\u0004\b\u0010\u0010\u0011¨\u0006\u0012"}, d2 = {"Lcom/vuitton/android/presentation/screen/options/models/OptionsViewState;", "", "Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;", "inAppDispatch", "", "isLoading", "isUserConnected", "", "consumerRightsUrl", "isConcernedByPrivacy", "isConsumerRightsAvailable", "isPreprodEnvironment", "isChineseLocale", "isGcmOptOutEnabled", "isUiTestMode", "isAccessibilityAvailable", "<init>", "(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;ZZLjava/lang/String;ZZZZZZZ)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class OptionsViewState {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final InAppDispatch f59856a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f59857b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f59858c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f59859e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f59860f;
    public final boolean g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final boolean f59861h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final boolean f59862i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final boolean f59863j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final boolean f59864k;

    public /* synthetic */ OptionsViewState(InAppDispatch inAppDispatch, boolean z, boolean z2, String str, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7, boolean z8, boolean z9, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(inAppDispatch, (i2 & 2) != 0 ? false : z, (i2 & 4) != 0 ? false : z2, (i2 & 8) != 0 ? null : str, (i2 & 16) != 0 ? false : z3, (i2 & 32) != 0 ? false : z4, (i2 & 64) != 0 ? false : z5, (i2 & 128) != 0 ? false : z6, (i2 & 256) != 0 ? false : z7, (i2 & 512) != 0 ? false : z8, (i2 & 1024) != 0 ? false : z9);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof OptionsViewState)) {
            return false;
        }
        OptionsViewState optionsViewState = (OptionsViewState) obj;
        return Intrinsics.c(this.f59856a, optionsViewState.f59856a) && this.f59857b == optionsViewState.f59857b && this.f59858c == optionsViewState.f59858c && Intrinsics.c(this.d, optionsViewState.d) && this.f59859e == optionsViewState.f59859e && this.f59860f == optionsViewState.f59860f && this.g == optionsViewState.g && this.f59861h == optionsViewState.f59861h && this.f59862i == optionsViewState.f59862i && this.f59863j == optionsViewState.f59863j && this.f59864k == optionsViewState.f59864k;
    }

    public final int hashCode() {
        int iB = o60.b(o60.b(this.f59856a.hashCode() * 31, 31, this.f59857b), 31, this.f59858c);
        String str = this.d;
        return Boolean.hashCode(this.f59864k) + o60.b(o60.b(o60.b(o60.b(o60.b(o60.b((iB + (str == null ? 0 : str.hashCode())) * 31, 31, this.f59859e), 31, this.f59860f), 31, this.g), 31, this.f59861h), 31, this.f59862i), 31, this.f59863j);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("OptionsViewState(inAppDispatch=");
        sb.append(this.f59856a);
        sb.append(", isLoading=");
        sb.append(this.f59857b);
        sb.append(", isUserConnected=");
        cj.A(", consumerRightsUrl=", this.d, ", isConcernedByPrivacy=", sb, this.f59858c);
        fc.y(sb, this.f59859e, ", isConsumerRightsAvailable=", this.f59860f, ", isPreprodEnvironment=");
        fc.y(sb, this.g, ", isChineseLocale=", this.f59861h, ", isGcmOptOutEnabled=");
        fc.y(sb, this.f59862i, ", isUiTestMode=", this.f59863j, ", isAccessibilityAvailable=");
        return a.p(sb, this.f59864k, ")");
    }

    public OptionsViewState(InAppDispatch inAppDispatch, boolean z, boolean z2, String str, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7, boolean z8, boolean z9) {
        inAppDispatch.getClass();
        this.f59856a = inAppDispatch;
        this.f59857b = z;
        this.f59858c = z2;
        this.d = str;
        this.f59859e = z3;
        this.f59860f = z4;
        this.g = z5;
        this.f59861h = z6;
        this.f59862i = z7;
        this.f59863j = z8;
        this.f59864k = z9;
    }
}
