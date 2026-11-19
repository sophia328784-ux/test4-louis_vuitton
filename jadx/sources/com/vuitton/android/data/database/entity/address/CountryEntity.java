package com.vuitton.android.data.database.entity.address;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
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
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \r2\u00020\u0001:\u0002\u000e\rB#\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0006\u0010\u0007B9\b\u0010\u0012\u0006\u0010\t\u001a\u00020\b\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\n¢\u0006\u0004\b\u0006\u0010\f¨\u0006\u000f"}, d2 = {"Lcom/vuitton/android/data/database/entity/address/CountryEntity;", "", "", "regionCodeIso31661Alpha2", "name", "prefix", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class CountryEntity {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f43586a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f43587b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f43588c;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/database/entity/address/CountryEntity$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/database/entity/address/CountryEntity;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<CountryEntity> serializer() {
            return CountryEntity$$serializer.f43589a;
        }
    }

    public /* synthetic */ CountryEntity(int i2, String str, String str2, String str3, SerializationConstructorMarker serializationConstructorMarker) {
        if (3 != (i2 & 3)) {
            PluginExceptionsKt.b(i2, 3, CountryEntity$$serializer.f43589a.getF19838b());
            throw null;
        }
        this.f43586a = str;
        this.f43587b = str2;
        if ((i2 & 4) == 0) {
            this.f43588c = null;
        } else {
            this.f43588c = str3;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CountryEntity)) {
            return false;
        }
        CountryEntity countryEntity = (CountryEntity) obj;
        return Intrinsics.c(this.f43586a, countryEntity.f43586a) && Intrinsics.c(this.f43587b, countryEntity.f43587b) && Intrinsics.c(this.f43588c, countryEntity.f43588c);
    }

    public final int hashCode() {
        int iB = fc.b(this.f43586a.hashCode() * 31, 31, this.f43587b);
        String str = this.f43588c;
        return iB + (str == null ? 0 : str.hashCode());
    }

    public final String toString() {
        return n00.r(this.f43588c, ")", fc.s("CountryEntity(regionCodeIso31661Alpha2=", this.f43586a, ", name=", this.f43587b, ", prefix="));
    }

    public CountryEntity(String str, String str2, String str3) {
        str.getClass();
        str2.getClass();
        this.f43586a = str;
        this.f43587b = str2;
        this.f43588c = str3;
    }

    public /* synthetic */ CountryEntity(String str, String str2, String str3, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, (i2 & 4) != 0 ? null : str3);
    }
}
