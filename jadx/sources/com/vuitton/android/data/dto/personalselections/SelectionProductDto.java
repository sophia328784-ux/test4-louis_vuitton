package com.vuitton.android.data.dto.personalselections;

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
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u000f2\u00020\u0001:\u0002\u0010\u000fB+\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\b\u0010\tBC\b\u0010\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\r\u001a\u0004\u0018\u00010\f¢\u0006\u0004\b\b\u0010\u000e¨\u0006\u0011"}, d2 = {"Lcom/vuitton/android/data/dto/personalselections/SelectionProductDto;", "", "", "sku", "name", "imageURL", "Lcom/vuitton/android/data/dto/personalselections/SelectionProductInteractionDto;", "interaction", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/personalselections/SelectionProductInteractionDto;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/personalselections/SelectionProductInteractionDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class SelectionProductDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f46338a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f46339b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f46340c;
    public final SelectionProductInteractionDto d;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/personalselections/SelectionProductDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/personalselections/SelectionProductDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<SelectionProductDto> serializer() {
            return SelectionProductDto$$serializer.f46341a;
        }
    }

    public /* synthetic */ SelectionProductDto(int i2, String str, String str2, String str3, SelectionProductInteractionDto selectionProductInteractionDto, SerializationConstructorMarker serializationConstructorMarker) {
        if (7 != (i2 & 7)) {
            PluginExceptionsKt.b(i2, 7, SelectionProductDto$$serializer.f46341a.getF19838b());
            throw null;
        }
        this.f46338a = str;
        this.f46339b = str2;
        this.f46340c = str3;
        if ((i2 & 8) == 0) {
            this.d = null;
        } else {
            this.d = selectionProductInteractionDto;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SelectionProductDto)) {
            return false;
        }
        SelectionProductDto selectionProductDto = (SelectionProductDto) obj;
        return Intrinsics.c(this.f46338a, selectionProductDto.f46338a) && Intrinsics.c(this.f46339b, selectionProductDto.f46339b) && Intrinsics.c(this.f46340c, selectionProductDto.f46340c) && Intrinsics.c(this.d, selectionProductDto.d);
    }

    public final int hashCode() {
        int iB = fc.b(fc.b(this.f46338a.hashCode() * 31, 31, this.f46339b), 31, this.f46340c);
        SelectionProductInteractionDto selectionProductInteractionDto = this.d;
        return iB + (selectionProductInteractionDto == null ? 0 : selectionProductInteractionDto.hashCode());
    }

    public final String toString() {
        StringBuilder sbS = fc.s("SelectionProductDto(sku=", this.f46338a, ", name=", this.f46339b, ", imageURL=");
        sbS.append(this.f46340c);
        sbS.append(", interaction=");
        sbS.append(this.d);
        sbS.append(")");
        return sbS.toString();
    }

    public SelectionProductDto(String str, String str2, String str3, SelectionProductInteractionDto selectionProductInteractionDto) {
        cj.z(str, str2, str3);
        this.f46338a = str;
        this.f46339b = str2;
        this.f46340c = str3;
        this.d = selectionProductInteractionDto;
    }

    public /* synthetic */ SelectionProductDto(String str, String str2, String str3, SelectionProductInteractionDto selectionProductInteractionDto, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, str3, (i2 & 8) != 0 ? null : selectionProductInteractionDto);
    }
}
