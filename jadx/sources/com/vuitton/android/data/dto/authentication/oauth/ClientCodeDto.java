package com.vuitton.android.data.dto.authentication.oauth;

import com.networkbench.nbslens.nbsnativecrashlib.m;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.fc;
import defpackage.tr;
import java.util.UUID;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u000f2\u00020\u0001:\u0002\u0010\u000fB+\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\b\u0010\tBC\b\u0010\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\r\u001a\u0004\u0018\u00010\f¢\u0006\u0004\b\b\u0010\u000e¨\u0006\u0011"}, d2 = {"Lcom/vuitton/android/data/dto/authentication/oauth/ClientCodeDto;", "", "", "codeVerifier", "Ljava/util/UUID;", "uniqueState", m.v, "guestSlasAccessToken", "<init>", "(Ljava/lang/String;Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class ClientCodeDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f44564a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final UUID f44565b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f44566c;
    public final String d;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/authentication/oauth/ClientCodeDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/authentication/oauth/ClientCodeDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<ClientCodeDto> serializer() {
            return ClientCodeDto$$serializer.f44567a;
        }
    }

    public /* synthetic */ ClientCodeDto(int i2, String str, UUID uuid, String str2, String str3, SerializationConstructorMarker serializationConstructorMarker) {
        if (7 != (i2 & 7)) {
            PluginExceptionsKt.b(i2, 7, ClientCodeDto$$serializer.f44567a.getF19838b());
            throw null;
        }
        this.f44564a = str;
        this.f44565b = uuid;
        this.f44566c = str2;
        if ((i2 & 8) == 0) {
            this.d = null;
        } else {
            this.d = str3;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ClientCodeDto)) {
            return false;
        }
        ClientCodeDto clientCodeDto = (ClientCodeDto) obj;
        return Intrinsics.c(this.f44564a, clientCodeDto.f44564a) && Intrinsics.c(this.f44565b, clientCodeDto.f44565b) && Intrinsics.c(this.f44566c, clientCodeDto.f44566c) && Intrinsics.c(this.d, clientCodeDto.d);
    }

    public final int hashCode() {
        int iB = fc.b((this.f44565b.hashCode() + (this.f44564a.hashCode() * 31)) * 31, 31, this.f44566c);
        String str = this.d;
        return iB + (str == null ? 0 : str.hashCode());
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("ClientCodeDto(codeVerifier=");
        sb.append(this.f44564a);
        sb.append(", uniqueState=");
        sb.append(this.f44565b);
        sb.append(", code=");
        return tr.l(sb, this.f44566c, ", guestSlasAccessToken=", this.d, ")");
    }

    public ClientCodeDto(String str, UUID uuid, String str2, String str3) {
        str.getClass();
        uuid.getClass();
        str2.getClass();
        this.f44564a = str;
        this.f44565b = uuid;
        this.f44566c = str2;
        this.d = str3;
    }

    public /* synthetic */ ClientCodeDto(String str, UUID uuid, String str2, String str3, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, uuid, str2, (i2 & 8) != 0 ? null : str3);
    }
}
