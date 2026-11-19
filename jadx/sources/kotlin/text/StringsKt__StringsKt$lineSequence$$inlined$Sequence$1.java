package kotlin.text;

import java.util.Iterator;
import kotlin.Metadata;
import kotlin.sequences.Sequence;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001¨\u0006\u0002"}, d2 = {"kotlin/text/StringsKt__StringsKt$lineSequence$$inlined$Sequence$1", "Lkotlin/sequences/Sequence;", "kotlin-stdlib"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final class StringsKt__StringsKt$lineSequence$$inlined$Sequence$1 implements Sequence<String> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ CharSequence f74556a;

    public StringsKt__StringsKt$lineSequence$$inlined$Sequence$1(CharSequence charSequence) {
        this.f74556a = charSequence;
    }

    @Override // kotlin.sequences.Sequence
    public final Iterator iterator() {
        return new LinesIterator(this.f74556a);
    }
}
