package com.dynatrace.agent.userinteraction.model;

import android.view.View;
import android.view.ViewGroup;
import com.dynatrace.agent.compose.userinteraction.model.ComposeElementInfo;
import com.dynatrace.agent.compose.userinteraction.model.ComposeTouchEvent;
import com.dynatrace.agent.userinteraction.mapper.ComposeTouchEventMapper;
import com.dynatrace.agent.userinteraction.util.RectHelper;
import com.dynatrace.agent.userinteraction.util.UserInteractionUtilKt;
import defpackage.b21;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/dynatrace/agent/userinteraction/model/TouchUserInteractionGeneratorImpl;", "Lcom/dynatrace/agent/userinteraction/model/TouchUserInteractionGenerator;", "Lcom/dynatrace/agent/userinteraction/model/TouchUserInteractionNativeGenerator;", "nativeGenerator", "Lcom/dynatrace/agent/userinteraction/model/TouchUserInteractionComposeGenerator;", "composeGenerator", "<init>", "(Lcom/dynatrace/agent/userinteraction/model/TouchUserInteractionNativeGenerator;Lcom/dynatrace/agent/userinteraction/model/TouchUserInteractionComposeGenerator;)V", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class TouchUserInteractionGeneratorImpl implements TouchUserInteractionGenerator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final TouchUserInteractionNativeGenerator f27185a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final TouchUserInteractionComposeGenerator f27186b;

    public TouchUserInteractionGeneratorImpl(TouchUserInteractionNativeGenerator touchUserInteractionNativeGenerator, TouchUserInteractionComposeGenerator touchUserInteractionComposeGenerator) {
        touchUserInteractionNativeGenerator.getClass();
        touchUserInteractionComposeGenerator.getClass();
        this.f27185a = touchUserInteractionNativeGenerator;
        this.f27186b = touchUserInteractionComposeGenerator;
    }

    @Override // com.dynatrace.agent.userinteraction.model.TouchUserInteractionGenerator
    public final TouchUserInteraction a(TouchEvent touchEvent, ComposeTouchEvent composeTouchEvent) {
        Object next;
        ComposeElementInfo composeElementInfo;
        touchEvent.getClass();
        composeTouchEvent.getClass();
        TouchUserInteractionComposeGenerator touchUserInteractionComposeGenerator = this.f27186b;
        touchUserInteractionComposeGenerator.getClass();
        List list = composeTouchEvent.f26692b;
        RectHelper rectHelper = touchUserInteractionComposeGenerator.f27184a;
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            if (rectHelper.a(((ComposeElementInfo) obj).f26687a, Float.valueOf(touchEvent.f27179b), Float.valueOf(touchEvent.f27180c))) {
                arrayList.add(obj);
            }
        }
        if (arrayList.isEmpty()) {
            composeElementInfo = null;
        } else {
            ArrayList arrayList2 = new ArrayList();
            for (Object obj2 : arrayList) {
                if (!Intrinsics.c(((ComposeElementInfo) obj2).f26690e, "no-info")) {
                    arrayList2.add(obj2);
                }
            }
            if (!arrayList2.isEmpty()) {
                arrayList = arrayList2;
            }
            Iterator it = arrayList.iterator();
            if (!it.hasNext()) {
                b21.x();
                return null;
            }
            int iB = rectHelper.b(((ComposeElementInfo) it.next()).f26687a);
            while (it.hasNext()) {
                int iB2 = rectHelper.b(((ComposeElementInfo) it.next()).f26687a);
                if (iB > iB2) {
                    iB = iB2;
                }
            }
            ArrayList arrayList3 = new ArrayList();
            for (Object obj3 : arrayList) {
                if (rectHelper.b(((ComposeElementInfo) obj3).f26687a) == iB) {
                    arrayList3.add(obj3);
                }
            }
            Iterator it2 = arrayList3.iterator();
            if (it2.hasNext()) {
                next = it2.next();
                if (it2.hasNext()) {
                    int length = ((ComposeElementInfo) next).f26688b.length();
                    do {
                        Object next2 = it2.next();
                        int length2 = ((ComposeElementInfo) next2).f26688b.length();
                        if (length < length2) {
                            next = next2;
                            length = length2;
                        }
                    } while (it2.hasNext());
                }
            } else {
                next = null;
            }
            composeElementInfo = (ComposeElementInfo) next;
        }
        if (composeElementInfo == null) {
            return null;
        }
        UiElement uiElementA = ComposeTouchEventMapper.a(composeElementInfo);
        ComposeElementInfo composeElementInfo2 = composeTouchEvent.f26693c;
        return new TouchUserInteraction(CollectionsKt.O(touchEvent), uiElementA, composeElementInfo2 != null ? ComposeTouchEventMapper.a(composeElementInfo2) : null);
    }

    @Override // com.dynatrace.agent.userinteraction.model.TouchUserInteractionGenerator
    public final TouchUserInteraction b(List list, ViewGroup viewGroup, View view) {
        List list2;
        viewGroup.getClass();
        TouchUserInteractionNativeGenerator touchUserInteractionNativeGenerator = this.f27185a;
        touchUserInteractionNativeGenerator.getClass();
        TouchEvent touchEvent = (TouchEvent) CollectionsKt.N(list);
        if (touchEvent == null) {
            return null;
        }
        View viewA = UserInteractionUtilKt.a(viewGroup, (int) touchEvent.f27179b, (int) touchEvent.f27180c);
        List list3 = list;
        ArrayList arrayList = new ArrayList();
        for (Object obj : list3) {
            if (((TouchEvent) obj).f27178a == TouchAction.MOVE) {
                arrayList.add(obj);
            }
        }
        if (arrayList.isEmpty()) {
            list2 = EmptyList.f71768b;
        } else {
            ArrayList arrayList2 = new ArrayList(arrayList);
            Object objB = CollectionsKt.B(arrayList);
            int i2 = 0;
            for (Object obj2 : CollectionsKt.w(arrayList, 1)) {
                int i3 = i2 + 1;
                if (i2 < 0) {
                    CollectionsKt.t0();
                    throw null;
                }
                TouchEvent touchEvent2 = (TouchEvent) obj2;
                TouchEvent touchEvent3 = (TouchEvent) objB;
                if (Math.hypot(touchEvent3.f27179b - touchEvent2.f27179b, touchEvent3.f27180c - touchEvent2.f27180c) >= 100.0d) {
                    objB = touchEvent2;
                } else {
                    arrayList2.remove(touchEvent2);
                }
                i2 = i3;
            }
            list2 = arrayList2;
        }
        ArrayList arrayList3 = new ArrayList();
        for (Object obj3 : list3) {
            TouchEvent touchEvent4 = (TouchEvent) obj3;
            if (touchEvent4.f27178a != TouchAction.MOVE || list2.contains(touchEvent4)) {
                arrayList3.add(obj3);
            }
        }
        return new TouchUserInteraction(arrayList3, touchUserInteractionNativeGenerator.b(viewA), view != null ? touchUserInteractionNativeGenerator.b(view) : null);
    }
}
