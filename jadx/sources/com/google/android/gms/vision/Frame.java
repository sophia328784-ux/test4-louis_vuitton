package com.google.android.gms.vision;

import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes3.dex */
public class Frame {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Metadata f32121a = new Metadata();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public ByteBuffer f32122b = null;

    public static class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Frame f32123a = new Frame();
    }

    public static class Metadata {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f32124a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f32125b;

        public Metadata(Metadata metadata) {
            this.f32124a = metadata.f32124a;
            this.f32125b = metadata.f32125b;
        }

        public Metadata() {
        }
    }
}
