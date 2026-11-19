package kotlin.reflect.jvm.internal.impl.resolve.deprecation;

/* JADX INFO: loaded from: classes4.dex */
public abstract class DeprecationInfo implements Comparable<DeprecationInfo> {
    public abstract DeprecationLevelValue a();

    @Override // java.lang.Comparable
    public final int compareTo(DeprecationInfo deprecationInfo) {
        DeprecationInfo deprecationInfo2 = deprecationInfo;
        deprecationInfo2.getClass();
        return a().compareTo(deprecationInfo2.a());
    }
}
