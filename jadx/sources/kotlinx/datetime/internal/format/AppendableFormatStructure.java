package kotlinx.datetime.internal.format;

import java.util.ArrayList;
import java.util.Iterator;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0000\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002B\u0007¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lkotlinx/datetime/internal/format/AppendableFormatStructure;", "T", "", "<init>", "()V", "kotlinx-datetime"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class AppendableFormatStructure<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ArrayList f75383a = new ArrayList();

    public final void a(FormatStructure formatStructure) {
        formatStructure.getClass();
        boolean z = formatStructure instanceof NonConcatenatedFormatStructure;
        ArrayList arrayList = this.f75383a;
        if (z) {
            arrayList.add(formatStructure);
        } else if (formatStructure instanceof ConcatenatedFormatStructure) {
            Iterator<T> it = ((ConcatenatedFormatStructure) formatStructure).f75389a.iterator();
            while (it.hasNext()) {
                arrayList.add((NonConcatenatedFormatStructure) it.next());
            }
        }
    }
}
