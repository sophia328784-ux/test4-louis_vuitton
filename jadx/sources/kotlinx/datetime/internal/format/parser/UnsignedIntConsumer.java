package kotlinx.datetime.internal.format.parser;

import defpackage.tg0;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntRange;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0000\u0018\u0000*\u0006\b\u0000\u0010\u0001 \u00002\b\u0012\u0004\u0012\u00028\u00000\u0002BA\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00030\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\b\b\u0002\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\f\u0010\r¨\u0006\u000e"}, d2 = {"Lkotlinx/datetime/internal/format/parser/UnsignedIntConsumer;", "Receiver", "Lkotlinx/datetime/internal/format/parser/NumberConsumer;", "", "minLength", "maxLength", "Lkotlinx/datetime/internal/format/parser/AssignableField;", "setter", "", "name", "", "multiplyByMinus1", "<init>", "(Ljava/lang/Integer;Ljava/lang/Integer;Lkotlinx/datetime/internal/format/parser/AssignableField;Ljava/lang/String;Z)V", "kotlinx-datetime"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class UnsignedIntConsumer<Receiver> extends NumberConsumer<Receiver> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Integer f75487c;
    public final Integer d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final AssignableField f75488e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f75489f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UnsignedIntConsumer(Integer num, Integer num2, AssignableField<? super Receiver, Integer> assignableField, String str, boolean z) {
        super(Intrinsics.c(num, num2) ? num : null, str, null);
        assignableField.getClass();
        str.getClass();
        this.f75487c = num;
        this.d = num2;
        this.f75488e = assignableField;
        this.f75489f = z;
        if (this.f75441a == null || new IntRange(1, 9).m(this.f75441a.intValue())) {
            return;
        }
        tg0.h("Invalid length for field ", this.f75442b, ": ", this.f75441a);
        throw null;
    }

    @Override // kotlinx.datetime.internal.format.parser.NumberConsumer
    public final NumberConsumptionError a(Object obj, int i2, int i3, String str) {
        Integer numValueOf;
        Integer num = this.d;
        if (num != null && i3 - i2 > num.intValue()) {
            return new NumberConsumptionError.TooManyDigits(num.intValue());
        }
        Integer num2 = this.f75487c;
        if (num2 != null && i3 - i2 < num2.intValue()) {
            return new NumberConsumptionError.TooFewDigits(num2.intValue());
        }
        int iCharAt = 0;
        while (true) {
            if (i2 >= i3) {
                numValueOf = Integer.valueOf(iCharAt);
                break;
            }
            iCharAt = (iCharAt * 10) + (str.charAt(i2) - '0');
            if (iCharAt < 0) {
                numValueOf = null;
                break;
            }
            i2++;
        }
        if (numValueOf == null) {
            return NumberConsumptionError.ExpectedInt.f75444a;
        }
        boolean z = this.f75489f;
        int iIntValue = numValueOf.intValue();
        if (z) {
            iIntValue = -iIntValue;
        }
        Object objC = this.f75488e.c(obj, Integer.valueOf(iIntValue));
        if (objC == null) {
            return null;
        }
        return new NumberConsumptionError.Conflicting(objC);
    }

    public /* synthetic */ UnsignedIntConsumer(Integer num, Integer num2, AssignableField assignableField, String str, boolean z, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(num, num2, assignableField, str, (i2 & 16) != 0 ? false : z);
    }
}
