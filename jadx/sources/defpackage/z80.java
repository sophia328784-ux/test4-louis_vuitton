package defpackage;

import java.util.StringJoiner;
import java.util.function.BinaryOperator;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class z80 implements BinaryOperator {
    @Override // java.util.function.BiFunction
    public final Object apply(Object obj, Object obj2) {
        return ((StringJoiner) obj).merge((StringJoiner) obj2);
    }
}
