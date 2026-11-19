package com.google.android.gms.internal.measurement;

import com.google.common.collect.ImmutableList;
import defpackage.md;
import java.util.UUID;

/* JADX INFO: loaded from: classes2.dex */
final class zzvo extends zzwv {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public ImmutableList f31017a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public ImmutableList f31018b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public UUID f31019c;
    public long d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public byte f31020e;

    public final zzww a() {
        ImmutableList immutableList;
        ImmutableList immutableList2;
        UUID uuid;
        if (this.f31020e == 1 && (immutableList = this.f31017a) != null && (immutableList2 = this.f31018b) != null && (uuid = this.f31019c) != null) {
            return new zzvp(immutableList, immutableList2, uuid, this.d);
        }
        StringBuilder sb = new StringBuilder();
        if (this.f31017a == null) {
            sb.append(" spansNames");
        }
        if (this.f31018b == null) {
            sb.append(" extras");
        }
        if (this.f31019c == null) {
            sb.append(" rootTraceId");
        }
        if (this.f31020e == 0) {
            sb.append(" rootDurationMs");
        }
        md.k("Missing required properties:".concat(sb.toString()));
        return null;
    }
}
