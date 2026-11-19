package kotlin.reflect.jvm.internal.impl.metadata.builtins;

import java.io.DataInputStream;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import kotlin.collections.CollectionsKt;
import kotlin.collections.IntIterator;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.ranges.IntProgressionIterator;
import kotlin.ranges.IntRange;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.BinaryVersion;

/* JADX INFO: loaded from: classes4.dex */
public final class BuiltInsBinaryVersion extends BinaryVersion {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final Companion f73558f = new Companion(null);
    public static final BuiltInsBinaryVersion g = new BuiltInsBinaryVersion(1, 0, 7);

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public static BuiltInsBinaryVersion a(InputStream inputStream) {
            DataInputStream dataInputStream = new DataInputStream(inputStream);
            IntRange intRange = new IntRange(1, dataInputStream.readInt());
            ArrayList arrayList = new ArrayList(CollectionsKt.t(intRange, 10));
            Iterator<Integer> it = intRange.iterator();
            while (((IntProgressionIterator) it).d) {
                ((IntIterator) it).nextInt();
                arrayList.add(Integer.valueOf(dataInputStream.readInt()));
            }
            int[] iArrX0 = CollectionsKt.x0(arrayList);
            return new BuiltInsBinaryVersion(Arrays.copyOf(iArrX0, iArrX0.length));
        }
    }

    static {
        new BuiltInsBinaryVersion(new int[0]);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BuiltInsBinaryVersion(int... iArr) {
        super(Arrays.copyOf(iArr, iArr.length));
        iArr.getClass();
    }
}
