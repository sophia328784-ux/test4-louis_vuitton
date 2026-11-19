package kotlin.reflect.jvm.internal.impl.types.checker;

import kotlin.reflect.jvm.internal.impl.types.TypeCheckerState;

/* JADX INFO: loaded from: classes4.dex */
public abstract class ClassicTypeCheckerStateKt {
    public static TypeCheckerState a(boolean z, SimpleClassicTypeSystemContext simpleClassicTypeSystemContext, KotlinTypePreparator kotlinTypePreparator, KotlinTypeRefiner kotlinTypeRefiner, int i2) {
        if ((i2 & 4) != 0) {
            simpleClassicTypeSystemContext = SimpleClassicTypeSystemContext.f74291a;
        }
        SimpleClassicTypeSystemContext simpleClassicTypeSystemContext2 = simpleClassicTypeSystemContext;
        if ((i2 & 8) != 0) {
            kotlinTypePreparator = KotlinTypePreparator.Default.f74270a;
        }
        KotlinTypePreparator kotlinTypePreparator2 = kotlinTypePreparator;
        if ((i2 & 16) != 0) {
            kotlinTypeRefiner = KotlinTypeRefiner.Default.f74271a;
        }
        KotlinTypeRefiner kotlinTypeRefiner2 = kotlinTypeRefiner;
        kotlinTypePreparator2.getClass();
        kotlinTypeRefiner2.getClass();
        return new TypeCheckerState(z, true, false, true, simpleClassicTypeSystemContext2, kotlinTypePreparator2, kotlinTypeRefiner2);
    }
}
