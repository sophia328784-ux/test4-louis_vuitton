package kotlin.reflect.jvm.internal.impl.types.checker;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.reflect.jvm.internal.impl.types.UnwrappedType;
import kotlin.reflect.jvm.internal.impl.types.model.KotlinTypeMarker;

/* JADX INFO: loaded from: classes4.dex */
final /* synthetic */ class KotlinTypePreparator$prepareType$1 extends FunctionReferenceImpl implements Function1<KotlinTypeMarker, UnwrappedType> {
    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        KotlinTypeMarker kotlinTypeMarker = (KotlinTypeMarker) obj;
        kotlinTypeMarker.getClass();
        return ((KotlinTypePreparator) this.receiver).a(kotlinTypeMarker);
    }
}
