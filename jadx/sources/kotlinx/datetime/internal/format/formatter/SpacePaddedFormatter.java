package kotlinx.datetime.internal.format.formatter;

import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\b\u0000\u0018\u0000*\u0006\b\u0000\u0010\u0001 \u00002\b\u0012\u0004\u0012\u00028\u00000\u0002B\u001d\u0012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lkotlinx/datetime/internal/format/formatter/SpacePaddedFormatter;", "T", "Lkotlinx/datetime/internal/format/formatter/FormatterStructure;", "formatter", "", "padding", "<init>", "(Lkotlinx/datetime/internal/format/formatter/FormatterStructure;I)V", "kotlinx-datetime"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class SpacePaddedFormatter<T> implements FormatterStructure<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final FormatterStructure f75435a;

    public SpacePaddedFormatter(FormatterStructure<? super T> formatterStructure, int i2) {
        formatterStructure.getClass();
        this.f75435a = formatterStructure;
    }
}
