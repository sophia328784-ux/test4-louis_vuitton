package kotlin.coroutines;

import defpackage.f0;
import defpackage.fc;
import defpackage.fl;
import defpackage.md;
import defpackage.rq;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$IntRef;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u00012\u00060\u0002j\u0002`\u0003:\u0001\u0012B\u0017\u0012\u0006\u0010\u0004\u001a\u00020\u0001\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\n\u001a\u00020\tH\u0002¢\u0006\u0004\b\n\u0010\u000bJ\u001b\u0010\u0010\u001a\u00020\u000f2\n\u0010\u000e\u001a\u00060\fj\u0002`\rH\u0002¢\u0006\u0004\b\u0010\u0010\u0011¨\u0006\u0013"}, d2 = {"Lkotlin/coroutines/CombinedContext;", "Lkotlin/coroutines/CoroutineContext;", "Ljava/io/Serializable;", "Lkotlin/io/Serializable;", "left", "Lkotlin/coroutines/CoroutineContext$Element;", "element", "<init>", "(Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/CoroutineContext$Element;)V", "", "writeReplace", "()Ljava/lang/Object;", "Ljava/io/ObjectInputStream;", "Lkotlin/internal/ReadObjectParameterType;", "input", "", "readObject", "(Ljava/io/ObjectInputStream;)V", "Serialized", "kotlin-stdlib"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final class CombinedContext implements CoroutineContext, Serializable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final CoroutineContext f71835b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final CoroutineContext.Element f71836c;

    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0000\n\u0002\b\u0005\b\u0002\u0018\u0000 \u000b2\u00060\u0001j\u0002`\u0002:\u0001\fB\u0015\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\u0004\b\u0006\u0010\u0007J\u000f\u0010\t\u001a\u00020\bH\u0002¢\u0006\u0004\b\t\u0010\n¨\u0006\r"}, d2 = {"Lkotlin/coroutines/CombinedContext$Serialized;", "Ljava/io/Serializable;", "Lkotlin/io/Serializable;", "", "Lkotlin/coroutines/CoroutineContext;", "elements", "<init>", "([Lkotlin/coroutines/CoroutineContext;)V", "", "readResolve", "()Ljava/lang/Object;", "c", "Companion", "kotlin-stdlib"}, k = 1, mv = {2, 4, 0}, xi = 48)
    public static final class Serialized implements Serializable {
        private static final long serialVersionUID = 0;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final CoroutineContext[] f71838b;

        public Serialized(CoroutineContext[] coroutineContextArr) {
            coroutineContextArr.getClass();
            this.f71838b = coroutineContextArr;
        }

        private final Object readResolve() {
            CoroutineContext coroutineContextPlus = EmptyCoroutineContext.f71840b;
            for (CoroutineContext coroutineContext : this.f71838b) {
                coroutineContextPlus = coroutineContextPlus.plus(coroutineContext);
            }
            return coroutineContextPlus;
        }
    }

    public CombinedContext(CoroutineContext coroutineContext, CoroutineContext.Element element) {
        coroutineContext.getClass();
        element.getClass();
        this.f71835b = coroutineContext;
        this.f71836c = element;
    }

    private final void readObject(ObjectInputStream input) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization is supported via proxy only");
    }

    private final Object writeReplace() {
        int iA = a();
        CoroutineContext[] coroutineContextArr = new CoroutineContext[iA];
        Ref$IntRef ref$IntRef = new Ref$IntRef();
        fold(Unit.f71739a, new f0(coroutineContextArr, ref$IntRef, 26));
        if (ref$IntRef.f71919b == iA) {
            return new Serialized(coroutineContextArr);
        }
        md.k("Check failed.");
        return null;
    }

    public final int a() {
        int i2 = 2;
        while (true) {
            CoroutineContext coroutineContext = this.f71835b;
            this = coroutineContext instanceof CombinedContext ? (CombinedContext) coroutineContext : null;
            if (this == null) {
                return i2;
            }
            i2++;
        }
    }

    public final boolean equals(Object obj) {
        boolean zC;
        if (this == obj) {
            return true;
        }
        if (obj instanceof CombinedContext) {
            CombinedContext combinedContext = (CombinedContext) obj;
            if (combinedContext.a() == a()) {
                while (true) {
                    CoroutineContext.Element element = this.f71836c;
                    if (!Intrinsics.c(combinedContext.get(element.getKey()), element)) {
                        zC = false;
                        break;
                    }
                    CoroutineContext coroutineContext = this.f71835b;
                    if (!(coroutineContext instanceof CombinedContext)) {
                        coroutineContext.getClass();
                        CoroutineContext.Element element2 = (CoroutineContext.Element) coroutineContext;
                        zC = Intrinsics.c(combinedContext.get(element2.getKey()), element2);
                        break;
                    }
                    this = (CombinedContext) coroutineContext;
                }
                if (zC) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // kotlin.coroutines.CoroutineContext
    public final Object fold(Object obj, Function2 function2) {
        function2.getClass();
        return function2.invoke(this.f71835b.fold(obj, function2), this.f71836c);
    }

    @Override // kotlin.coroutines.CoroutineContext
    public final CoroutineContext.Element get(CoroutineContext.Key key) {
        key.getClass();
        while (true) {
            CoroutineContext.Element element = this.f71836c.get(key);
            if (element != null) {
                return element;
            }
            CoroutineContext coroutineContext = this.f71835b;
            if (!(coroutineContext instanceof CombinedContext)) {
                return coroutineContext.get(key);
            }
            this = (CombinedContext) coroutineContext;
        }
    }

    public final int hashCode() {
        return this.f71836c.hashCode() + this.f71835b.hashCode();
    }

    @Override // kotlin.coroutines.CoroutineContext
    public final CoroutineContext minusKey(CoroutineContext.Key key) {
        key.getClass();
        CoroutineContext.Element element = this.f71836c;
        CoroutineContext.Element element2 = element.get(key);
        CoroutineContext coroutineContext = this.f71835b;
        if (element2 != null) {
            return coroutineContext;
        }
        CoroutineContext coroutineContextMinusKey = coroutineContext.minusKey(key);
        if (coroutineContextMinusKey == coroutineContext) {
            return this;
        }
        return coroutineContextMinusKey == EmptyCoroutineContext.f71840b ? element : new CombinedContext(coroutineContextMinusKey, element);
    }

    @Override // kotlin.coroutines.CoroutineContext
    public final CoroutineContext plus(CoroutineContext coroutineContext) {
        coroutineContext.getClass();
        return coroutineContext == EmptyCoroutineContext.f71840b ? this : (CoroutineContext) coroutineContext.fold(this, new rq(0));
    }

    public final String toString() {
        return fc.l(new StringBuilder("["), (String) fold("", new fl(3, (byte) 0)), ']');
    }
}
