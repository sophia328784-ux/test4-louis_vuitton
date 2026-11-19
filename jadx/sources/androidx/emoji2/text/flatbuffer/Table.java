package androidx.emoji2.text.flatbuffer;

import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
public class Table {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f13127a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public ByteBuffer f13128b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f13129c;
    public int d;

    public Table() {
        if (Utf8.f13130a == null) {
            Utf8.f13130a = new Utf8Safe();
        }
    }

    public final int a(int i2) {
        if (i2 < this.d) {
            return this.f13128b.getShort(this.f13129c + i2);
        }
        return 0;
    }
}
