package com.vuitton.android.presentation.screen.booking.summary.models;

import com.vuitton.android.presentation.model.common.AssetImageUiModel;
import com.vuitton.foundation.model.domain.model.booking.ExperienceId;
import com.vuitton.foundation.model.domain.model.booking.PreBookId;
import java.time.Instant;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class PreBookMocksKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final List f54815a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final PreBookSummaryUiModel f54816b;

    static {
        PreBookId.Companion companion = PreBookId.INSTANCE;
        ExperienceId.Companion companion2 = ExperienceId.INSTANCE;
        List listP = CollectionsKt.P(new PreBookUiModel("prebook1", "sevenrooms", "Louis Vuitton Café", "Culinary Experience", new AssetImageUiModel("https://example.louisvuitton.com/image2.jpg", null, "An example image 2", 2, null), CollectionsKt.P(new PreBookInformationUiModel("Guest", "2 pax"), new PreBookInformationUiModel("Date & Time", "16 may 2026 at 3:00 PM"), new PreBookInformationUiModel("Price", "Free (credit card hold)"), new PreBookInformationUiModel("Special request", "Yes")), "Your card will only be charged in the event of a no-show or late cancellation (less than 24 hours in advance). Otherwise, the hold will be released.", "12:59 PM", Instant.now(), null), new PreBookUiModel("prebook2", "osa", "In-Store Appointment", "Store", new AssetImageUiModel("https://example.louisvuitton.com/image2.jpg", null, "An example image 2", 2, null), CollectionsKt.P(new PreBookInformationUiModel("Purpose", "Product discovery"), new PreBookInformationUiModel("Date & Time", "16 may 2026 at 3:00 PM"), new PreBookInformationUiModel("Price", "Free")), null, "12:59 PM", Instant.now(), null));
        f54815a = listP;
        f54816b = new PreBookSummaryUiModel(listP, EmptyList.f71768b, "Free (credit card hold)", "Free");
    }
}
