package androidx.emoji2.text;

import androidx.emoji2.text.flatbuffer.MetadataItem;
import androidx.emoji2.text.flatbuffer.MetadataList;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
public class TypefaceEmojiRasterizer {
    public static final ThreadLocal d = new ThreadLocal();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f13118a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final MetadataRepo f13119b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public volatile int f13120c = 0;

    @Retention(RetentionPolicy.SOURCE)
    public @interface HasGlyph {
    }

    public TypefaceEmojiRasterizer(MetadataRepo metadataRepo, int i2) {
        this.f13119b = metadataRepo;
        this.f13118a = i2;
    }

    public final int a(int i2) {
        MetadataItem metadataItemB = b();
        int iA = metadataItemB.a(16);
        if (iA == 0) {
            return 0;
        }
        ByteBuffer byteBuffer = metadataItemB.f13128b;
        int i3 = iA + metadataItemB.f13127a;
        return byteBuffer.getInt((i2 * 4) + byteBuffer.getInt(i3) + i3 + 4);
    }

    public final MetadataItem b() {
        ThreadLocal threadLocal = d;
        MetadataItem metadataItem = (MetadataItem) threadLocal.get();
        if (metadataItem == null) {
            metadataItem = new MetadataItem();
            threadLocal.set(metadataItem);
        }
        MetadataList metadataList = this.f13119b.f13109a;
        int iA = metadataList.a(6);
        if (iA != 0) {
            int i2 = iA + metadataList.f13127a;
            int i3 = (this.f13118a * 4) + metadataList.f13128b.getInt(i2) + i2 + 4;
            int i4 = metadataList.f13128b.getInt(i3) + i3;
            ByteBuffer byteBuffer = metadataList.f13128b;
            metadataItem.f13128b = byteBuffer;
            if (byteBuffer != null) {
                metadataItem.f13127a = i4;
                int i5 = i4 - byteBuffer.getInt(i4);
                metadataItem.f13129c = i5;
                metadataItem.d = metadataItem.f13128b.getShort(i5);
                return metadataItem;
            }
            metadataItem.f13127a = 0;
            metadataItem.f13129c = 0;
            metadataItem.d = 0;
        }
        return metadataItem;
    }

    public final String toString() {
        int i2;
        StringBuilder sb = new StringBuilder();
        sb.append(super.toString());
        sb.append(", id:");
        MetadataItem metadataItemB = b();
        int iA = metadataItemB.a(4);
        sb.append(Integer.toHexString(iA != 0 ? metadataItemB.f13128b.getInt(iA + metadataItemB.f13127a) : 0));
        sb.append(", codepoints:");
        MetadataItem metadataItemB2 = b();
        int iA2 = metadataItemB2.a(16);
        if (iA2 != 0) {
            int i3 = iA2 + metadataItemB2.f13127a;
            i2 = metadataItemB2.f13128b.getInt(metadataItemB2.f13128b.getInt(i3) + i3);
        } else {
            i2 = 0;
        }
        for (int i4 = 0; i4 < i2; i4++) {
            sb.append(Integer.toHexString(a(i4)));
            sb.append(" ");
        }
        return sb.toString();
    }
}
