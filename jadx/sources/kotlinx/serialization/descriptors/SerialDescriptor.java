package kotlinx.serialization.descriptors;

import java.util.List;
import kotlin.Metadata;
import kotlin.collections.EmptyList;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bg\u0018\u00002\u00020\u0001¨\u0006\u0002À\u0006\u0003"}, d2 = {"Lkotlinx/serialization/descriptors/SerialDescriptor;", "", "kotlinx-serialization-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
public interface SerialDescriptor {
    default boolean b() {
        return false;
    }

    int c(String str);

    int d();

    SerialKind e();

    String f(int i2);

    List g(int i2);

    default List getAnnotations() {
        return EmptyList.f71768b;
    }

    SerialDescriptor h(int i2);

    String i();

    default boolean isInline() {
        return false;
    }

    boolean j(int i2);
}
