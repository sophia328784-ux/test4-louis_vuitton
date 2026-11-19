package com.vuitton.android.presentation.screen.booking.summary.models;

import com.vuitton.foundation.model.domain.model.analytics.AdditionalProperty;
import com.vuitton.foundation.model.domain.model.analytics.Hit;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class BookingSummaryTrackingUiModelKt {
    public static final Hit.EventHit.DefaultEventHit a(String str, String str2) {
        List listO = str2 != null ? CollectionsKt.O(new AdditionalProperty.ExperienceId(CollectionsKt.O(str2))) : null;
        if (listO == null) {
            listO = EmptyList.f71768b;
        }
        return new Hit.EventHit.DefaultEventHit(null, "booking_summary", str, "booking_summary", "click", "booking", listO, 1, null);
    }
}
