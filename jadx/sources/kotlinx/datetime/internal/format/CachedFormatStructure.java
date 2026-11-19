package kotlinx.datetime.internal.format;

import java.util.List;
import kotlin.Metadata;
import kotlinx.datetime.internal.format.formatter.FormatterStructure;
import kotlinx.datetime.internal.format.parser.ParserStructure;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u0000*\u0006\b\u0000\u0010\u0001 \u00002\b\u0012\u0004\u0012\u00028\u00000\u0002B\u001b\u0012\u0012\u0010\u0005\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00040\u0003¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lkotlinx/datetime/internal/format/CachedFormatStructure;", "T", "Lkotlinx/datetime/internal/format/ConcatenatedFormatStructure;", "", "Lkotlinx/datetime/internal/format/NonConcatenatedFormatStructure;", "formats", "<init>", "(Ljava/util/List;)V", "kotlinx-datetime"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class CachedFormatStructure<T> extends ConcatenatedFormatStructure<T> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final FormatterStructure f75385b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ParserStructure f75386c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CachedFormatStructure(List<? extends NonConcatenatedFormatStructure<? super T>> list) {
        super(list);
        list.getClass();
        this.f75385b = super.getF75385b();
        this.f75386c = super.getF75386c();
    }

    @Override // kotlinx.datetime.internal.format.ConcatenatedFormatStructure, kotlinx.datetime.internal.format.FormatStructure
    /* JADX INFO: renamed from: a, reason: from getter */
    public final FormatterStructure getF75385b() {
        return this.f75385b;
    }

    @Override // kotlinx.datetime.internal.format.ConcatenatedFormatStructure, kotlinx.datetime.internal.format.FormatStructure
    /* JADX INFO: renamed from: b, reason: from getter */
    public final ParserStructure getF75386c() {
        return this.f75386c;
    }
}
