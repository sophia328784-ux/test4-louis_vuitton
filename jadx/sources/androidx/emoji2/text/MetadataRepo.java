package androidx.emoji2.text;

import android.graphics.Typeface;
import android.util.SparseArray;
import androidx.core.util.Preconditions;
import androidx.emoji2.text.flatbuffer.MetadataItem;
import androidx.emoji2.text.flatbuffer.MetadataList;

/* JADX INFO: loaded from: classes.dex */
public final class MetadataRepo {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final MetadataList f13109a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final char[] f13110b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Node f13111c = new Node(1024);
    public final Typeface d;

    public static class Node {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final SparseArray f13112a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public TypefaceEmojiRasterizer f13113b;

        public Node(int i2) {
            this.f13112a = new SparseArray(i2);
        }

        public final void a(TypefaceEmojiRasterizer typefaceEmojiRasterizer, int i2, int i3) {
            int iA = typefaceEmojiRasterizer.a(i2);
            SparseArray sparseArray = this.f13112a;
            Node node = sparseArray == null ? null : (Node) sparseArray.get(iA);
            if (node == null) {
                node = new Node(1);
                sparseArray.put(typefaceEmojiRasterizer.a(i2), node);
            }
            if (i3 > i2) {
                node.a(typefaceEmojiRasterizer, i2 + 1, i3);
            } else {
                node.f13113b = typefaceEmojiRasterizer;
            }
        }
    }

    public MetadataRepo(Typeface typeface, MetadataList metadataList) {
        int i2;
        int i3;
        int i4;
        int i5;
        this.d = typeface;
        this.f13109a = metadataList;
        int iA = metadataList.a(6);
        if (iA != 0) {
            int i6 = iA + metadataList.f13127a;
            i2 = metadataList.f13128b.getInt(metadataList.f13128b.getInt(i6) + i6);
        } else {
            i2 = 0;
        }
        this.f13110b = new char[i2 * 2];
        int iA2 = metadataList.a(6);
        if (iA2 != 0) {
            int i7 = iA2 + metadataList.f13127a;
            i3 = metadataList.f13128b.getInt(metadataList.f13128b.getInt(i7) + i7);
        } else {
            i3 = 0;
        }
        for (int i8 = 0; i8 < i3; i8++) {
            TypefaceEmojiRasterizer typefaceEmojiRasterizer = new TypefaceEmojiRasterizer(this, i8);
            MetadataItem metadataItemB = typefaceEmojiRasterizer.b();
            int iA3 = metadataItemB.a(4);
            Character.toChars(iA3 != 0 ? metadataItemB.f13128b.getInt(iA3 + metadataItemB.f13127a) : 0, this.f13110b, i8 * 2);
            MetadataItem metadataItemB2 = typefaceEmojiRasterizer.b();
            int iA4 = metadataItemB2.a(16);
            if (iA4 != 0) {
                int i9 = iA4 + metadataItemB2.f13127a;
                i4 = metadataItemB2.f13128b.getInt(metadataItemB2.f13128b.getInt(i9) + i9);
            } else {
                i4 = 0;
            }
            Preconditions.b(i4 > 0, "invalid metadata codepoint length");
            Node node = this.f13111c;
            MetadataItem metadataItemB3 = typefaceEmojiRasterizer.b();
            int iA5 = metadataItemB3.a(16);
            if (iA5 != 0) {
                int i10 = iA5 + metadataItemB3.f13127a;
                i5 = metadataItemB3.f13128b.getInt(metadataItemB3.f13128b.getInt(i10) + i10);
            } else {
                i5 = 0;
            }
            node.a(typefaceEmojiRasterizer, 0, i5 - 1);
        }
    }
}
