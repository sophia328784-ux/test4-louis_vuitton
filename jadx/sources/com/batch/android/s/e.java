package com.batch.android.s;

import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public interface e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final int f24027a = 1;

    int a(long j2) throws f;

    long a(String str) throws f;

    a a(String str, String str2) throws f;

    Map<String, Integer> a(List<String> list) throws f;

    Map<String, Integer> a(List<String> list, String str) throws f;

    a b(String str) throws f;

    a b(String str, String str2) throws f;

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public String f24028a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public String f24029b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f24030c = 0;
        public long d = -1;

        public a(String str, String str2) {
            this.f24028a = str;
            this.f24029b = str2;
        }

        public a(String str) {
            this.f24028a = str;
        }
    }
}
