package com.sightcall.analytics.datasource.analyticsupload;

import com.google.gson.annotations.SerializedName;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\f\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\t\u0010\f\u001a\u00020\u0003HÆ\u0003J\t\u0010\r\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\u000e\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0014\u0010\u000f\u001a\u00020\u00032\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001HÖ\u0083\u0004J\n\u0010\u0011\u001a\u00020\u0012HÖ\u0081\u0004J\n\u0010\u0013\u001a\u00020\u0005HÖ\u0081\u0004R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\u0014"}, d2 = {"Lcom/sightcall/analytics/datasource/analyticsupload/AnalyticsUploadResponseEntity;", "", "success", "", "message", "", "<init>", "(ZLjava/lang/String;)V", "getSuccess", "()Z", "getMessage", "()Ljava/lang/String;", "component1", "component2", "copy", "equals", "other", "hashCode", "", "toString", "analytics_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class AnalyticsUploadResponseEntity {

    @SerializedName("message")
    private final String message;

    @SerializedName("success")
    private final boolean success;

    public AnalyticsUploadResponseEntity(boolean z, String str) {
        str.getClass();
        this.success = z;
        this.message = str;
    }

    public static /* synthetic */ AnalyticsUploadResponseEntity copy$default(AnalyticsUploadResponseEntity analyticsUploadResponseEntity, boolean z, String str, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            z = analyticsUploadResponseEntity.success;
        }
        if ((i2 & 2) != 0) {
            str = analyticsUploadResponseEntity.message;
        }
        return analyticsUploadResponseEntity.copy(z, str);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final boolean getSuccess() {
        return this.success;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getMessage() {
        return this.message;
    }

    public final AnalyticsUploadResponseEntity copy(boolean success, String message) {
        message.getClass();
        return new AnalyticsUploadResponseEntity(success, message);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof AnalyticsUploadResponseEntity)) {
            return false;
        }
        AnalyticsUploadResponseEntity analyticsUploadResponseEntity = (AnalyticsUploadResponseEntity) other;
        return this.success == analyticsUploadResponseEntity.success && Intrinsics.c(this.message, analyticsUploadResponseEntity.message);
    }

    public final String getMessage() {
        return this.message;
    }

    public final boolean getSuccess() {
        return this.success;
    }

    public int hashCode() {
        return this.message.hashCode() + (Boolean.hashCode(this.success) * 31);
    }

    public String toString() {
        return "AnalyticsUploadResponseEntity(success=" + this.success + ", message=" + this.message + ")";
    }
}
