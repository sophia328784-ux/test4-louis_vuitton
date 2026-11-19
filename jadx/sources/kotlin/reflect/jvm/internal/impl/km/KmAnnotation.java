package kotlin.reflect.jvm.internal.impl.km;

import java.util.Map;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class KmAnnotation {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f72667a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Map f72668b;

    public KmAnnotation(String str, Map<String, ? extends KmAnnotationArgument> map) {
        str.getClass();
        map.getClass();
        this.f72667a = str;
        this.f72668b = map;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof KmAnnotation)) {
            return false;
        }
        KmAnnotation kmAnnotation = (KmAnnotation) obj;
        return Intrinsics.c(this.f72667a, kmAnnotation.f72667a) && Intrinsics.c(this.f72668b, kmAnnotation.f72668b);
    }

    public final int hashCode() {
        return this.f72668b.hashCode() + (this.f72667a.hashCode() * 31);
    }

    public final String toString() {
        return "@" + this.f72667a + '(' + CollectionsKt.K(MapsKt.m(this.f72668b), null, null, null, new Function1() { // from class: kotlin.reflect.jvm.internal.impl.km.KmAnnotation$$Lambda$0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Pair pair = (Pair) obj;
                pair.getClass();
                return ((String) pair.f71705b) + " = " + ((KmAnnotationArgument) pair.f71706c);
            }
        }, 31) + ')';
    }
}
