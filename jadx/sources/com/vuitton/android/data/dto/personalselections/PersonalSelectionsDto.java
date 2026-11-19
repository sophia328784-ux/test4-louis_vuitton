package com.vuitton.android.data.dto.personalselections;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.ul0;
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
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \r2\u00020\u0001:\u0002\u000e\rB#\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0006\u0010\u0007B;\b\u0010\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002\u0012\u000e\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\n¢\u0006\u0004\b\u0006\u0010\f¨\u0006\u000f"}, d2 = {"Lcom/vuitton/android/data/dto/personalselections/PersonalSelectionsDto;", "", "", "Lcom/vuitton/android/data/dto/personalselections/PersonalSharingDto;", "inStore", "advisor", "<init>", "(Ljava/util/List;Ljava/util/List;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/util/List;Ljava/util/List;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class PersonalSelectionsDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Lazy[] f46320c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f46321a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f46322b;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/personalselections/PersonalSelectionsDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/personalselections/PersonalSelectionsDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<PersonalSelectionsDto> serializer() {
            return PersonalSelectionsDto$$serializer.f46323a;
        }
    }

    static {
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.PUBLICATION;
        f46320c = new Lazy[]{LazyKt.a(lazyThreadSafetyMode, new ul0(15)), LazyKt.a(lazyThreadSafetyMode, new ul0(16))};
    }

    public /* synthetic */ PersonalSelectionsDto(int i2, List list, List list2, SerializationConstructorMarker serializationConstructorMarker) {
        if (3 != (i2 & 3)) {
            PluginExceptionsKt.b(i2, 3, PersonalSelectionsDto$$serializer.f46323a.getF19838b());
            throw null;
        }
        this.f46321a = list;
        this.f46322b = list2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PersonalSelectionsDto)) {
            return false;
        }
        PersonalSelectionsDto personalSelectionsDto = (PersonalSelectionsDto) obj;
        return Intrinsics.c(this.f46321a, personalSelectionsDto.f46321a) && Intrinsics.c(this.f46322b, personalSelectionsDto.f46322b);
    }

    public final int hashCode() {
        return this.f46322b.hashCode() + (this.f46321a.hashCode() * 31);
    }

    public final String toString() {
        return "PersonalSelectionsDto(inStore=" + this.f46321a + ", advisor=" + this.f46322b + ")";
    }

    public PersonalSelectionsDto(List<PersonalSharingDto> list, List<PersonalSharingDto> list2) {
        list.getClass();
        list2.getClass();
        this.f46321a = list;
        this.f46322b = list2;
    }
}
