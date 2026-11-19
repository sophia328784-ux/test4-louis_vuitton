package com.vuitton.android.data.dto.profile.twist;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.v;
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
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \r2\u00020\u0001:\u0002\u000e\rB\u001b\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007B/\b\u0010\u0012\u0006\u0010\t\u001a\u00020\b\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\n¢\u0006\u0004\b\u0006\u0010\f¨\u0006\u000f"}, d2 = {"Lcom/vuitton/android/data/dto/profile/twist/AccountStatusDto;", "", "Lcom/vuitton/android/data/dto/profile/twist/AccountStatusValueDto;", "status", "", "cid", "<init>", "(Lcom/vuitton/android/data/dto/profile/twist/AccountStatusValueDto;Ljava/lang/String;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILcom/vuitton/android/data/dto/profile/twist/AccountStatusValueDto;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class AccountStatusDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Lazy[] f46706c = {LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new v(15)), null};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AccountStatusValueDto f46707a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f46708b;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/profile/twist/AccountStatusDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/profile/twist/AccountStatusDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<AccountStatusDto> serializer() {
            return AccountStatusDto$$serializer.f46709a;
        }
    }

    public /* synthetic */ AccountStatusDto(int i2, AccountStatusValueDto accountStatusValueDto, String str, SerializationConstructorMarker serializationConstructorMarker) {
        if (1 != (i2 & 1)) {
            PluginExceptionsKt.b(i2, 1, AccountStatusDto$$serializer.f46709a.getF19838b());
            throw null;
        }
        this.f46707a = accountStatusValueDto;
        if ((i2 & 2) == 0) {
            this.f46708b = null;
        } else {
            this.f46708b = str;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AccountStatusDto)) {
            return false;
        }
        AccountStatusDto accountStatusDto = (AccountStatusDto) obj;
        return this.f46707a == accountStatusDto.f46707a && Intrinsics.c(this.f46708b, accountStatusDto.f46708b);
    }

    public final int hashCode() {
        int iHashCode = this.f46707a.hashCode() * 31;
        String str = this.f46708b;
        return iHashCode + (str == null ? 0 : str.hashCode());
    }

    public final String toString() {
        return "AccountStatusDto(status=" + this.f46707a + ", cid=" + this.f46708b + ")";
    }

    public AccountStatusDto(AccountStatusValueDto accountStatusValueDto, String str) {
        accountStatusValueDto.getClass();
        this.f46707a = accountStatusValueDto;
        this.f46708b = str;
    }

    public /* synthetic */ AccountStatusDto(AccountStatusValueDto accountStatusValueDto, String str, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(accountStatusValueDto, (i2 & 2) != 0 ? null : str);
    }
}
