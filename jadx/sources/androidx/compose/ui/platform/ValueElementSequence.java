package androidx.compose.ui.platform;

import java.util.ArrayList;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.sequences.Sequence;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Landroidx/compose/ui/platform/ValueElementSequence;", "Lkotlin/sequences/Sequence;", "Landroidx/compose/ui/platform/ValueElement;", "<init>", "()V", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class ValueElementSequence implements Sequence<ValueElement> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ArrayList f10154a = new ArrayList();

    public final void b(Object obj, String str) {
        this.f10154a.add(new ValueElement(str, obj));
    }

    @Override // kotlin.sequences.Sequence
    public final Iterator iterator() {
        return this.f10154a.iterator();
    }
}
