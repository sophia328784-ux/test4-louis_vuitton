package com.vuitton.android.data.dto.connectivity.watch;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.cj;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u000e2\u00020\u0001:\u0002\u000f\u000eB'\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tBA\b\u0010\u0012\u0006\u0010\n\u001a\u00020\u0006\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u000b¢\u0006\u0004\b\b\u0010\r¨\u0006\u0010"}, d2 = {"Lcom/vuitton/android/data/dto/connectivity/watch/SendWatchEmailParamDto;", "", "", "locale", "serialNumber", "salesforceId", "", "watchVersion", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class SendWatchEmailParamDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f45655a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f45656b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f45657c;
    public final int d;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/connectivity/watch/SendWatchEmailParamDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/connectivity/watch/SendWatchEmailParamDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<SendWatchEmailParamDto> serializer() {
            return SendWatchEmailParamDto$$serializer.f45658a;
        }
    }

    public /* synthetic */ SendWatchEmailParamDto(int i2, String str, String str2, String str3, int i3, SerializationConstructorMarker serializationConstructorMarker) {
        if (15 != (i2 & 15)) {
            PluginExceptionsKt.b(i2, 15, SendWatchEmailParamDto$$serializer.f45658a.a());
            throw null;
        }
        this.f45655a = str;
        this.f45656b = str2;
        this.f45657c = str3;
        this.d = i3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SendWatchEmailParamDto)) {
            return false;
        }
        SendWatchEmailParamDto sendWatchEmailParamDto = (SendWatchEmailParamDto) obj;
        return Intrinsics.c(this.f45655a, sendWatchEmailParamDto.f45655a) && Intrinsics.c(this.f45656b, sendWatchEmailParamDto.f45656b) && Intrinsics.c(this.f45657c, sendWatchEmailParamDto.f45657c) && this.d == sendWatchEmailParamDto.d;
    }

    public final int hashCode() {
        return Integer.hashCode(this.d) + fc.b(fc.b(this.f45655a.hashCode() * 31, 31, this.f45656b), 31, this.f45657c);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("SendWatchEmailParamDto(locale=", this.f45655a, ", serialNumber=", this.f45656b, ", salesforceId=");
        sbS.append(this.f45657c);
        sbS.append(", watchVersion=");
        sbS.append(this.d);
        sbS.append(")");
        return sbS.toString();
    }

    public SendWatchEmailParamDto(String str, String str2, String str3, int i2) {
        cj.z(str, str2, str3);
        this.f45655a = str;
        this.f45656b = str2;
        this.f45657c = str3;
        this.d = i2;
    }
}
