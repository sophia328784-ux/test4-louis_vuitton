package com.google.common.base;

import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;

/* JADX INFO: loaded from: classes.dex */
public abstract class Charsets {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Charset f33477a;

    static {
        Charset charset = StandardCharsets.US_ASCII;
        Charset charset2 = StandardCharsets.ISO_8859_1;
        f33477a = StandardCharsets.UTF_8;
        Charset charset3 = StandardCharsets.UTF_16BE;
        Charset charset4 = StandardCharsets.UTF_16LE;
        Charset charset5 = StandardCharsets.UTF_16;
    }
}
