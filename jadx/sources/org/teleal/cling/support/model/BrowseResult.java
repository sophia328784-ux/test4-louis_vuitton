package org.teleal.cling.support.model;

import org.teleal.cling.model.types.UnsignedIntegerFourBytes;

/* JADX INFO: loaded from: classes5.dex */
public class BrowseResult {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f78564a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final UnsignedIntegerFourBytes f78565b;

    public BrowseResult(String str, long j2, long j3, long j4) {
        this(str, new UnsignedIntegerFourBytes(j2), new UnsignedIntegerFourBytes(j3), new UnsignedIntegerFourBytes(j4));
    }

    public BrowseResult(String str, long j2, long j3) {
        this(str, j2, j3, 0L);
    }

    public BrowseResult(String str, UnsignedIntegerFourBytes unsignedIntegerFourBytes, UnsignedIntegerFourBytes unsignedIntegerFourBytes2, UnsignedIntegerFourBytes unsignedIntegerFourBytes3) {
        this.f78564a = str;
        this.f78565b = unsignedIntegerFourBytes;
    }
}
