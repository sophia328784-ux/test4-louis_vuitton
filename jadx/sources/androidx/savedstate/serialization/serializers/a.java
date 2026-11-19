package androidx.savedstate.serialization.serializers;

import kotlin.jvm.functions.Function0;
import kotlinx.serialization.internal.ArrayListSerializer;
import kotlinx.serialization.internal.IntSerializer;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class a implements Function0 {
    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        SparseArraySerializer.SparseArraySurrogate.Companion companion = SparseArraySerializer.SparseArraySurrogate.INSTANCE;
        return new ArrayListSerializer(IntSerializer.f75624a);
    }
}
