package com.googlecode.mp4parser.boxes.mp4.objectdescriptors;

import defpackage.tr;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes2.dex */
@Descriptor(tags = {0})
public abstract class BaseDescriptor {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f35709a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f35710b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f35711c;

    public final int a() {
        return this.f35710b + 1 + this.f35711c;
    }

    public abstract void b(ByteBuffer byteBuffer);

    public String toString() {
        StringBuilder sb = new StringBuilder("BaseDescriptor{tag=");
        sb.append(this.f35709a);
        sb.append(", sizeOfInstance=");
        return tr.k(sb, this.f35710b, '}');
    }
}
