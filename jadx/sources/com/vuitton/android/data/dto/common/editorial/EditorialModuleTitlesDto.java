package com.vuitton.android.data.dto.common.editorial;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.d21;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \f2\u00020\u0001:\u0002\r\fB\u001b\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0005\u0010\u0006B/\b\u0010\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\n\u001a\u0004\u0018\u00010\t¢\u0006\u0004\b\u0005\u0010\u000b¨\u0006\u000e"}, d2 = {"Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleTitlesDto;", "", "", "title", "surtitle", "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class EditorialModuleTitlesDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f45341a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f45342b;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleTitlesDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleTitlesDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<EditorialModuleTitlesDto> serializer() {
            return EditorialModuleTitlesDto$$serializer.f45343a;
        }
    }

    public /* synthetic */ EditorialModuleTitlesDto(int i2, String str, String str2, SerializationConstructorMarker serializationConstructorMarker) {
        if (1 != (i2 & 1)) {
            PluginExceptionsKt.b(i2, 1, EditorialModuleTitlesDto$$serializer.f45343a.a());
            throw null;
        }
        this.f45341a = str;
        if ((i2 & 2) == 0) {
            this.f45342b = null;
        } else {
            this.f45342b = str2;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof EditorialModuleTitlesDto)) {
            return false;
        }
        EditorialModuleTitlesDto editorialModuleTitlesDto = (EditorialModuleTitlesDto) obj;
        return Intrinsics.c(this.f45341a, editorialModuleTitlesDto.f45341a) && Intrinsics.c(this.f45342b, editorialModuleTitlesDto.f45342b);
    }

    public final int hashCode() {
        int iHashCode = this.f45341a.hashCode() * 31;
        String str = this.f45342b;
        return iHashCode + (str == null ? 0 : str.hashCode());
    }

    public final String toString() {
        return d21.l("EditorialModuleTitlesDto(title=", this.f45341a, ", surtitle=", this.f45342b, ")");
    }

    public EditorialModuleTitlesDto(String str, String str2) {
        str.getClass();
        this.f45341a = str;
        this.f45342b = str2;
    }

    public /* synthetic */ EditorialModuleTitlesDto(String str, String str2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i2 & 2) != 0 ? null : str2);
    }
}
