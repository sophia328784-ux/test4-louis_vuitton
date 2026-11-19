package com.vuitton.android.data.dto.common.editorial;

import com.batch.android.s.b;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u0000 \t2\u00020\u0001:\u0001\tB\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\b¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/common/editorial/EditorialSectionDto;", "", "", b.a.f24015b, "type", "Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto;", DbParams.KEY_DATA, "<init>", "(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto;)V", "Companion"}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable(with = EditorialSectionDtoSerializer.class)
public final /* data */ class EditorialSectionDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f45344a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f45345b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final EditorialModuleDto f45346c;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/common/editorial/EditorialSectionDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/common/editorial/EditorialSectionDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<EditorialSectionDto> serializer() {
            return EditorialSectionDtoSerializer.f45347a;
        }
    }

    public EditorialSectionDto(String str, String str2, EditorialModuleDto editorialModuleDto) {
        str.getClass();
        str2.getClass();
        editorialModuleDto.getClass();
        this.f45344a = str;
        this.f45345b = str2;
        this.f45346c = editorialModuleDto;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof EditorialSectionDto)) {
            return false;
        }
        EditorialSectionDto editorialSectionDto = (EditorialSectionDto) obj;
        return Intrinsics.c(this.f45344a, editorialSectionDto.f45344a) && Intrinsics.c(this.f45345b, editorialSectionDto.f45345b) && Intrinsics.c(this.f45346c, editorialSectionDto.f45346c);
    }

    public final int hashCode() {
        return this.f45346c.hashCode() + fc.b(this.f45344a.hashCode() * 31, 31, this.f45345b);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("EditorialSectionDto(id=", this.f45344a, ", type=", this.f45345b, ", data=");
        sbS.append(this.f45346c);
        sbS.append(")");
        return sbS.toString();
    }
}
