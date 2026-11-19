package com.networkbench.agent.impl.d.c;

import com.networkbench.agent.impl.d.f;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;

/* JADX INFO: loaded from: classes2.dex */
public class c implements b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final f f36723a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ArrayList<com.networkbench.agent.impl.d.a> f36724b = new ArrayList<>();

    public c(f fVar) {
        this.f36723a = fVar;
    }

    @Override // com.networkbench.agent.impl.d.c.b
    public void a(com.networkbench.agent.impl.d.a aVar) {
        synchronized (this.f36724b) {
            if (aVar != null) {
                try {
                    this.f36724b.add(aVar);
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    @Override // com.networkbench.agent.impl.d.c.b
    public Collection<com.networkbench.agent.impl.d.a> b() {
        synchronized (this.f36724b) {
            try {
                if (this.f36724b.size() == 0) {
                    return Collections.EMPTY_LIST;
                }
                ArrayList arrayList = new ArrayList(this.f36724b);
                this.f36724b.clear();
                return arrayList;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.networkbench.agent.impl.d.c.b
    public f a() {
        return this.f36723a;
    }
}
