package kotlinx.datetime.internal.format;

import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlinx.datetime.internal.DecimalFraction;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
final /* synthetic */ class DecimalFractionFieldFormatDirective$formatter$1 extends FunctionReferenceImpl implements Function1<Object, DecimalFraction> {
    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        return (DecimalFraction) ((Accessor) this.receiver).b(obj);
    }
}
