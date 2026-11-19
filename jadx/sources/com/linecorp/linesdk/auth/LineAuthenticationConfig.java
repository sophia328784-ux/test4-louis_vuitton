package com.linecorp.linesdk.auth;

import android.content.Context;
import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.linecorp.linesdk.ManifestParser;
import com.linecorp.linesdk.api.LineDefaultEnvConfig;
import com.linecorp.linesdk.api.LineEnvConfig;
import defpackage.d21;
import defpackage.md;

/* JADX INFO: loaded from: classes2.dex */
public class LineAuthenticationConfig implements Parcelable {
    public static final Parcelable.Creator<LineAuthenticationConfig> CREATOR = new AnonymousClass1();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f36114b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Uri f36115c;
    public final Uri d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Uri f36116e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f36117f;
    public final boolean g;

    /* JADX INFO: renamed from: com.linecorp.linesdk.auth.LineAuthenticationConfig$1, reason: invalid class name */
    public class AnonymousClass1 implements Parcelable.Creator<LineAuthenticationConfig> {
        @Override // android.os.Parcelable.Creator
        public final LineAuthenticationConfig createFromParcel(Parcel parcel) {
            return new LineAuthenticationConfig(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final LineAuthenticationConfig[] newArray(int i2) {
            return new LineAuthenticationConfig[i2];
        }
    }

    public LineAuthenticationConfig(Parcel parcel) {
        this.f36114b = parcel.readString();
        this.f36115c = (Uri) parcel.readParcelable(Uri.class.getClassLoader());
        this.d = (Uri) parcel.readParcelable(Uri.class.getClassLoader());
        this.f36116e = (Uri) parcel.readParcelable(Uri.class.getClassLoader());
        int i2 = parcel.readInt();
        this.f36117f = (i2 & 1) > 0;
        this.g = (i2 & 2) > 0;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        LineAuthenticationConfig lineAuthenticationConfig = (LineAuthenticationConfig) obj;
        if (this.f36117f == lineAuthenticationConfig.f36117f && this.g == lineAuthenticationConfig.g && this.f36114b.equals(lineAuthenticationConfig.f36114b) && this.f36115c.equals(lineAuthenticationConfig.f36115c) && this.d.equals(lineAuthenticationConfig.d)) {
            return this.f36116e.equals(lineAuthenticationConfig.f36116e);
        }
        return false;
    }

    public final int hashCode() {
        return ((((this.f36116e.hashCode() + ((this.d.hashCode() + ((this.f36115c.hashCode() + (this.f36114b.hashCode() * 31)) * 31)) * 31)) * 31) + (this.f36117f ? 1 : 0)) * 31) + (this.g ? 1 : 0);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("LineAuthenticationConfig{channelId='");
        sb.append(this.f36114b);
        sb.append("', openidDiscoveryDocumentUrl=");
        sb.append(this.f36115c);
        sb.append(", apiBaseUrl=");
        sb.append(this.d);
        sb.append(", webLoginPageUrl=");
        sb.append(this.f36116e);
        sb.append(", isLineAppAuthenticationDisabled=");
        sb.append(this.f36117f);
        sb.append(", isEncryptorPreparationDisabled=");
        return d21.q(sb, this.g, '}');
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.f36114b);
        parcel.writeParcelable(this.f36115c, i2);
        parcel.writeParcelable(this.d, i2);
        parcel.writeParcelable(this.f36116e, i2);
        parcel.writeInt((this.f36117f ? 1 : 0) | (this.g ? 2 : 0));
    }

    public static class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f36118a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Uri f36119b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Uri f36120c;
        public final Uri d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public boolean f36121e;

        public Builder(String str, Context context) {
            ManifestParser manifestParser = new ManifestParser();
            if (TextUtils.isEmpty(str)) {
                md.n("channelId is empty.");
                throw null;
            }
            this.f36118a = str;
            LineEnvConfig lineDefaultEnvConfig = context != null ? manifestParser.parse(context) : null;
            lineDefaultEnvConfig = lineDefaultEnvConfig == null ? new LineDefaultEnvConfig() : lineDefaultEnvConfig;
            this.f36119b = Uri.parse(lineDefaultEnvConfig.getOpenIdDiscoveryDocumentUrl());
            this.f36120c = Uri.parse(lineDefaultEnvConfig.getApiServerBaseUri());
            this.d = Uri.parse(lineDefaultEnvConfig.getWebLoginPageUrl());
        }

        public Builder(String str) {
            this(str, null);
        }
    }

    public LineAuthenticationConfig(Builder builder) {
        this.f36114b = builder.f36118a;
        this.f36115c = builder.f36119b;
        this.d = builder.f36120c;
        this.f36116e = builder.d;
        this.f36117f = builder.f36121e;
        this.g = false;
    }
}
