package kotlin.reflect.jvm.internal.impl.serialization.deserialization.builtins;

import io.jsonwebtoken.JwtParser;
import kotlin.reflect.jvm.internal.impl.metadata.builtins.BuiltInsProtoBuf;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.name.FqNameUnsafe;
import kotlin.reflect.jvm.internal.impl.protobuf.ExtensionRegistryLite;
import kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite;
import kotlin.reflect.jvm.internal.impl.serialization.SerializerExtensionProtocol;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes4.dex */
public final class BuiltInSerializerProtocol extends SerializerExtensionProtocol {
    public static final BuiltInSerializerProtocol q;

    static {
        ExtensionRegistryLite extensionRegistryLite = new ExtensionRegistryLite();
        BuiltInsProtoBuf.a(extensionRegistryLite);
        GeneratedMessageLite.GeneratedExtension generatedExtension = BuiltInsProtoBuf.f73559a;
        generatedExtension.getClass();
        GeneratedMessageLite.GeneratedExtension generatedExtension2 = BuiltInsProtoBuf.f73561c;
        generatedExtension2.getClass();
        GeneratedMessageLite.GeneratedExtension generatedExtension3 = BuiltInsProtoBuf.f73560b;
        generatedExtension3.getClass();
        GeneratedMessageLite.GeneratedExtension generatedExtension4 = BuiltInsProtoBuf.d;
        generatedExtension4.getClass();
        GeneratedMessageLite.GeneratedExtension generatedExtension5 = BuiltInsProtoBuf.f73562e;
        generatedExtension5.getClass();
        GeneratedMessageLite.GeneratedExtension generatedExtension6 = BuiltInsProtoBuf.f73563f;
        generatedExtension6.getClass();
        GeneratedMessageLite.GeneratedExtension generatedExtension7 = BuiltInsProtoBuf.g;
        generatedExtension7.getClass();
        GeneratedMessageLite.GeneratedExtension generatedExtension8 = BuiltInsProtoBuf.f73565i;
        generatedExtension8.getClass();
        GeneratedMessageLite.GeneratedExtension generatedExtension9 = BuiltInsProtoBuf.f73564h;
        generatedExtension9.getClass();
        GeneratedMessageLite.GeneratedExtension generatedExtension10 = BuiltInsProtoBuf.f73566j;
        generatedExtension10.getClass();
        GeneratedMessageLite.GeneratedExtension generatedExtension11 = BuiltInsProtoBuf.f73567k;
        generatedExtension11.getClass();
        GeneratedMessageLite.GeneratedExtension generatedExtension12 = BuiltInsProtoBuf.l;
        generatedExtension12.getClass();
        q = new BuiltInSerializerProtocol(extensionRegistryLite, generatedExtension, generatedExtension2, generatedExtension3, generatedExtension4, null, generatedExtension5, generatedExtension6, generatedExtension7, null, null, null, generatedExtension8, generatedExtension9, generatedExtension10, generatedExtension11, generatedExtension12);
    }

    public static String a(FqName fqName) {
        String strB;
        fqName.getClass();
        StringBuilder sb = new StringBuilder();
        FqNameUnsafe fqNameUnsafe = fqName.f73679a;
        sb.append(StringsKt.I(fqNameUnsafe.f73683a, JwtParser.SEPARATOR_CHAR, '/'));
        sb.append('/');
        if (fqNameUnsafe.c()) {
            strB = "default-package";
        } else {
            strB = fqNameUnsafe.g().b();
            strB.getClass();
        }
        sb.append(strB.concat(".kotlin_builtins"));
        return sb.toString();
    }
}
