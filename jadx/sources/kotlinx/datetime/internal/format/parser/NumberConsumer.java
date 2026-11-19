package kotlinx.datetime.internal.format.parser;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b0\u0018\u0000*\u0006\b\u0000\u0010\u0001 \u00002\u00020\u0002\u0082\u0001\u0003\u0003\u0004\u0005¨\u0006\u0006"}, d2 = {"Lkotlinx/datetime/internal/format/parser/NumberConsumer;", "Receiver", "", "Lkotlinx/datetime/internal/format/parser/ConstantNumberConsumer;", "Lkotlinx/datetime/internal/format/parser/FractionPartConsumer;", "Lkotlinx/datetime/internal/format/parser/UnsignedIntConsumer;", "kotlinx-datetime"}, k = 1, mv = {1, 9, 0}, xi = 48)
public abstract class NumberConsumer<Receiver> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Integer f75441a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f75442b;

    public NumberConsumer(Integer num, String str, DefaultConstructorMarker defaultConstructorMarker) {
        this.f75441a = num;
        this.f75442b = str;
    }

    public abstract NumberConsumptionError a(Object obj, int i2, int i3, String str);
}
