package kotlinx.datetime.format;

import kotlin.Metadata;
import kotlinx.datetime.internal.format.FieldSign;
import kotlinx.datetime.internal.format.PropertyAccessor;
import kotlinx.datetime.internal.format.UnsignedFieldSpec;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bÂ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lkotlinx/datetime/format/OffsetFields;", "", "kotlinx-datetime"}, k = 1, mv = {1, 9, 0}, xi = 48)
abstract class OffsetFields {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final UnsignedFieldSpec f75333a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final UnsignedFieldSpec f75334b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final UnsignedFieldSpec f75335c;

    static {
        FieldSign<UtcOffsetFieldContainer> fieldSign = new FieldSign<UtcOffsetFieldContainer>() { // from class: kotlinx.datetime.format.OffsetFields$sign$1

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final PropertyAccessor f75338a = new PropertyAccessor(OffsetFields$sign$1$isNegative$1.f75339b);

            @Override // kotlinx.datetime.internal.format.FieldSign
            public final boolean a(Object obj) {
                UtcOffsetFieldContainer utcOffsetFieldContainer = (UtcOffsetFieldContainer) obj;
                utcOffsetFieldContainer.getClass();
                Integer f75305b = utcOffsetFieldContainer.getF75305b();
                if ((f75305b != null ? f75305b.intValue() : 0) == 0) {
                    Integer f75306c = utcOffsetFieldContainer.getF75306c();
                    if ((f75306c != null ? f75306c.intValue() : 0) == 0) {
                        Integer d = utcOffsetFieldContainer.getD();
                        if ((d != null ? d.intValue() : 0) == 0) {
                            return true;
                        }
                    }
                }
                return false;
            }

            @Override // kotlinx.datetime.internal.format.FieldSign
            /* JADX INFO: renamed from: b, reason: from getter */
            public final PropertyAccessor getF75338a() {
                return this.f75338a;
            }
        };
        f75333a = new UnsignedFieldSpec(new PropertyAccessor(OffsetFields$totalHoursAbs$1.f75340b), 0, 18, null, 0, fieldSign, 8, null);
        f75334b = new UnsignedFieldSpec(new PropertyAccessor(OffsetFields$minutesOfHour$1.f75336b), 0, 59, null, 0, fieldSign, 8, null);
        f75335c = new UnsignedFieldSpec(new PropertyAccessor(OffsetFields$secondsOfMinute$1.f75337b), 0, 59, null, 0, fieldSign, 8, null);
    }
}
