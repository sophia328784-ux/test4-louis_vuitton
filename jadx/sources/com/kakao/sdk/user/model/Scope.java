package com.kakao.sdk.user.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.batch.android.s.b;
import defpackage.a;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0016\b\u0087\b\u0018\u00002\u00020\u0001BC\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0007\u0012\u0006\u0010\n\u001a\u00020\u0007\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\u0007¢\u0006\u0004\b\f\u0010\rR\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010R\u0017\u0010\u0004\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u000e\u001a\u0004\b\u0011\u0010\u0010R\u0017\u0010\u0006\u001a\u00020\u00058\u0006¢\u0006\f\n\u0004\b\u0006\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014R\u0017\u0010\b\u001a\u00020\u00078\u0006¢\u0006\f\n\u0004\b\b\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017R\u0019\u0010\t\u001a\u0004\u0018\u00010\u00078\u0006¢\u0006\f\n\u0004\b\t\u0010\u0018\u001a\u0004\b\u0019\u0010\u001aR\u0017\u0010\n\u001a\u00020\u00078\u0006¢\u0006\f\n\u0004\b\n\u0010\u0015\u001a\u0004\b\u001b\u0010\u0017R\u0019\u0010\u000b\u001a\u0004\u0018\u00010\u00078\u0006¢\u0006\f\n\u0004\b\u000b\u0010\u0018\u001a\u0004\b\u001c\u0010\u001a¨\u0006\u001d"}, d2 = {"Lcom/kakao/sdk/user/model/Scope;", "Landroid/os/Parcelable;", "", b.a.f24015b, "displayName", "Lcom/kakao/sdk/user/model/ScopeType;", "type", "", "using", "delegated", "agreed", "revocable", "<init>", "(Ljava/lang/String;Ljava/lang/String;Lcom/kakao/sdk/user/model/ScopeType;ZLjava/lang/Boolean;ZLjava/lang/Boolean;)V", "Ljava/lang/String;", "getId", "()Ljava/lang/String;", "getDisplayName", "Lcom/kakao/sdk/user/model/ScopeType;", "getType", "()Lcom/kakao/sdk/user/model/ScopeType;", "Z", "getUsing", "()Z", "Ljava/lang/Boolean;", "getDelegated", "()Ljava/lang/Boolean;", "getAgreed", "getRevocable", "user_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final /* data */ class Scope implements Parcelable {
    public static final Parcelable.Creator<Scope> CREATOR = new Creator();
    private final boolean agreed;
    private final Boolean delegated;
    private final String displayName;
    private final String id;
    private final Boolean revocable;
    private final ScopeType type;
    private final boolean using;

    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    public static final class Creator implements Parcelable.Creator<Scope> {
        @Override // android.os.Parcelable.Creator
        public final Scope createFromParcel(Parcel parcel) {
            Boolean boolValueOf;
            boolean z;
            boolean z2;
            parcel.getClass();
            String string = parcel.readString();
            String string2 = parcel.readString();
            ScopeType scopeTypeValueOf = ScopeType.valueOf(parcel.readString());
            boolean z3 = false;
            if (parcel.readInt() != 0) {
                z3 = true;
            }
            Boolean boolValueOf2 = null;
            if (parcel.readInt() == 0) {
                boolValueOf = null;
            } else {
                boolValueOf = Boolean.valueOf(parcel.readInt() != 0 ? true : z3);
            }
            if (parcel.readInt() != 0) {
                z = true;
                z2 = true;
            } else {
                z = true;
                z2 = z3;
            }
            if (parcel.readInt() != 0) {
                boolValueOf2 = Boolean.valueOf(parcel.readInt() != 0 ? z : false);
            }
            return new Scope(string, string2, scopeTypeValueOf, z3, boolValueOf, z2, boolValueOf2);
        }

        @Override // android.os.Parcelable.Creator
        public final Scope[] newArray(int i2) {
            return new Scope[i2];
        }
    }

    public Scope(String str, String str2, ScopeType scopeType, boolean z, Boolean bool, boolean z2, Boolean bool2) {
        str.getClass();
        str2.getClass();
        scopeType.getClass();
        this.id = str;
        this.displayName = str2;
        this.type = scopeType;
        this.using = z;
        this.delegated = bool;
        this.agreed = z2;
        this.revocable = bool2;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Scope)) {
            return false;
        }
        Scope scope = (Scope) obj;
        return Intrinsics.c(this.id, scope.id) && Intrinsics.c(this.displayName, scope.displayName) && this.type == scope.type && this.using == scope.using && Intrinsics.c(this.delegated, scope.delegated) && this.agreed == scope.agreed && Intrinsics.c(this.revocable, scope.revocable);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v11 */
    /* JADX WARN: Type inference failed for: r0v12 */
    /* JADX WARN: Type inference failed for: r0v5, types: [int] */
    /* JADX WARN: Type inference failed for: r2v5, types: [int] */
    /* JADX WARN: Type inference failed for: r2v9, types: [int] */
    /* JADX WARN: Type inference failed for: r3v0 */
    /* JADX WARN: Type inference failed for: r3v1, types: [int] */
    /* JADX WARN: Type inference failed for: r3v2 */
    public final int hashCode() {
        int iHashCode = (this.type.hashCode() + fc.b(this.id.hashCode() * 31, 31, this.displayName)) * 31;
        boolean z = this.using;
        ?? r0 = z;
        if (z) {
            r0 = 1;
        }
        int i2 = (iHashCode + r0) * 31;
        Boolean bool = this.delegated;
        int iHashCode2 = (i2 + (bool == null ? 0 : bool.hashCode())) * 31;
        boolean z2 = this.agreed;
        int i3 = (iHashCode2 + (z2 ? 1 : z2)) * 31;
        Boolean bool2 = this.revocable;
        return i3 + (bool2 != null ? bool2.hashCode() : 0);
    }

    public final String toString() {
        return "Scope(id=" + this.id + ", displayName=" + this.displayName + ", type=" + this.type + ", using=" + this.using + ", delegated=" + this.delegated + ", agreed=" + this.agreed + ", revocable=" + this.revocable + ')';
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.getClass();
        parcel.writeString(this.id);
        parcel.writeString(this.displayName);
        parcel.writeString(this.type.name());
        parcel.writeInt(this.using ? 1 : 0);
        Boolean bool = this.delegated;
        if (bool == null) {
            parcel.writeInt(0);
        } else {
            a.w(parcel, 1, bool);
        }
        parcel.writeInt(this.agreed ? 1 : 0);
        Boolean bool2 = this.revocable;
        if (bool2 == null) {
            parcel.writeInt(0);
        } else {
            a.w(parcel, 1, bool2);
        }
    }
}
