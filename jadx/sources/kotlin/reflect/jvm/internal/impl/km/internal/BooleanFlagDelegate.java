package kotlin.reflect.jvm.internal.impl.km.internal;

import defpackage.lc0;
import kotlin.reflect.KMutableProperty1;
import kotlin.reflect.KProperty;

/* JADX INFO: loaded from: classes4.dex */
public final class BooleanFlagDelegate<Node> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final KMutableProperty1 f72762a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final FlagImpl f72763b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f72764c;

    public BooleanFlagDelegate(KMutableProperty1<Node, Integer> kMutableProperty1, FlagImpl flagImpl) {
        kMutableProperty1.getClass();
        flagImpl.getClass();
        this.f72762a = kMutableProperty1;
        this.f72763b = flagImpl;
        if (flagImpl.f72777b == 1 && flagImpl.f72778c == 1) {
            this.f72764c = 1 << flagImpl.f72776a;
        } else {
            lc0.v("BooleanFlagDelegate can work only with boolean flags (bitWidth = 1 and value = 1), but ", flagImpl, " was passed");
            throw null;
        }
    }

    public final boolean a(Object obj, KProperty kProperty) {
        kProperty.getClass();
        int iIntValue = ((Number) this.f72762a.get(obj)).intValue();
        FlagImpl flagImpl = this.f72763b;
        return ((iIntValue >>> flagImpl.f72776a) & ((1 << flagImpl.f72777b) - 1)) == flagImpl.f72778c;
    }
}
