package com.networkbench.agent.impl.util;

import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public class o extends ArrayList<com.networkbench.agent.impl.asyncaction.o> {
    @Override // java.util.ArrayList, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public boolean add(com.networkbench.agent.impl.asyncaction.o oVar) {
        if (oVar.a() >= 0) {
            return super.add(oVar);
        }
        return false;
    }
}
