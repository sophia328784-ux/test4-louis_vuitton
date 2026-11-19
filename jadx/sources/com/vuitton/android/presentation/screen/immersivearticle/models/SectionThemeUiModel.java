package com.vuitton.android.presentation.screen.immersivearticle.models;

import defpackage.d21;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0087\b\u0018\u00002\u00020\u0001B\u001b\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/presentation/screen/immersivearticle/models/SectionThemeUiModel;", "", "", "backgroundColor", "textColor", "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class SectionThemeUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f58825a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f58826b;

    public SectionThemeUiModel(String str, String str2) {
        this.f58825a = str;
        this.f58826b = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SectionThemeUiModel)) {
            return false;
        }
        SectionThemeUiModel sectionThemeUiModel = (SectionThemeUiModel) obj;
        return Intrinsics.c(this.f58825a, sectionThemeUiModel.f58825a) && Intrinsics.c(this.f58826b, sectionThemeUiModel.f58826b);
    }

    public final int hashCode() {
        String str = this.f58825a;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.f58826b;
        return iHashCode + (str2 != null ? str2.hashCode() : 0);
    }

    public final String toString() {
        return d21.l("SectionThemeUiModel(backgroundColor=", this.f58825a, ", textColor=", this.f58826b, ")");
    }
}
