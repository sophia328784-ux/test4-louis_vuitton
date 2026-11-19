package androidx.compose.ui;

import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0001¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/compose/ui/CombinedModifier;", "Landroidx/compose/ui/Modifier;", "outer", "inner", "<init>", "(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Modifier;)V", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class CombinedModifier implements Modifier {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Modifier f8599b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Modifier f8600c;

    /* JADX INFO: renamed from: androidx.compose.ui.CombinedModifier$toString$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\n¢\u0006\u0002\b\u0005"}, d2 = {"<anonymous>", "", "acc", "element", "Landroidx/compose/ui/Modifier$Element;", "invoke"}, k = 3, mv = {2, 1, 0}, xi = 48)
    final class AnonymousClass1 extends Lambda implements Function2<String, Modifier.Element, String> {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final AnonymousClass1 f8601c = new AnonymousClass1(2);

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            String str = (String) obj;
            Modifier.Element element = (Modifier.Element) obj2;
            if (str.length() == 0) {
                return element.toString();
            }
            return str + ", " + element;
        }
    }

    public CombinedModifier(Modifier modifier, Modifier modifier2) {
        this.f8599b = modifier;
        this.f8600c = modifier2;
    }

    @Override // androidx.compose.ui.Modifier
    public final Object b(Object obj, Function2 function2) {
        return this.f8600c.b(this.f8599b.b(obj, function2), function2);
    }

    @Override // androidx.compose.ui.Modifier
    public final boolean d(Function1 function1) {
        return this.f8599b.d(function1) && this.f8600c.d(function1);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof CombinedModifier)) {
            return false;
        }
        CombinedModifier combinedModifier = (CombinedModifier) obj;
        return Intrinsics.c(this.f8599b, combinedModifier.f8599b) && Intrinsics.c(this.f8600c, combinedModifier.f8600c);
    }

    public final int hashCode() {
        return (this.f8600c.hashCode() * 31) + this.f8599b.hashCode();
    }

    public final String toString() {
        return fc.l(new StringBuilder("["), (String) b("", AnonymousClass1.f8601c), ']');
    }
}
