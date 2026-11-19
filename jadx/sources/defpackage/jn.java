package defpackage;

import coil3.graphics.Decoder;
import coil3.util.UtilsKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class jn implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f71435b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Decoder.Factory f71436c;

    public /* synthetic */ jn(Decoder.Factory factory, int i2) {
        this.f71435b = i2;
        this.f71436c = factory;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        int i2 = this.f71435b;
        Decoder.Factory factory = this.f71436c;
        switch (i2) {
            case 0:
                break;
            case 1:
                break;
            default:
                Function1 function1 = UtilsKt.f21734a;
                break;
        }
        return CollectionsKt.O(factory);
    }
}
