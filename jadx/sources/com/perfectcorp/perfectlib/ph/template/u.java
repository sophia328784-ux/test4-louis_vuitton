package com.perfectcorp.perfectlib.ph.template;

import com.perfectcorp.thirdparty.com.google.common.collect.ImmutableList;
import java.util.Collection;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final class u {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f41715a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ImmutableList f41716b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f41717c;

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f41718a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public List f41719b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f41720c;

        public a(u uVar) {
            this.f41718a = uVar.f41715a;
            this.f41719b = uVar.f41716b;
            this.f41720c = uVar.f41717c;
        }
    }

    public u(String str, Collection<String> collection, String str2) {
        this.f41715a = str;
        this.f41716b = ImmutableList.u(collection);
        this.f41717c = str2;
    }
}
