package coil3;

import coil3.request.ErrorResult;
import coil3.request.ImageRequest;
import coil3.request.SuccessResult;
import defpackage.mt;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b&\u0018\u00002\u00020\u0001:\u0002\u0004\u0005B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0006"}, d2 = {"Lcoil3/EventListener;", "Lcoil3/request/ImageRequest$Listener;", "<init>", "()V", "Factory", "Companion", "io.coil-kt.coil3:coil-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
public abstract class EventListener implements ImageRequest.Listener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final EventListener$Companion$NONE$1 f21216a;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcoil3/EventListener$Companion;", "", "Lcoil3/EventListener;", "NONE", "Lcoil3/EventListener;", "io.coil-kt.coil3:coil-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bæ\u0080\u0001\u0018\u00002\u00020\u0001ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0002À\u0006\u0001"}, d2 = {"Lcoil3/EventListener$Factory;", "", "io.coil-kt.coil3:coil-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
    public interface Factory {
        public static final mt i0 = new mt(9);

        EventListener$Companion$NONE$1 create();
    }

    static {
        new Companion(null);
        f21216a = new EventListener$Companion$NONE$1();
    }

    @Override // coil3.request.ImageRequest.Listener
    public final void a(SuccessResult successResult) {
    }

    @Override // coil3.request.ImageRequest.Listener
    public final void b(ErrorResult errorResult) {
    }

    @Override // coil3.request.ImageRequest.Listener
    public final void onCancel() {
    }
}
