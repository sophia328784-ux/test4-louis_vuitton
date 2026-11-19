package kotlinx.datetime.internal.format.parser;

import defpackage.b21;
import defpackage.fc;
import defpackage.n00;
import kotlin.Metadata;
import kotlinx.datetime.internal.DecimalFraction;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0000\u0018\u0000*\u0006\b\u0000\u0010\u0001 \u00002\b\u0012\u0004\u0012\u00028\u00000\u0002B3\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0012\u0010\b\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00070\u0006\u0012\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"Lkotlinx/datetime/internal/format/parser/FractionPartConsumer;", "Receiver", "Lkotlinx/datetime/internal/format/parser/NumberConsumer;", "", "minLength", "maxLength", "Lkotlinx/datetime/internal/format/parser/AssignableField;", "Lkotlinx/datetime/internal/DecimalFraction;", "setter", "", "name", "<init>", "(IILkotlinx/datetime/internal/format/parser/AssignableField;Ljava/lang/String;)V", "kotlinx-datetime"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class FractionPartConsumer<Receiver> extends NumberConsumer<Receiver> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f75439c;
    public final int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final AssignableField f75440e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FractionPartConsumer(int i2, int i3, AssignableField<? super Receiver, DecimalFraction> assignableField, String str) {
        super(i2 == i3 ? Integer.valueOf(i2) : null, str, null);
        assignableField.getClass();
        str.getClass();
        this.f75439c = i2;
        this.d = i3;
        this.f75440e = assignableField;
        if (1 > i2 || i2 >= 10) {
            b21.n(n00.r(this.f75442b, ": expected 1..9", fc.q(i2, "Invalid minimum length ", " for field ")));
            throw null;
        }
        if (i2 > i3 || i3 >= 10) {
            StringBuilder sbQ = fc.q(i3, "Invalid maximum length ", " for field ");
            sbQ.append(this.f75442b);
            sbQ.append(": expected ");
            sbQ.append(i2);
            sbQ.append("..9");
            throw new IllegalArgumentException(sbQ.toString().toString());
        }
    }

    @Override // kotlinx.datetime.internal.format.parser.NumberConsumer
    public final NumberConsumptionError a(Object obj, int i2, int i3, String str) {
        int i4 = i3 - i2;
        int i5 = this.f75439c;
        if (i4 < i5) {
            return new NumberConsumptionError.TooFewDigits(i5);
        }
        int i6 = this.d;
        if (i4 > i6) {
            return new NumberConsumptionError.TooManyDigits(i6);
        }
        int iCharAt = 0;
        while (i2 < i3) {
            iCharAt = (iCharAt * 10) + (str.charAt(i2) - '0');
            i2++;
        }
        Object objC = this.f75440e.c(obj, new DecimalFraction(iCharAt, i4));
        if (objC == null) {
            return null;
        }
        return new NumberConsumptionError.Conflicting(objC);
    }
}
