package com.google.firebase;

import android.content.Context;
import android.text.TextUtils;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.StringResourceValueReader;
import com.google.android.gms.common.util.Strings;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class FirebaseOptions {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f34345a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f34346b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f34347c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f34348e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f34349f;
    public final String g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f34350h;

    public FirebaseOptions(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8) {
        int i2 = Strings.f29345a;
        Preconditions.j("ApplicationId must be set.", true ^ (str == null || str.trim().isEmpty()));
        this.f34346b = str;
        this.f34345a = str2;
        this.f34347c = str3;
        this.d = str4;
        this.f34348e = str5;
        this.f34349f = str6;
        this.g = str7;
        this.f34350h = str8;
    }

    public static FirebaseOptions a(Context context) {
        StringResourceValueReader stringResourceValueReader = new StringResourceValueReader(context);
        String strA = stringResourceValueReader.a("google_app_id");
        if (TextUtils.isEmpty(strA)) {
            return null;
        }
        return new FirebaseOptions(strA, stringResourceValueReader.a("google_api_key"), stringResourceValueReader.a("firebase_database_url"), stringResourceValueReader.a("ga_trackingId"), stringResourceValueReader.a("gcm_defaultSenderId"), stringResourceValueReader.a("google_storage_bucket"), stringResourceValueReader.a("recaptcha_site_key"), stringResourceValueReader.a("project_id"));
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof FirebaseOptions)) {
            return false;
        }
        FirebaseOptions firebaseOptions = (FirebaseOptions) obj;
        return Objects.a(this.f34346b, firebaseOptions.f34346b) && Objects.a(this.f34345a, firebaseOptions.f34345a) && Objects.a(this.f34347c, firebaseOptions.f34347c) && Objects.a(this.d, firebaseOptions.d) && Objects.a(this.f34348e, firebaseOptions.f34348e) && Objects.a(this.f34349f, firebaseOptions.f34349f) && Objects.a(this.g, firebaseOptions.g) && Objects.a(this.f34350h, firebaseOptions.f34350h);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f34346b, this.f34345a, this.f34347c, this.d, this.f34348e, this.f34349f, this.g, this.f34350h});
    }

    public final String toString() {
        Objects.ToStringHelper toStringHelper = new Objects.ToStringHelper(this);
        toStringHelper.a(this.f34346b, "applicationId");
        toStringHelper.a(this.f34345a, "apiKey");
        toStringHelper.a(this.f34347c, "databaseUrl");
        toStringHelper.a(this.f34348e, "gcmSenderId");
        toStringHelper.a(this.f34349f, "storageBucket");
        toStringHelper.a(this.g, "recaptchaSiteKey");
        toStringHelper.a(this.f34350h, "projectId");
        return toStringHelper.toString();
    }
}
