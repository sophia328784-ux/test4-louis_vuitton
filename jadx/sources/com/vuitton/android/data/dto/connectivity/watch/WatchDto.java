package com.vuitton.android.data.dto.connectivity.watch;

import com.batch.android.s.b;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.foundation.model.domain.model.product.SkuId;
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
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u00122\u00020\u0001:\u0002\u0013\u0012BW\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u000b\u0010\fBa\b\u0010\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\t\u001a\u0004\u0018\u00010\b\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0010\u001a\u0004\u0018\u00010\u000f¢\u0006\u0004\b\u000b\u0010\u0011¨\u0006\u0014"}, d2 = {"Lcom/vuitton/android/data/dto/connectivity/watch/WatchDto;", "", "", b.a.f24015b, "iotKey", "serialNumber", "desc", "name", "Lcom/vuitton/foundation/model/domain/model/product/SkuId;", "sku", "watchVersion", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class WatchDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f45661a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f45662b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f45663c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f45664e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f45665f;
    public final String g;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/connectivity/watch/WatchDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/connectivity/watch/WatchDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<WatchDto> serializer() {
            return WatchDto$$serializer.f45666a;
        }
    }

    public /* synthetic */ WatchDto(int i2, String str, String str2, String str3, String str4, String str5, String str6, String str7, SerializationConstructorMarker serializationConstructorMarker, DefaultConstructorMarker defaultConstructorMarker) {
        if (4 != (i2 & 4)) {
            PluginExceptionsKt.b(i2, 4, WatchDto$$serializer.f45666a.a());
            throw null;
        }
        if ((i2 & 1) == 0) {
            this.f45661a = null;
        } else {
            this.f45661a = str;
        }
        if ((i2 & 2) == 0) {
            this.f45662b = null;
        } else {
            this.f45662b = str2;
        }
        this.f45663c = str3;
        if ((i2 & 8) == 0) {
            this.d = null;
        } else {
            this.d = str4;
        }
        if ((i2 & 16) == 0) {
            this.f45664e = null;
        } else {
            this.f45664e = str5;
        }
        if ((i2 & 32) == 0) {
            this.f45665f = null;
        } else {
            this.f45665f = str6;
        }
        if ((i2 & 64) == 0) {
            this.g = null;
        } else {
            this.g = str7;
        }
    }

    /* JADX WARN: Code duplicated, block: B:27:0x004d  */
    public final boolean equals(Object obj) {
        boolean zC;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof WatchDto)) {
            return false;
        }
        WatchDto watchDto = (WatchDto) obj;
        if (!Intrinsics.c(this.f45661a, watchDto.f45661a) || !Intrinsics.c(this.f45662b, watchDto.f45662b) || !Intrinsics.c(this.f45663c, watchDto.f45663c) || !Intrinsics.c(this.d, watchDto.d) || !Intrinsics.c(this.f45664e, watchDto.f45664e)) {
            return false;
        }
        String str = watchDto.f45665f;
        String str2 = this.f45665f;
        if (str2 == null) {
            if (str == null) {
                zC = true;
            } else {
                zC = false;
            }
        } else if (str == null) {
            zC = false;
        } else {
            SkuId.Companion companion = SkuId.INSTANCE;
            zC = Intrinsics.c(str2, str);
        }
        return zC && Intrinsics.c(this.g, watchDto.g);
    }

    public final int hashCode() {
        int iHashCode;
        String str = this.f45661a;
        int iHashCode2 = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.f45662b;
        int iB = fc.b((iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31, 31, this.f45663c);
        String str3 = this.d;
        int iHashCode3 = (iB + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.f45664e;
        int iHashCode4 = (iHashCode3 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.f45665f;
        if (str5 == null) {
            iHashCode = 0;
        } else {
            SkuId.Companion companion = SkuId.INSTANCE;
            iHashCode = str5.hashCode();
        }
        int i2 = (iHashCode4 + iHashCode) * 31;
        String str6 = this.g;
        return i2 + (str6 != null ? str6.hashCode() : 0);
    }

    public final String toString() {
        String str = this.f45665f;
        if (str == null) {
            str = "null";
        } else {
            SkuId.Companion companion = SkuId.INSTANCE;
        }
        StringBuilder sbS = fc.s("WatchDto(id=", this.f45661a, ", iotKey=", this.f45662b, ", serialNumber=");
        cj.C(sbS, this.f45663c, ", desc=", this.d, ", name=");
        cj.C(sbS, this.f45664e, ", sku=", str, ", watchVersion=");
        return n00.r(this.g, ")", sbS);
    }

    public WatchDto(String str, String str2, String str3, String str4, String str5, String str6, String str7, DefaultConstructorMarker defaultConstructorMarker) {
        str3.getClass();
        this.f45661a = str;
        this.f45662b = str2;
        this.f45663c = str3;
        this.d = str4;
        this.f45664e = str5;
        this.f45665f = str6;
        this.g = str7;
    }

    public /* synthetic */ WatchDto(String str, String str2, String str3, String str4, String str5, String str6, String str7, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : str, (i2 & 2) != 0 ? null : str2, str3, (i2 & 8) != 0 ? null : str4, (i2 & 16) != 0 ? null : str5, (i2 & 32) != 0 ? null : str6, (i2 & 64) != 0 ? null : str7, null);
    }
}
