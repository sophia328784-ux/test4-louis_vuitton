package kotlinx.serialization.internal;

import kotlin.Metadata;
import kotlin.jvm.internal.CharCompanionObject;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.CompositeEncoder;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0019\n\u0002\u0018\u0002\n\u0002\u0010\f\n\u0002\u0018\u0002\n\u0000\bÁ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u00012\u0014\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00050\u0003¨\u0006\u0006"}, d2 = {"Lkotlinx/serialization/internal/CharArraySerializer;", "Lkotlinx/serialization/KSerializer;", "", "Lkotlinx/serialization/internal/PrimitiveArraySerializer;", "", "Lkotlinx/serialization/internal/CharArrayBuilder;", "kotlinx-serialization-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class CharArraySerializer extends PrimitiveArraySerializer<Character, char[], CharArrayBuilder> implements KSerializer<char[]> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final CharArraySerializer f75585c;

    static {
        CharCompanionObject.f71906a.getClass();
        f75585c = new CharArraySerializer(CharSerializer.f75586a);
    }

    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public final int i(Object obj) {
        char[] cArr = (char[]) obj;
        cArr.getClass();
        return cArr.length;
    }

    @Override // kotlinx.serialization.internal.CollectionLikeSerializer, kotlinx.serialization.internal.AbstractCollectionSerializer
    public final void k(CompositeDecoder compositeDecoder, int i2, Object obj) {
        CharArrayBuilder charArrayBuilder = (CharArrayBuilder) obj;
        charArrayBuilder.getClass();
        char cD = compositeDecoder.d(this.f75670b, i2);
        charArrayBuilder.b(charArrayBuilder.getF75584b() + 1);
        char[] cArr = charArrayBuilder.f75583a;
        int i3 = charArrayBuilder.f75584b;
        charArrayBuilder.f75584b = i3 + 1;
        cArr[i3] = cD;
    }

    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public final Object l(Object obj) {
        char[] cArr = (char[]) obj;
        cArr.getClass();
        return new CharArrayBuilder(cArr);
    }

    @Override // kotlinx.serialization.internal.PrimitiveArraySerializer
    public final Object o() {
        return new char[0];
    }

    @Override // kotlinx.serialization.internal.PrimitiveArraySerializer
    public final void p(CompositeEncoder compositeEncoder, Object obj, int i2) {
        char[] cArr = (char[]) obj;
        compositeEncoder.getClass();
        cArr.getClass();
        for (int i3 = 0; i3 < i2; i3++) {
            compositeEncoder.f(this.f75670b, i3, cArr[i3]);
        }
    }
}
