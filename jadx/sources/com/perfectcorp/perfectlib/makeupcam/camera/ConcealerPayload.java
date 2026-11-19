package com.perfectcorp.perfectlib.makeupcam.camera;

import com.cyberlink.clgpuimage.cosmetic.CLMakeupLiveConcealerFilter;

/* JADX INFO: loaded from: classes3.dex */
public final class ConcealerPayload {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f40595a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f40596b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final CLMakeupLiveConcealerFilter.ConcealerMode f40597c;

    public static final class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f40598a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f40599b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final CLMakeupLiveConcealerFilter.ConcealerMode f40600c = CLMakeupLiveConcealerFilter.ConcealerMode.CONCEALER_MODE_SPOT_DARK_CIRCLE;
    }

    public ConcealerPayload(Builder builder) {
        this.f40595a = builder.f40598a;
        this.f40596b = builder.f40599b;
        this.f40597c = builder.f40600c;
    }
}
