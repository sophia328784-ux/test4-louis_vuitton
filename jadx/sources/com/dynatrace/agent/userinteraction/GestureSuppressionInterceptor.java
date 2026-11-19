package com.dynatrace.agent.userinteraction;

import com.dynatrace.agent.common.time.TimeProvider;
import com.dynatrace.agent.userinteraction.model.GestureSequenceResolution;
import com.dynatrace.android.agent.util.Utility;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.ArrayDeque;
import kotlin.collections.EmptyList;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0000\u0018\u00002\u00020\u00012\u00020\u0002:\u0001\u0007B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\b"}, d2 = {"Lcom/dynatrace/agent/userinteraction/GestureSuppressionInterceptor;", "Lcom/dynatrace/agent/userinteraction/CrossPlatformEventInterceptor;", "Lcom/dynatrace/agent/userinteraction/NativeGestureCoordinator;", "Lcom/dynatrace/agent/common/time/TimeProvider;", "timeProvider", "<init>", "(Lcom/dynatrace/agent/common/time/TimeProvider;)V", "Companion", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class GestureSuppressionInterceptor implements CrossPlatformEventInterceptor, NativeGestureCoordinator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final TimeProvider f27107a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f27108b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ArrayDeque f27109c;

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0006\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0006\u001a\u00020\u00058\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0006\u0010\u0007R\u0014\u0010\b\u001a\u00020\u00058\u0002X\u0082T¢\u0006\u0006\n\u0004\b\b\u0010\u0007R\u0014\u0010\t\u001a\u00020\u00058\u0006X\u0086T¢\u0006\u0006\n\u0004\b\t\u0010\u0007R\u0014\u0010\n\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\n\u0010\u0004¨\u0006\u000b"}, d2 = {"Lcom/dynatrace/agent/userinteraction/GestureSuppressionInterceptor$Companion;", "", "", "TAG", "Ljava/lang/String;", "", "BRIDGE_LATENCY_MS", "J", "SAFETY_MARGIN_MS", "SUPPRESSION_WINDOW_MS", "INTERACTION_TYPE_TOUCH", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
    }

    public GestureSuppressionInterceptor(TimeProvider timeProvider) {
        timeProvider.getClass();
        this.f27107a = timeProvider;
        this.f27108b = new Object();
        this.f27109c = new ArrayDeque();
    }

    @Override // com.dynatrace.agent.userinteraction.NativeGestureCoordinator
    public final void a() {
        synchronized (this.f27108b) {
            Utility.b("[Suppression] recordSequenceStart -> sequenceActive=true");
        }
    }

    @Override // com.dynatrace.agent.userinteraction.NativeGestureCoordinator
    public final GestureSequenceResolution b(boolean z) {
        Pair pair;
        synchronized (this.f27108b) {
            try {
                if (z) {
                    ArrayDeque arrayDeque = this.f27109c;
                    int i2 = arrayDeque.d;
                    arrayDeque.clear();
                    this.f27107a.a();
                    Utility.b("[Suppression] resolveSequence(gesture) -> discarded " + i2 + " buffered actions");
                    pair = new Pair(GestureSequenceResolution.EMIT_NATIVE_EVENT, EmptyList.f71768b);
                } else {
                    ArrayList arrayList = new ArrayList(this.f27109c);
                    this.f27109c.clear();
                    pair = new Pair(GestureSequenceResolution.EMIT_NATIVE_EVENT, arrayList);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        GestureSequenceResolution gestureSequenceResolution = (GestureSequenceResolution) pair.f71705b;
        List list = (List) pair.f71706c;
        if (!list.isEmpty()) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                ((Runnable) it.next()).run();
            }
            Utility.b("[Suppression] resolveSequence(touch) -> forwarded " + list.size() + " buffered actions");
        }
        return gestureSequenceResolution;
    }
}
