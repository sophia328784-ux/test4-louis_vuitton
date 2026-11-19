package kotlin;

import com.networkbench.agent.impl.NBSSpanMetricUnit;
import defpackage.o60;
import java.io.Serializable;
import kotlin.js.JsImplicitExport;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@JsImplicitExport
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0087\b\u0018\u0000*\u0006\b\u0000\u0010\u0001 \u0001*\u0006\b\u0001\u0010\u0002 \u0001*\u0006\b\u0002\u0010\u0003 \u00012\u00060\u0004j\u0002`\u0005B\u001f\u0012\u0006\u0010\u0006\u001a\u00028\u0000\u0012\u0006\u0010\u0007\u001a\u00028\u0001\u0012\u0006\u0010\b\u001a\u00028\u0002¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lkotlin/Triple;", "A", NBSSpanMetricUnit.Byte, "C", "Ljava/io/Serializable;", "Lkotlin/io/Serializable;", "first", "second", "third", "<init>", "(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V", "kotlin-stdlib"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final /* data */ class Triple<A, B, C> implements Serializable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f71716b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object f71717c;
    public final Object d;

    public Triple(A a2, B b2, C c2) {
        this.f71716b = a2;
        this.f71717c = b2;
        this.d = c2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Triple)) {
            return false;
        }
        Triple triple = (Triple) obj;
        return Intrinsics.c(this.f71716b, triple.f71716b) && Intrinsics.c(this.f71717c, triple.f71717c) && Intrinsics.c(this.d, triple.d);
    }

    public final int hashCode() {
        Object obj = this.f71716b;
        int iHashCode = (obj == null ? 0 : obj.hashCode()) * 31;
        Object obj2 = this.f71717c;
        int iHashCode2 = (iHashCode + (obj2 == null ? 0 : obj2.hashCode())) * 31;
        Object obj3 = this.d;
        return iHashCode2 + (obj3 != null ? obj3.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("(");
        sb.append(this.f71716b);
        sb.append(", ");
        sb.append(this.f71717c);
        sb.append(", ");
        return o60.r(sb, this.d, ')');
    }
}
