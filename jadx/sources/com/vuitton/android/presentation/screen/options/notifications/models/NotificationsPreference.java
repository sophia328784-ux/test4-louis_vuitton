package com.vuitton.android.presentation.screen.options.notifications.models;

import defpackage.o60;
import defpackage.pq0;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\b\u0087\b\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0005¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreference;", "", "", "titleResId", "subtitleResId", "", "isChecked", "hasBottomDivider", "<init>", "(ILjava/lang/Integer;ZZ)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class NotificationsPreference {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f59941a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Integer f59942b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f59943c;
    public final boolean d;

    public /* synthetic */ NotificationsPreference(int i2, Integer num, boolean z, boolean z2, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this(i2, (i3 & 2) != 0 ? null : num, (i3 & 4) != 0 ? false : z, (i3 & 8) != 0 ? false : z2);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof NotificationsPreference)) {
            return false;
        }
        NotificationsPreference notificationsPreference = (NotificationsPreference) obj;
        return this.f59941a == notificationsPreference.f59941a && Intrinsics.c(this.f59942b, notificationsPreference.f59942b) && this.f59943c == notificationsPreference.f59943c && this.d == notificationsPreference.d;
    }

    public final int hashCode() {
        int iHashCode = Integer.hashCode(this.f59941a) * 31;
        Integer num = this.f59942b;
        return Boolean.hashCode(this.d) + o60.b((iHashCode + (num == null ? 0 : num.hashCode())) * 31, 31, this.f59943c);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("NotificationsPreference(titleResId=");
        sb.append(this.f59941a);
        sb.append(", subtitleResId=");
        sb.append(this.f59942b);
        sb.append(", isChecked=");
        return pq0.p(sb, this.f59943c, ", hasBottomDivider=", this.d, ")");
    }

    public NotificationsPreference(int i2, Integer num, boolean z, boolean z2) {
        this.f59941a = i2;
        this.f59942b = num;
        this.f59943c = z;
        this.d = z2;
    }
}
