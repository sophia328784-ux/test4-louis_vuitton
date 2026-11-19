package org.squirrelframework.foundation.component.impl;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Stack;
import org.squirrelframework.foundation.component.Heartbeat;
import org.squirrelframework.foundation.component.SquirrelComponent;

/* JADX INFO: loaded from: classes5.dex */
public class HeartbeatImpl implements Heartbeat, SquirrelComponent {
    private final Stack<List<Runnable>> stack = new Stack<>();

    @Override // org.squirrelframework.foundation.component.Heartbeat
    public void begin() {
        this.stack.push(new ArrayList());
    }

    @Override // org.squirrelframework.foundation.component.Heartbeat
    public void defer(Runnable runnable) {
        runnable.getClass();
        this.stack.peek().add(runnable);
    }

    @Override // org.squirrelframework.foundation.component.Heartbeat
    public void execute() {
        Iterator<Runnable> it = this.stack.pop().iterator();
        while (it.hasNext()) {
            it.next().run();
        }
    }
}
