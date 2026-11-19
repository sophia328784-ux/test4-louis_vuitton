package defpackage;

import android.content.Context;
import com.google.firebase.FirebaseApp;
import com.google.firebase.components.ComponentContainer;
import com.google.firebase.components.ComponentFactory;
import com.google.firebase.components.Qualified;
import com.google.firebase.heartbeatinfo.DefaultHeartBeatController;
import com.google.firebase.heartbeatinfo.HeartBeatConsumer;
import com.google.firebase.messaging.FirebaseMessagingRegistrar;
import com.google.firebase.platforminfo.UserAgentPublisher;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class ts implements ComponentFactory {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f80131b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Qualified f80132c;

    public /* synthetic */ ts(Qualified qualified, int i2) {
        this.f80131b = i2;
        this.f80132c = qualified;
    }

    @Override // com.google.firebase.components.ComponentFactory
    public final Object c(ComponentContainer componentContainer) {
        int i2 = this.f80131b;
        Qualified qualified = this.f80132c;
        switch (i2) {
            case 0:
                return new DefaultHeartBeatController((Context) componentContainer.a(Context.class), ((FirebaseApp) componentContainer.a(FirebaseApp.class)).e(), componentContainer.f(HeartBeatConsumer.class), componentContainer.g(UserAgentPublisher.class), (Executor) componentContainer.e(qualified));
            default:
                return FirebaseMessagingRegistrar.lambda$getComponents$0(qualified, componentContainer);
        }
    }
}
