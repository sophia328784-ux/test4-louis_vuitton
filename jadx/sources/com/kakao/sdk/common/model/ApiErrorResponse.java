package com.kakao.sdk.common.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.networkbench.agent.impl.NBSSpanMetricUnit;
import com.networkbench.nbslens.nbsnativecrashlib.m;
import defpackage.fc;
import defpackage.tr;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0010\b\u0087\b\u0018\u00002\u00020\u0001BG\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0004\u0012\u0010\b\u0002\u0010\b\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0007\u0012\u0010\b\u0002\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0007¢\u0006\u0004\b\n\u0010\u000bR\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\f\u001a\u0004\b\r\u0010\u000eR\u0017\u0010\u0005\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0005\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011R\u0019\u0010\u0006\u001a\u0004\u0018\u00010\u00048\u0006¢\u0006\f\n\u0004\b\u0006\u0010\u000f\u001a\u0004\b\u0012\u0010\u0011R\u001f\u0010\b\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00078\u0006¢\u0006\f\n\u0004\b\b\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015R\u001f\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00078\u0006¢\u0006\f\n\u0004\b\t\u0010\u0013\u001a\u0004\b\u0016\u0010\u0015¨\u0006\u0017"}, d2 = {"Lcom/kakao/sdk/common/model/ApiErrorResponse;", "Landroid/os/Parcelable;", "", m.v, "", "msg", "apiType", "", "requiredScopes", "allowedScopes", "<init>", "(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V", "I", NBSSpanMetricUnit.Bit, "()I", "Ljava/lang/String;", "c", "()Ljava/lang/String;", "getApiType", "Ljava/util/List;", NBSSpanMetricUnit.Day, "()Ljava/util/List;", "a", "common_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final /* data */ class ApiErrorResponse implements Parcelable {
    public static final Parcelable.Creator<ApiErrorResponse> CREATOR = new Creator();
    private final List<String> allowedScopes;
    private final String apiType;
    private final int code;
    private final String msg;
    private final List<String> requiredScopes;

    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    public static final class Creator implements Parcelable.Creator<ApiErrorResponse> {
        @Override // android.os.Parcelable.Creator
        public final ApiErrorResponse createFromParcel(Parcel parcel) {
            parcel.getClass();
            return new ApiErrorResponse(parcel.readInt(), parcel.readString(), parcel.readString(), parcel.createStringArrayList(), parcel.createStringArrayList());
        }

        @Override // android.os.Parcelable.Creator
        public final ApiErrorResponse[] newArray(int i2) {
            return new ApiErrorResponse[i2];
        }
    }

    public /* synthetic */ ApiErrorResponse(int i2, String str, String str2, List list, List list2, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this(i2, str, (i3 & 4) != 0 ? null : str2, (i3 & 8) != 0 ? null : list, (i3 & 16) != 0 ? null : list2);
    }

    /* JADX INFO: renamed from: a, reason: from getter */
    public final List getAllowedScopes() {
        return this.allowedScopes;
    }

    /* JADX INFO: renamed from: b, reason: from getter */
    public final int getCode() {
        return this.code;
    }

    /* JADX INFO: renamed from: c, reason: from getter */
    public final String getMsg() {
        return this.msg;
    }

    /* JADX INFO: renamed from: d, reason: from getter */
    public final List getRequiredScopes() {
        return this.requiredScopes;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ApiErrorResponse)) {
            return false;
        }
        ApiErrorResponse apiErrorResponse = (ApiErrorResponse) obj;
        return this.code == apiErrorResponse.code && Intrinsics.c(this.msg, apiErrorResponse.msg) && Intrinsics.c(this.apiType, apiErrorResponse.apiType) && Intrinsics.c(this.requiredScopes, apiErrorResponse.requiredScopes) && Intrinsics.c(this.allowedScopes, apiErrorResponse.allowedScopes);
    }

    public final int hashCode() {
        int iB = fc.b(Integer.hashCode(this.code) * 31, 31, this.msg);
        String str = this.apiType;
        int iHashCode = (iB + (str == null ? 0 : str.hashCode())) * 31;
        List<String> list = this.requiredScopes;
        int iHashCode2 = (iHashCode + (list == null ? 0 : list.hashCode())) * 31;
        List<String> list2 = this.allowedScopes;
        return iHashCode2 + (list2 != null ? list2.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("ApiErrorResponse(code=");
        sb.append(this.code);
        sb.append(", msg=");
        sb.append(this.msg);
        sb.append(", apiType=");
        sb.append(this.apiType);
        sb.append(", requiredScopes=");
        sb.append(this.requiredScopes);
        sb.append(", allowedScopes=");
        return tr.m(sb, this.allowedScopes, ')');
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.getClass();
        parcel.writeInt(this.code);
        parcel.writeString(this.msg);
        parcel.writeString(this.apiType);
        parcel.writeStringList(this.requiredScopes);
        parcel.writeStringList(this.allowedScopes);
    }

    public ApiErrorResponse(int i2, String str, String str2, List<String> list, List<String> list2) {
        str.getClass();
        this.code = i2;
        this.msg = str;
        this.apiType = str2;
        this.requiredScopes = list;
        this.allowedScopes = list2;
    }
}
