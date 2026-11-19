package kotlin.reflect;

import java.util.Collection;
import java.util.List;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bf\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u00012\u00020\u00032\u00020\u00042\u00020\u0005¨\u0006\u0006"}, d2 = {"Lkotlin/reflect/KClass;", "", "T", "Lkotlin/reflect/KDeclarationContainer;", "Lkotlin/reflect/KAnnotatedElement;", "Lkotlin/reflect/KClassifier;", "kotlin-stdlib"}, k = 1, mv = {2, 4, 0}, xi = 48)
public interface KClass<T> extends KDeclarationContainer, KAnnotatedElement, KClassifier {
    String B();

    boolean equals(Object obj);

    Collection f();

    List getTypeParameters();

    int hashCode();

    List i();

    boolean isAbstract();

    boolean k();

    boolean m();

    boolean r();

    Object s();

    boolean t(Object obj);

    Collection v();

    String w();
}
