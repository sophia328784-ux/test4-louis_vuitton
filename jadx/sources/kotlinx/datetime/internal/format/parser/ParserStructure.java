package kotlinx.datetime.internal.format.parser;

import defpackage.fc;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0000\u0018\u0000*\u0006\b\u0000\u0010\u0001 \u00002\u00020\u0002B/\u0012\u0012\u0010\u0005\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00040\u0003\u0012\u0012\u0010\u0006\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00000\u0003¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lkotlinx/datetime/internal/format/parser/ParserStructure;", "Output", "", "", "Lkotlinx/datetime/internal/format/parser/ParserOperation;", "operations", "followedBy", "<init>", "(Ljava/util/List;Ljava/util/List;)V", "kotlinx-datetime"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ParserStructure<Output> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f75466a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f75467b;

    public ParserStructure(List<? extends ParserOperation<? super Output>> list, List<? extends ParserStructure<? super Output>> list2) {
        list.getClass();
        list2.getClass();
        this.f75466a = list;
        this.f75467b = list2;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(CollectionsKt.K(this.f75466a, ", ", null, null, null, 62));
        sb.append('(');
        return fc.l(sb, CollectionsKt.K(this.f75467b, ";", null, null, null, 62), ')');
    }
}
