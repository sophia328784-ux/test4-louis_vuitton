package com.dynatrace.agent.userinteraction.util;

import android.graphics.Rect;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0000\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/dynatrace/agent/userinteraction/util/RectHelperImpl;", "Lcom/dynatrace/agent/userinteraction/util/RectHelper;", "<init>", "()V", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class RectHelperImpl implements RectHelper {
    @Override // com.dynatrace.agent.userinteraction.util.RectHelper
    public final boolean a(Rect rect, Float f2, Float f3) {
        rect.getClass();
        return rect.contains(f2.intValue(), f3.intValue());
    }

    @Override // com.dynatrace.agent.userinteraction.util.RectHelper
    public final int b(Rect rect) {
        rect.getClass();
        return (rect.bottom - rect.top) * (rect.right - rect.left);
    }
}
