package com.vuitton.android.data.dto.config;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.d21;
import defpackage.v;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u000e2\u00020\u0001:\u0002\u000f\u000eB+\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u000e\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\b\u0010\tB?\b\u0010\u0012\u0006\u0010\n\u001a\u00020\u0006\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u000e\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u000b¢\u0006\u0004\b\b\u0010\r¨\u0006\u0010"}, d2 = {"Lcom/vuitton/android/data/dto/config/AbTestDto;", "", "", "campaignKey", "", "featureFlagList", "", "percentage", "<init>", "(Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;)V", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Ljava/util/List;Ljava/lang/Integer;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class AbTestDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public static final Lazy[] d = {null, LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new v(11)), null};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f45374a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f45375b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Integer f45376c;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/config/AbTestDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/config/AbTestDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<AbTestDto> serializer() {
            return AbTestDto$$serializer.f45377a;
        }
    }

    public /* synthetic */ AbTestDto(int i2, String str, List list, Integer num, SerializationConstructorMarker serializationConstructorMarker) {
        if (7 != (i2 & 7)) {
            PluginExceptionsKt.b(i2, 7, AbTestDto$$serializer.f45377a.getF19838b());
            throw null;
        }
        this.f45374a = str;
        this.f45375b = list;
        this.f45376c = num;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AbTestDto)) {
            return false;
        }
        AbTestDto abTestDto = (AbTestDto) obj;
        return Intrinsics.c(this.f45374a, abTestDto.f45374a) && Intrinsics.c(this.f45375b, abTestDto.f45375b) && Intrinsics.c(this.f45376c, abTestDto.f45376c);
    }

    public final int hashCode() {
        String str = this.f45374a;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        List list = this.f45375b;
        int iHashCode2 = (iHashCode + (list == null ? 0 : list.hashCode())) * 31;
        Integer num = this.f45376c;
        return iHashCode2 + (num != null ? num.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sbT = d21.t("AbTestDto(campaignKey=", this.f45374a, ", featureFlagList=", this.f45375b, ", percentage=");
        sbT.append(this.f45376c);
        sbT.append(")");
        return sbT.toString();
    }

    public AbTestDto(String str, List<String> list, Integer num) {
        this.f45374a = str;
        this.f45375b = list;
        this.f45376c = num;
    }
}
