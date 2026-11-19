package com.dynatrace.agent.view;

import com.dynatrace.agent.OneAgentEventDispatcher;
import com.dynatrace.agent.common.time.TimeProvider;
import com.dynatrace.agent.events.EventFlowGovernor;
import com.dynatrace.agent.useraction.UserActionController;
import com.dynatrace.android.agent.util.Utility;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.collections.ArrayDeque;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001B7\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\f¢\u0006\u0004\b\u000e\u0010\u000f¨\u0006\u0010"}, d2 = {"Lcom/dynatrace/agent/view/ViewContextManager;", "Lcom/dynatrace/agent/view/ViewContextManagerApi;", "Lcom/dynatrace/agent/events/EventFlowGovernor;", "flowGovernor", "Lcom/dynatrace/agent/common/time/TimeProvider;", "timeProvider", "Lcom/dynatrace/agent/view/ViewSummarizer;", "viewSummarizer", "Lcom/dynatrace/agent/OneAgentEventDispatcher;", "eventDispatcher", "Lcom/dynatrace/agent/view/NavigationTracker;", "navigationTracker", "Lcom/dynatrace/agent/useraction/UserActionController;", "userActionController", "<init>", "(Lcom/dynatrace/agent/events/EventFlowGovernor;Lcom/dynatrace/agent/common/time/TimeProvider;Lcom/dynatrace/agent/view/ViewSummarizer;Lcom/dynatrace/agent/OneAgentEventDispatcher;Lcom/dynatrace/agent/view/NavigationTracker;Lcom/dynatrace/agent/useraction/UserActionController;)V", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class ViewContextManager implements ViewContextManagerApi {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final EventFlowGovernor f27224a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final TimeProvider f27225b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ViewSummarizer f27226c;
    public final OneAgentEventDispatcher d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final NavigationTracker f27227e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final UserActionController f27228f;

    public ViewContextManager(EventFlowGovernor eventFlowGovernor, TimeProvider timeProvider, ViewSummarizer viewSummarizer, OneAgentEventDispatcher oneAgentEventDispatcher, NavigationTracker navigationTracker, UserActionController userActionController) {
        eventFlowGovernor.getClass();
        timeProvider.getClass();
        viewSummarizer.getClass();
        oneAgentEventDispatcher.getClass();
        navigationTracker.getClass();
        userActionController.getClass();
        this.f27224a = eventFlowGovernor;
        this.f27225b = timeProvider;
        this.f27226c = viewSummarizer;
        this.d = oneAgentEventDispatcher;
        this.f27227e = navigationTracker;
        this.f27228f = userActionController;
    }

    @Override // com.dynatrace.agent.view.ViewContextManagerApi
    public final ViewContext a() {
        return this.f27226c.f27234b;
    }

    @Override // com.dynatrace.agent.view.ViewContextManagerApi
    public final void b() {
        this.f27224a.a(new ViewContextManager$clearContext$1(this, null));
    }

    @Override // com.dynatrace.agent.view.ViewContextManagerApi
    public final void c() {
        ViewContext viewContext = this.f27226c.f27234b;
        if (viewContext != null) {
            this.f27227e.a(viewContext.f27218b, viewContext.f27219c, viewContext.f27217a, true);
        }
        f();
    }

    @Override // com.dynatrace.agent.view.ViewContextManagerApi
    public final void d() {
        this.f27224a.a(new ViewContextManager$resetContextForNewSession$1(this, null));
    }

    @Override // com.dynatrace.agent.view.ViewContextManagerApi
    public final void e(String str) {
        this.f27224a.a(new ViewContextManager$storeContext$1(this, str, null));
    }

    public final void f() {
        ViewSummarizer viewSummarizer = this.f27226c;
        if (viewSummarizer.f27234b != null) {
            long jA = this.f27225b.a();
            ArrayDeque arrayDeque = viewSummarizer.f27233a.f27220a;
            ViewContextHistory.Entry entry = (ViewContextHistory.Entry) (arrayDeque.isEmpty() ? null : arrayDeque.removeLast());
            if (entry != null) {
                Long lValueOf = Long.valueOf(jA);
                long j2 = entry.f27221a;
                ViewContext viewContext = entry.f27222b;
                viewContext.getClass();
                arrayDeque.addLast(new ViewContextHistory.Entry(j2, viewContext, lValueOf));
            }
            long j3 = viewSummarizer.f27235c;
            long j4 = jA - j3;
            ErrorSummaryAccumulator errorSummaryAccumulator = viewSummarizer.d;
            ViewSummary viewSummary = new ViewSummary(j3, j4, errorSummaryAccumulator.f27205a, errorSummaryAccumulator.f27206b, errorSummaryAccumulator.f27207c, errorSummaryAccumulator.d, errorSummaryAccumulator.f27208e, errorSummaryAccumulator.f27209f, errorSummaryAccumulator.g, null);
            JSONObject jSONObjectPut = new JSONObject().put("start_time", viewSummary.f27237a).put("duration", viewSummary.f27238b).put("characteristics.has_view_summary", true).put("error.count", viewSummary.f27239c).put("error.exception_count", viewSummary.d).put("error.http_4xx_count", viewSummary.f27240e).put("error.http_5xx_count", viewSummary.f27241f).put("error.http_other_count", viewSummary.g).put("error.request_other_count", viewSummary.f27242h);
            boolean z = viewSummary.f27243i;
            if (z) {
                jSONObjectPut.put("error.has_crash", z);
            }
            JSONObject jSONObject = viewSummary.f27244j;
            if (jSONObject != null) {
                Iterator<String> itKeys = jSONObject.keys();
                itKeys.getClass();
                while (itKeys.hasNext()) {
                    String next = itKeys.next();
                    if (!jSONObjectPut.has(next)) {
                        jSONObjectPut.put(next, jSONObject.get(next));
                    }
                }
            }
            jSONObjectPut.getClass();
            this.d.f(jSONObjectPut, null);
            viewSummarizer.f27234b = null;
            viewSummarizer.f27235c = 0L;
            viewSummarizer.d = new ErrorSummaryAccumulator();
            Utility.b("created a view summary and closed the current view context");
        }
    }
}
