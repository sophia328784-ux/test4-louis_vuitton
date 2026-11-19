package kotlinx.datetime.internal.format;

import defpackage.lc0;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlinx.datetime.internal.format.formatter.FormatterStructure;
import kotlinx.datetime.internal.format.formatter.SignedIntFormatterStructure;
import kotlinx.datetime.internal.format.formatter.SpacePaddedFormatter;
import kotlinx.datetime.internal.format.parser.NumberSpanParserOperation;
import kotlinx.datetime.internal.format.parser.ParserOperationKt;
import kotlinx.datetime.internal.format.parser.ParserStructure;
import kotlinx.datetime.internal.format.parser.PlainStringParserOperation;
import kotlinx.datetime.internal.format.parser.UnsignedIntConsumer;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\b\b \u0018\u0000*\u0006\b\u0000\u0010\u0001 \u00002\b\u0012\u0004\u0012\u00028\u00000\u0002BC\u0012\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00040\u0003\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Lkotlinx/datetime/internal/format/SignedIntFieldFormatDirective;", "Target", "Lkotlinx/datetime/internal/format/FieldFormatDirective;", "Lkotlinx/datetime/internal/format/FieldSpec;", "", "field", "minDigits", "maxDigits", "spacePadding", "outputPlusOnExceededWidth", "<init>", "(Lkotlinx/datetime/internal/format/FieldSpec;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V", "kotlinx-datetime"}, k = 1, mv = {1, 9, 0}, xi = 48)
public abstract class SignedIntFieldFormatDirective<Target> implements FieldFormatDirective<Target> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final FieldSpec f75415a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Integer f75416b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Integer f75417c;
    public final Integer d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Integer f75418e;

    public SignedIntFieldFormatDirective(FieldSpec<? super Target, Integer> fieldSpec, Integer num, Integer num2, Integer num3, Integer num4) {
        fieldSpec.getClass();
        this.f75415a = fieldSpec;
        this.f75416b = num;
        this.f75417c = num2;
        this.d = num3;
        this.f75418e = num4;
        if (num != null && num.intValue() < 0) {
            lc0.v("The minimum number of digits (", num, ") is negative");
            throw null;
        }
        if (num2 == null || num == null || num2.intValue() >= num.intValue()) {
            return;
        }
        lc0.p("The maximum number of digits (", num2, ") is less than the minimum number of digits (", num, 41);
        throw null;
    }

    @Override // kotlinx.datetime.internal.format.FieldFormatDirective
    public final FormatterStructure a() {
        SignedIntFieldFormatDirective$formatter$formatter$1 signedIntFieldFormatDirective$formatter$formatter$1 = new SignedIntFieldFormatDirective$formatter$formatter$1(1, this.f75415a.getF75395a(), Accessor.class, "getterNotNull", "getterNotNull(Ljava/lang/Object;)Ljava/lang/Object;", 0);
        Integer num = this.f75416b;
        SignedIntFormatterStructure signedIntFormatterStructure = new SignedIntFormatterStructure(signedIntFieldFormatDirective$formatter$formatter$1, num != null ? num.intValue() : 0, this.f75418e);
        Integer num2 = this.d;
        return num2 != null ? new SpacePaddedFormatter(signedIntFormatterStructure, num2.intValue()) : signedIntFormatterStructure;
    }

    @Override // kotlinx.datetime.internal.format.FieldFormatDirective
    public final ParserStructure b() {
        FieldSpec fieldSpec = this.f75415a;
        Accessor f75395a = fieldSpec.getF75395a();
        String f75396b = fieldSpec.getF75396b();
        f75395a.getClass();
        f75396b.getClass();
        Integer num = this.f75416b;
        Integer num2 = this.f75417c;
        Integer num3 = this.d;
        ArrayList arrayListU = CollectionsKt.U(ParserOperationKt.a(num, num2, num3, f75395a, f75396b, true));
        Integer num4 = this.f75418e;
        if (num4 != null) {
            arrayListU.add(ParserOperationKt.a(num, num4, num3, f75395a, f75396b, false));
            arrayListU.add(new ParserStructure(CollectionsKt.P(new PlainStringParserOperation("+"), new NumberSpanParserOperation(CollectionsKt.O(new UnsignedIntConsumer(Integer.valueOf(num4.intValue() + 1), num2, f75395a, f75396b, false)))), EmptyList.f71768b));
        } else {
            arrayListU.add(ParserOperationKt.a(num, num2, num3, f75395a, f75396b, false));
        }
        return new ParserStructure(EmptyList.f71768b, arrayListU);
    }

    @Override // kotlinx.datetime.internal.format.FieldFormatDirective
    /* JADX INFO: renamed from: c, reason: from getter */
    public final FieldSpec getF75415a() {
        return this.f75415a;
    }
}
