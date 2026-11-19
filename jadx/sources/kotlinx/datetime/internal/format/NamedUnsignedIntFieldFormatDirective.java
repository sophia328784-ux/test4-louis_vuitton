package kotlinx.datetime.internal.format;

import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlinx.datetime.internal.format.formatter.FormatterStructure;
import kotlinx.datetime.internal.format.formatter.StringFormatterStructure;
import kotlinx.datetime.internal.format.parser.AssignableField;
import kotlinx.datetime.internal.format.parser.ParserStructure;
import kotlinx.datetime.internal.format.parser.StringSetParserOperation;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0006\b \u0018\u0000*\u0006\b\u0000\u0010\u0001 \u00002\b\u0012\u0004\u0012\u00028\u00000\u0002:\u0001\u000bB+\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0003\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u0006\u0010\b\u001a\u00020\u0006¢\u0006\u0004\b\t\u0010\n¨\u0006\f"}, d2 = {"Lkotlinx/datetime/internal/format/NamedUnsignedIntFieldFormatDirective;", "Target", "Lkotlinx/datetime/internal/format/FieldFormatDirective;", "Lkotlinx/datetime/internal/format/UnsignedFieldSpec;", "field", "", "", "values", "name", "<init>", "(Lkotlinx/datetime/internal/format/UnsignedFieldSpec;Ljava/util/List;Ljava/lang/String;)V", "AssignableString", "kotlinx-datetime"}, k = 1, mv = {1, 9, 0}, xi = 48)
public abstract class NamedUnsignedIntFieldFormatDirective<Target> implements FieldFormatDirective<Target> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final UnsignedFieldSpec f75398a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f75399b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f75400c;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0082\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lkotlinx/datetime/internal/format/NamedUnsignedIntFieldFormatDirective$AssignableString;", "Lkotlinx/datetime/internal/format/parser/AssignableField;", "", "<init>", "(Lkotlinx/datetime/internal/format/NamedUnsignedIntFieldFormatDirective;)V", "kotlinx-datetime"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public final class AssignableString implements AssignableField<Target, String> {
        public AssignableString() {
        }

        @Override // kotlinx.datetime.internal.format.parser.AssignableField
        public final Object c(Object obj, Object obj2) {
            String str = (String) obj2;
            str.getClass();
            NamedUnsignedIntFieldFormatDirective namedUnsignedIntFieldFormatDirective = NamedUnsignedIntFieldFormatDirective.this;
            Accessor accessor = namedUnsignedIntFieldFormatDirective.f75398a.f75420a;
            List list = namedUnsignedIntFieldFormatDirective.f75399b;
            int iIndexOf = list.indexOf(str);
            UnsignedFieldSpec unsignedFieldSpec = namedUnsignedIntFieldFormatDirective.f75398a;
            Integer num = (Integer) accessor.c(obj, Integer.valueOf(iIndexOf + unsignedFieldSpec.f75421b));
            if (num != null) {
                return (String) list.get(num.intValue() - unsignedFieldSpec.f75421b);
            }
            return null;
        }

        @Override // kotlinx.datetime.internal.format.parser.AssignableField
        public final String getName() {
            return NamedUnsignedIntFieldFormatDirective.this.f75400c;
        }
    }

    public NamedUnsignedIntFieldFormatDirective(UnsignedFieldSpec<? super Target> unsignedFieldSpec, List<String> list, String str) {
        unsignedFieldSpec.getClass();
        list.getClass();
        str.getClass();
        this.f75398a = unsignedFieldSpec;
        this.f75399b = list;
        this.f75400c = str;
        if (list.size() == (unsignedFieldSpec.f75422c - unsignedFieldSpec.f75421b) + 1) {
            return;
        }
        StringBuilder sb = new StringBuilder("The number of values (");
        sb.append(list.size());
        sb.append(") in ");
        sb.append(list);
        int i2 = (unsignedFieldSpec.f75422c - unsignedFieldSpec.f75421b) + 1;
        sb.append(" does not match the range of the field (");
        sb.append(i2);
        sb.append(')');
        throw new IllegalArgumentException(sb.toString().toString());
    }

    @Override // kotlinx.datetime.internal.format.FieldFormatDirective
    public final FormatterStructure a() {
        return new StringFormatterStructure(new NamedUnsignedIntFieldFormatDirective$formatter$1(1, this, NamedUnsignedIntFieldFormatDirective.class, "getStringValue", "getStringValue(Ljava/lang/Object;)Ljava/lang/String;", 0));
    }

    @Override // kotlinx.datetime.internal.format.FieldFormatDirective
    public final ParserStructure b() {
        List list = this.f75399b;
        return new ParserStructure(CollectionsKt.O(new StringSetParserOperation(list, new AssignableString(), "one of " + list + " for " + this.f75400c)), EmptyList.f71768b);
    }

    @Override // kotlinx.datetime.internal.format.FieldFormatDirective
    /* JADX INFO: renamed from: c */
    public final /* bridge */ /* synthetic */ FieldSpec getF75415a() {
        return this.f75398a;
    }
}
