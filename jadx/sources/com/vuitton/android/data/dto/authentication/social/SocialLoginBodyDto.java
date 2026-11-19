package com.vuitton.android.data.dto.authentication.social;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.cj;
import defpackage.fc;
import defpackage.n00;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \r2\u00020\u0001:\u0002\u000e\rB!\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002¢\u0006\u0004\b\u0006\u0010\u0007B9\b\u0010\u0012\u0006\u0010\t\u001a\u00020\b\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\n¢\u0006\u0004\b\u0006\u0010\f¨\u0006\u000f"}, d2 = {"Lcom/vuitton/android/data/dto/authentication/social/SocialLoginBodyDto;", "", "", "identityToken", "authorizationCode", "rawNonce", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class SocialLoginBodyDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f44599a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f44600b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f44601c;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/authentication/social/SocialLoginBodyDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/authentication/social/SocialLoginBodyDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<SocialLoginBodyDto> serializer() {
            return SocialLoginBodyDto$$serializer.f44602a;
        }
    }

    public /* synthetic */ SocialLoginBodyDto(int i2, String str, String str2, String str3, SerializationConstructorMarker serializationConstructorMarker) {
        if (5 != (i2 & 5)) {
            PluginExceptionsKt.b(i2, 5, SocialLoginBodyDto$$serializer.f44602a.getF19838b());
            throw null;
        }
        this.f44599a = str;
        if ((i2 & 2) == 0) {
            this.f44600b = " ";
        } else {
            this.f44600b = str2;
        }
        this.f44601c = str3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SocialLoginBodyDto)) {
            return false;
        }
        SocialLoginBodyDto socialLoginBodyDto = (SocialLoginBodyDto) obj;
        return Intrinsics.c(this.f44599a, socialLoginBodyDto.f44599a) && Intrinsics.c(this.f44600b, socialLoginBodyDto.f44600b) && Intrinsics.c(this.f44601c, socialLoginBodyDto.f44601c);
    }

    public final int hashCode() {
        return this.f44601c.hashCode() + fc.b(this.f44599a.hashCode() * 31, 31, this.f44600b);
    }

    public final String toString() {
        return n00.r(this.f44601c, ")", fc.s("SocialLoginBodyDto(identityToken=", this.f44599a, ", authorizationCode=", this.f44600b, ", rawNonce="));
    }

    public SocialLoginBodyDto(String str, String str2, String str3) {
        cj.z(str, str2, str3);
        this.f44599a = str;
        this.f44600b = str2;
        this.f44601c = str3;
    }

    public /* synthetic */ SocialLoginBodyDto(String str, String str2, String str3, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i2 & 2) != 0 ? " " : str2, str3);
    }
}
