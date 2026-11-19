package com.vuitton.android.presentation.screen.pdp.vto.beauty.models;

import defpackage.d21;
import defpackage.n00;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.EmptyList;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B7\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u000e\b\u0002\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyLegalConsentUiModel;", "", "", "description", "", "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/ConsentRequirementUiModel;", "requirements", "timeStamp", "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/LegalConsentContextUiModel;", MvelScriptManager.VAR_CONTEXT, "<init>", "(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/LegalConsentContextUiModel;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class BeautyLegalConsentUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f62140a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f62141b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f62142c;
    public final LegalConsentContextUiModel d;

    public BeautyLegalConsentUiModel(String str, List list, String str2, LegalConsentContextUiModel legalConsentContextUiModel, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i2 & 2) != 0 ? EmptyList.f71768b : list, (i2 & 4) != 0 ? null : str2, (i2 & 8) != 0 ? null : legalConsentContextUiModel);
    }

    public static BeautyLegalConsentUiModel a(BeautyLegalConsentUiModel beautyLegalConsentUiModel, String str, LegalConsentContextUiModel legalConsentContextUiModel, int i2) {
        String str2 = beautyLegalConsentUiModel.f62140a;
        List list = beautyLegalConsentUiModel.f62141b;
        if ((i2 & 4) != 0) {
            str = beautyLegalConsentUiModel.f62142c;
        }
        if ((i2 & 8) != 0) {
            legalConsentContextUiModel = beautyLegalConsentUiModel.d;
        }
        beautyLegalConsentUiModel.getClass();
        str2.getClass();
        list.getClass();
        return new BeautyLegalConsentUiModel(str2, list, str, legalConsentContextUiModel);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof BeautyLegalConsentUiModel)) {
            return false;
        }
        BeautyLegalConsentUiModel beautyLegalConsentUiModel = (BeautyLegalConsentUiModel) obj;
        return Intrinsics.c(this.f62140a, beautyLegalConsentUiModel.f62140a) && Intrinsics.c(this.f62141b, beautyLegalConsentUiModel.f62141b) && Intrinsics.c(this.f62142c, beautyLegalConsentUiModel.f62142c) && this.d == beautyLegalConsentUiModel.d;
    }

    public final int hashCode() {
        int iA = n00.a(this.f62140a.hashCode() * 31, 31, this.f62141b);
        String str = this.f62142c;
        int iHashCode = (iA + (str == null ? 0 : str.hashCode())) * 31;
        LegalConsentContextUiModel legalConsentContextUiModel = this.d;
        return iHashCode + (legalConsentContextUiModel != null ? legalConsentContextUiModel.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sbT = d21.t("BeautyLegalConsentUiModel(description=", this.f62140a, ", requirements=", this.f62141b, ", timeStamp=");
        sbT.append(this.f62142c);
        sbT.append(", context=");
        sbT.append(this.d);
        sbT.append(")");
        return sbT.toString();
    }

    public BeautyLegalConsentUiModel(String str, List<ConsentRequirementUiModel> list, String str2, LegalConsentContextUiModel legalConsentContextUiModel) {
        str.getClass();
        list.getClass();
        this.f62140a = str;
        this.f62141b = list;
        this.f62142c = str2;
        this.d = legalConsentContextUiModel;
    }
}
