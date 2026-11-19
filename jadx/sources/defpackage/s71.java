package defpackage;

import java.util.TimeZone;
import okhttp3.Call;
import okhttp3.EventListener;
import okhttp3.internal._UtilJvmKt;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class s71 implements EventListener.Factory {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ EventListener f79735a;

    public /* synthetic */ s71(EventListener eventListener) {
        this.f79735a = eventListener;
    }

    @Override // okhttp3.EventListener.Factory
    public final EventListener create(Call call) {
        TimeZone timeZone = _UtilJvmKt.f77018a;
        call.getClass();
        return this.f79735a;
    }
}
