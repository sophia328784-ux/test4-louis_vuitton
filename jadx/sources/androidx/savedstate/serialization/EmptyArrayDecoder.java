package androidx.savedstate.serialization;

import kotlin.Metadata;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.AbstractDecoder;
import kotlinx.serialization.modules.SerialModuleImpl;
import kotlinx.serialization.modules.SerializersModule;
import kotlinx.serialization.modules.SerializersModuleKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÂ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/savedstate/serialization/EmptyArrayDecoder;", "Lkotlinx/serialization/encoding/AbstractDecoder;", "savedstate"}, k = 1, mv = {2, 0, 0}, xi = 48)
final class EmptyArrayDecoder extends AbstractDecoder {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final EmptyArrayDecoder f19800a = new EmptyArrayDecoder();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final SerialModuleImpl f19801b = SerializersModuleKt.f75847a;

    @Override // kotlinx.serialization.encoding.CompositeDecoder
    /* JADX INFO: renamed from: a */
    public final SerializersModule getD() {
        return f19801b;
    }

    @Override // kotlinx.serialization.encoding.CompositeDecoder
    public final int n(SerialDescriptor serialDescriptor) {
        serialDescriptor.getClass();
        return -1;
    }
}
