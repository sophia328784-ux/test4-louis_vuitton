package com.dynatrace.agent.view;

import com.dynatrace.agent.common.specification.OneAgentSpecification$RetentionSpecifications;
import com.dynatrace.agent.useraction.SignificantEvent;
import com.dynatrace.agent.util.HexGenerator;
import com.dynatrace.android.agent.util.Utility;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.ArrayDeque;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.time.Duration;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0006\n\u0000\n\u0002\u0010\u0002\u0010\u0000\u001a\u00020\u0001H\n"}, d2 = {"<anonymous>", ""}, k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "com.dynatrace.agent.view.ViewContextManager$storeContext$1", f = "ViewContextManager.kt", l = {}, m = "invokeSuspend")
final class ViewContextManager$storeContext$1 extends SuspendLambda implements Function1<Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ViewContextManager f27231b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f27232c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ViewContextManager$storeContext$1(ViewContextManager viewContextManager, String str, Continuation continuation) {
        super(1, continuation);
        this.f27231b = viewContextManager;
        this.f27232c = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Continuation continuation) {
        return new ViewContextManager$storeContext$1(this.f27231b, this.f27232c, continuation);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        return ((ViewContextManager$storeContext$1) create((Continuation) obj)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws JSONException {
        Long l;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        ViewContextManager viewContextManager = this.f27231b;
        ViewContext viewContext = viewContextManager.f27226c.f27234b;
        if (viewContext != null) {
            viewContextManager.f27227e.a(viewContext.f27218b, viewContext.f27219c, viewContext.f27217a, true);
        }
        this.f27231b.f();
        ViewContextManager viewContextManager2 = this.f27231b;
        String str = this.f27232c;
        ViewSummarizer viewSummarizer = viewContextManager2.f27226c;
        long jA = viewContextManager2.f27225b.a();
        viewSummarizer.f27235c = jA;
        viewSummarizer.f27236e++;
        ViewContext viewContext2 = new ViewContext(HexGenerator.a(8), null, str, viewSummarizer.f27236e);
        ViewContextHistory viewContextHistory = viewSummarizer.f27233a;
        viewContextHistory.getClass();
        ArrayDeque arrayDeque = viewContextHistory.f27220a;
        arrayDeque.addLast(new ViewContextHistory.Entry(jA, viewContext2, null, 4, null));
        long jE = jA - Duration.e(OneAgentSpecification$RetentionSpecifications.f26510a);
        while (!arrayDeque.isEmpty() && (l = ((ViewContextHistory.Entry) arrayDeque.first()).f27223c) != null && l.longValue() < jE) {
        }
        viewSummarizer.f27234b = viewContext2;
        Utility.b("view context for view name=null detectedName=" + str + " is created");
        ViewContextManager viewContextManager3 = this.f27231b;
        NavigationEvent navigationEvent = (NavigationEvent) viewContextManager3.f27227e.f27216b.get();
        if (navigationEvent != null && !navigationEvent.g) {
            navigationEvent.f27214f = viewContextManager3.f27226c.f27234b;
            if (navigationEvent.f27213e) {
                viewContextManager3.f27228f.c(SignificantEvent.Navigation.f27070a);
                navigationEvent.g = true;
                JSONObject jSONObjectA = navigationEvent.a();
                if (jSONObjectA != null) {
                    viewContextManager3.d.f(jSONObjectA, null);
                    viewContextManager3.f27227e.f27216b.set(null);
                    Utility.b("Navigation event dispatched");
                } else {
                    Utility.b("NavigationEvent could not be converted to JSON");
                }
            }
        }
        return Unit.f71739a;
    }
}
