package coil3.util;

import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bÀ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcoil3/util/DrawableUtils;", "", "io.coil-kt.coil3:coil-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
public abstract class DrawableUtils {
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0057, code lost:
    
        if (coil3.graphics.DecodeUtils.b(r12.getWidth(), r12.getHeight(), (int) (r3 >> 32), (int) (r3 & org.bouncycastle.asn1.cmc.BodyPartID.bodyIdMax), r20, r7) == 1.0d) goto L16;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.graphics.Bitmap a(android.graphics.drawable.Drawable r17, android.graphics.Bitmap.Config r18, coil3.size.Size r19, coil3.size.Scale r20, coil3.size.Size r21, boolean r22) {
        /*
            r0 = r17
            r1 = r18
            r2 = r19
            r6 = r20
            r7 = r21
            boolean r3 = r0 instanceof android.graphics.drawable.BitmapDrawable
            r9 = 4294967295(0xffffffff, double:2.1219957905E-314)
            r11 = 32
            if (r3 == 0) goto L5a
            r3 = r0
            android.graphics.drawable.BitmapDrawable r3 = (android.graphics.drawable.BitmapDrawable) r3
            android.graphics.Bitmap r12 = r3.getBitmap()
            android.graphics.Bitmap$Config r3 = r12.getConfig()
            if (r1 == 0) goto L29
            android.graphics.Bitmap$Config r4 = android.graphics.Bitmap.Config.HARDWARE
            if (r1 != r4) goto L27
            goto L29
        L27:
            r4 = r1
            goto L2b
        L29:
            android.graphics.Bitmap$Config r4 = android.graphics.Bitmap.Config.ARGB_8888
        L2b:
            if (r3 != r4) goto L5a
            if (r22 == 0) goto L30
            goto L59
        L30:
            int r3 = r12.getWidth()
            int r4 = r12.getHeight()
            long r3 = coil3.graphics.DecodeUtils.a(r3, r4, r2, r6, r7)
            long r13 = r3 >> r11
            int r5 = (int) r13
            long r3 = r3 & r9
            int r3 = (int) r3
            r6 = r3
            int r3 = r12.getWidth()
            int r4 = r12.getHeight()
            r8 = r7
            r7 = r20
            double r3 = coil3.graphics.DecodeUtils.b(r3, r4, r5, r6, r7, r8)
            r6 = r7
            r7 = r8
            r13 = 4607182418800017408(0x3ff0000000000000, double:1.0)
            int r3 = (r3 > r13 ? 1 : (r3 == r13 ? 0 : -1))
            if (r3 != 0) goto L5a
        L59:
            return r12
        L5a:
            android.graphics.drawable.Drawable r0 = r0.mutate()
            int r3 = coil3.util.Utils_androidKt.b(r0)
            r4 = 512(0x200, float:7.175E-43)
            if (r3 <= 0) goto L67
            goto L68
        L67:
            r3 = r4
        L68:
            int r5 = coil3.util.Utils_androidKt.a(r0)
            if (r5 <= 0) goto L6f
            r4 = r5
        L6f:
            long r12 = coil3.graphics.DecodeUtils.a(r3, r4, r2, r6, r7)
            long r14 = r12 >> r11
            int r2 = (int) r14
            long r8 = r12 & r9
            int r5 = (int) r8
            r16 = r4
            r4 = r2
            r2 = r3
            r3 = r16
            double r4 = coil3.graphics.DecodeUtils.b(r2, r3, r4, r5, r6, r7)
            double r6 = (double) r2
            double r6 = r6 * r4
            int r2 = kotlin.math.MathKt.b(r6)
            double r6 = (double) r3
            double r4 = r4 * r6
            int r3 = kotlin.math.MathKt.b(r4)
            if (r1 == 0) goto L95
            android.graphics.Bitmap$Config r4 = android.graphics.Bitmap.Config.HARDWARE
            if (r1 != r4) goto L97
        L95:
            android.graphics.Bitmap$Config r1 = android.graphics.Bitmap.Config.ARGB_8888
        L97:
            android.graphics.Bitmap r1 = android.graphics.Bitmap.createBitmap(r2, r3, r1)
            android.graphics.Rect r4 = r0.getBounds()
            int r5 = r4.left
            int r6 = r4.top
            int r7 = r4.right
            int r4 = r4.bottom
            r8 = 0
            r0.setBounds(r8, r8, r2, r3)
            android.graphics.Canvas r2 = new android.graphics.Canvas
            r2.<init>(r1)
            r0.draw(r2)
            r0.setBounds(r5, r6, r7, r4)
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: coil3.util.DrawableUtils.a(android.graphics.drawable.Drawable, android.graphics.Bitmap$Config, coil3.size.Size, coil3.size.Scale, coil3.size.Size, boolean):android.graphics.Bitmap");
    }
}
