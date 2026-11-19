package com.vuitton.foundation.model.domain.model.booking;

import com.networkbench.agent.impl.harvest.ConfigurationName;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/booking/BookingExternalContent;", "", "Lcom/vuitton/foundation/model/domain/model/booking/BookingExternalContentType;", "type", "", ConfigurationName.DOWNLOAD_PLUGIN_URL, "<init>", "(Lcom/vuitton/foundation/model/domain/model/booking/BookingExternalContentType;Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class BookingExternalContent {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final BookingExternalContentType f66697a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f66698b;

    public BookingExternalContent(BookingExternalContentType bookingExternalContentType, String str) {
        bookingExternalContentType.getClass();
        str.getClass();
        this.f66697a = bookingExternalContentType;
        this.f66698b = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof BookingExternalContent)) {
            return false;
        }
        BookingExternalContent bookingExternalContent = (BookingExternalContent) obj;
        return this.f66697a == bookingExternalContent.f66697a && Intrinsics.c(this.f66698b, bookingExternalContent.f66698b);
    }

    public final int hashCode() {
        return this.f66698b.hashCode() + (this.f66697a.hashCode() * 31);
    }

    public final String toString() {
        return "BookingExternalContent(type=" + this.f66697a + ", url=" + this.f66698b + ")";
    }
}
