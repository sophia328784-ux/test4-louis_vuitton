package com.otaliastudios.cameraview.engine.action;

import java.util.Arrays;

/* JADX INFO: loaded from: classes3.dex */
public class Actions {
    public static BaseAction a(BaseAction... baseActionArr) {
        return new SequenceAction(Arrays.asList(baseActionArr));
    }

    public static BaseAction b(long j2, ActionWrapper actionWrapper) {
        TimeoutAction timeoutAction = new TimeoutAction();
        timeoutAction.f38902f = j2;
        timeoutAction.g = actionWrapper;
        return timeoutAction;
    }

    public static BaseAction c(BaseAction... baseActionArr) {
        return new TogetherAction(Arrays.asList(baseActionArr));
    }
}
