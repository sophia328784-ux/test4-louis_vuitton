package com.vuitton.android.presentation.screen.osa.models;

import com.batch.android.s.b;
import defpackage.cj;
import defpackage.fc;
import defpackage.pq0;
import defpackage.tr;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\t\b\u0087\b\u0018\u00002\u00020\u0001B7\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u0006\u0010\b\u001a\u00020\u0002¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/vuitton/android/presentation/screen/osa/models/StoreInformationItemUiModel;", "", "", b.a.f24015b, "name", "address", "address2", "phone", "imageUrl", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class StoreInformationItemUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f60938a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f60939b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f60940c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f60941e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f60942f;

    public StoreInformationItemUiModel(String str, String str2, String str3, String str4, String str5, String str6) {
        pq0.z(str, str2, str3, str4, str5);
        str6.getClass();
        this.f60938a = str;
        this.f60939b = str2;
        this.f60940c = str3;
        this.d = str4;
        this.f60941e = str5;
        this.f60942f = str6;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof StoreInformationItemUiModel)) {
            return false;
        }
        StoreInformationItemUiModel storeInformationItemUiModel = (StoreInformationItemUiModel) obj;
        return Intrinsics.c(this.f60938a, storeInformationItemUiModel.f60938a) && Intrinsics.c(this.f60939b, storeInformationItemUiModel.f60939b) && Intrinsics.c(this.f60940c, storeInformationItemUiModel.f60940c) && Intrinsics.c(this.d, storeInformationItemUiModel.d) && Intrinsics.c(this.f60941e, storeInformationItemUiModel.f60941e) && Intrinsics.c(this.f60942f, storeInformationItemUiModel.f60942f);
    }

    public final int hashCode() {
        return this.f60942f.hashCode() + fc.b(fc.b(fc.b(fc.b(this.f60938a.hashCode() * 31, 31, this.f60939b), 31, this.f60940c), 31, this.d), 31, this.f60941e);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("StoreInformationItemUiModel(id=", this.f60938a, ", name=", this.f60939b, ", address=");
        cj.C(sbS, this.f60940c, ", address2=", this.d, ", phone=");
        return tr.l(sbS, this.f60941e, ", imageUrl=", this.f60942f, ")");
    }
}
