package com.appsflyer.internal;

import com.networkbench.agent.impl.NBSSpanMetricUnit;
import defpackage.d21;
import java.util.HashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010%\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0010\b\u0086\b\u0018\u00002\u00020\u0001Bq\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0004\u0012\u0014\b\u0002\u0010\f\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00010\u000b¢\u0006\u0004\b\r\u0010\u000eJ\u001a\u0010\u000f\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u000f\u0010\u0010J\u0010\u0010\u0012\u001a\u00020\u0011HÖ\u0001¢\u0006\u0004\b\u0012\u0010\u0013J\u0010\u0010\u0014\u001a\u00020\u0002H×\u0001¢\u0006\u0004\b\u0014\u0010\u0015R\u0018\u0010\u0018\u001a\u0004\u0018\u00010\u00028\u0007@\u0006X\u0087\f¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017R\u0018\u0010\u0019\u001a\u0004\u0018\u00010\u00048\u0007@\u0006X\u0087\f¢\u0006\u0006\n\u0004\b\u0019\u0010\u001aR\u0018\u0010\u001c\u001a\u0004\u0018\u00010\u00048\u0007@\u0006X\u0087\f¢\u0006\u0006\n\u0004\b\u001b\u0010\u001aR\u0018\u0010\u0016\u001a\u0004\u0018\u00010\u00048\u0007@\u0006X\u0087\f¢\u0006\u0006\n\u0004\b\u0018\u0010\u001aR\u0018\u0010\u001b\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\f¢\u0006\u0006\n\u0004\b\u001c\u0010\u001aR\u0018\u0010\u001e\u001a\u0004\u0018\u00010\u00028\u0007@\u0006X\u0087\f¢\u0006\u0006\n\u0004\b\u001d\u0010\u0017R\u0018\u0010\u001f\u001a\u0004\u0018\u00010\u00048\u0007@\u0006X\u0087\f¢\u0006\u0006\n\u0004\b\u001f\u0010\u001aR\"\u0010!\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00010\u000b8\u0006@\u0006X\u0087\f¢\u0006\u0006\n\u0004\b\u001e\u0010 "}, d2 = {"Lcom/appsflyer/internal/AFh1qSDK;", "", "", "p0", "", "p1", "p2", "p3", "p4", "p5", "p6", "", "p7", "<init>", "(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/Map;)V", "equals", "(Ljava/lang/Object;)Z", "", "hashCode", "()I", "toString", "()Ljava/lang/String;", "AFLogger", "Ljava/lang/String;", NBSSpanMetricUnit.Day, "registerClient", "Ljava/lang/Boolean;", "AFKeystoreWrapper", "unregisterClient", "e", "v", "i", "Ljava/util/Map;", "w"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final /* data */ class AFh1qSDK {

    /* JADX INFO: renamed from: AFKeystoreWrapper, reason: from kotlin metadata */
    public Boolean unregisterClient;

    /* JADX INFO: renamed from: AFLogger, reason: from kotlin metadata */
    public String d;

    /* JADX INFO: renamed from: d, reason: from kotlin metadata */
    public Boolean AFLogger;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    public String v;
    public Boolean i;
    public Boolean registerClient;

    /* JADX INFO: renamed from: unregisterClient, reason: from kotlin metadata */
    public Boolean AFKeystoreWrapper;

    /* JADX INFO: renamed from: v, reason: from kotlin metadata */
    public Map<String, Object> w;

    public /* synthetic */ AFh1qSDK(String str, Boolean bool, Boolean bool2, Boolean bool3, Boolean bool4, String str2, Boolean bool5, Map map, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : str, (i2 & 2) != 0 ? null : bool, (i2 & 4) != 0 ? null : bool2, (i2 & 8) != 0 ? null : bool3, (i2 & 16) != 0 ? null : bool4, (i2 & 32) != 0 ? null : str2, (i2 & 64) != 0 ? null : bool5, (i2 & 128) != 0 ? new HashMap() : map);
    }

    public final boolean equals(Object p0) {
        if (this == p0) {
            return true;
        }
        if (!(p0 instanceof AFh1qSDK)) {
            return false;
        }
        AFh1qSDK aFh1qSDK = (AFh1qSDK) p0;
        return Intrinsics.c(this.d, aFh1qSDK.d) && Intrinsics.c(this.registerClient, aFh1qSDK.registerClient) && Intrinsics.c(this.unregisterClient, aFh1qSDK.unregisterClient) && Intrinsics.c(this.AFLogger, aFh1qSDK.AFLogger) && Intrinsics.c(this.AFKeystoreWrapper, aFh1qSDK.AFKeystoreWrapper) && Intrinsics.c(this.v, aFh1qSDK.v) && Intrinsics.c(this.i, aFh1qSDK.i) && Intrinsics.c(this.w, aFh1qSDK.w);
    }

    public final int hashCode() {
        String str = this.d;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        Boolean bool = this.registerClient;
        int iHashCode2 = (iHashCode + (bool == null ? 0 : bool.hashCode())) * 31;
        Boolean bool2 = this.unregisterClient;
        int iHashCode3 = (iHashCode2 + (bool2 == null ? 0 : bool2.hashCode())) * 31;
        Boolean bool3 = this.AFLogger;
        int iHashCode4 = (iHashCode3 + (bool3 == null ? 0 : bool3.hashCode())) * 31;
        Boolean bool4 = this.AFKeystoreWrapper;
        int iHashCode5 = (iHashCode4 + (bool4 == null ? 0 : bool4.hashCode())) * 31;
        String str2 = this.v;
        int iHashCode6 = (iHashCode5 + (str2 == null ? 0 : str2.hashCode())) * 31;
        Boolean bool5 = this.i;
        return this.w.hashCode() + ((iHashCode6 + (bool5 != null ? bool5.hashCode() : 0)) * 31);
    }

    public final String toString() {
        String str = this.d;
        Boolean bool = this.registerClient;
        Boolean bool2 = this.unregisterClient;
        Boolean bool3 = this.AFLogger;
        Boolean bool4 = this.AFKeystoreWrapper;
        String str2 = this.v;
        Boolean bool5 = this.i;
        Map<String, Object> map = this.w;
        StringBuilder sb = new StringBuilder("AdvertisingIdData(advertisingId=");
        sb.append(str);
        sb.append(", isLimited=");
        sb.append(bool);
        sb.append(", isEnabled=");
        d21.B(sb, bool2, ", isGaidWithGps=", bool3, ", isGaidWithSamsungCloudDev=");
        sb.append(bool4);
        sb.append(", gaidError=");
        sb.append(str2);
        sb.append(", retry=");
        sb.append(bool5);
        sb.append(", metadata=");
        sb.append(map);
        sb.append(")");
        return sb.toString();
    }

    private AFh1qSDK(String str, Boolean bool, Boolean bool2, Boolean bool3, Boolean bool4, String str2, Boolean bool5, Map<String, Object> map) {
        map.getClass();
        this.d = str;
        this.registerClient = bool;
        this.unregisterClient = bool2;
        this.AFLogger = bool3;
        this.AFKeystoreWrapper = bool4;
        this.v = str2;
        this.i = bool5;
        this.w = map;
    }

    public AFh1qSDK() {
        this(null, null, null, null, null, null, null, null, 255, null);
    }
}
