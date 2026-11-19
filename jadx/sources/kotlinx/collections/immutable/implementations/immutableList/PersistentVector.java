package kotlinx.collections.immutable.implementations.immutableList;

import java.util.ListIterator;
import kotlin.Metadata;
import kotlinx.collections.immutable.PersistentList;
import kotlinx.collections.immutable.internal.ListImplementation;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\b\u0000\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u00022\b\u0012\u0004\u0012\u00028\u00000\u0003B7\u0012\u000e\u0010\u0006\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0004\u0012\u000e\u0010\u0007\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0004\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\n\u001a\u00020\b¢\u0006\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"Lkotlinx/collections/immutable/implementations/immutableList/PersistentVector;", "E", "Lkotlinx/collections/immutable/PersistentList;", "Lkotlinx/collections/immutable/implementations/immutableList/AbstractPersistentList;", "", "", "root", "tail", "", "size", "rootShift", "<init>", "([Ljava/lang/Object;[Ljava/lang/Object;II)V", "kotlinx-collections-immutable"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class PersistentVector<E> extends AbstractPersistentList<E> implements PersistentList<E> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object[] f74607c;
    public final Object[] d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f74608e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f74609f;

    public PersistentVector(Object[] objArr, Object[] objArr2, int i2, int i3) {
        objArr.getClass();
        objArr2.getClass();
        this.f74607c = objArr;
        this.d = objArr2;
        this.f74608e = i2;
        this.f74609f = i3;
        if (getF74608e() > 32) {
            int length = objArr2.length;
            return;
        }
        throw new IllegalArgumentException(("Trie-based persistent vector should have at least 33 elements, got " + getF74608e()).toString());
    }

    @Override // kotlin.collections.AbstractCollection
    /* JADX INFO: renamed from: f, reason: from getter */
    public final int getF74608e() {
        return this.f74608e;
    }

    @Override // kotlin.collections.AbstractList, java.util.List
    public final Object get(int i2) {
        Object[] objArr;
        int i3 = this.f74608e;
        ListImplementation.a(i2, i3);
        if (((i3 - 1) & (-32)) <= i2) {
            objArr = this.d;
        } else {
            Object[] objArr2 = this.f74607c;
            for (int i4 = this.f74609f; i4 > 0; i4 -= 5) {
                Object[] objArr3 = objArr2[UtilsKt.a(i2, i4)];
                objArr3.getClass();
                objArr2 = objArr3;
            }
            objArr = objArr2;
        }
        return objArr[i2 & 31];
    }

    @Override // kotlin.collections.AbstractList, java.util.List
    public final ListIterator listIterator(int i2) {
        ListImplementation.b(i2, getF74608e());
        return new PersistentVectorIterator(this.f74607c, this.d, i2, getF74608e(), (this.f74609f / 5) + 1);
    }
}
