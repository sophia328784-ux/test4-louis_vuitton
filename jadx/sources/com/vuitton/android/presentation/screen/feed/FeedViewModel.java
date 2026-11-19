package com.vuitton.android.presentation.screen.feed;

import com.vuitton.android.presentation.screen.feed.models.CalendarEventData;
import com.vuitton.android.presentation.screen.feed.models.FeedTab;
import java.util.List;
import kotlin.Metadata;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.StateFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bf\u0018\u00002\u00020\u0001¨\u0006\u0002À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/feed/FeedViewModel;", "", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface FeedViewModel {
    void B1();

    void C4();

    void D9();

    void F4();

    List I1(String str);

    void Ia();

    void P1();

    void Q3(String str);

    void W1(FeedTab feedTab);

    void Z3();

    StateFlow a();

    Flow b();

    void c();

    void ib(String str);

    void j6();

    void la();

    void n1(CalendarEventData calendarEventData);

    Flow o7();

    void oa();

    void qa(FeedBottomSheet feedBottomSheet);

    void t3(String str, String str2);

    void u0(String str);

    boolean y3(String str);
}
