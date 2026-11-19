package kotlinx.datetime.internal.format;

import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
final /* synthetic */ class SignedFormatStructure$formatter$1 extends FunctionReferenceImpl implements Function1<Object, Boolean> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ SignedFormatStructure f75413b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SignedFormatStructure$formatter$1(SignedFormatStructure signedFormatStructure) {
        super(1, Intrinsics.Kotlin.class, "checkIfAllNegative", "formatter$checkIfAllNegative(Lkotlinx/datetime/internal/format/SignedFormatStructure;Ljava/lang/Object;)Z", 0);
        this.f75413b = signedFormatStructure;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        boolean z = false;
        boolean z2 = false;
        for (FieldSign fieldSign : this.f75413b.f75412c) {
            if (Intrinsics.c(fieldSign.getF75338a().f75409a.get(obj), Boolean.TRUE)) {
                z2 = true;
            } else if (!fieldSign.a(obj)) {
                return Boolean.valueOf(z);
            }
        }
        z = z2;
        return Boolean.valueOf(z);
    }
}
