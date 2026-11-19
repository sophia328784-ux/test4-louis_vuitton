package kotlinx.collections.immutable;

import com.appsflyer.sdk_base.referrer.Payload;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.AbstractList;
import kotlin.jvm.internal.markers.KMappedMarker;
import kotlinx.collections.immutable.internal.ListImplementation;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\bf\u0018\u0000*\u0006\b\u0000\u0010\u0001 \u00012\b\u0012\u0004\u0012\u00028\u00000\u00022\b\u0012\u0004\u0012\u00028\u00000\u0003:\u0001\u0004¨\u0006\u0005"}, d2 = {"Lkotlinx/collections/immutable/ImmutableList;", "E", "", "Lkotlinx/collections/immutable/ImmutableCollection;", "SubList", "kotlinx-collections-immutable"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface ImmutableList<E> extends List<E>, ImmutableCollection<E>, KMappedMarker {

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\b\u0002\u0018\u0000*\u0004\b\u0001\u0010\u00012\b\u0012\u0004\u0012\u00028\u00010\u00022\b\u0012\u0004\u0012\u00028\u00010\u0003B%\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00010\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0005¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lkotlinx/collections/immutable/ImmutableList$SubList;", "E", "Lkotlinx/collections/immutable/ImmutableList;", "Lkotlin/collections/AbstractList;", Payload.SOURCE, "", "fromIndex", "toIndex", "<init>", "(Lkotlinx/collections/immutable/ImmutableList;II)V", "kotlinx-collections-immutable"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class SubList<E> extends AbstractList<E> implements ImmutableList<E> {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final ImmutableList f74602c;
        public final int d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final int f74603e;

        public SubList(ImmutableList<? extends E> immutableList, int i2, int i3) {
            immutableList.getClass();
            this.f74602c = immutableList;
            this.d = i2;
            ListImplementation.c(i2, i3, immutableList.size());
            this.f74603e = i3 - i2;
        }

        @Override // kotlin.collections.AbstractCollection
        /* JADX INFO: renamed from: f, reason: from getter */
        public final int getF71748e() {
            return this.f74603e;
        }

        @Override // kotlin.collections.AbstractList, java.util.List
        public final Object get(int i2) {
            ListImplementation.a(i2, this.f74603e);
            return this.f74602c.get(this.d + i2);
        }

        @Override // kotlin.collections.AbstractList, java.util.List, androidx.compose.runtime.external.kotlinx.collections.immutable.ImmutableList
        public final List subList(int i2, int i3) {
            ListImplementation.c(i2, i3, this.f74603e);
            int i4 = this.d;
            return new SubList(this.f74602c, i2 + i4, i4 + i3);
        }
    }
}
