package androidx.media3.container;

import androidx.media3.common.util.ParsableByteArray;
import java.util.ArrayList;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public abstract class Mp4Box {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f14277a;

    public static final class ContainerBox extends Mp4Box {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final long f14278b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final ArrayList f14279c;
        public final ArrayList d;

        public ContainerBox(int i2, long j2) {
            super(i2);
            this.f14278b = j2;
            this.f14279c = new ArrayList();
            this.d = new ArrayList();
        }

        public final ContainerBox b(int i2) {
            ArrayList arrayList = this.d;
            int size = arrayList.size();
            for (int i3 = 0; i3 < size; i3++) {
                ContainerBox containerBox = (ContainerBox) arrayList.get(i3);
                if (containerBox.f14277a == i2) {
                    return containerBox;
                }
            }
            return null;
        }

        public final LeafBox c(int i2) {
            ArrayList arrayList = this.f14279c;
            int size = arrayList.size();
            for (int i3 = 0; i3 < size; i3++) {
                LeafBox leafBox = (LeafBox) arrayList.get(i3);
                if (leafBox.f14277a == i2) {
                    return leafBox;
                }
            }
            return null;
        }

        @Override // androidx.media3.container.Mp4Box
        public final String toString() {
            return Mp4Box.a(this.f14277a) + " leaves: " + Arrays.toString(this.f14279c.toArray()) + " containers: " + Arrays.toString(this.d.toArray());
        }
    }

    public static final class LeafBox extends Mp4Box {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final ParsableByteArray f14280b;

        public LeafBox(int i2, ParsableByteArray parsableByteArray) {
            super(i2);
            this.f14280b = parsableByteArray;
        }
    }

    public Mp4Box(int i2) {
        this.f14277a = i2;
    }

    public static String a(int i2) {
        return "" + ((char) ((i2 >> 24) & 255)) + ((char) ((i2 >> 16) & 255)) + ((char) ((i2 >> 8) & 255)) + ((char) (i2 & 255));
    }

    public String toString() {
        return a(this.f14277a);
    }
}
