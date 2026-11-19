package kotlinx.datetime.internal.format.formatter;

import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u0000*\u0006\b\u0000\u0010\u0001 \u00002\b\u0012\u0004\u0012\u00028\u00000\u0002B8\u0012/\u0010\b\u001a+\u0012'\u0012%\u0012\u0015\u0012\u0013\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\u0002\b\u0007\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00020\u00040\u0003¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lkotlinx/datetime/internal/format/formatter/ConditionalFormatter;", "T", "Lkotlinx/datetime/internal/format/formatter/FormatterStructure;", "", "Lkotlin/Pair;", "Lkotlin/Function1;", "", "Lkotlin/ExtensionFunctionType;", "formatters", "<init>", "(Ljava/util/List;)V", "kotlinx-datetime"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ConditionalFormatter<T> implements FormatterStructure<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f75429a;

    public ConditionalFormatter(List<? extends Pair<? extends Function1<? super T, Boolean>, ? extends FormatterStructure<? super T>>> list) {
        list.getClass();
        this.f75429a = list;
    }
}
