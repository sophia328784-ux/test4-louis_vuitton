package com.appsflyer.internal;

import com.appsflyer.share.deeplink.DeepLink;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0007\b\u0086\b\u0018\u00002\u00020\u0001B\u001d\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u001a\u0010\b\u001a\u00020\u00022\b\u0010\u0003\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\b\u0010\tJ\u0010\u0010\u000b\u001a\u00020\nHÖ\u0001¢\u0006\u0004\b\u000b\u0010\fJ\u0010\u0010\u000e\u001a\u00020\rH×\u0001¢\u0006\u0004\b\u000e\u0010\u000fR\u0011\u0010\u0012\u001a\u00020\u00028\u0006¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011R\u0016\u0010\u0014\u001a\u0004\u0018\u00010\u00048\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013"}, d2 = {"Lcom/appsflyer/internal/AFa1gSDK;", "", "", "p0", "Lcom/appsflyer/share/deeplink/DeepLink;", "p1", "<init>", "(ZLcom/appsflyer/share/deeplink/DeepLink;)V", "equals", "(Ljava/lang/Object;)Z", "", "hashCode", "()I", "", "toString", "()Ljava/lang/String;", "AFLogger", "Z", "AFKeystoreWrapper", "Lcom/appsflyer/share/deeplink/DeepLink;", "unregisterClient"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final /* data */ class AFa1gSDK {

    /* JADX INFO: renamed from: AFKeystoreWrapper, reason: from kotlin metadata */
    public final DeepLink unregisterClient;

    /* JADX INFO: renamed from: AFLogger, reason: from kotlin metadata */
    public final boolean AFKeystoreWrapper;

    public /* synthetic */ AFa1gSDK(boolean z, DeepLink deepLink, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? true : z, (i2 & 2) != 0 ? null : deepLink);
    }

    public final boolean equals(Object p0) {
        if (this == p0) {
            return true;
        }
        if (!(p0 instanceof AFa1gSDK)) {
            return false;
        }
        AFa1gSDK aFa1gSDK = (AFa1gSDK) p0;
        return this.AFKeystoreWrapper == aFa1gSDK.AFKeystoreWrapper && Intrinsics.c(this.unregisterClient, aFa1gSDK.unregisterClient);
    }

    public final int hashCode() {
        int iHashCode = Boolean.hashCode(this.AFKeystoreWrapper) * 31;
        DeepLink deepLink = this.unregisterClient;
        return iHashCode + (deepLink == null ? 0 : deepLink.hashCode());
    }

    public final String toString() {
        return "DdlResponse(secondPing=" + this.AFKeystoreWrapper + ", deepLink=" + this.unregisterClient + ")";
    }

    public AFa1gSDK(boolean z, DeepLink deepLink) {
        this.AFKeystoreWrapper = z;
        this.unregisterClient = deepLink;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public AFa1gSDK() {
        this(false, null, 3, 0 == true ? 1 : 0);
    }
}
