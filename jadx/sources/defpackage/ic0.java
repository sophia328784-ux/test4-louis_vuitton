package defpackage;

import com.networkbench.agent.impl.harvest.ConfigurationName;
import kotlin.Unit;
import kotlin.collections.EmptyList;
import kotlin.jvm.functions.Function1;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.ClassSerialDescriptorBuilder;
import kotlinx.serialization.descriptors.SerialDescriptor;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class ic0 implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f69943b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ KSerializer f69944c;
    public final /* synthetic */ KSerializer d;

    public /* synthetic */ ic0(KSerializer kSerializer, KSerializer kSerializer2, int i2) {
        this.f69943b = i2;
        this.f69944c = kSerializer;
        this.d = kSerializer2;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i2 = this.f69943b;
        KSerializer kSerializer = this.d;
        KSerializer kSerializer2 = this.f69944c;
        ClassSerialDescriptorBuilder classSerialDescriptorBuilder = (ClassSerialDescriptorBuilder) obj;
        switch (i2) {
            case 0:
                classSerialDescriptorBuilder.getClass();
                SerialDescriptor serialDescriptorA = kSerializer2.a();
                EmptyList emptyList = EmptyList.f71768b;
                classSerialDescriptorBuilder.a(ConfigurationName.KEY, serialDescriptorA, emptyList, false);
                classSerialDescriptorBuilder.a("value", kSerializer.a(), emptyList, false);
                break;
            default:
                classSerialDescriptorBuilder.getClass();
                SerialDescriptor serialDescriptorA2 = kSerializer2.a();
                EmptyList emptyList2 = EmptyList.f71768b;
                classSerialDescriptorBuilder.a("first", serialDescriptorA2, emptyList2, false);
                classSerialDescriptorBuilder.a("second", kSerializer.a(), emptyList2, false);
                break;
        }
        return Unit.f71739a;
    }
}
