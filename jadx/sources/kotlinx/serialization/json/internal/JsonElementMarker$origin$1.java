package kotlinx.serialization.json.internal;

import kotlin.Metadata;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlinx.serialization.descriptors.SerialDescriptor;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
public /* synthetic */ class JsonElementMarker$origin$1 extends FunctionReferenceImpl implements Function2<SerialDescriptor, Integer, Boolean> {
    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        SerialDescriptor serialDescriptor = (SerialDescriptor) obj;
        int iIntValue = ((Number) obj2).intValue();
        serialDescriptor.getClass();
        JsonElementMarker jsonElementMarker = (JsonElementMarker) this.receiver;
        jsonElementMarker.getClass();
        boolean z = !serialDescriptor.j(iIntValue) && serialDescriptor.h(iIntValue).b();
        jsonElementMarker.f75786b = z;
        return Boolean.valueOf(z);
    }
}
