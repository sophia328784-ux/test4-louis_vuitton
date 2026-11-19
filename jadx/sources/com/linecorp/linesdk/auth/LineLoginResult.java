package com.linecorp.linesdk.auth;

import android.os.Parcel;
import android.os.Parcelable;
import com.linecorp.linesdk.LineApiError;
import com.linecorp.linesdk.LineApiResponseCode;
import com.linecorp.linesdk.LineCredential;
import com.linecorp.linesdk.LineIdToken;
import com.linecorp.linesdk.LineProfile;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
public class LineLoginResult implements Parcelable {
    public static final Parcelable.Creator<LineLoginResult> CREATOR = new AnonymousClass1();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final LineApiResponseCode f36128b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f36129c;
    public final LineProfile d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final LineIdToken f36130e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Boolean f36131f;
    public final LineCredential g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final LineApiError f36132h;

    /* JADX INFO: renamed from: com.linecorp.linesdk.auth.LineLoginResult$1, reason: invalid class name */
    public class AnonymousClass1 implements Parcelable.Creator<LineLoginResult> {
        @Override // android.os.Parcelable.Creator
        public final LineLoginResult createFromParcel(Parcel parcel) {
            return new LineLoginResult(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final LineLoginResult[] newArray(int i2) {
            return new LineLoginResult[i2];
        }
    }

    public static final class Builder {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public String f36134b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public LineProfile f36135c;
        public LineIdToken d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public Boolean f36136e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public LineCredential f36137f;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public LineApiResponseCode f36133a = LineApiResponseCode.SUCCESS;
        public LineApiError g = LineApiError.f36059e;
    }

    public LineLoginResult(Parcel parcel) {
        String string = parcel.readString();
        this.f36128b = (LineApiResponseCode) (string != null ? Enum.valueOf(LineApiResponseCode.class, string) : null);
        this.f36129c = parcel.readString();
        this.d = (LineProfile) parcel.readParcelable(LineProfile.class.getClassLoader());
        this.f36130e = (LineIdToken) parcel.readParcelable(LineIdToken.class.getClassLoader());
        this.f36131f = (Boolean) parcel.readValue(Boolean.class.getClassLoader());
        this.g = (LineCredential) parcel.readParcelable(LineCredential.class.getClassLoader());
        this.f36132h = (LineApiError) parcel.readParcelable(LineApiError.class.getClassLoader());
    }

    public static LineLoginResult a(LineApiResponseCode lineApiResponseCode, LineApiError lineApiError) {
        Builder builder = new Builder();
        builder.f36133a = lineApiResponseCode;
        builder.g = lineApiError;
        return new LineLoginResult(builder);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof LineLoginResult)) {
            return false;
        }
        LineLoginResult lineLoginResult = (LineLoginResult) obj;
        if (this.f36128b != lineLoginResult.f36128b || !Objects.equals(this.f36129c, lineLoginResult.f36129c) || !Objects.equals(this.d, lineLoginResult.d) || !Objects.equals(this.f36130e, lineLoginResult.f36130e)) {
            return false;
        }
        Boolean bool = this.f36131f;
        if (bool == null) {
            bool = Boolean.FALSE;
        }
        Boolean bool2 = lineLoginResult.f36131f;
        if (bool2 == null) {
            bool2 = Boolean.FALSE;
        }
        return bool.equals(bool2) && Objects.equals(this.g, lineLoginResult.g) && this.f36132h.equals(lineLoginResult.f36132h);
    }

    public final int hashCode() {
        Boolean bool = this.f36131f;
        if (bool == null) {
            bool = Boolean.FALSE;
        }
        LineCredential lineCredential = this.g;
        LineApiError lineApiError = this.f36132h;
        return Objects.hash(this.f36128b, this.f36129c, this.d, this.f36130e, bool, lineCredential, lineApiError);
    }

    public final String toString() {
        return "LineLoginResult{responseCode=" + this.f36128b + ", nonce='" + this.f36129c + "', lineProfile=" + this.d + ", lineIdToken=" + this.f36130e + ", friendshipStatusChanged=" + this.f36131f + ", lineCredential=" + this.g + ", errorData=" + this.f36132h + '}';
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        LineApiResponseCode lineApiResponseCode = this.f36128b;
        parcel.writeString(lineApiResponseCode != null ? lineApiResponseCode.name() : null);
        parcel.writeString(this.f36129c);
        parcel.writeParcelable(this.d, i2);
        parcel.writeParcelable(this.f36130e, i2);
        parcel.writeValue(this.f36131f);
        parcel.writeParcelable(this.g, i2);
        parcel.writeParcelable(this.f36132h, i2);
    }

    public LineLoginResult(Builder builder) {
        this.f36128b = builder.f36133a;
        this.f36129c = builder.f36134b;
        this.d = builder.f36135c;
        this.f36130e = builder.d;
        this.f36131f = builder.f36136e;
        this.g = builder.f36137f;
        this.f36132h = builder.g;
    }
}
