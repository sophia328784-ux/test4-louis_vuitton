package kotlinx.serialization.json.internal;

import com.sightcall.universal.media.offline.FileUtils;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.StructureKind;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001:\u0001\u0004B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0005"}, d2 = {"Lkotlinx/serialization/json/internal/JsonPath;", "", "<init>", "()V", "Tombstone", "kotlinx-serialization-json"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class JsonPath {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Object[] f75789a = new Object[8];

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int[] f75790b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f75791c;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bÂ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lkotlinx/serialization/json/internal/JsonPath$Tombstone;", "", "kotlinx-serialization-json"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Tombstone {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final Tombstone f75792a = new Tombstone();
    }

    public JsonPath() {
        int[] iArr = new int[8];
        for (int i2 = 0; i2 < 8; i2++) {
            iArr[i2] = -1;
        }
        this.f75790b = iArr;
        this.f75791c = -1;
    }

    public final String a() {
        StringBuilder sb = new StringBuilder("$");
        int i2 = this.f75791c + 1;
        for (int i3 = 0; i3 < i2; i3++) {
            Object obj = this.f75789a[i3];
            if (obj instanceof SerialDescriptor) {
                SerialDescriptor serialDescriptor = (SerialDescriptor) obj;
                boolean zC = Intrinsics.c(serialDescriptor.e(), StructureKind.LIST.f75565a);
                int[] iArr = this.f75790b;
                if (!zC) {
                    int i4 = iArr[i3];
                    if (i4 >= 0) {
                        sb.append(FileUtils.HIDDEN_PREFIX);
                        sb.append(serialDescriptor.f(i4));
                    }
                } else if (iArr[i3] != -1) {
                    sb.append("[");
                    sb.append(this.f75790b[i3]);
                    sb.append("]");
                }
            } else if (obj != Tombstone.f75792a) {
                sb.append("['");
                sb.append(obj);
                sb.append("']");
            }
        }
        return sb.toString();
    }

    public final String toString() {
        return a();
    }
}
