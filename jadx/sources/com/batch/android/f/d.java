package com.batch.android.f;

import com.batch.android.n.h;
import defpackage.n00;

/* JADX INFO: loaded from: classes2.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f23275a = n00.r(a(true), "/st/%s", new StringBuilder());

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final String f23276b = n00.r(a(false), "/tr/%s", new StringBuilder());

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final String f23277c = n00.r(a(false), "/t/%s", new StringBuilder());
    public static final String d = n00.r(a(false), "/ats/%s", new StringBuilder());

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final String f23278e = n00.r(a(false), "/atc/%s", new StringBuilder());

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final String f23279f = n00.r(a(false), "/inapp/%s", new StringBuilder());
    public static final String g = n00.r(a(false), "/inbox/%s/%s/%s", new StringBuilder());

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final String f23280h = n00.r(a(false), "/inbox/%s/sync/%s/%s", new StringBuilder());

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final String f23281i = a(b.METRIC, false);

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final String f23282j = n00.r(a(false), "/inapp_jit_mep/%s", new StringBuilder());

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final String f23283k = n00.r(a(false), "/inapp_jit_cep/%s", new StringBuilder());

    private static String a(b bVar, boolean z) {
        a aVarA = h.a(new c());
        return aVarA.a(bVar, z && aVarA.c());
    }

    private static String a(boolean z) {
        return n00.r(a(b.WEB, z), "/a/3.1.1", new StringBuilder());
    }
}
