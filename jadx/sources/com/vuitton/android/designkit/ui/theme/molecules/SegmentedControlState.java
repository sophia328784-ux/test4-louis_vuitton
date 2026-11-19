package com.vuitton.android.designkit.ui.theme.molecules;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.compose.runtime.MutableIntState;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotIntStateKt;
import androidx.compose.runtime.SnapshotMutableIntStateImpl;
import androidx.compose.runtime.SnapshotStateKt;
import defpackage.md;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\b\u0007\u0018\u00002\u00020\u0001:\u0002\t\nB\u001d\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\b¨\u0006\u000b"}, d2 = {"Lcom/vuitton/android/designkit/ui/theme/molecules/SegmentedControlState;", "", "", "", "labels", "", "initialIndex", "<init>", "(Ljava/util/List;I)V", "SegmentedControlStateBundle", "Companion", "system"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class SegmentedControlState {
    public static final Companion d = new Companion(null);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final SegmentedControlState$Companion$Saver$1 f48697e = new SegmentedControlState$Companion$Saver$1();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f48698a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final MutableIntState f48699b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final MutableState f48700c;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/designkit/ui/theme/molecules/SegmentedControlState$Companion;", "", "system"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0081\b\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/vuitton/android/designkit/ui/theme/molecules/SegmentedControlState$SegmentedControlStateBundle;", "Landroid/os/Parcelable;", "", "currentIndex", "", "", "labels", "<init>", "(ILjava/util/List;)V", "system"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class SegmentedControlStateBundle implements Parcelable {
        public static final Parcelable.Creator<SegmentedControlStateBundle> CREATOR = new Creator();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f48701b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final List f48702c;

        @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
        public static final class Creator implements Parcelable.Creator<SegmentedControlStateBundle> {
            @Override // android.os.Parcelable.Creator
            public final SegmentedControlStateBundle createFromParcel(Parcel parcel) {
                parcel.getClass();
                return new SegmentedControlStateBundle(parcel.readInt(), parcel.createStringArrayList());
            }

            @Override // android.os.Parcelable.Creator
            public final SegmentedControlStateBundle[] newArray(int i2) {
                return new SegmentedControlStateBundle[i2];
            }
        }

        public SegmentedControlStateBundle(int i2, List<String> list) {
            list.getClass();
            this.f48701b = i2;
            this.f48702c = list;
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof SegmentedControlStateBundle)) {
                return false;
            }
            SegmentedControlStateBundle segmentedControlStateBundle = (SegmentedControlStateBundle) obj;
            return this.f48701b == segmentedControlStateBundle.f48701b && Intrinsics.c(this.f48702c, segmentedControlStateBundle.f48702c);
        }

        public final int hashCode() {
            return this.f48702c.hashCode() + (Integer.hashCode(this.f48701b) * 31);
        }

        public final String toString() {
            return "SegmentedControlStateBundle(currentIndex=" + this.f48701b + ", labels=" + this.f48702c + ")";
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i2) {
            parcel.getClass();
            parcel.writeInt(this.f48701b);
            parcel.writeStringList(this.f48702c);
        }
    }

    public SegmentedControlState(List<String> list, int i2) {
        list.getClass();
        this.f48698a = list;
        if (i2 < 0 || i2 >= list.size()) {
            md.n("Failed requirement.");
            throw null;
        }
        this.f48699b = SnapshotIntStateKt.a(i2);
        this.f48700c = SnapshotStateKt.g(null);
    }

    public final int a() {
        return ((SnapshotMutableIntStateImpl) this.f48699b).f();
    }

    public final void b(int i2) {
        if (i2 < 0 || i2 >= this.f48698a.size()) {
            return;
        }
        ((SnapshotMutableIntStateImpl) this.f48699b).i(i2);
    }
}
