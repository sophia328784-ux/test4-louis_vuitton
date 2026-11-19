package com.google.android.gms.common.api;

import android.app.ActivityOptions;
import android.app.PendingIntent;
import android.content.IntentSender;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.appsflyer.sdk_base.referrer.Payload;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.vuitton.android.presentation.screen.base.BaseActivity;
import defpackage.d21;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class Status extends AbstractSafeParcelable implements Result, ReflectedParcelable {
    public static final Parcelable.Creator<Status> CREATOR;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final Status f29004f;
    public static final Status g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final Status f29005h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final Status f29006i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final Status f29007j;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f29008b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f29009c;
    public final PendingIntent d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ConnectionResult f29010e;

    static {
        new Status(-1);
        f29004f = new Status(0);
        g = new Status(14);
        f29005h = new Status(8);
        f29006i = new Status(15);
        f29007j = new Status(16);
        new Status(17);
        new Status(18);
        CREATOR = new zze();
    }

    public Status(int i2, String str, PendingIntent pendingIntent, ConnectionResult connectionResult) {
        this.f29008b = i2;
        this.f29009c = str;
        this.d = pendingIntent;
        this.f29010e = connectionResult;
    }

    public final boolean W1() {
        return this.f29008b <= 0;
    }

    public final void X1(BaseActivity baseActivity) throws IntentSender.SendIntentException {
        PendingIntent pendingIntent = this.d;
        if (pendingIntent != null) {
            Bundle bundle = Build.VERSION.SDK_INT >= 34 ? ActivityOptions.makeBasic().setPendingIntentBackgroundActivityStartMode(1).toBundle() : null;
            Preconditions.h(pendingIntent);
            baseActivity.startIntentSenderForResult(pendingIntent.getIntentSender(), 2541, null, 0, 0, 0, bundle);
        }
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof Status)) {
            return false;
        }
        Status status = (Status) obj;
        return this.f29008b == status.f29008b && Objects.a(this.f29009c, status.f29009c) && Objects.a(this.d, status.d) && Objects.a(this.f29010e, status.f29010e);
    }

    @Override // com.google.android.gms.common.api.Result
    public final Status getStatus() {
        return this;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.f29008b), this.f29009c, this.d, this.f29010e});
    }

    public final String toString() {
        Objects.ToStringHelper toStringHelper = new Objects.ToStringHelper(this);
        String strF = this.f29009c;
        if (strF == null) {
            int i2 = this.f29008b;
            switch (i2) {
                case -1:
                    strF = "SUCCESS_CACHE";
                    break;
                case 0:
                    strF = "SUCCESS";
                    break;
                case 1:
                case 9:
                case 11:
                case 12:
                default:
                    strF = d21.f(i2, "unknown status code: ", new StringBuilder(String.valueOf(i2).length() + 21));
                    break;
                case 2:
                    strF = "SERVICE_VERSION_UPDATE_REQUIRED";
                    break;
                case 3:
                    strF = "SERVICE_DISABLED";
                    break;
                case 4:
                    strF = "SIGN_IN_REQUIRED";
                    break;
                case 5:
                    strF = "INVALID_ACCOUNT";
                    break;
                case 6:
                    strF = "RESOLUTION_REQUIRED";
                    break;
                case 7:
                    strF = "NETWORK_ERROR";
                    break;
                case 8:
                    strF = "INTERNAL_ERROR";
                    break;
                case 10:
                    strF = Payload.RESPONSE_DEVELOPER_ERROR;
                    break;
                case 13:
                    strF = "ERROR";
                    break;
                case 14:
                    strF = "INTERRUPTED";
                    break;
                case 15:
                    strF = Payload.RESPONSE_TIMEOUT;
                    break;
                case 16:
                    strF = "CANCELED";
                    break;
                case 17:
                    strF = "API_NOT_CONNECTED";
                    break;
                case 18:
                    strF = "DEAD_CLIENT";
                    break;
                case 19:
                    strF = "REMOTE_EXCEPTION";
                    break;
                case 20:
                    strF = "CONNECTION_SUSPENDED_DURING_CALL";
                    break;
                case 21:
                    strF = "RECONNECTION_TIMED_OUT_DURING_UPDATE";
                    break;
                case 22:
                    strF = "RECONNECTION_TIMED_OUT";
                    break;
            }
        }
        toStringHelper.a(strF, "statusCode");
        toStringHelper.a(this.d, "resolution");
        return toStringHelper.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iQ = SafeParcelWriter.q(20293, parcel);
        SafeParcelWriter.p(parcel, 1, 4);
        parcel.writeInt(this.f29008b);
        SafeParcelWriter.k(parcel, 2, this.f29009c, false);
        SafeParcelWriter.j(parcel, 3, this.d, i2, false);
        SafeParcelWriter.j(parcel, 4, this.f29010e, i2, false);
        SafeParcelWriter.r(iQ, parcel);
    }

    @Deprecated
    public Status(ConnectionResult connectionResult, String str, int i2) {
        this(i2, str, connectionResult.d, connectionResult);
    }

    public Status(int i2) {
        this(i2, (String) null);
    }

    public Status(ConnectionResult connectionResult, String str) {
        this(connectionResult, str, 17);
    }

    public Status(int i2, String str) {
        this(i2, str, (PendingIntent) null);
    }

    public Status(int i2, String str, PendingIntent pendingIntent) {
        this(i2, str, pendingIntent, null);
    }
}
