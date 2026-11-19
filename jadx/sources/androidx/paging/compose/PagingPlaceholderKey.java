package androidx.paging.compose;

import android.os.Parcel;
import android.os.Parcelable;
import defpackage.tr;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0005\b\u0083\b\u0018\u00002\u00020\u0001:\u0001\u0006B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0007"}, d2 = {"Landroidx/paging/compose/PagingPlaceholderKey;", "Landroid/os/Parcelable;", "", "index", "<init>", "(I)V", "Companion", "paging-compose_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
final /* data */ class PagingPlaceholderKey implements Parcelable {
    public static final Parcelable.Creator<PagingPlaceholderKey> CREATOR;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f19016b;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/paging/compose/PagingPlaceholderKey$Companion;", "", "paging-compose_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
        CREATOR = new PagingPlaceholderKey$Companion$CREATOR$1();
    }

    public PagingPlaceholderKey(int i2) {
        this.f19016b = i2;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof PagingPlaceholderKey) && this.f19016b == ((PagingPlaceholderKey) obj).f19016b;
    }

    public final int hashCode() {
        return Integer.hashCode(this.f19016b);
    }

    public final String toString() {
        return tr.k(new StringBuilder("PagingPlaceholderKey(index="), this.f19016b, ')');
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.getClass();
        parcel.writeInt(this.f19016b);
    }
}
