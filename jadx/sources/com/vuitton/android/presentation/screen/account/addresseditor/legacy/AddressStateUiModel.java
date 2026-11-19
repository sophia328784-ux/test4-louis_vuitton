package com.vuitton.android.presentation.screen.account.addresseditor.legacy;

import android.os.Parcel;
import android.os.Parcelable;
import com.networkbench.nbslens.nbsnativecrashlib.m;
import defpackage.d21;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \f2\u00020\u0001:\u0002\r\fB\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006B/\b\u0010\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\n\u001a\u0004\u0018\u00010\t¢\u0006\u0004\b\u0005\u0010\u000b¨\u0006\u000e"}, d2 = {"Lcom/vuitton/android/presentation/screen/account/addresseditor/legacy/AddressStateUiModel;", "Landroid/os/Parcelable;", "", m.v, "name", "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class AddressStateUiModel implements Parcelable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f52260b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f52261c;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public static final Parcelable.Creator<AddressStateUiModel> CREATOR = new Creator();

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/account/addresseditor/legacy/AddressStateUiModel$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/presentation/screen/account/addresseditor/legacy/AddressStateUiModel;", "serializer", "()Lkotlinx/serialization/KSerializer;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<AddressStateUiModel> serializer() {
            return AddressStateUiModel$$serializer.f52262a;
        }
    }

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final class Creator implements Parcelable.Creator<AddressStateUiModel> {
        @Override // android.os.Parcelable.Creator
        public final AddressStateUiModel createFromParcel(Parcel parcel) {
            parcel.getClass();
            return new AddressStateUiModel(parcel.readString(), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        public final AddressStateUiModel[] newArray(int i2) {
            return new AddressStateUiModel[i2];
        }
    }

    public /* synthetic */ AddressStateUiModel(int i2, String str, String str2, SerializationConstructorMarker serializationConstructorMarker) {
        if (3 != (i2 & 3)) {
            PluginExceptionsKt.b(i2, 3, AddressStateUiModel$$serializer.f52262a.a());
            throw null;
        }
        this.f52260b = str;
        this.f52261c = str2;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AddressStateUiModel)) {
            return false;
        }
        AddressStateUiModel addressStateUiModel = (AddressStateUiModel) obj;
        return Intrinsics.c(this.f52260b, addressStateUiModel.f52260b) && Intrinsics.c(this.f52261c, addressStateUiModel.f52261c);
    }

    public final int hashCode() {
        return this.f52261c.hashCode() + (this.f52260b.hashCode() * 31);
    }

    public final String toString() {
        return d21.l("AddressStateUiModel(code=", this.f52260b, ", name=", this.f52261c, ")");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.getClass();
        parcel.writeString(this.f52260b);
        parcel.writeString(this.f52261c);
    }

    public AddressStateUiModel(String str, String str2) {
        str.getClass();
        str2.getClass();
        this.f52260b = str;
        this.f52261c = str2;
    }
}
