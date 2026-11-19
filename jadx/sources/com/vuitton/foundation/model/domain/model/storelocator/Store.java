package com.vuitton.foundation.model.domain.model.storelocator;

import com.batch.android.s.b;
import defpackage.cj;
import defpackage.fc;
import defpackage.n00;
import defpackage.o60;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001BY\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\t\u001a\u00020\u0002\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\r0\f\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u000f¢\u0006\u0004\b\u0011\u0010\u0012¨\u0006\u0013"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/storelocator/Store;", "", "", b.a.f24015b, "name", "storeType", "phone", "Lcom/vuitton/foundation/model/domain/model/storelocator/StoreAddress;", "address", "imageUrl", "", "stockAvailability", "", "Lcom/vuitton/foundation/model/domain/model/storelocator/StoreOpeningHours;", "openingHours", "Lcom/vuitton/foundation/model/domain/model/storelocator/Megatrio;", "megatrio", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/storelocator/StoreAddress;Ljava/lang/String;ZLjava/util/List;Lcom/vuitton/foundation/model/domain/model/storelocator/Megatrio;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class Store {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f68242a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f68243b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f68244c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final StoreAddress f68245e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f68246f;
    public final boolean g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final List f68247h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Megatrio f68248i;

    public Store(String str, String str2, String str3, String str4, StoreAddress storeAddress, String str5, boolean z, List<StoreOpeningHours> list, Megatrio megatrio) {
        str.getClass();
        str2.getClass();
        str3.getClass();
        str4.getClass();
        storeAddress.getClass();
        str5.getClass();
        list.getClass();
        this.f68242a = str;
        this.f68243b = str2;
        this.f68244c = str3;
        this.d = str4;
        this.f68245e = storeAddress;
        this.f68246f = str5;
        this.g = z;
        this.f68247h = list;
        this.f68248i = megatrio;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Store)) {
            return false;
        }
        Store store = (Store) obj;
        return Intrinsics.c(this.f68242a, store.f68242a) && Intrinsics.c(this.f68243b, store.f68243b) && Intrinsics.c(this.f68244c, store.f68244c) && Intrinsics.c(this.d, store.d) && Intrinsics.c(this.f68245e, store.f68245e) && Intrinsics.c(this.f68246f, store.f68246f) && this.g == store.g && Intrinsics.c(this.f68247h, store.f68247h) && Intrinsics.c(this.f68248i, store.f68248i);
    }

    public final int hashCode() {
        int iA = n00.a(o60.b(fc.b((this.f68245e.hashCode() + fc.b(fc.b(fc.b(this.f68242a.hashCode() * 31, 31, this.f68243b), 31, this.f68244c), 31, this.d)) * 31, 31, this.f68246f), 31, this.g), 31, this.f68247h);
        Megatrio megatrio = this.f68248i;
        return iA + (megatrio == null ? 0 : megatrio.hashCode());
    }

    public final String toString() {
        StringBuilder sbS = fc.s("Store(id=", this.f68242a, ", name=", this.f68243b, ", storeType=");
        cj.C(sbS, this.f68244c, ", phone=", this.d, ", address=");
        sbS.append(this.f68245e);
        sbS.append(", imageUrl=");
        sbS.append(this.f68246f);
        sbS.append(", stockAvailability=");
        sbS.append(this.g);
        sbS.append(", openingHours=");
        sbS.append(this.f68247h);
        sbS.append(", megatrio=");
        sbS.append(this.f68248i);
        sbS.append(")");
        return sbS.toString();
    }

    public /* synthetic */ Store(String str, String str2, String str3, String str4, StoreAddress storeAddress, String str5, boolean z, List list, Megatrio megatrio, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, str3, str4, storeAddress, str5, z, list, (i2 & 256) != 0 ? null : megatrio);
    }
}
