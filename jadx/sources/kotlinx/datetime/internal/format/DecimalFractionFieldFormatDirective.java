package kotlinx.datetime.internal.format;

import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlinx.datetime.internal.DecimalFraction;
import kotlinx.datetime.internal.format.formatter.DecimalFractionFormatterStructure;
import kotlinx.datetime.internal.format.formatter.FormatterStructure;
import kotlinx.datetime.internal.format.parser.FractionPartConsumer;
import kotlinx.datetime.internal.format.parser.NumberSpanParserOperation;
import kotlinx.datetime.internal.format.parser.ParserStructure;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0004\b \u0018\u0000*\u0006\b\u0000\u0010\u0001 \u00002\b\u0012\u0004\u0012\u00028\u00000\u0002B9\u0012\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\b\u001a\u00020\u0006\u0012\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00060\t¢\u0006\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"Lkotlinx/datetime/internal/format/DecimalFractionFieldFormatDirective;", "Target", "Lkotlinx/datetime/internal/format/FieldFormatDirective;", "Lkotlinx/datetime/internal/format/FieldSpec;", "Lkotlinx/datetime/internal/DecimalFraction;", "field", "", "minDigits", "maxDigits", "", "zerosToAdd", "<init>", "(Lkotlinx/datetime/internal/format/FieldSpec;IILjava/util/List;)V", "kotlinx-datetime"}, k = 1, mv = {1, 9, 0}, xi = 48)
public abstract class DecimalFractionFieldFormatDirective<Target> implements FieldFormatDirective<Target> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final FieldSpec f75392a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f75393b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f75394c;
    public final List d;

    public DecimalFractionFieldFormatDirective(FieldSpec<? super Target, DecimalFraction> fieldSpec, int i2, int i3, List<Integer> list) {
        fieldSpec.getClass();
        list.getClass();
        this.f75392a = fieldSpec;
        this.f75393b = i2;
        this.f75394c = i3;
        this.d = list;
    }

    @Override // kotlinx.datetime.internal.format.FieldFormatDirective
    public final FormatterStructure a() {
        return new DecimalFractionFormatterStructure(new DecimalFractionFieldFormatDirective$formatter$1(1, this.f75392a.getF75395a(), Accessor.class, "getterNotNull", "getterNotNull(Ljava/lang/Object;)Ljava/lang/Object;", 0), this.f75393b, this.f75394c, this.d);
    }

    @Override // kotlinx.datetime.internal.format.FieldFormatDirective
    public final ParserStructure b() {
        FieldSpec fieldSpec = this.f75392a;
        return new ParserStructure(CollectionsKt.O(new NumberSpanParserOperation(CollectionsKt.O(new FractionPartConsumer(this.f75393b, this.f75394c, fieldSpec.getF75395a(), fieldSpec.getF75396b())))), EmptyList.f71768b);
    }

    @Override // kotlinx.datetime.internal.format.FieldFormatDirective
    /* JADX INFO: renamed from: c, reason: from getter */
    public final FieldSpec getF75392a() {
        return this.f75392a;
    }
}
