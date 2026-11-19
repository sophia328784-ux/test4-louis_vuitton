package com.vuitton.android.data.dto.pdp;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.fc;
import defpackage.tr;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u000e2\u00020\u0001:\u0002\u000f\u000eB/\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0002¢\u0006\u0004\b\u0007\u0010\bBC\b\u0010\u0012\u0006\u0010\n\u001a\u00020\t\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u000b¢\u0006\u0004\b\u0007\u0010\r¨\u0006\u0010"}, d2 = {"Lcom/vuitton/android/data/dto/pdp/EditoDto;", "", "", "title", "description", "imageUrl", "cta", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class EditoDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f46202a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f46203b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f46204c;
    public final String d;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/pdp/EditoDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/pdp/EditoDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<EditoDto> serializer() {
            return EditoDto$$serializer.f46205a;
        }
    }

    public /* synthetic */ EditoDto(int i2, String str, String str2, String str3, String str4, SerializationConstructorMarker serializationConstructorMarker) {
        if (10 != (i2 & 10)) {
            PluginExceptionsKt.b(i2, 10, EditoDto$$serializer.f46205a.getF19838b());
            throw null;
        }
        if ((i2 & 1) == 0) {
            this.f46202a = null;
        } else {
            this.f46202a = str;
        }
        this.f46203b = str2;
        if ((i2 & 4) == 0) {
            this.f46204c = null;
        } else {
            this.f46204c = str3;
        }
        this.d = str4;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof EditoDto)) {
            return false;
        }
        EditoDto editoDto = (EditoDto) obj;
        return Intrinsics.c(this.f46202a, editoDto.f46202a) && Intrinsics.c(this.f46203b, editoDto.f46203b) && Intrinsics.c(this.f46204c, editoDto.f46204c) && Intrinsics.c(this.d, editoDto.d);
    }

    public final int hashCode() {
        String str = this.f46202a;
        int iB = fc.b((str == null ? 0 : str.hashCode()) * 31, 31, this.f46203b);
        String str2 = this.f46204c;
        return this.d.hashCode() + ((iB + (str2 != null ? str2.hashCode() : 0)) * 31);
    }

    public final String toString() {
        return tr.l(fc.s("EditoDto(title=", this.f46202a, ", description=", this.f46203b, ", imageUrl="), this.f46204c, ", cta=", this.d, ")");
    }

    public EditoDto(String str, String str2, String str3, String str4) {
        str2.getClass();
        str4.getClass();
        this.f46202a = str;
        this.f46203b = str2;
        this.f46204c = str3;
        this.d = str4;
    }

    public /* synthetic */ EditoDto(String str, String str2, String str3, String str4, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : str, str2, (i2 & 4) != 0 ? null : str3, str4);
    }
}
