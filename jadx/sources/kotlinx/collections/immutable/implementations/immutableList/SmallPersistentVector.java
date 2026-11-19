package kotlinx.collections.immutable.implementations.immutableList;

import java.util.ListIterator;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.collections.immutable.ImmutableList;
import kotlinx.collections.immutable.internal.ListImplementation;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0002\b\u0005\b\u0000\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u00022\b\u0012\u0004\u0012\u00028\u00000\u0003:\u0001\tB\u0017\u0012\u000e\u0010\u0006\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0004¢\u0006\u0004\b\u0007\u0010\b¨\u0006\n"}, d2 = {"Lkotlinx/collections/immutable/implementations/immutableList/SmallPersistentVector;", "E", "Lkotlinx/collections/immutable/ImmutableList;", "Lkotlinx/collections/immutable/implementations/immutableList/AbstractPersistentList;", "", "", "buffer", "<init>", "([Ljava/lang/Object;)V", "Companion", "kotlinx-collections-immutable"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class SmallPersistentVector<E> extends AbstractPersistentList<E> implements ImmutableList<E> {
    public static final Companion d = new Companion(null);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final SmallPersistentVector f74620e = new SmallPersistentVector(new Object[0]);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object[] f74621c;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lkotlinx/collections/immutable/implementations/immutableList/SmallPersistentVector$Companion;", "", "kotlinx-collections-immutable"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    public SmallPersistentVector(Object[] objArr) {
        objArr.getClass();
        this.f74621c = objArr;
        int length = objArr.length;
    }

    @Override // kotlin.collections.AbstractCollection
    /* JADX INFO: renamed from: f */
    public final int getF74603e() {
        return this.f74621c.length;
    }

    @Override // kotlin.collections.AbstractList, java.util.List
    public final Object get(int i2) {
        ListImplementation.a(i2, getF74603e());
        return this.f74621c[i2];
    }

    public final PersistentVectorBuilder h() {
        return new PersistentVectorBuilder(this, null, this.f74621c, 0);
    }

    @Override // kotlin.collections.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        return ArraysKt.E(this.f74621c, obj);
    }

    @Override // kotlin.collections.AbstractList, java.util.List
    public final int lastIndexOf(Object obj) {
        return ArraysKt.J(obj, this.f74621c);
    }

    @Override // kotlin.collections.AbstractList, java.util.List
    public final ListIterator listIterator(int i2) {
        ListImplementation.b(i2, getF74603e());
        return new BufferIterator(this.f74621c, i2, getF74603e());
    }
}
