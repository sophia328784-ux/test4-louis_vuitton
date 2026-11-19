package androidx.savedstate.serialization;

import android.os.Bundle;
import android.util.Size;
import android.util.SizeF;
import android.util.SparseArray;
import androidx.savedstate.serialization.serializers.SavedStateSerializer;
import androidx.savedstate.serialization.serializers.SizeFSerializer;
import androidx.savedstate.serialization.serializers.SizeSerializer;
import defpackage.gt0;
import kotlin.Metadata;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.ReflectionFactory;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.serialization.modules.SerialModuleImpl;
import kotlinx.serialization.modules.SerializersModuleBuilder;
import kotlinx.serialization.modules.SerializersModuleKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"savedstate"}, k = 2, mv = {2, 0, 0}, xi = 48)
public abstract class SavedStateConfigurationKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final SerialModuleImpl f19821a;

    static {
        SerializersModuleBuilder serializersModuleBuilder = new SerializersModuleBuilder();
        SavedStateSerializer savedStateSerializer = SavedStateSerializer.f19843a;
        ReflectionFactory reflectionFactory = Reflection.f71922a;
        serializersModuleBuilder.c(reflectionFactory.b(Bundle.class), savedStateSerializer);
        serializersModuleBuilder.e(reflectionFactory.b(MutableStateFlow.class), new gt0(8));
        SerialModuleImpl serialModuleImplF = serializersModuleBuilder.f();
        SerializersModuleBuilder serializersModuleBuilder2 = new SerializersModuleBuilder();
        serializersModuleBuilder2.c(reflectionFactory.b(Size.class), SizeSerializer.f19847a);
        serializersModuleBuilder2.c(reflectionFactory.b(SizeF.class), SizeFSerializer.f19845a);
        serializersModuleBuilder2.e(reflectionFactory.b(SparseArray.class), new gt0(9));
        SerialModuleImpl serialModuleImplF2 = serializersModuleBuilder2.f();
        SerialModuleImpl serialModuleImpl = SerializersModuleKt.f75847a;
        SerializersModuleBuilder serializersModuleBuilder3 = new SerializersModuleBuilder();
        serialModuleImplF.a(serializersModuleBuilder3);
        serialModuleImplF2.a(serializersModuleBuilder3);
        f19821a = serializersModuleBuilder3.f();
    }
}
