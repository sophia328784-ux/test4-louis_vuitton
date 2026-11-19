package com.sightcall.universal.agent;

import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class Usecases {
    private static final List<Usecase> EMPTY_LIST = Collections.EMPTY_LIST;
    private final List<Usecase> list;

    public Usecases(List<Usecase> list) {
        this.list = list != null ? Collections.unmodifiableList(list) : EMPTY_LIST;
    }

    public List<Usecase> get() {
        return this.list;
    }
}
