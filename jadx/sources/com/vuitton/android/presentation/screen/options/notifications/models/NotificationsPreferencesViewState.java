package com.vuitton.android.presentation.screen.options.notifications.models;

import com.vuitton.foundation.model.domain.model.account.notifications.NotificationPreferenceType;
import defpackage.a;
import defpackage.fc;
import defpackage.o60;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0007\b\u0087\b\u0018\u00002\u00020\u0001BE\u0012\u0014\b\u0002\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u0002\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006\u0012\b\b\u0002\u0010\b\u001a\u00020\u0006\u0012\b\b\u0002\u0010\t\u001a\u00020\u0006\u0012\b\b\u0002\u0010\n\u001a\u00020\u0006¢\u0006\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreferencesViewState;", "", "", "Lcom/vuitton/foundation/model/domain/model/account/notifications/NotificationPreferenceType;", "Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreference;", "preferences", "", "isNotificationsEnabled", "isUserOptInToCustomization", "isNotifyMeEnabled", "isLoading", "<init>", "(Ljava/util/Map;ZZZZ)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class NotificationsPreferencesViewState {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Map f59958a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f59959b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f59960c;
    public final boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f59961e;

    public /* synthetic */ NotificationsPreferencesViewState(Map map, boolean z, boolean z2, boolean z3, boolean z4, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? MapsKt.c() : map, (i2 & 2) != 0 ? true : z, (i2 & 4) != 0 ? true : z2, (i2 & 8) != 0 ? true : z3, (i2 & 16) != 0 ? false : z4);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof NotificationsPreferencesViewState)) {
            return false;
        }
        NotificationsPreferencesViewState notificationsPreferencesViewState = (NotificationsPreferencesViewState) obj;
        return Intrinsics.c(this.f59958a, notificationsPreferencesViewState.f59958a) && this.f59959b == notificationsPreferencesViewState.f59959b && this.f59960c == notificationsPreferencesViewState.f59960c && this.d == notificationsPreferencesViewState.d && this.f59961e == notificationsPreferencesViewState.f59961e;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.f59961e) + o60.b(o60.b(o60.b(this.f59958a.hashCode() * 31, 31, this.f59959b), 31, this.f59960c), 31, this.d);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("NotificationsPreferencesViewState(preferences=");
        sb.append(this.f59958a);
        sb.append(", isNotificationsEnabled=");
        sb.append(this.f59959b);
        sb.append(", isUserOptInToCustomization=");
        fc.y(sb, this.f59960c, ", isNotifyMeEnabled=", this.d, ", isLoading=");
        return a.p(sb, this.f59961e, ")");
    }

    public NotificationsPreferencesViewState(Map<NotificationPreferenceType, NotificationsPreference> map, boolean z, boolean z2, boolean z3, boolean z4) {
        map.getClass();
        this.f59958a = map;
        this.f59959b = z;
        this.f59960c = z2;
        this.d = z3;
        this.f59961e = z4;
    }

    public NotificationsPreferencesViewState() {
        this(null, false, false, false, false, 31, null);
    }
}
