package kotlinx.datetime.format;

import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlinx.datetime.format.AbstractDateTimeFormatBuilder;
import kotlinx.datetime.internal.format.AlternativesParsingFormatStructure;
import kotlinx.datetime.internal.format.AppendableFormatStructure;
import kotlinx.datetime.internal.format.CachedFormatStructure;
import kotlinx.datetime.internal.format.ConcatenatedFormatStructure;
import kotlinx.datetime.internal.format.ConstantFormatStructure;
import kotlinx.datetime.internal.format.OptionalFormatStructure;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b`\u0018\u0000*\u0004\b\u0000\u0010\u0001*\u0014\b\u0001\u0010\u0002*\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00002\u00020\u0003¨\u0006\u0004"}, d2 = {"Lkotlinx/datetime/format/AbstractDateTimeFormatBuilder;", "Target", "ActualSelf", "Lkotlinx/datetime/format/DateTimeFormatBuilder;", "kotlinx-datetime"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface AbstractDateTimeFormatBuilder<Target, ActualSelf extends AbstractDateTimeFormatBuilder<Target, ActualSelf>> extends DateTimeFormatBuilder {

    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    public static final class DefaultImpls {
        public static void a(AbstractDateTimeFormatBuilder abstractDateTimeFormatBuilder, Function1[] function1Arr, Function1 function1) {
            function1.getClass();
            ArrayList arrayList = new ArrayList(function1Arr.length);
            for (Function1 function2 : function1Arr) {
                AbstractDateTimeFormatBuilder abstractDateTimeFormatBuilderH = abstractDateTimeFormatBuilder.h();
                function2.invoke(abstractDateTimeFormatBuilderH);
                arrayList.add(new ConcatenatedFormatStructure(abstractDateTimeFormatBuilderH.getF75319a().f75383a));
            }
            AbstractDateTimeFormatBuilder abstractDateTimeFormatBuilderH2 = abstractDateTimeFormatBuilder.h();
            function1.invoke(abstractDateTimeFormatBuilderH2);
            abstractDateTimeFormatBuilder.getF75319a().a(new AlternativesParsingFormatStructure(new ConcatenatedFormatStructure(abstractDateTimeFormatBuilderH2.getF75319a().f75383a), arrayList));
        }

        public static void b(AbstractDateTimeFormatBuilder abstractDateTimeFormatBuilder, String str, Function1 function1) {
            function1.getClass();
            AppendableFormatStructure f75355a = abstractDateTimeFormatBuilder.getF75319a();
            AbstractDateTimeFormatBuilder abstractDateTimeFormatBuilderH = abstractDateTimeFormatBuilder.h();
            function1.invoke(abstractDateTimeFormatBuilderH);
            f75355a.a(new OptionalFormatStructure(str, new ConcatenatedFormatStructure(abstractDateTimeFormatBuilderH.getF75319a().f75383a)));
        }

        public static CachedFormatStructure c(AbstractDateTimeFormatBuilder abstractDateTimeFormatBuilder) {
            return new CachedFormatStructure(new ConcatenatedFormatStructure(abstractDateTimeFormatBuilder.getF75319a().f75383a).f75389a);
        }

        public static void d(AbstractDateTimeFormatBuilder abstractDateTimeFormatBuilder, String str) {
            str.getClass();
            abstractDateTimeFormatBuilder.getF75319a().a(new ConstantFormatStructure(str));
        }
    }

    /* JADX INFO: renamed from: a */
    AppendableFormatStructure getF75319a();

    void b(String str, Function1 function1);

    void e(Function1[] function1Arr, Function1 function1);

    AbstractDateTimeFormatBuilder h();
}
