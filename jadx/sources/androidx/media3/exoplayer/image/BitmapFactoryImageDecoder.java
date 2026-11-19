package androidx.media3.exoplayer.image;

import android.content.Context;
import android.graphics.Point;
import androidx.media3.common.Format;
import androidx.media3.common.ParserException;
import androidx.media3.common.util.Util;
import androidx.media3.datasource.BitmapUtil;
import androidx.media3.decoder.DecoderException;
import androidx.media3.decoder.DecoderInputBuffer;
import androidx.media3.decoder.DecoderOutputBuffer;
import androidx.media3.decoder.SimpleDecoder;
import com.google.common.base.Preconditions;
import java.io.IOException;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
public final class BitmapFactoryImageDecoder extends SimpleDecoder<DecoderInputBuffer, ImageOutputBuffer, ImageDecoderException> implements ImageDecoder {
    public final Context n;
    public final int o;

    public BitmapFactoryImageDecoder(Context context) {
        super(new DecoderInputBuffer[1], new ImageOutputBuffer[1]);
        this.n = context;
        this.o = -1;
    }

    @Override // androidx.media3.decoder.SimpleDecoder
    public final DecoderInputBuffer g() {
        return new DecoderInputBuffer(1);
    }

    @Override // androidx.media3.decoder.SimpleDecoder
    public final DecoderOutputBuffer h() {
        return new ImageOutputBuffer() { // from class: androidx.media3.exoplayer.image.BitmapFactoryImageDecoder.1
            @Override // androidx.media3.decoder.DecoderOutputBuffer
            public final void h() {
                BitmapFactoryImageDecoder.this.m(this);
            }
        };
    }

    @Override // androidx.media3.decoder.SimpleDecoder
    public final DecoderException i(Throwable th) {
        return new ImageDecoderException("Unexpected decode error", th);
    }

    @Override // androidx.media3.decoder.SimpleDecoder
    public final DecoderException j(DecoderInputBuffer decoderInputBuffer, DecoderOutputBuffer decoderOutputBuffer, boolean z) {
        ImageOutputBuffer imageOutputBuffer = (ImageOutputBuffer) decoderOutputBuffer;
        ByteBuffer byteBuffer = decoderInputBuffer.f14543e;
        byteBuffer.getClass();
        Preconditions.q(byteBuffer.hasArray());
        Preconditions.g(byteBuffer.arrayOffset() == 0);
        try {
            int iMax = this.o;
            if (iMax == -1) {
                Context context = this.n;
                if (context != null) {
                    Point pointX = Util.x(context);
                    int i2 = pointX.x;
                    int i3 = pointX.y;
                    Format format = decoderInputBuffer.f14542c;
                    if (format != null) {
                        int i4 = format.N;
                        if (i4 != -1) {
                            i2 *= i4;
                        }
                        int i5 = format.O;
                        if (i5 != -1) {
                            i3 *= i5;
                        }
                    }
                    iMax = (Math.max(i2, i3) * 2) - 1;
                } else {
                    iMax = 4096;
                }
            }
            imageOutputBuffer.f15318e = BitmapUtil.a(byteBuffer.array(), byteBuffer.remaining(), iMax, null);
            imageOutputBuffer.f14548c = decoderInputBuffer.g;
            return null;
        } catch (ParserException e2) {
            return new ImageDecoderException("Could not decode image data with BitmapFactory.", e2);
        } catch (IOException e3) {
            return new ImageDecoderException(e3);
        }
    }

    public static final class Factory implements ImageDecoder.Factory {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Context f15316a;

        public Factory(Context context) {
            context.getClass();
            this.f15316a = context;
        }

        @Override // androidx.media3.exoplayer.image.ImageDecoder.Factory
        public final BitmapFactoryImageDecoder a() {
            return new BitmapFactoryImageDecoder(this.f15316a);
        }

        /* JADX WARN: Code restructure failed: missing block: B:41:0x0073, code lost:
        
            if (android.os.Build.VERSION.SDK_INT >= 34) goto L42;
         */
        @Override // androidx.media3.exoplayer.image.ImageDecoder.Factory
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final int b(androidx.media3.common.Format r5) {
            /*
                r4 = this;
                java.lang.String r4 = r5.o
                r0 = 0
                if (r4 == 0) goto L7f
                boolean r4 = androidx.media3.common.MimeTypes.m(r4)
                if (r4 != 0) goto Ld
                goto L7f
            Ld:
                java.lang.String r4 = r5.o
                java.lang.String r5 = androidx.media3.common.util.Util.f14242a
                r4.getClass()
                int r5 = r4.hashCode()
                r1 = 4
                r2 = 1
                r3 = -1
                switch(r5) {
                    case -1487656890: goto L61;
                    case -1487464693: goto L56;
                    case -1487464690: goto L4b;
                    case -1487394660: goto L40;
                    case -1487018032: goto L35;
                    case -879272239: goto L2a;
                    case -879258763: goto L1f;
                    default: goto L1e;
                }
            L1e:
                goto L6b
            L1f:
                java.lang.String r5 = "image/png"
                boolean r4 = r4.equals(r5)
                if (r4 != 0) goto L28
                goto L6b
            L28:
                r3 = 6
                goto L6b
            L2a:
                java.lang.String r5 = "image/bmp"
                boolean r4 = r4.equals(r5)
                if (r4 != 0) goto L33
                goto L6b
            L33:
                r3 = 5
                goto L6b
            L35:
                java.lang.String r5 = "image/webp"
                boolean r4 = r4.equals(r5)
                if (r4 != 0) goto L3e
                goto L6b
            L3e:
                r3 = r1
                goto L6b
            L40:
                java.lang.String r5 = "image/jpeg"
                boolean r4 = r4.equals(r5)
                if (r4 != 0) goto L49
                goto L6b
            L49:
                r3 = 3
                goto L6b
            L4b:
                java.lang.String r5 = "image/heif"
                boolean r4 = r4.equals(r5)
                if (r4 != 0) goto L54
                goto L6b
            L54:
                r3 = 2
                goto L6b
            L56:
                java.lang.String r5 = "image/heic"
                boolean r4 = r4.equals(r5)
                if (r4 != 0) goto L5f
                goto L6b
            L5f:
                r3 = r2
                goto L6b
            L61:
                java.lang.String r5 = "image/avif"
                boolean r4 = r4.equals(r5)
                if (r4 != 0) goto L6a
                goto L6b
            L6a:
                r3 = r0
            L6b:
                switch(r3) {
                    case 0: goto L6f;
                    case 1: goto L75;
                    case 2: goto L75;
                    case 3: goto L75;
                    case 4: goto L75;
                    case 5: goto L75;
                    case 6: goto L75;
                    default: goto L6e;
                }
            L6e:
                goto L7a
            L6f:
                int r4 = android.os.Build.VERSION.SDK_INT
                r5 = 34
                if (r4 < r5) goto L7a
            L75:
                int r4 = androidx.media3.exoplayer.RendererCapabilities.o(r1, r0, r0, r0)
                return r4
            L7a:
                int r4 = androidx.media3.exoplayer.RendererCapabilities.o(r2, r0, r0, r0)
                return r4
            L7f:
                int r4 = androidx.media3.exoplayer.RendererCapabilities.o(r0, r0, r0, r0)
                return r4
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.media3.exoplayer.image.BitmapFactoryImageDecoder.Factory.b(androidx.media3.common.Format):int");
        }

        @Deprecated
        public Factory() {
            this.f15316a = null;
        }
    }
}
