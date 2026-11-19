package defpackage;

import com.vuitton.android.domain.repository.InAppDispatchRepository;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class u6 implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f80238b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ InAppDispatchRepository f80239c;

    public /* synthetic */ u6(InAppDispatchRepository inAppDispatchRepository, int i2) {
        this.f80238b = i2;
        this.f80239c = inAppDispatchRepository;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        int i2 = this.f80238b;
        InAppDispatchRepository inAppDispatchRepository = this.f80239c;
        switch (i2) {
            case 0:
                break;
        }
        return inAppDispatchRepository.b();
    }
}
