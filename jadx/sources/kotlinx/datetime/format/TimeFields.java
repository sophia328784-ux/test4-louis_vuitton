package kotlinx.datetime.format;

import kotlin.Metadata;
import kotlinx.datetime.internal.DecimalFraction;
import kotlinx.datetime.internal.format.GenericFieldSpec;
import kotlinx.datetime.internal.format.PropertyAccessor;
import kotlinx.datetime.internal.format.UnsignedFieldSpec;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bÂ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lkotlinx/datetime/format/TimeFields;", "", "kotlinx-datetime"}, k = 1, mv = {1, 9, 0}, xi = 48)
abstract class TimeFields {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final UnsignedFieldSpec f75343a = new UnsignedFieldSpec(new PropertyAccessor(TimeFields$hour$1.f75348b), 0, 23, null, null, null, 56, null);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final UnsignedFieldSpec f75344b = new UnsignedFieldSpec(new PropertyAccessor(TimeFields$minute$1.f75350b), 0, 59, null, null, null, 56, null);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final UnsignedFieldSpec f75345c = new UnsignedFieldSpec(new PropertyAccessor(TimeFields$second$1.f75351b), 0, 59, null, 0, null, 40, null);
    public static final GenericFieldSpec d = new GenericFieldSpec(new PropertyAccessor(TimeFields$fractionOfSecond$1.f75347b), null, new DecimalFraction(0, 9), null, 10, null);

    static {
        new GenericFieldSpec(new PropertyAccessor(TimeFields$amPm$1.f75346b), null, null, null, 14, null);
        new UnsignedFieldSpec(new PropertyAccessor(TimeFields$hourOfAmPm$1.f75349b), 1, 12, null, null, null, 56, null);
    }
}
