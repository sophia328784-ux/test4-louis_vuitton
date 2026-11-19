package com.vuitton.android.data.dto.legal;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.c70;
import defpackage.cj;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.collections.EmptyList;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u000e2\u00020\u0001:\u0002\u000f\u000eB\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u000e\b\u0002\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\u0004\b\u0007\u0010\bB5\b\u0010\u0012\u0006\u0010\n\u001a\u00020\t\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u000e\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u000b¢\u0006\u0004\b\u0007\u0010\r¨\u0006\u0010"}, d2 = {"Lcom/vuitton/android/data/dto/legal/LegalConsentDto;", "", "", "description", "", "Lcom/vuitton/android/data/dto/legal/ConsentRequirementDto;", "requirements", "<init>", "(Ljava/lang/String;Ljava/util/List;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Ljava/util/List;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class LegalConsentDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Lazy[] f45989c = {null, LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new c70(15))};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f45990a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f45991b;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/legal/LegalConsentDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/legal/LegalConsentDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<LegalConsentDto> serializer() {
            return LegalConsentDto$$serializer.f45992a;
        }
    }

    public LegalConsentDto(int i2, String str, List list, SerializationConstructorMarker serializationConstructorMarker) {
        if (1 != (i2 & 1)) {
            PluginExceptionsKt.b(i2, 1, LegalConsentDto$$serializer.f45992a.a());
            throw null;
        }
        this.f45990a = str;
        if ((i2 & 2) == 0) {
            this.f45991b = EmptyList.f71768b;
        } else {
            this.f45991b = list;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof LegalConsentDto)) {
            return false;
        }
        LegalConsentDto legalConsentDto = (LegalConsentDto) obj;
        return Intrinsics.c(this.f45990a, legalConsentDto.f45990a) && Intrinsics.c(this.f45991b, legalConsentDto.f45991b);
    }

    public final int hashCode() {
        return this.f45991b.hashCode() + (this.f45990a.hashCode() * 31);
    }

    public final String toString() {
        return cj.k("LegalConsentDto(description=", this.f45990a, ", requirements=", this.f45991b, ")");
    }

    public LegalConsentDto(String str, List<ConsentRequirementDto> list) {
        str.getClass();
        list.getClass();
        this.f45990a = str;
        this.f45991b = list;
    }

    public LegalConsentDto(String str, List list, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i2 & 2) != 0 ? EmptyList.f71768b : list);
    }
}
