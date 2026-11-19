package kotlinx.datetime.format;

import kotlin.Metadata;
import kotlinx.datetime.internal.format.GenericFieldSpec;
import kotlinx.datetime.internal.format.PropertyAccessor;
import kotlinx.datetime.internal.format.UnsignedFieldSpec;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bÂ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lkotlinx/datetime/format/DateFields;", "", "kotlinx-datetime"}, k = 1, mv = {1, 9, 0}, xi = 48)
abstract class DateFields {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final GenericFieldSpec f75253a = new GenericFieldSpec(new PropertyAccessor(DateFields$year$1.f75260b), null, null, null, 14, null);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final UnsignedFieldSpec f75254b = new UnsignedFieldSpec(new PropertyAccessor(DateFields$month$1.f75259b), 1, 12, null, null, null, 56, null);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final UnsignedFieldSpec f75255c = new UnsignedFieldSpec(new PropertyAccessor(DateFields$dayOfMonth$1.f75256b), 1, 31, null, null, null, 56, null);
    public static final UnsignedFieldSpec d = new UnsignedFieldSpec(new PropertyAccessor(DateFields$isoDayOfWeek$1.f75258b), 1, 7, null, null, null, 56, null);

    static {
        new UnsignedFieldSpec(new PropertyAccessor(DateFields$dayOfYear$1.f75257b), 1, 366, null, null, null, 56, null);
    }
}
