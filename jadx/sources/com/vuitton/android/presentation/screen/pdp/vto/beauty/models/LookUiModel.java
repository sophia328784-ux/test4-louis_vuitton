package com.vuitton.android.presentation.screen.pdp.vto.beauty.models;

import com.batch.android.s.b;
import com.vuitton.android.presentation.model.common.AssetImageUiModel;
import defpackage.cj;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B7\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/LookUiModel;", "", "", b.a.f24015b, "vtoId", "name", "number", "Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;", "image", "", "hasTutorial", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;Z)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class LookUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f62165a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f62166b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f62167c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final AssetImageUiModel f62168e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f62169f;

    public LookUiModel(String str, String str2, String str3, String str4, AssetImageUiModel assetImageUiModel, boolean z) {
        str.getClass();
        str2.getClass();
        str3.getClass();
        str4.getClass();
        assetImageUiModel.getClass();
        this.f62165a = str;
        this.f62166b = str2;
        this.f62167c = str3;
        this.d = str4;
        this.f62168e = assetImageUiModel;
        this.f62169f = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof LookUiModel)) {
            return false;
        }
        LookUiModel lookUiModel = (LookUiModel) obj;
        return Intrinsics.c(this.f62165a, lookUiModel.f62165a) && Intrinsics.c(this.f62166b, lookUiModel.f62166b) && Intrinsics.c(this.f62167c, lookUiModel.f62167c) && Intrinsics.c(this.d, lookUiModel.d) && Intrinsics.c(this.f62168e, lookUiModel.f62168e) && this.f62169f == lookUiModel.f62169f;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.f62169f) + ((this.f62168e.hashCode() + fc.b(fc.b(fc.b(this.f62165a.hashCode() * 31, 31, this.f62166b), 31, this.f62167c), 31, this.d)) * 31);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("LookUiModel(id=", this.f62165a, ", vtoId=", this.f62166b, ", name=");
        cj.C(sbS, this.f62167c, ", number=", this.d, ", image=");
        sbS.append(this.f62168e);
        sbS.append(", hasTutorial=");
        sbS.append(this.f62169f);
        sbS.append(")");
        return sbS.toString();
    }
}
