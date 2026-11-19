package com.vuitton.android.data.dto.connectivity.watch;

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
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \r2\u00020\u0001:\u0002\u000e\rB\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002¢\u0006\u0004\b\u0006\u0010\u0007B9\b\u0010\u0012\u0006\u0010\t\u001a\u00020\b\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\n¢\u0006\u0004\b\u0006\u0010\f¨\u0006\u000f"}, d2 = {"Lcom/vuitton/android/data/dto/connectivity/watch/PairWatchV2Dto;", "", "", "serialNumber", "iotKey", "watchPublicKey", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class PairWatchV2Dto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f45631a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f45632b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f45633c;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/connectivity/watch/PairWatchV2Dto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/connectivity/watch/PairWatchV2Dto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<PairWatchV2Dto> serializer() {
            return PairWatchV2Dto$$serializer.f45634a;
        }
    }

    public /* synthetic */ PairWatchV2Dto(int i2, String str, String str2, String str3, SerializationConstructorMarker serializationConstructorMarker) {
        if (7 != (i2 & 7)) {
            PluginExceptionsKt.b(i2, 7, PairWatchV2Dto$$serializer.f45634a.getF19850b());
            throw null;
        }
        this.f45631a = str;
        this.f45632b = str2;
        this.f45633c = str3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PairWatchV2Dto)) {
            return false;
        }
        PairWatchV2Dto pairWatchV2Dto = (PairWatchV2Dto) obj;
        return Intrinsics.c(this.f45631a, pairWatchV2Dto.f45631a) && Intrinsics.c(this.f45632b, pairWatchV2Dto.f45632b) && Intrinsics.c(this.f45633c, pairWatchV2Dto.f45633c);
    }

    public final int hashCode() {
        return this.f45633c.hashCode() + fc.b(this.f45631a.hashCode() * 31, 31, this.f45632b);
    }

    public final String toString() {
        return n00.r(this.f45633c, ")", fc.s("PairWatchV2Dto(serialNumber=", this.f45631a, ", iotKey=", this.f45632b, ", watchPublicKey="));
    }

    public PairWatchV2Dto(String str, String str2, String str3) {
        cj.z(str, str2, str3);
        this.f45631a = str;
        this.f45632b = str2;
        this.f45633c = str3;
    }
}
