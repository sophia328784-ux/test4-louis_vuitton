package kotlin.properties;

import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lkotlin/properties/Delegates;", "", "kotlin-stdlib"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final class Delegates {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Delegates f71937a = new Delegates();

    public static ReadWriteProperty a() {
        return new NotNullVar();
    }
}
