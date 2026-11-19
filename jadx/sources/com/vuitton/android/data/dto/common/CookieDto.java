package com.vuitton.android.data.dto.common;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.cj;
import defpackage.d21;
import defpackage.fc;
import defpackage.o60;
import defpackage.pq0;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u00112\u00020\u0001:\u0002\u0012\u0011B7\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\t\u001a\u00020\u0007¢\u0006\u0004\b\n\u0010\u000bBS\b\u0010\u0012\u0006\u0010\r\u001a\u00020\f\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\t\u001a\u00020\u0007\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\u000e¢\u0006\u0004\b\n\u0010\u0010¨\u0006\u0013"}, d2 = {"Lcom/vuitton/android/data/dto/common/CookieDto;", "", "", "name", "value", "domain", "path", "", "httpOnly", "secure", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class CookieDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f45251a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f45252b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f45253c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f45254e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f45255f;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/common/CookieDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/common/CookieDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<CookieDto> serializer() {
            return CookieDto$$serializer.f45256a;
        }
    }

    public /* synthetic */ CookieDto(int i2, String str, String str2, String str3, String str4, boolean z, boolean z2, SerializationConstructorMarker serializationConstructorMarker) {
        if (63 != (i2 & 63)) {
            PluginExceptionsKt.b(i2, 63, CookieDto$$serializer.f45256a.getF19850b());
            throw null;
        }
        this.f45251a = str;
        this.f45252b = str2;
        this.f45253c = str3;
        this.d = str4;
        this.f45254e = z;
        this.f45255f = z2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CookieDto)) {
            return false;
        }
        CookieDto cookieDto = (CookieDto) obj;
        return Intrinsics.c(this.f45251a, cookieDto.f45251a) && Intrinsics.c(this.f45252b, cookieDto.f45252b) && Intrinsics.c(this.f45253c, cookieDto.f45253c) && Intrinsics.c(this.d, cookieDto.d) && this.f45254e == cookieDto.f45254e && this.f45255f == cookieDto.f45255f;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.f45255f) + o60.b(fc.b(fc.b(fc.b(this.f45251a.hashCode() * 31, 31, this.f45252b), 31, this.f45253c), 31, this.d), 31, this.f45254e);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("CookieDto(name=", this.f45251a, ", value=", this.f45252b, ", domain=");
        cj.C(sbS, this.f45253c, ", path=", this.d, ", httpOnly=");
        return pq0.p(sbS, this.f45254e, ", secure=", this.f45255f, ")");
    }

    public CookieDto(String str, String str2, String str3, String str4, boolean z, boolean z2) {
        d21.y(str, str2, str3, str4);
        this.f45251a = str;
        this.f45252b = str2;
        this.f45253c = str3;
        this.d = str4;
        this.f45254e = z;
        this.f45255f = z2;
    }
}
