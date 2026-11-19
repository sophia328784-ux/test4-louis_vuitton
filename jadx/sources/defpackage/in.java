package defpackage;

import coil3.util.UtilsKt;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class in implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f70012b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Pair f70013c;

    public /* synthetic */ in(Pair pair, int i2) {
        this.f70012b = i2;
        this.f70013c = pair;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        int i2 = this.f70012b;
        Pair pair = this.f70013c;
        switch (i2) {
            case 0:
                break;
            default:
                Function1 function1 = UtilsKt.f21734a;
                break;
        }
        return CollectionsKt.O(pair);
    }
}
