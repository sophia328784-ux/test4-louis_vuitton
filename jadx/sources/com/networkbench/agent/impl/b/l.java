package com.networkbench.agent.impl.b;

import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public class l<String> extends ArrayList<String> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f36528a = 10;

    public void a(String string) {
        if (string == null || string == "") {
            return;
        }
        if (size() > 10) {
            remove(0);
        }
        add(string);
    }
}
