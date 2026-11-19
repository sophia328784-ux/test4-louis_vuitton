package com.vuitton.android.presentation.compose.components;

import defpackage.d21;
import defpackage.fc;
import defpackage.tr;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\b\u0087\b\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0002¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/vuitton/android/presentation/compose/components/LiveEventState;", "", "", "days", "hours", "minutes", "seconds", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class LiveEventState {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f51016a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f51017b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f51018c;
    public final String d;

    public LiveEventState(String str, String str2, String str3, String str4) {
        d21.y(str, str2, str3, str4);
        this.f51016a = str;
        this.f51017b = str2;
        this.f51018c = str3;
        this.d = str4;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof LiveEventState)) {
            return false;
        }
        LiveEventState liveEventState = (LiveEventState) obj;
        return Intrinsics.c(this.f51016a, liveEventState.f51016a) && Intrinsics.c(this.f51017b, liveEventState.f51017b) && Intrinsics.c(this.f51018c, liveEventState.f51018c) && Intrinsics.c(this.d, liveEventState.d);
    }

    public final int hashCode() {
        return this.d.hashCode() + fc.b(fc.b(this.f51016a.hashCode() * 31, 31, this.f51017b), 31, this.f51018c);
    }

    public final String toString() {
        return tr.l(fc.s("LiveEventState(days=", this.f51016a, ", hours=", this.f51017b, ", minutes="), this.f51018c, ", seconds=", this.d, ")");
    }
}
