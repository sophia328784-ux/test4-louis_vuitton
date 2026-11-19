package coil3.util;

import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcoil3/util/ImmutableHardwareBitmapService;", "Lcoil3/util/HardwareBitmapService;", "", "allowHardware", "<init>", "(Z)V", "io.coil-kt.coil3:coil-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
final class ImmutableHardwareBitmapService implements HardwareBitmapService {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f21723a;

    public ImmutableHardwareBitmapService(boolean z) {
        this.f21723a = z;
    }

    @Override // coil3.util.HardwareBitmapService
    /* JADX INFO: renamed from: a, reason: from getter */
    public final boolean getF21723a() {
        return this.f21723a;
    }

    @Override // coil3.util.HardwareBitmapService
    public final boolean b() {
        return this.f21723a;
    }
}
