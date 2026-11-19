package defpackage;

import java.util.function.Predicate;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class b4 implements Predicate {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f20742a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Function1 f20743b;

    public /* synthetic */ b4(Function1 function1, int i2) {
        this.f20742a = i2;
        this.f20743b = function1;
    }

    @Override // java.util.function.Predicate
    public final boolean test(Object obj) {
        int i2 = this.f20742a;
        Function1 function1 = this.f20743b;
        switch (i2) {
            case 0:
                return ((Boolean) ((a4) function1).invoke(obj)).booleanValue();
            case 1:
                return ((Boolean) ((a4) function1).invoke(obj)).booleanValue();
            case 2:
                return ((Boolean) ((c1) function1).invoke(obj)).booleanValue();
            case 3:
                return ((Boolean) ((c1) function1).invoke(obj)).booleanValue();
            case 4:
                return ((Boolean) ((u5) function1).invoke(obj)).booleanValue();
            default:
                return ((Boolean) ((nj0) function1).invoke(obj)).booleanValue();
        }
    }
}
