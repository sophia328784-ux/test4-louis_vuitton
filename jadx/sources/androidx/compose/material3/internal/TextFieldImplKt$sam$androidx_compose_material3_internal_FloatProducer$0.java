package androidx.compose.material3.internal;

import kotlin.Function;
import kotlin.Metadata;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.PropertyReference0Impl;

/* JADX INFO: loaded from: classes.dex */
@Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
public final class TextFieldImplKt$sam$androidx_compose_material3_internal_FloatProducer$0 implements FloatProducer, FunctionAdapter {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ PropertyReference0Impl f7678b;

    public TextFieldImplKt$sam$androidx_compose_material3_internal_FloatProducer$0(PropertyReference0Impl propertyReference0Impl) {
        this.f7678b = propertyReference0Impl;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof FloatProducer) || !(obj instanceof FunctionAdapter)) {
            return false;
        }
        return this.f7678b.equals(((FunctionAdapter) obj).getFunctionDelegate());
    }

    @Override // kotlin.jvm.internal.FunctionAdapter
    public final Function getFunctionDelegate() {
        return this.f7678b;
    }

    public final int hashCode() {
        return this.f7678b.hashCode();
    }

    @Override // androidx.compose.material3.internal.FloatProducer
    public final float invoke() {
        return ((Number) this.f7678b.get()).floatValue();
    }
}
