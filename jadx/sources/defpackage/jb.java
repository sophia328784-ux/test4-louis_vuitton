package defpackage;

import android.media.AudioDeviceInfo;
import java.io.File;
import java.util.function.Predicate;
import net.rtccloud.sdk.Participant;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class jb implements Predicate {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f71353a;

    public /* synthetic */ jb(int i2) {
        this.f71353a = i2;
    }

    @Override // java.util.function.Predicate
    public final boolean test(Object obj) {
        switch (this.f71353a) {
            case 0:
                return ((AudioDeviceInfo) obj).isSink();
            case 1:
                return ((AudioDeviceInfo) obj).isSource();
            case 2:
                return ((File) obj).exists();
            default:
                return ((Participant) obj).isAdmin();
        }
    }
}
