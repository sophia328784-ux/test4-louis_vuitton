package kotlin.reflect.jvm.internal.impl.metadata.deserialization;

import java.util.Arrays;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes4.dex */
public final class MetadataVersion extends BinaryVersion {
    public static final MetadataVersion g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final MetadataVersion f73584h;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f73585f;

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
        MetadataVersion metadataVersion = new MetadataVersion(2, 3, 0);
        g = metadataVersion;
        int i2 = metadataVersion.f73570c;
        int i3 = metadataVersion.f73569b;
        f73584h = (i3 == 1 && i2 == 9) ? new MetadataVersion(2, 0, 0) : new MetadataVersion(i3, i2 + 1, 0);
        new MetadataVersion(new int[0]);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MetadataVersion(int[] iArr, boolean z) {
        super(Arrays.copyOf(iArr, iArr.length));
        iArr.getClass();
        this.f73585f = z;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public MetadataVersion(int... iArr) {
        this(iArr, false);
        iArr.getClass();
    }
}
