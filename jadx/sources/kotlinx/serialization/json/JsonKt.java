package kotlinx.serialization.json;

import defpackage.b21;
import defpackage.md;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"kotlinx-serialization-json"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class JsonKt {
    public static Json a(Function1 function1) {
        Json.Default r0 = Json.d;
        r0.getClass();
        JsonBuilder jsonBuilder = new JsonBuilder(r0);
        function1.invoke(jsonBuilder);
        if (jsonBuilder.q) {
            if (!Intrinsics.c(jsonBuilder.f75730h, "type")) {
                md.n("Class discriminator should not be specified when array polymorphism is specified");
                return null;
            }
            if (jsonBuilder.f75731i != ClassDiscriminatorMode.POLYMORPHIC) {
                md.n("useArrayPolymorphism option can only be used if classDiscriminatorMode in a default POLYMORPHIC state.");
                return null;
            }
        }
        boolean z = jsonBuilder.f75728e;
        String str = jsonBuilder.f75729f;
        if (z) {
            if (!Intrinsics.c(str, "    ")) {
                for (int i2 = 0; i2 < str.length(); i2++) {
                    char cCharAt = str.charAt(i2);
                    if (cCharAt != ' ' && cCharAt != '\t' && cCharAt != '\r' && cCharAt != '\n') {
                        b21.n("Only whitespace, tab, newline and carriage return are allowed as pretty print symbols. Had ".concat(str));
                        return null;
                    }
                }
            }
        } else if (!Intrinsics.c(str, "    ")) {
            md.n("Indent should not be specified when default printing mode is used");
            return null;
        }
        return new JsonImpl(new JsonConfiguration(jsonBuilder.f75725a, jsonBuilder.f75727c, jsonBuilder.d, jsonBuilder.p, jsonBuilder.f75728e, jsonBuilder.f75726b, jsonBuilder.f75729f, jsonBuilder.g, jsonBuilder.q, jsonBuilder.f75730h, jsonBuilder.o, jsonBuilder.f75732j, jsonBuilder.f75733k, jsonBuilder.l, jsonBuilder.m, jsonBuilder.n, jsonBuilder.f75731i), jsonBuilder.r);
    }
}
