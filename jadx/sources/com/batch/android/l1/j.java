package com.batch.android.l1;

import java.util.LinkedList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List<i> f23686a;

    public j() {
        this.f23686a = new LinkedList();
    }

    public List<i> a() {
        LinkedList linkedList;
        synchronized (this.f23686a) {
            linkedList = new LinkedList(this.f23686a);
            this.f23686a.clear();
        }
        return linkedList;
    }

    public int b() {
        int size;
        synchronized (this.f23686a) {
            size = this.f23686a.size();
        }
        return size;
    }

    public j(List<i> list) {
        this.f23686a = new LinkedList(list);
    }

    public void b(i iVar) {
        synchronized (this.f23686a) {
            this.f23686a.add(iVar);
        }
    }

    public void a(i iVar) {
        synchronized (this.f23686a) {
            this.f23686a.add(0, iVar);
        }
    }
}
