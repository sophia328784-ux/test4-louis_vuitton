package defpackage;

import androidx.media3.common.util.ListenerSet;
import androidx.media3.exoplayer.analytics.AnalyticsListener;
import com.google.firebase.components.ComponentContainer;
import com.google.firebase.components.ComponentFactory;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class ym implements ComponentFactory, ListenerSet.Event {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f81391b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f81392c;

    public /* synthetic */ ym(AnalyticsListener.EventTime eventTime, Object obj, long j2) {
        this.f81391b = 2;
        this.f81392c = obj;
    }

    @Override // com.google.firebase.components.ComponentFactory
    public Object c(ComponentContainer componentContainer) {
        int i2 = this.f81391b;
        return this.f81392c;
    }

    @Override // androidx.media3.common.util.ListenerSet.Event
    public void invoke(Object obj) {
        ((AnalyticsListener) obj).getClass();
    }

    public /* synthetic */ ym(Object obj, int i2) {
        this.f81391b = i2;
        this.f81392c = obj;
    }
}
