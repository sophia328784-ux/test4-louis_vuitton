package com.google.android.gms.common;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import com.appsflyer.sdk_base.referrer.Payload;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class ConnectionResult extends AbstractSafeParcelable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f28952b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f28953c;
    public final PendingIntent d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f28954e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Integer f28955f;
    public static final ConnectionResult g = new ConnectionResult(0);
    public static final Parcelable.Creator<ConnectionResult> CREATOR = new zza();

    public ConnectionResult(int i2, int i3, PendingIntent pendingIntent, String str, Integer num) {
        this.f28952b = i2;
        this.f28953c = i3;
        this.d = pendingIntent;
        this.f28954e = str;
        this.f28955f = num;
    }

    public static String X1(int i2) {
        if (i2 == 99) {
            return "UNFINISHED";
        }
        if (i2 == 1500) {
            return "DRIVE_EXTERNAL_STORAGE_REQUIRED";
        }
        switch (i2) {
            case -1:
                return "UNKNOWN";
            case 0:
                return "SUCCESS";
            case 1:
                return "SERVICE_MISSING";
            case 2:
                return "SERVICE_VERSION_UPDATE_REQUIRED";
            case 3:
                return "SERVICE_DISABLED";
            case 4:
                return "SIGN_IN_REQUIRED";
            case 5:
                return "INVALID_ACCOUNT";
            case 6:
                return "RESOLUTION_REQUIRED";
            case 7:
                return "NETWORK_ERROR";
            case 8:
                return "INTERNAL_ERROR";
            case 9:
                return "SERVICE_INVALID";
            case 10:
                return Payload.RESPONSE_DEVELOPER_ERROR;
            case 11:
                return "LICENSE_CHECK_FAILED";
            default:
                switch (i2) {
                    case 13:
                        return "CANCELED";
                    case 14:
                        return Payload.RESPONSE_TIMEOUT;
                    case 15:
                        return "INTERRUPTED";
                    case 16:
                        return "API_UNAVAILABLE";
                    case 17:
                        return "SIGN_IN_FAILED";
                    case 18:
                        return "SERVICE_UPDATING";
                    case 19:
                        return "SERVICE_MISSING_PERMISSION";
                    case 20:
                        return "RESTRICTED_PROFILE";
                    case 21:
                        return "API_VERSION_UPDATE_REQUIRED";
                    case 22:
                        return "RESOLUTION_ACTIVITY_NOT_FOUND";
                    case 23:
                        return "API_DISABLED";
                    case 24:
                        return "API_DISABLED_FOR_CONNECTION";
                    case 25:
                        return "API_INSTALL_REQUIRED";
                    default:
                        StringBuilder sb = new StringBuilder(String.valueOf(i2).length() + 20);
                        sb.append("UNKNOWN_ERROR_CODE(");
                        sb.append(i2);
                        sb.append(")");
                        return sb.toString();
                }
        }
    }

    public final boolean W1() {
        return this.f28953c == 0;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ConnectionResult)) {
            return false;
        }
        ConnectionResult connectionResult = (ConnectionResult) obj;
        return this.f28953c == connectionResult.f28953c && Objects.a(this.d, connectionResult.d) && Objects.a(this.f28954e, connectionResult.f28954e) && Objects.a(this.f28955f, connectionResult.f28955f);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.f28953c), this.d, this.f28954e, this.f28955f});
    }

    public final String toString() {
        Objects.ToStringHelper toStringHelper = new Objects.ToStringHelper(this);
        toStringHelper.a(X1(this.f28953c), "statusCode");
        toStringHelper.a(this.d, "resolution");
        toStringHelper.a(this.f28954e, "message");
        toStringHelper.a(this.f28955f, "clientMethodKey");
        return toStringHelper.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iQ = SafeParcelWriter.q(20293, parcel);
        SafeParcelWriter.p(parcel, 1, 4);
        parcel.writeInt(this.f28952b);
        SafeParcelWriter.p(parcel, 2, 4);
        parcel.writeInt(this.f28953c);
        SafeParcelWriter.j(parcel, 3, this.d, i2, false);
        SafeParcelWriter.k(parcel, 4, this.f28954e, false);
        SafeParcelWriter.h(parcel, 5, this.f28955f);
        SafeParcelWriter.r(iQ, parcel);
    }

    public ConnectionResult(int i2) {
        this(i2, null, null);
    }

    public ConnectionResult(int i2, PendingIntent pendingIntent) {
        this(i2, pendingIntent, null);
    }

    public ConnectionResult(int i2, PendingIntent pendingIntent, String str) {
        this(1, i2, pendingIntent, str, null);
    }

    public ConnectionResult(int i2, PendingIntent pendingIntent, String str, Integer num) {
        this(1, i2, pendingIntent, str, num);
    }
}
