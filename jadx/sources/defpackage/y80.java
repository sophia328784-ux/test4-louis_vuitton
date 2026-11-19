package defpackage;

import java.util.Objects;
import java.util.Set;
import java.util.StringJoiner;
import java.util.function.BiConsumer;
import org.apache.commons.lang3.stream.LangCollectors;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class y80 implements BiConsumer {
    @Override // java.util.function.BiConsumer
    public final void accept(Object obj, Object obj2) {
        Set set = LangCollectors.f77548a;
        ((StringJoiner) obj).add(Objects.toString(obj2, ""));
    }
}
