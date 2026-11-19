package com.kakao.sdk.user.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.batch.android.s.b;
import defpackage.pq0;
import defpackage.tr;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\n\b\u0087\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u000e\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004¢\u0006\u0004\b\u0007\u0010\bR\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\t\u001a\u0004\b\n\u0010\u000bR\u001f\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u00048\u0006¢\u0006\f\n\u0004\b\u0006\u0010\f\u001a\u0004\b\r\u0010\u000e¨\u0006\u000f"}, d2 = {"Lcom/kakao/sdk/user/model/ScopeInfo;", "Landroid/os/Parcelable;", "", b.a.f24015b, "", "Lcom/kakao/sdk/user/model/Scope;", "scopes", "<init>", "(JLjava/util/List;)V", "J", "getId", "()J", "Ljava/util/List;", "getScopes", "()Ljava/util/List;", "user_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final /* data */ class ScopeInfo implements Parcelable {
    public static final Parcelable.Creator<ScopeInfo> CREATOR = new Creator();
    private final long id;
    private final List<Scope> scopes;

    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    public static final class Creator implements Parcelable.Creator<ScopeInfo> {
        @Override // android.os.Parcelable.Creator
        public final ScopeInfo createFromParcel(Parcel parcel) {
            ArrayList arrayList;
            parcel.getClass();
            long j2 = parcel.readLong();
            if (parcel.readInt() == 0) {
                arrayList = null;
            } else {
                int i2 = parcel.readInt();
                ArrayList arrayList2 = new ArrayList(i2);
                int iD = 0;
                while (iD != i2) {
                    iD = pq0.d(Scope.CREATOR, parcel, arrayList2, iD, 1);
                }
                arrayList = arrayList2;
            }
            return new ScopeInfo(j2, arrayList);
        }

        @Override // android.os.Parcelable.Creator
        public final ScopeInfo[] newArray(int i2) {
            return new ScopeInfo[i2];
        }
    }

    public ScopeInfo(long j2, List<Scope> list) {
        this.id = j2;
        this.scopes = list;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ScopeInfo)) {
            return false;
        }
        ScopeInfo scopeInfo = (ScopeInfo) obj;
        return this.id == scopeInfo.id && Intrinsics.c(this.scopes, scopeInfo.scopes);
    }

    public final int hashCode() {
        int iHashCode = Long.hashCode(this.id) * 31;
        List<Scope> list = this.scopes;
        return iHashCode + (list == null ? 0 : list.hashCode());
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("ScopeInfo(id=");
        sb.append(this.id);
        sb.append(", scopes=");
        return tr.m(sb, this.scopes, ')');
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.getClass();
        parcel.writeLong(this.id);
        List<Scope> list = this.scopes;
        if (list == null) {
            parcel.writeInt(0);
            return;
        }
        parcel.writeInt(1);
        parcel.writeInt(list.size());
        Iterator<Scope> it = list.iterator();
        while (it.hasNext()) {
            it.next().writeToParcel(parcel, i2);
        }
    }
}
