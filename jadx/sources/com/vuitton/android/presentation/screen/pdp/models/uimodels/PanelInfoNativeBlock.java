package com.vuitton.android.presentation.screen.pdp.models.uimodels;

import defpackage.d21;
import defpackage.n00;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\b\u0005\b\u0087\b\u0018\u00002\u00020\u0001B+\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u000e\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0004\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/PanelInfoNativeBlock;", "", "", "mainLabel", "", "bulletPoints", "imageUrl", "<init>", "(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class PanelInfoNativeBlock {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f61713a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f61714b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f61715c;

    public PanelInfoNativeBlock(String str, List<String> list, String str2) {
        this.f61713a = str;
        this.f61714b = list;
        this.f61715c = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PanelInfoNativeBlock)) {
            return false;
        }
        PanelInfoNativeBlock panelInfoNativeBlock = (PanelInfoNativeBlock) obj;
        return Intrinsics.c(this.f61713a, panelInfoNativeBlock.f61713a) && Intrinsics.c(this.f61714b, panelInfoNativeBlock.f61714b) && Intrinsics.c(this.f61715c, panelInfoNativeBlock.f61715c);
    }

    public final int hashCode() {
        String str = this.f61713a;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        List list = this.f61714b;
        int iHashCode2 = (iHashCode + (list == null ? 0 : list.hashCode())) * 31;
        String str2 = this.f61715c;
        return iHashCode2 + (str2 != null ? str2.hashCode() : 0);
    }

    public final String toString() {
        return n00.r(this.f61715c, ")", d21.t("PanelInfoNativeBlock(mainLabel=", this.f61713a, ", bulletPoints=", this.f61714b, ", imageUrl="));
    }
}
