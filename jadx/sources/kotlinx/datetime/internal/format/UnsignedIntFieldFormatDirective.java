package kotlinx.datetime.internal.format;

import defpackage.b21;
import defpackage.n00;
import kotlin.Metadata;
import kotlinx.datetime.internal.format.formatter.FormatterStructure;
import kotlinx.datetime.internal.format.formatter.SpacePaddedFormatter;
import kotlinx.datetime.internal.format.formatter.UnsignedIntFormatterStructure;
import kotlinx.datetime.internal.format.parser.ParserOperationKt;
import kotlinx.datetime.internal.format.parser.ParserStructure;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\b \u0018\u0000*\u0006\b\u0000\u0010\u0001 \u00002\b\u0012\u0004\u0012\u00028\u00000\u0002B'\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lkotlinx/datetime/internal/format/UnsignedIntFieldFormatDirective;", "Target", "Lkotlinx/datetime/internal/format/FieldFormatDirective;", "Lkotlinx/datetime/internal/format/UnsignedFieldSpec;", "field", "", "minDigits", "spacePadding", "<init>", "(Lkotlinx/datetime/internal/format/UnsignedFieldSpec;ILjava/lang/Integer;)V", "kotlinx-datetime"}, k = 1, mv = {1, 9, 0}, xi = 48)
public abstract class UnsignedIntFieldFormatDirective<Target> implements FieldFormatDirective<Target> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final UnsignedFieldSpec f75425a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f75426b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Integer f75427c;
    public final int d;

    public UnsignedIntFieldFormatDirective(UnsignedFieldSpec<? super Target> unsignedFieldSpec, int i2, Integer num) {
        unsignedFieldSpec.getClass();
        this.f75425a = unsignedFieldSpec;
        this.f75426b = i2;
        this.f75427c = num;
        int i3 = unsignedFieldSpec.g;
        this.d = i3;
        if (i2 < 0) {
            b21.n(n00.m(i2, "The minimum number of digits (", ") is negative"));
            throw null;
        }
        if (i3 < i2) {
            throw new IllegalArgumentException(("The maximum number of digits (" + i3 + ") is less than the minimum number of digits (" + i2 + ')').toString());
        }
        if (num == null || num.intValue() > i2) {
            return;
        }
        throw new IllegalArgumentException(("The space padding (" + num + ") should be more than the minimum number of digits (" + i2 + ')').toString());
    }

    @Override // kotlinx.datetime.internal.format.FieldFormatDirective
    public final FormatterStructure a() {
        UnsignedIntFormatterStructure unsignedIntFormatterStructure = new UnsignedIntFormatterStructure(new UnsignedIntFieldFormatDirective$formatter$formatter$1(1, this.f75425a.f75420a, Accessor.class, "getterNotNull", "getterNotNull(Ljava/lang/Object;)Ljava/lang/Object;", 0), this.f75426b);
        Integer num = this.f75427c;
        return num != null ? new SpacePaddedFormatter(unsignedIntFormatterStructure, num.intValue()) : unsignedIntFormatterStructure;
    }

    @Override // kotlinx.datetime.internal.format.FieldFormatDirective
    public final ParserStructure b() {
        Integer numValueOf = Integer.valueOf(this.f75426b);
        Integer numValueOf2 = Integer.valueOf(this.d);
        UnsignedFieldSpec unsignedFieldSpec = this.f75425a;
        return ParserOperationKt.a(numValueOf, numValueOf2, this.f75427c, unsignedFieldSpec.f75420a, unsignedFieldSpec.d, false);
    }

    @Override // kotlinx.datetime.internal.format.FieldFormatDirective
    public final /* bridge */ /* synthetic */ FieldSpec c() {
        return this.f75425a;
    }
}
