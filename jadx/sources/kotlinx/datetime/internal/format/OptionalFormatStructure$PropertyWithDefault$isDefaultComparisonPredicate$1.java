package kotlinx.datetime.internal.format;

import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
public final /* synthetic */ class OptionalFormatStructure$PropertyWithDefault$isDefaultComparisonPredicate$1 extends FunctionReferenceImpl implements Function1<Object, Object> {
    public OptionalFormatStructure$PropertyWithDefault$isDefaultComparisonPredicate$1(Object obj) {
        super(1, obj, Accessor.class, "getter", "getter(Ljava/lang/Object;)Ljava/lang/Object;", 0);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        return ((Accessor) this.receiver).a(obj);
    }
}
