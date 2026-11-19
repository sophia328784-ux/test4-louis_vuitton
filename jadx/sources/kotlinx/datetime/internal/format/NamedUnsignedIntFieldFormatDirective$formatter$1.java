package kotlinx.datetime.internal.format;

import defpackage.fc;
import defpackage.n00;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
final /* synthetic */ class NamedUnsignedIntFieldFormatDirective$formatter$1 extends FunctionReferenceImpl implements Function1<Object, String> {
    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        NamedUnsignedIntFieldFormatDirective namedUnsignedIntFieldFormatDirective = (NamedUnsignedIntFieldFormatDirective) this.receiver;
        UnsignedFieldSpec unsignedFieldSpec = namedUnsignedIntFieldFormatDirective.f75398a;
        int iIntValue = ((Number) unsignedFieldSpec.f75420a.b(obj)).intValue();
        String str = (String) CollectionsKt.G(iIntValue - unsignedFieldSpec.f75421b, namedUnsignedIntFieldFormatDirective.f75399b);
        if (str != null) {
            return str;
        }
        return n00.r(unsignedFieldSpec.d, " does not have a corresponding string representation", fc.q(iIntValue, "The value ", " of "));
    }
}
