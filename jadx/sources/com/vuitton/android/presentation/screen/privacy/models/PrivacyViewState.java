package com.vuitton.android.presentation.screen.privacy.models;

import com.vuitton.foundation.model.domain.model.privacy.PrivacyType;
import defpackage.fc;
import defpackage.n00;
import defpackage.o60;
import defpackage.pq0;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.EmptyList;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0007\b\u0087\b\u0018\u00002\u00020\u0001BI\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\u000e\b\u0002\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004\u0012\b\b\u0002\u0010\b\u001a\u00020\u0007\u0012\b\b\u0002\u0010\t\u001a\u00020\u0007\u0012\b\b\u0002\u0010\n\u001a\u00020\u0007\u0012\b\b\u0002\u0010\u000b\u001a\u00020\u0007¢\u0006\u0004\b\f\u0010\r¨\u0006\u000e"}, d2 = {"Lcom/vuitton/android/presentation/screen/privacy/models/PrivacyViewState;", "", "Lcom/vuitton/foundation/model/domain/model/privacy/PrivacyType;", "privacyType", "", "Lcom/vuitton/android/presentation/screen/privacy/models/ConsentUiModel;", "consentList", "", "isLoading", "isPiplCbdtAccepted", "isAppsFlyerEnabled", "isPowerfrontEnabled", "<init>", "(Lcom/vuitton/foundation/model/domain/model/privacy/PrivacyType;Ljava/util/List;ZZZZ)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class PrivacyViewState {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final PrivacyType f63410a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f63411b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f63412c;
    public final boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f63413e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f63414f;

    public PrivacyViewState(PrivacyType privacyType, List list, boolean z, boolean z2, boolean z3, boolean z4, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? PrivacyType.GDPR : privacyType, (i2 & 2) != 0 ? EmptyList.f71768b : list, (i2 & 4) != 0 ? true : z, (i2 & 8) != 0 ? false : z2, (i2 & 16) != 0 ? false : z3, (i2 & 32) != 0 ? false : z4);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PrivacyViewState)) {
            return false;
        }
        PrivacyViewState privacyViewState = (PrivacyViewState) obj;
        return this.f63410a == privacyViewState.f63410a && Intrinsics.c(this.f63411b, privacyViewState.f63411b) && this.f63412c == privacyViewState.f63412c && this.d == privacyViewState.d && this.f63413e == privacyViewState.f63413e && this.f63414f == privacyViewState.f63414f;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.f63414f) + o60.b(o60.b(o60.b(n00.a(this.f63410a.hashCode() * 31, 31, this.f63411b), 31, this.f63412c), 31, this.d), 31, this.f63413e);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("PrivacyViewState(privacyType=");
        sb.append(this.f63410a);
        sb.append(", consentList=");
        sb.append(this.f63411b);
        sb.append(", isLoading=");
        fc.y(sb, this.f63412c, ", isPiplCbdtAccepted=", this.d, ", isAppsFlyerEnabled=");
        return pq0.p(sb, this.f63413e, ", isPowerfrontEnabled=", this.f63414f, ")");
    }

    public PrivacyViewState(PrivacyType privacyType, List<? extends ConsentUiModel> list, boolean z, boolean z2, boolean z3, boolean z4) {
        privacyType.getClass();
        list.getClass();
        this.f63410a = privacyType;
        this.f63411b = list;
        this.f63412c = z;
        this.d = z2;
        this.f63413e = z3;
        this.f63414f = z4;
    }

    public PrivacyViewState() {
        this(null, null, false, false, false, false, 63, null);
    }
}
