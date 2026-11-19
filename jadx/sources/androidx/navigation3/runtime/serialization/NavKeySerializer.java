package androidx.navigation3.runtime.serialization;

import androidx.navigation3.runtime.NavKey;
import defpackage.ag0;
import kotlin.Metadata;
import kotlin.jvm.internal.Reflection;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerializersKt;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.SerialDescriptorImpl;
import kotlinx.serialization.descriptors.SerialDescriptorsKt;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0017\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u00012\b\u0012\u0004\u0012\u00028\u00000\u0003B\u0007¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/navigation3/runtime/serialization/NavKeySerializer;", "Landroidx/navigation3/runtime/NavKey;", "T", "Lkotlinx/serialization/KSerializer;", "<init>", "()V", "navigation3-runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
public class NavKeySerializer<T extends NavKey> implements KSerializer<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final SerialDescriptorImpl f18406a = SerialDescriptorsKt.c("androidx.navigation.runtime.NavKey", new SerialDescriptor[0], new ag0(15));

    @Override // kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    /* JADX INFO: renamed from: a */
    public final SerialDescriptor getF19838b() {
        return this.f18406a;
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public final Object b(Decoder decoder) throws ClassNotFoundException {
        SerialDescriptorImpl serialDescriptorImpl = this.f18406a;
        CompositeDecoder compositeDecoderB = decoder.b(serialDescriptorImpl);
        Object objW = compositeDecoderB.w(serialDescriptorImpl, compositeDecoderB.n(serialDescriptorImpl), SerializersKt.b(Reflection.f71922a.b(Class.forName(compositeDecoderB.l(serialDescriptorImpl, compositeDecoderB.n(serialDescriptorImpl))))), null);
        objW.getClass();
        NavKey navKey = (NavKey) objW;
        compositeDecoderB.c(serialDescriptorImpl);
        return navKey;
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        NavKey navKey = (NavKey) obj;
        SerialDescriptorImpl serialDescriptorImpl = this.f18406a;
        CompositeEncoder compositeEncoderB = encoder.b(serialDescriptorImpl);
        compositeEncoderB.y(serialDescriptorImpl, 0, navKey.getClass().getName());
        compositeEncoderB.A(serialDescriptorImpl, 1, SerializersKt.b(Reflection.f71922a.b(navKey.getClass())), navKey);
        compositeEncoderB.c(serialDescriptorImpl);
    }
}
