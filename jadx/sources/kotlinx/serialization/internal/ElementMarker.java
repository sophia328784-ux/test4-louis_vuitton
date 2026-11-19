package kotlinx.serialization.internal;

import kotlin.Metadata;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.serialization.descriptors.SerialDescriptor;

/* JADX INFO: loaded from: classes4.dex */
@CoreFriendModuleApi
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0010\u000b\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u0001:\u0001\nB)\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0018\u0010\u0007\u001a\u0014\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004¢\u0006\u0004\b\b\u0010\t¨\u0006\u000b"}, d2 = {"Lkotlinx/serialization/internal/ElementMarker;", "", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "descriptor", "Lkotlin/Function2;", "", "", "readIfAbsent", "<init>", "(Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlin/jvm/functions/Function2;)V", "Companion", "kotlinx-serialization-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class ElementMarker {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final long[] f75606e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final SerialDescriptor f75607a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Function2 f75608b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public long f75609c;
    public final long[] d;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0016\n\u0002\b\u0003\b\u0082\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lkotlinx/serialization/internal/ElementMarker$Companion;", "", "", "EMPTY_HIGH_MARKS", "[J", "kotlinx-serialization-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
        f75606e = new long[0];
    }

    public ElementMarker(SerialDescriptor serialDescriptor, Function2<? super SerialDescriptor, ? super Integer, Boolean> function2) {
        serialDescriptor.getClass();
        function2.getClass();
        this.f75607a = serialDescriptor;
        this.f75608b = function2;
        int iD = serialDescriptor.d();
        if (iD <= 64) {
            this.f75609c = iD != 64 ? (-1) << iD : 0L;
            this.d = f75606e;
            return;
        }
        this.f75609c = 0L;
        int i2 = (iD - 1) >>> 6;
        long[] jArr = new long[i2];
        if ((iD & 63) != 0) {
            jArr[i2 - 1] = (-1) << iD;
        }
        this.d = jArr;
    }
}
