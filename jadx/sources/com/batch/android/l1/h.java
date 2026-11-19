package com.batch.android.l1;

import java.net.URI;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
public interface h {
    void a();

    void a(long j2) throws f;

    void a(String str) throws f;

    void a(String str, double d) throws f;

    void a(String str, long j2) throws f;

    void a(String str, String str2) throws f;

    void a(String str, URI uri) throws f;

    void a(String str, Date date) throws f;

    void a(String str, boolean z) throws f;

    void b();

    void b(String str);

    void b(String str, String str2) throws f;

    Map<String, Set<String>> c();

    void c(String str, String str2) throws f;

    void clear();

    void close();

    void d() throws f;

    void e() throws f;

    HashMap<String, d> getAttributes();
}
