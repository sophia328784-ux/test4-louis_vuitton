package com.vuitton.android.presentation.screen.booking.summary.models;

import com.batch.android.s.b;
import com.vuitton.android.presentation.model.common.AssetImageUiModel;
import com.vuitton.foundation.model.domain.model.booking.ExperienceId;
import com.vuitton.foundation.model.domain.model.booking.PreBookId;
import defpackage.cj;
import defpackage.fc;
import defpackage.n00;
import java.time.Instant;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B]\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\n\u001a\u00020\t\u0012\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\f0\u000b\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\u0011\u001a\u0004\u0018\u00010\u0010¢\u0006\u0004\b\u0012\u0010\u0013¨\u0006\u0014"}, d2 = {"Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookUiModel;", "", "Lcom/vuitton/foundation/model/domain/model/booking/PreBookId;", b.a.f24015b, "Lcom/vuitton/foundation/model/domain/model/booking/ExperienceId;", "experienceId", "", "title", "surtitle", "Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;", "image", "", "Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookInformationUiModel;", "information", "disclaimer", "expirationDisplayDate", "Ljava/time/Instant;", "expirationInstant", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/time/Instant;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class PreBookUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f54820a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f54821b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f54822c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final AssetImageUiModel f54823e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final List f54824f;
    public final String g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f54825h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Instant f54826i;

    public PreBookUiModel(String str, String str2, String str3, String str4, AssetImageUiModel assetImageUiModel, List list, String str5, String str6, Instant instant, DefaultConstructorMarker defaultConstructorMarker) {
        str.getClass();
        str2.getClass();
        str3.getClass();
        assetImageUiModel.getClass();
        list.getClass();
        this.f54820a = str;
        this.f54821b = str2;
        this.f54822c = str3;
        this.d = str4;
        this.f54823e = assetImageUiModel;
        this.f54824f = list;
        this.g = str5;
        this.f54825h = str6;
        this.f54826i = instant;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PreBookUiModel)) {
            return false;
        }
        PreBookUiModel preBookUiModel = (PreBookUiModel) obj;
        String str = preBookUiModel.f54820a;
        PreBookId.Companion companion = PreBookId.INSTANCE;
        if (!this.f54820a.equals(str)) {
            return false;
        }
        String str2 = preBookUiModel.f54821b;
        ExperienceId.Companion companion2 = ExperienceId.INSTANCE;
        return this.f54821b.equals(str2) && this.f54822c.equals(preBookUiModel.f54822c) && Intrinsics.c(this.d, preBookUiModel.d) && this.f54823e.equals(preBookUiModel.f54823e) && this.f54824f.equals(preBookUiModel.f54824f) && Intrinsics.c(this.g, preBookUiModel.g) && Intrinsics.c(this.f54825h, preBookUiModel.f54825h) && Intrinsics.c(this.f54826i, preBookUiModel.f54826i);
    }

    public final int hashCode() {
        PreBookId.Companion companion = PreBookId.INSTANCE;
        int iHashCode = this.f54820a.hashCode() * 31;
        ExperienceId.Companion companion2 = ExperienceId.INSTANCE;
        int iB = fc.b(fc.b(iHashCode, 31, this.f54821b), 31, this.f54822c);
        String str = this.d;
        int iA = n00.a((this.f54823e.hashCode() + ((iB + (str == null ? 0 : str.hashCode())) * 31)) * 31, 31, this.f54824f);
        String str2 = this.g;
        int iHashCode2 = (iA + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.f54825h;
        int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        Instant instant = this.f54826i;
        return iHashCode3 + (instant != null ? instant.hashCode() : 0);
    }

    public final String toString() {
        PreBookId.Companion companion = PreBookId.INSTANCE;
        ExperienceId.Companion companion2 = ExperienceId.INSTANCE;
        StringBuilder sbS = fc.s("PreBookUiModel(id=", this.f54820a, ", experienceId=", this.f54821b, ", title=");
        cj.C(sbS, this.f54822c, ", surtitle=", this.d, ", image=");
        sbS.append(this.f54823e);
        sbS.append(", information=");
        sbS.append(this.f54824f);
        sbS.append(", disclaimer=");
        cj.C(sbS, this.g, ", expirationDisplayDate=", this.f54825h, ", expirationInstant=");
        sbS.append(this.f54826i);
        sbS.append(")");
        return sbS.toString();
    }
}
