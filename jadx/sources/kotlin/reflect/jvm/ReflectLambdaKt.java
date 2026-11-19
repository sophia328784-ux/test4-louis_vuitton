package kotlin.reflect.jvm;

import kotlin.Function;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.reflect.jvm.internal.DescriptorKFunction;
import kotlin.reflect.jvm.internal.EmptyContainerForLocal;
import kotlin.reflect.jvm.internal.UtilKt;
import kotlin.reflect.jvm.internal.impl.descriptors.SimpleFunctionDescriptor;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Function;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$TypeTable;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.MetadataVersion;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.TypeTable;
import kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization.JvmNameResolver;
import kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization.JvmProtoBufUtil;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"kotlin-reflection"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class ReflectLambdaKt {
    public static final DescriptorKFunction a(Function function) {
        Metadata metadata = (Metadata) function.getClass().getAnnotation(Metadata.class);
        if (metadata != null) {
            String[] strArrD1 = metadata.d1();
            if (strArrD1.length == 0) {
                strArrD1 = null;
            }
            if (strArrD1 != null) {
                Pair pairG = JvmProtoBufUtil.g(strArrD1, metadata.d2());
                JvmNameResolver jvmNameResolver = (JvmNameResolver) pairG.f71705b;
                ProtoBuf$Function protoBuf$Function = (ProtoBuf$Function) pairG.f71706c;
                MetadataVersion metadataVersion = new MetadataVersion(metadata.mv(), (metadata.xi() & 8) != 0);
                Class<?> cls = function.getClass();
                ProtoBuf$TypeTable protoBuf$TypeTable = protoBuf$Function.r;
                protoBuf$TypeTable.getClass();
                return new DescriptorKFunction(EmptyContainerForLocal.f72070e, (SimpleFunctionDescriptor) UtilKt.e(cls, protoBuf$Function, jvmNameResolver, new TypeTable(protoBuf$TypeTable), metadataVersion, ReflectLambdaKt$reflect$descriptor$1.f71975b));
            }
        }
        return null;
    }
}
