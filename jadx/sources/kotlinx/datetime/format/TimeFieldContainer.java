package kotlinx.datetime.format;

import kotlin.Metadata;
import kotlinx.datetime.internal.DecimalFraction;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b`\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lkotlinx/datetime/format/TimeFieldContainer;", "", "kotlinx-datetime"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface TimeFieldContainer {
    void A(Integer num);

    Integer C();

    void a(AmPmMarker amPmMarker);

    Integer c();

    void g(DecimalFraction decimalFraction);

    Integer h();

    void j(Integer num);

    AmPmMarker n();

    void o(Integer num);

    Integer r();

    void s(Integer num);

    DecimalFraction v();
}
