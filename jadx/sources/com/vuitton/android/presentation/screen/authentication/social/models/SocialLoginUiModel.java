package com.vuitton.android.presentation.screen.authentication.social.models;

import com.vuitton.android.presentation.screen.authentication.models.TrackingAuthEntryPoint;
import com.vuitton.android.presentation.screen.authentication.models.TrackingAuthOrigin;
import com.vuitton.foundation.model.domain.model.authentication.social.SocialAuthMode;
import defpackage.cj;
import defpackage.fc;
import defpackage.nw0;
import defpackage.pq0;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u00192\u00020\u0001:\u0002\u001a\u0019B\u0087\u0001\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0002\u0012\b\b\u0002\u0010\b\u001a\u00020\u0002\u0012\b\b\u0002\u0010\t\u001a\u00020\u0002\u0012\b\b\u0002\u0010\n\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\f\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u000e\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0010¢\u0006\u0004\b\u0012\u0010\u0013B\u0093\u0001\b\u0010\u0012\u0006\u0010\u0015\u001a\u00020\u0014\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\r\u001a\u0004\u0018\u00010\f\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\u000e\u0012\b\u0010\u0011\u001a\u0004\u0018\u00010\u0010\u0012\b\u0010\u0017\u001a\u0004\u0018\u00010\u0016¢\u0006\u0004\b\u0012\u0010\u0018¨\u0006\u001b"}, d2 = {"Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginUiModel;", "", "", "email", "firstName", "lastName", "civility", "rawNonce", "nonce", "identityToken", "displayName", "profilePicUrl", "Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;", "origin", "Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;", "entryPoint", "Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthMode;", "provider", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthMode;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthMode;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class SocialLoginUiModel {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public static final Lazy[] m;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f54183a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f54184b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f54185c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f54186e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f54187f;
    public final String g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f54188h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final String f54189i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final TrackingAuthOrigin f54190j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final TrackingAuthEntryPoint f54191k;
    public final SocialAuthMode l;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginUiModel$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginUiModel;", "serializer", "()Lkotlinx/serialization/KSerializer;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<SocialLoginUiModel> serializer() {
            return SocialLoginUiModel$$serializer.f54192a;
        }
    }

    static {
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.PUBLICATION;
        m = new Lazy[]{null, null, null, null, null, null, null, null, null, LazyKt.a(lazyThreadSafetyMode, new nw0(9)), LazyKt.a(lazyThreadSafetyMode, new nw0(10)), LazyKt.a(lazyThreadSafetyMode, new nw0(11))};
    }

    public /* synthetic */ SocialLoginUiModel(int i2, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, TrackingAuthOrigin trackingAuthOrigin, TrackingAuthEntryPoint trackingAuthEntryPoint, SocialAuthMode socialAuthMode, SerializationConstructorMarker serializationConstructorMarker) {
        if ((i2 & 1) == 0) {
            this.f54183a = "";
        } else {
            this.f54183a = str;
        }
        if ((i2 & 2) == 0) {
            this.f54184b = "";
        } else {
            this.f54184b = str2;
        }
        if ((i2 & 4) == 0) {
            this.f54185c = "";
        } else {
            this.f54185c = str3;
        }
        if ((i2 & 8) == 0) {
            this.d = "";
        } else {
            this.d = str4;
        }
        if ((i2 & 16) == 0) {
            this.f54186e = "";
        } else {
            this.f54186e = str5;
        }
        if ((i2 & 32) == 0) {
            this.f54187f = "";
        } else {
            this.f54187f = str6;
        }
        if ((i2 & 64) == 0) {
            this.g = "";
        } else {
            this.g = str7;
        }
        if ((i2 & 128) == 0) {
            this.f54188h = "";
        } else {
            this.f54188h = str8;
        }
        if ((i2 & 256) == 0) {
            this.f54189i = null;
        } else {
            this.f54189i = str9;
        }
        if ((i2 & 512) == 0) {
            this.f54190j = null;
        } else {
            this.f54190j = trackingAuthOrigin;
        }
        if ((i2 & 1024) == 0) {
            this.f54191k = null;
        } else {
            this.f54191k = trackingAuthEntryPoint;
        }
        if ((i2 & 2048) == 0) {
            this.l = null;
        } else {
            this.l = socialAuthMode;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SocialLoginUiModel)) {
            return false;
        }
        SocialLoginUiModel socialLoginUiModel = (SocialLoginUiModel) obj;
        return Intrinsics.c(this.f54183a, socialLoginUiModel.f54183a) && Intrinsics.c(this.f54184b, socialLoginUiModel.f54184b) && Intrinsics.c(this.f54185c, socialLoginUiModel.f54185c) && Intrinsics.c(this.d, socialLoginUiModel.d) && Intrinsics.c(this.f54186e, socialLoginUiModel.f54186e) && Intrinsics.c(this.f54187f, socialLoginUiModel.f54187f) && Intrinsics.c(this.g, socialLoginUiModel.g) && Intrinsics.c(this.f54188h, socialLoginUiModel.f54188h) && Intrinsics.c(this.f54189i, socialLoginUiModel.f54189i) && this.f54190j == socialLoginUiModel.f54190j && this.f54191k == socialLoginUiModel.f54191k && this.l == socialLoginUiModel.l;
    }

    public final int hashCode() {
        int iB = fc.b(fc.b(fc.b(fc.b(fc.b(fc.b(fc.b(this.f54183a.hashCode() * 31, 31, this.f54184b), 31, this.f54185c), 31, this.d), 31, this.f54186e), 31, this.f54187f), 31, this.g), 31, this.f54188h);
        String str = this.f54189i;
        int iHashCode = (iB + (str == null ? 0 : str.hashCode())) * 31;
        TrackingAuthOrigin trackingAuthOrigin = this.f54190j;
        int iHashCode2 = (iHashCode + (trackingAuthOrigin == null ? 0 : trackingAuthOrigin.hashCode())) * 31;
        TrackingAuthEntryPoint trackingAuthEntryPoint = this.f54191k;
        int iHashCode3 = (iHashCode2 + (trackingAuthEntryPoint == null ? 0 : trackingAuthEntryPoint.hashCode())) * 31;
        SocialAuthMode socialAuthMode = this.l;
        return iHashCode3 + (socialAuthMode != null ? socialAuthMode.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("SocialLoginUiModel(email=", this.f54183a, ", firstName=", this.f54184b, ", lastName=");
        cj.C(sbS, this.f54185c, ", civility=", this.d, ", rawNonce=");
        cj.C(sbS, this.f54186e, ", nonce=", this.f54187f, ", identityToken=");
        cj.C(sbS, this.g, ", displayName=", this.f54188h, ", profilePicUrl=");
        sbS.append(this.f54189i);
        sbS.append(", origin=");
        sbS.append(this.f54190j);
        sbS.append(", entryPoint=");
        sbS.append(this.f54191k);
        sbS.append(", provider=");
        sbS.append(this.l);
        sbS.append(")");
        return sbS.toString();
    }

    public SocialLoginUiModel(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, TrackingAuthOrigin trackingAuthOrigin, TrackingAuthEntryPoint trackingAuthEntryPoint, SocialAuthMode socialAuthMode) {
        pq0.z(str, str2, str3, str4, str5);
        cj.z(str6, str7, str8);
        this.f54183a = str;
        this.f54184b = str2;
        this.f54185c = str3;
        this.d = str4;
        this.f54186e = str5;
        this.f54187f = str6;
        this.g = str7;
        this.f54188h = str8;
        this.f54189i = str9;
        this.f54190j = trackingAuthOrigin;
        this.f54191k = trackingAuthEntryPoint;
        this.l = socialAuthMode;
    }

    public SocialLoginUiModel() {
        this((String) null, (String) null, (String) null, (String) null, (String) null, (String) null, (String) null, (String) null, (String) null, (TrackingAuthOrigin) null, (TrackingAuthEntryPoint) null, (SocialAuthMode) null, 4095, (DefaultConstructorMarker) null);
    }

    public /* synthetic */ SocialLoginUiModel(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, TrackingAuthOrigin trackingAuthOrigin, TrackingAuthEntryPoint trackingAuthEntryPoint, SocialAuthMode socialAuthMode, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? "" : str, (i2 & 2) != 0 ? "" : str2, (i2 & 4) != 0 ? "" : str3, (i2 & 8) != 0 ? "" : str4, (i2 & 16) != 0 ? "" : str5, (i2 & 32) != 0 ? "" : str6, (i2 & 64) != 0 ? "" : str7, (i2 & 128) != 0 ? "" : str8, (i2 & 256) != 0 ? null : str9, (i2 & 512) != 0 ? null : trackingAuthOrigin, (i2 & 1024) != 0 ? null : trackingAuthEntryPoint, (i2 & 2048) != 0 ? null : socialAuthMode);
    }
}
