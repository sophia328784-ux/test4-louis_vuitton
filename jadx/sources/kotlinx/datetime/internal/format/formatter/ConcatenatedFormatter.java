package kotlinx.datetime.internal.format.formatter;

import java.util.List;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\b\u0004\b\u0000\u0018\u0000*\u0006\b\u0000\u0010\u0001 \u00002\b\u0012\u0004\u0012\u00028\u00000\u0002B\u001b\u0012\u0012\u0010\u0004\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lkotlinx/datetime/internal/format/formatter/ConcatenatedFormatter;", "T", "Lkotlinx/datetime/internal/format/formatter/FormatterStructure;", "", "formatters", "<init>", "(Ljava/util/List;)V", "kotlinx-datetime"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ConcatenatedFormatter<T> implements FormatterStructure<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f75428a;

    public ConcatenatedFormatter(List<? extends FormatterStructure<? super T>> list) {
        list.getClass();
        this.f75428a = list;
    }
}
