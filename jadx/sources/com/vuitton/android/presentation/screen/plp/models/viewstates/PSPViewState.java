package com.vuitton.android.presentation.screen.plp.models.viewstates;

import defpackage.a;
import defpackage.fc;
import defpackage.o60;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0006\b\u0087\b\u0018\u00002\u00020\u0001B=\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006\u0012\b\b\u0002\u0010\b\u001a\u00020\u0006\u0012\b\b\u0002\u0010\t\u001a\u00020\u0006¢\u0006\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PSPViewState;", "", "", "currentQuery", "", "totalCount", "", "isPlpV3GridViewEnabled", "isAiCompanionEnabled", "showFilterBottomSheet", "<init>", "(Ljava/lang/String;Ljava/lang/Integer;ZZZ)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class PSPViewState {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f63014a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Integer f63015b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f63016c;
    public final boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f63017e;

    public /* synthetic */ PSPViewState(String str, Integer num, boolean z, boolean z2, boolean z3, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : str, (i2 & 2) != 0 ? null : num, (i2 & 4) != 0 ? false : z, (i2 & 8) != 0 ? false : z2, (i2 & 16) != 0 ? false : z3);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PSPViewState)) {
            return false;
        }
        PSPViewState pSPViewState = (PSPViewState) obj;
        return Intrinsics.c(this.f63014a, pSPViewState.f63014a) && Intrinsics.c(this.f63015b, pSPViewState.f63015b) && this.f63016c == pSPViewState.f63016c && this.d == pSPViewState.d && this.f63017e == pSPViewState.f63017e;
    }

    public final int hashCode() {
        String str = this.f63014a;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        Integer num = this.f63015b;
        return Boolean.hashCode(this.f63017e) + o60.b(o60.b((iHashCode + (num != null ? num.hashCode() : 0)) * 31, 31, this.f63016c), 31, this.d);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("PSPViewState(currentQuery=");
        sb.append(this.f63014a);
        sb.append(", totalCount=");
        sb.append(this.f63015b);
        sb.append(", isPlpV3GridViewEnabled=");
        fc.y(sb, this.f63016c, ", isAiCompanionEnabled=", this.d, ", showFilterBottomSheet=");
        return a.p(sb, this.f63017e, ")");
    }

    public PSPViewState(String str, Integer num, boolean z, boolean z2, boolean z3) {
        this.f63014a = str;
        this.f63015b = num;
        this.f63016c = z;
        this.d = z2;
        this.f63017e = z3;
    }

    public PSPViewState() {
        this(null, null, false, false, false, 31, null);
    }
}
