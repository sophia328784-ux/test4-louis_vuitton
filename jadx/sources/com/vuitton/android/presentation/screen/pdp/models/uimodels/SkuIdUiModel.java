package com.vuitton.android.presentation.screen.pdp.models.uimodels;

import android.os.Parcel;
import android.os.Parcelable;
import com.batch.android.s.b;
import com.vuitton.foundation.model.domain.model.product.SkuId;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.JvmInline;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\b\u0087@\u0018\u00002\u00020\u0001:\u0001\u0002\u0088\u0001\u0003\u0092\u0001\u00020\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;", "Landroid/os/Parcelable;", "Companion", b.a.f24015b, "", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
@JvmInline
public final class SkuIdUiModel implements Parcelable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f61764b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Companion f61763c = new Companion(null);
    public static final Parcelable.Creator<SkuIdUiModel> CREATOR = new Creator();
    public static final String d = "";

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;", "", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public static ArrayList a(List list) {
            list.getClass();
            List list2 = list;
            ArrayList arrayList = new ArrayList(CollectionsKt.t(list2, 10));
            Iterator it = list2.iterator();
            while (it.hasNext()) {
                String str = ((SkuIdUiModel) it.next()).f61764b;
                SkuIdUiModel.f61763c.getClass();
                b(str);
                arrayList.add(new SkuId(str));
            }
            return arrayList;
        }

        public static void b(String str) {
            str.getClass();
            SkuId.Companion companion = SkuId.INSTANCE;
        }

        public static void c(String str) {
            str.getClass();
            Companion companion = SkuIdUiModel.f61763c;
        }
    }

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final class Creator implements Parcelable.Creator<SkuIdUiModel> {
        @Override // android.os.Parcelable.Creator
        public final SkuIdUiModel createFromParcel(Parcel parcel) {
            parcel.getClass();
            String string = parcel.readString();
            Companion companion = SkuIdUiModel.f61763c;
            string.getClass();
            return new SkuIdUiModel(string);
        }

        @Override // android.os.Parcelable.Creator
        public final SkuIdUiModel[] newArray(int i2) {
            return new SkuIdUiModel[i2];
        }
    }

    public /* synthetic */ SkuIdUiModel(String str) {
        this.f61764b = str;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof SkuIdUiModel) {
            return Intrinsics.c(this.f61764b, ((SkuIdUiModel) obj).f61764b);
        }
        return false;
    }

    public final int hashCode() {
        return this.f61764b.hashCode();
    }

    /* JADX INFO: renamed from: toString, reason: from getter */
    public final String getF61764b() {
        return this.f61764b;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.getClass();
        parcel.writeString(this.f61764b);
    }
}
