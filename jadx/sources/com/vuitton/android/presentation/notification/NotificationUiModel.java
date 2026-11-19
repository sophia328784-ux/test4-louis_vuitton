package com.vuitton.android.presentation.notification;

import com.vuitton.android.presentation.model.stringhandling.StringResourceUiModel;
import defpackage.fc;
import defpackage.o60;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0003\b\u0087\b\u0018\u00002\u00020\u0001BM\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006\u0012\b\b\u0002\u0010\b\u001a\u00020\u0004\u0012\b\b\u0002\u0010\t\u001a\u00020\u0004\u0012\b\b\u0002\u0010\n\u001a\u00020\u0004\u0012\b\b\u0002\u0010\f\u001a\u00020\u000b¢\u0006\u0004\b\r\u0010\u000eBI\b\u0010\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\b\u001a\u00020\u0004\u0012\u0006\u0010\t\u001a\u00020\u0004\u0012\u0006\u0010\n\u001a\u00020\u0004\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\u0006\u0010\u0010\u001a\u00020\u000f¢\u0006\u0004\b\r\u0010\u0011¨\u0006\u0012"}, d2 = {"Lcom/vuitton/android/presentation/notification/NotificationUiModel;", "", "Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;", "message", "", "forceInfinite", "Lcom/vuitton/android/presentation/notification/NotificationDuration;", "duration", "success", "haptic", "withDismissAction", "Lcom/vuitton/android/presentation/notification/NotificationAction;", "action", "<init>", "(Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;ZLcom/vuitton/android/presentation/notification/NotificationDuration;ZZZLcom/vuitton/android/presentation/notification/NotificationAction;)V", "", "internal", "(Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;ZLcom/vuitton/android/presentation/notification/NotificationDuration;ZZZLcom/vuitton/android/presentation/notification/NotificationAction;Lkotlin/Unit;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class NotificationUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final StringResourceUiModel f51841a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f51842b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final NotificationDuration f51843c;
    public final boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f51844e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f51845f;
    public final NotificationAction g;

    /* JADX WARN: Illegal instructions before constructor call */
    public /* synthetic */ NotificationUiModel(StringResourceUiModel stringResourceUiModel, boolean z, NotificationDuration notificationDuration, boolean z2, boolean z3, boolean z4, NotificationAction notificationAction, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        z = (i2 & 2) != 0 ? false : z;
        notificationDuration = (i2 & 4) != 0 ? NotificationDuration.SHORT : notificationDuration;
        z2 = (i2 & 8) != 0 ? true : z2;
        this(stringResourceUiModel, z, notificationDuration, z2, (i2 & 16) != 0 ? !z2 : z3, (i2 & 32) != 0 ? false : z4, (i2 & 64) != 0 ? NotificationAction.NoAction.f51835b : notificationAction);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof NotificationUiModel)) {
            return false;
        }
        NotificationUiModel notificationUiModel = (NotificationUiModel) obj;
        return Intrinsics.c(this.f51841a, notificationUiModel.f51841a) && this.f51842b == notificationUiModel.f51842b && this.f51843c == notificationUiModel.f51843c && this.d == notificationUiModel.d && this.f51844e == notificationUiModel.f51844e && this.f51845f == notificationUiModel.f51845f && Intrinsics.c(this.g, notificationUiModel.g);
    }

    public final int hashCode() {
        return this.g.hashCode() + o60.b(o60.b(o60.b((this.f51843c.hashCode() + o60.b(this.f51841a.hashCode() * 31, 31, this.f51842b)) * 31, 31, this.d), 31, this.f51844e), 31, this.f51845f);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("NotificationUiModel(message=");
        sb.append(this.f51841a);
        sb.append(", forceInfinite=");
        sb.append(this.f51842b);
        sb.append(", duration=");
        sb.append(this.f51843c);
        sb.append(", success=");
        sb.append(this.d);
        sb.append(", haptic=");
        fc.y(sb, this.f51844e, ", withDismissAction=", this.f51845f, ", action=");
        sb.append(this.g);
        sb.append(")");
        return sb.toString();
    }

    @Deprecated
    public NotificationUiModel(StringResourceUiModel stringResourceUiModel, boolean z, NotificationDuration notificationDuration, boolean z2, boolean z3, boolean z4, NotificationAction notificationAction) {
        stringResourceUiModel.getClass();
        notificationDuration.getClass();
        notificationAction.getClass();
        this.f51841a = stringResourceUiModel;
        this.f51842b = z;
        this.f51843c = notificationDuration;
        this.d = z2;
        this.f51844e = z3;
        this.f51845f = z4;
        this.g = notificationAction;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public NotificationUiModel(StringResourceUiModel stringResourceUiModel, boolean z, NotificationDuration notificationDuration, boolean z2, boolean z3, boolean z4, NotificationAction notificationAction, Unit unit) {
        this(stringResourceUiModel, z, notificationDuration, z2, z3, z4, notificationAction);
        stringResourceUiModel.getClass();
        notificationDuration.getClass();
        notificationAction.getClass();
        unit.getClass();
    }
}
