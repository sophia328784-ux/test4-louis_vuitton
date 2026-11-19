package com.vuitton.android.presentation.screen.booking.summary.models;

import com.vuitton.android.presentation.screen.booking.list.models.BookingAdditionalUiModel;
import defpackage.fc;
import defpackage.n00;
import defpackage.o60;
import defpackage.tr;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0087\b\u0018\u00002\u00020\u0001B5\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0002\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0007¢\u0006\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookSummaryUiModel;", "", "", "Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookUiModel;", "prebookList", "Lcom/vuitton/android/presentation/screen/booking/list/models/BookingAdditionalUiModel;", "additionalList", "", "priceLabel", "freeLabel", "<init>", "(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class PreBookSummaryUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f54817a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f54818b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f54819c;
    public final String d;

    public PreBookSummaryUiModel(List<PreBookUiModel> list, List<BookingAdditionalUiModel> list2, String str, String str2) {
        list.getClass();
        list2.getClass();
        str.getClass();
        this.f54817a = list;
        this.f54818b = list2;
        this.f54819c = str;
        this.d = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PreBookSummaryUiModel)) {
            return false;
        }
        PreBookSummaryUiModel preBookSummaryUiModel = (PreBookSummaryUiModel) obj;
        return Intrinsics.c(this.f54817a, preBookSummaryUiModel.f54817a) && Intrinsics.c(this.f54818b, preBookSummaryUiModel.f54818b) && Intrinsics.c(this.f54819c, preBookSummaryUiModel.f54819c) && Intrinsics.c(this.d, preBookSummaryUiModel.d);
    }

    public final int hashCode() {
        int iB = fc.b(n00.a(this.f54817a.hashCode() * 31, 31, this.f54818b), 31, this.f54819c);
        String str = this.d;
        return iB + (str == null ? 0 : str.hashCode());
    }

    public final String toString() {
        return tr.l(o60.s("PreBookSummaryUiModel(prebookList=", ", additionalList=", ", priceLabel=", this.f54817a, this.f54818b), this.f54819c, ", freeLabel=", this.d, ")");
    }
}
