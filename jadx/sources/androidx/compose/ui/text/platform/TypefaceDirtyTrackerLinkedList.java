package androidx.compose.ui.text.platform;

import androidx.compose.runtime.State;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0002\u0018\u00002\u00020\u0001B!\u0012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00010\u0002\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0000¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Landroidx/compose/ui/text/platform/TypefaceDirtyTrackerLinkedList;", "", "Landroidx/compose/runtime/State;", "resolveResult", "next", "<init>", "(Landroidx/compose/runtime/State;Landroidx/compose/ui/text/platform/TypefaceDirtyTrackerLinkedList;)V", "ui-text"}, k = 1, mv = {2, 1, 0}, xi = 48)
final class TypefaceDirtyTrackerLinkedList {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final State f10903a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final TypefaceDirtyTrackerLinkedList f10904b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object f10905c;

    public TypefaceDirtyTrackerLinkedList(State<? extends Object> state, TypefaceDirtyTrackerLinkedList typefaceDirtyTrackerLinkedList) {
        this.f10903a = state;
        this.f10904b = typefaceDirtyTrackerLinkedList;
        this.f10905c = state.getValue();
    }

    public final boolean a() {
        if (this.f10903a.getValue() != this.f10905c) {
            return true;
        }
        TypefaceDirtyTrackerLinkedList typefaceDirtyTrackerLinkedList = this.f10904b;
        return typefaceDirtyTrackerLinkedList != null && typefaceDirtyTrackerLinkedList.a();
    }

    public /* synthetic */ TypefaceDirtyTrackerLinkedList(State state, TypefaceDirtyTrackerLinkedList typefaceDirtyTrackerLinkedList, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(state, (i2 & 2) != 0 ? null : typefaceDirtyTrackerLinkedList);
    }
}
