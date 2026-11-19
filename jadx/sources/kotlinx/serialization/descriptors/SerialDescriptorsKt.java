package kotlinx.serialization.descriptors;

import defpackage.md;
import defpackage.pq0;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.jvm.functions.Function1;
import kotlin.text.StringsKt;
import kotlinx.serialization.internal.PrimitiveSerialDescriptor;
import kotlinx.serialization.internal.PrimitivesKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"kotlinx-serialization-core"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class SerialDescriptorsKt {
    public static final PrimitiveSerialDescriptor a(String str, PrimitiveKind primitiveKind) {
        primitiveKind.getClass();
        if (StringsKt.w(str)) {
            md.n("Blank serial names are prohibited");
            return null;
        }
        PrimitivesKt.a(str);
        return new PrimitiveSerialDescriptor(str, primitiveKind);
    }

    public static final WrappedSerialDescriptor b(String str, SerialDescriptor serialDescriptor) {
        serialDescriptor.getClass();
        if (StringsKt.w(str)) {
            md.n("Blank serial names are prohibited");
            return null;
        }
        if (!str.equals(serialDescriptor.getF75568a())) {
            if (serialDescriptor.getF75548b() instanceof PrimitiveKind) {
                PrimitivesKt.a(str);
            }
            return new WrappedSerialDescriptor(str, serialDescriptor);
        }
        StringBuilder sbR = pq0.r("The name of the wrapped descriptor (", str, ") cannot be the same as the name of the original descriptor (");
        sbR.append(serialDescriptor.getF75568a());
        sbR.append(')');
        throw new IllegalArgumentException(sbR.toString().toString());
    }

    public static final SerialDescriptorImpl c(String str, SerialDescriptor[] serialDescriptorArr, Function1 function1) {
        function1.getClass();
        if (StringsKt.w(str)) {
            md.n("Blank serial names are prohibited");
            return null;
        }
        ClassSerialDescriptorBuilder classSerialDescriptorBuilder = new ClassSerialDescriptorBuilder(str);
        function1.invoke(classSerialDescriptorBuilder);
        return new SerialDescriptorImpl(str, StructureKind.CLASS.f75564a, classSerialDescriptorBuilder.f75530c.size(), ArraysKt.W(serialDescriptorArr), classSerialDescriptorBuilder);
    }

    public static SerialDescriptorImpl d(String str, SerialDescriptor[] serialDescriptorArr) {
        if (StringsKt.w(str)) {
            md.n("Blank serial names are prohibited");
            return null;
        }
        ClassSerialDescriptorBuilder classSerialDescriptorBuilder = new ClassSerialDescriptorBuilder(str);
        return new SerialDescriptorImpl(str, StructureKind.CLASS.f75564a, classSerialDescriptorBuilder.f75530c.size(), ArraysKt.W(serialDescriptorArr), classSerialDescriptorBuilder);
    }

    public static final SerialDescriptorImpl e(String str, SerialKind serialKind, SerialDescriptor[] serialDescriptorArr, Function1 function1) {
        str.getClass();
        serialKind.getClass();
        if (StringsKt.w(str)) {
            md.n("Blank serial names are prohibited");
            return null;
        }
        if (serialKind.equals(StructureKind.CLASS.f75564a)) {
            md.n("For StructureKind.CLASS please use 'buildClassSerialDescriptor' instead");
            return null;
        }
        ClassSerialDescriptorBuilder classSerialDescriptorBuilder = new ClassSerialDescriptorBuilder(str);
        function1.invoke(classSerialDescriptorBuilder);
        return new SerialDescriptorImpl(str, serialKind, classSerialDescriptorBuilder.f75530c.size(), ArraysKt.W(serialDescriptorArr), classSerialDescriptorBuilder);
    }

    public static SerialDescriptorImpl f(String str, SerialKind serialKind, SerialDescriptor[] serialDescriptorArr) {
        serialKind.getClass();
        if (StringsKt.w(str)) {
            md.n("Blank serial names are prohibited");
            return null;
        }
        if (serialKind.equals(StructureKind.CLASS.f75564a)) {
            md.n("For StructureKind.CLASS please use 'buildClassSerialDescriptor' instead");
            return null;
        }
        ClassSerialDescriptorBuilder classSerialDescriptorBuilder = new ClassSerialDescriptorBuilder(str);
        return new SerialDescriptorImpl(str, serialKind, classSerialDescriptorBuilder.f75530c.size(), ArraysKt.W(serialDescriptorArr), classSerialDescriptorBuilder);
    }
}
