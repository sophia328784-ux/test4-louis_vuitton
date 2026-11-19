package androidx.paging;

import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u00012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0001H\n¢\u0006\u0002\b\u0003"}, d2 = {"<anonymous>", "Landroidx/paging/CombinedLoadStates;", "currState", "invoke"}, k = 3, mv = {1, 8, 0}, xi = 48)
final class MutableCombinedLoadStateCollection$set$1 extends Lambda implements Function1<CombinedLoadStates, CombinedLoadStates> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ MutableCombinedLoadStateCollection f18655c;
    public final /* synthetic */ LoadStates d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ LoadStates f18656e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MutableCombinedLoadStateCollection$set$1(MutableCombinedLoadStateCollection mutableCombinedLoadStateCollection, LoadStates loadStates, LoadStates loadStates2) {
        super(1);
        this.f18655c = mutableCombinedLoadStateCollection;
        this.d = loadStates;
        this.f18656e = loadStates2;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        LoadStates loadStates = this.d;
        LoadStates loadStates2 = this.f18656e;
        return MutableCombinedLoadStateCollection.a(this.f18655c, (CombinedLoadStates) obj, loadStates, loadStates2);
    }
}
