package com.dynatrace.android.window;

import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class WindowEventSegmentation {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f27731a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f27732b;

    public WindowEventSegmentation(List<OnTouchEventListener> list, List<OnKeyEventListener> list2) {
        this.f27731a = Collections.unmodifiableList(list);
        this.f27732b = Collections.unmodifiableList(list2);
    }
}
