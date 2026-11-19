package kotlinx.serialization.internal;

import defpackage.cj;
import defpackage.d21;
import defpackage.fc;
import io.jsonwebtoken.JwtParser;
import kotlin.Metadata;
import kotlin.reflect.KClass;
import kotlinx.serialization.SerializationException;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"kotlinx-serialization-core"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class AbstractPolymorphicSerializerKt {
    public static final void a(String str, KClass kClass) {
        String string;
        kClass.getClass();
        String str2 = "in the polymorphic scope of '" + kClass.B() + '\'';
        if (str == null) {
            string = d21.d(JwtParser.SEPARATOR_CHAR, "Class discriminator was missing and no default serializers were registered ", str2);
        } else {
            StringBuilder sbS = fc.s("Serializer for subclass '", str, "' is not found ", str2, ".\nCheck if class with serial name '");
            cj.C(sbS, str, "' exists and serializer is registered in a corresponding SerializersModule.\nTo be registered automatically, class '", str, "' has to be '@Serializable', and the base class '");
            sbS.append(kClass.B());
            sbS.append("' has to be sealed and '@Serializable'.");
            string = sbS.toString();
        }
        throw new SerializationException(string);
    }
}
