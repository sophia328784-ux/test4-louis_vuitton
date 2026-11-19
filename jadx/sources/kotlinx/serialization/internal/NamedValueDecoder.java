package kotlinx.serialization.internal;

import com.sightcall.universal.media.offline.FileUtils;
import io.jsonwebtoken.JwtParser;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlinx.serialization.InternalSerializationApi;
import kotlinx.serialization.descriptors.SerialDescriptor;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\b'\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lkotlinx/serialization/internal/NamedValueDecoder;", "Lkotlinx/serialization/internal/TaggedDecoder;", "", "<init>", "()V", "kotlinx-serialization-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
@InternalSerializationApi
public abstract class NamedValueDecoder extends TaggedDecoder<String> {
    @Override // kotlinx.serialization.internal.TaggedDecoder
    public final String S(SerialDescriptor serialDescriptor, int i2) {
        serialDescriptor.getClass();
        String strV = V(serialDescriptor, i2);
        strV.getClass();
        String str = (String) CollectionsKt.N(this.f75686a);
        if (str == null) {
            str = "";
        }
        return U(str, strV);
    }

    public String U(String str, String str2) {
        if (str.length() == 0) {
            return str2;
        }
        return str + JwtParser.SEPARATOR_CHAR + str2;
    }

    public String V(SerialDescriptor serialDescriptor, int i2) {
        serialDescriptor.getClass();
        return serialDescriptor.f(i2);
    }

    public final String W() {
        ArrayList arrayList = this.f75686a;
        return arrayList.isEmpty() ? "$" : CollectionsKt.K(arrayList, FileUtils.HIDDEN_PREFIX, "$.", null, null, 60);
    }
}
