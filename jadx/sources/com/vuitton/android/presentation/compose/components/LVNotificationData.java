package com.vuitton.android.presentation.compose.components;

import com.networkbench.agent.impl.harvest.HarvestConfiguration;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B-\u0012\b\b\u0001\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006\u0012\b\b\u0002\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/vuitton/android/presentation/compose/components/LVNotificationData;", "", "", "icon", "", "text", "", "dismissDelay", "", "show", "<init>", "(ILjava/lang/String;JZ)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class LVNotificationData {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f50990a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f50991b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f50992c;
    public final boolean d;

    public /* synthetic */ LVNotificationData(int i2, String str, long j2, boolean z, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this(i2, str, (i3 & 4) != 0 ? HarvestConfiguration.SLOW_USER_ACTION_THRESHOLD : j2, (i3 & 8) != 0 ? false : z);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof LVNotificationData)) {
            return false;
        }
        LVNotificationData lVNotificationData = (LVNotificationData) obj;
        return this.f50990a == lVNotificationData.f50990a && Intrinsics.c(this.f50991b, lVNotificationData.f50991b) && this.f50992c == lVNotificationData.f50992c && this.d == lVNotificationData.d;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.d) + fc.a(fc.b(Integer.hashCode(this.f50990a) * 31, 31, this.f50991b), 31, this.f50992c);
    }

    public final String toString() {
        return "LVNotificationData(icon=" + this.f50990a + ", text=" + this.f50991b + ", dismissDelay=" + this.f50992c + ", show=" + this.d + ")";
    }

    public LVNotificationData(int i2, String str, long j2, boolean z) {
        str.getClass();
        this.f50990a = i2;
        this.f50991b = str;
        this.f50992c = j2;
        this.d = z;
    }
}
