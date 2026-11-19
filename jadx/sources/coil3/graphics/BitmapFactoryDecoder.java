package coil3.graphics;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.ColorSpace;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.BitmapDrawable;
import androidx.exifinterface.media.ExifInterface;
import coil3.Extras;
import coil3.ExtrasKt;
import coil3.Image_androidKt;
import coil3.fetch.SourceFetchResult;
import coil3.request.ImageRequestsKt;
import coil3.request.ImageRequests_androidKt;
import coil3.request.Options;
import coil3.size.Dimension;
import coil3.size.Precision;
import coil3.size.Scale;
import coil3.size.Size;
import com.appsflyer.sdk_base.referrer.Payload;
import defpackage.md;
import defpackage.v40;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.io.CloseableKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.math.MathKt;
import kotlinx.coroutines.InterruptibleKt;
import kotlinx.coroutines.sync.Semaphore;
import kotlinx.coroutines.sync.SemaphoreKt;
import net.rtccloud.sdk.Call;
import okio.Buffer;
import okio.ForwardingSource;
import okio.RealBufferedSource;
import okio.RealBufferedSource$inputStream$1;
import okio.Source;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u0001:\u0003\f\r\u000eB+\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006\u0012\b\b\u0002\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000b¨\u0006\u000f"}, d2 = {"Lcoil3/decode/BitmapFactoryDecoder;", "Lcoil3/decode/Decoder;", "Lcoil3/decode/ImageSource;", Payload.SOURCE, "Lcoil3/request/Options;", "options", "Lkotlinx/coroutines/sync/Semaphore;", "parallelismLock", "Lcoil3/decode/ExifOrientationStrategy;", "exifOrientationStrategy", "<init>", "(Lcoil3/decode/ImageSource;Lcoil3/request/Options;Lkotlinx/coroutines/sync/Semaphore;Lcoil3/decode/ExifOrientationStrategy;)V", "Factory", "ExceptionCatchingSource", "Companion", "io.coil-kt.coil3:coil-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final class BitmapFactoryDecoder implements Decoder {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final /* synthetic */ int f21343e = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ImageSource f21344a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Options f21345b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Semaphore f21346c;
    public final ExifOrientationStrategy d;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0003\b\u0080\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0000X\u0080T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcoil3/decode/BitmapFactoryDecoder$Companion;", "", "", "DEFAULT_MAX_PARALLELISM", "I", "io.coil-kt.coil3:coil-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcoil3/decode/BitmapFactoryDecoder$ExceptionCatchingSource;", "Lokio/ForwardingSource;", "Lokio/Source;", "delegate", "<init>", "(Lokio/Source;)V", "io.coil-kt.coil3:coil-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class ExceptionCatchingSource extends ForwardingSource {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public Exception f21347h;

        public ExceptionCatchingSource(Source source) {
            super(source);
        }

        @Override // okio.ForwardingSource, okio.Source
        public final long read(Buffer buffer, long j2) throws Exception {
            try {
                return super.read(buffer, j2);
            } catch (Exception e2) {
                this.f21347h = e2;
                throw e2;
            }
        }
    }

    static {
        new Companion(null);
    }

    public /* synthetic */ BitmapFactoryDecoder(ImageSource imageSource, Options options, Semaphore semaphore, ExifOrientationStrategy exifOrientationStrategy, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(imageSource, options, (i2 & 4) != 0 ? SemaphoreKt.a(Integer.MAX_VALUE) : semaphore, (i2 & 8) != 0 ? ExifOrientationStrategy.f21363a : exifOrientationStrategy);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // coil3.graphics.Decoder
    public final Object a(ContinuationImpl continuationImpl) throws Throwable {
        BitmapFactoryDecoder$decode$1 bitmapFactoryDecoder$decode$1;
        Semaphore semaphore;
        Throwable th;
        Semaphore semaphore2;
        if (continuationImpl instanceof BitmapFactoryDecoder$decode$1) {
            bitmapFactoryDecoder$decode$1 = (BitmapFactoryDecoder$decode$1) continuationImpl;
            int i2 = bitmapFactoryDecoder$decode$1.f21352e;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                bitmapFactoryDecoder$decode$1.f21352e = i2 - Integer.MIN_VALUE;
            } else {
                bitmapFactoryDecoder$decode$1 = new BitmapFactoryDecoder$decode$1(this, continuationImpl);
            }
        } else {
            bitmapFactoryDecoder$decode$1 = new BitmapFactoryDecoder$decode$1(this, continuationImpl);
        }
        Object obj = bitmapFactoryDecoder$decode$1.f21351c;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = bitmapFactoryDecoder$decode$1.f21352e;
        try {
            if (i3 == 0) {
                ResultKt.b(obj);
                semaphore = this.f21346c;
                bitmapFactoryDecoder$decode$1.f21350b = semaphore;
                bitmapFactoryDecoder$decode$1.f21352e = 1;
                if (semaphore.a(bitmapFactoryDecoder$decode$1) != coroutineSingletons) {
                }
                return coroutineSingletons;
            }
            if (i3 != 1) {
                if (i3 != 2) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                semaphore2 = bitmapFactoryDecoder$decode$1.f21350b;
                try {
                    ResultKt.b(obj);
                    DecodeResult decodeResult = (DecodeResult) obj;
                    semaphore2.release();
                    return decodeResult;
                } catch (Throwable th2) {
                    th = th2;
                    semaphore2.release();
                    throw th;
                }
            }
            Semaphore semaphore3 = bitmapFactoryDecoder$decode$1.f21350b;
            ResultKt.b(obj);
            semaphore = semaphore3;
            Function0 function0 = new Function0() { // from class: coil3.decode.a
                @Override // kotlin.jvm.functions.Function0
                /* JADX INFO: renamed from: invoke */
                public final Object mo47invoke() throws Exception {
                    ExifData exifData;
                    boolean z;
                    Bitmap bitmapCreateBitmap;
                    int i4;
                    int iMin;
                    double dMax;
                    int i5 = BitmapFactoryDecoder.f21343e;
                    BitmapFactory.Options options = new BitmapFactory.Options();
                    BitmapFactoryDecoder bitmapFactoryDecoder = this.f21386b;
                    Options options2 = bitmapFactoryDecoder.f21345b;
                    BitmapFactoryDecoder.ExceptionCatchingSource exceptionCatchingSource = new BitmapFactoryDecoder.ExceptionCatchingSource(bitmapFactoryDecoder.f21344a.source());
                    RealBufferedSource realBufferedSource = new RealBufferedSource(exceptionCatchingSource);
                    options.inJustDecodeBounds = true;
                    Rect rect = null;
                    BitmapFactory.decodeStream(new RealBufferedSource$inputStream$1(realBufferedSource.peek()), null, options);
                    Exception exc = exceptionCatchingSource.f21347h;
                    if (exc != null) {
                        throw exc;
                    }
                    options.inJustDecodeBounds = false;
                    Paint paint = ExifUtils.f21364a;
                    if (bitmapFactoryDecoder.d.a(options.outMimeType)) {
                        ExifInterface exifInterface = new ExifInterface(new ExifInterfaceInputStream(new RealBufferedSource$inputStream$1(realBufferedSource.peek())));
                        int iE = exifInterface.e(1, "Orientation");
                        exifData = new ExifData(iE == 2 || iE == 7 || iE == 4 || iE == 5, exifInterface.n());
                    } else {
                        exifData = ExifData.f21358c;
                    }
                    Exception exc2 = exceptionCatchingSource.f21347h;
                    if (exc2 != null) {
                        throw exc2;
                    }
                    options.inMutable = false;
                    Extras.Key key = ImageRequests_androidKt.f21653c;
                    ColorSpace colorSpace = (ColorSpace) ExtrasKt.b(options2, key);
                    Context context = options2.f21660a;
                    if (colorSpace != null) {
                        options.inPreferredColorSpace = (ColorSpace) ExtrasKt.b(options2, key);
                    }
                    options.inPremultiplied = ((Boolean) ExtrasKt.b(options2, ImageRequests_androidKt.d)).booleanValue();
                    Bitmap.Config config = (Bitmap.Config) ExtrasKt.b(options2, ImageRequests_androidKt.f21652b);
                    boolean z2 = exifData.f21359a;
                    int i6 = exifData.f21360b;
                    if ((z2 || i6 > 0) && (config == null || config == Bitmap.Config.HARDWARE)) {
                        config = Bitmap.Config.ARGB_8888;
                    }
                    if (((Boolean) ExtrasKt.b(options2, ImageRequests_androidKt.g)).booleanValue() && config == Bitmap.Config.ARGB_8888 && Intrinsics.c(options.outMimeType, "image/jpeg")) {
                        config = Bitmap.Config.RGB_565;
                    }
                    Bitmap.Config config2 = options.outConfig;
                    Bitmap.Config config3 = Bitmap.Config.RGBA_F16;
                    if (config2 == config3 && config != Bitmap.Config.HARDWARE) {
                        config = config3;
                    }
                    options.inPreferredConfig = config;
                    int i7 = options.outWidth;
                    if (i7 <= 0 || (i4 = options.outHeight) <= 0) {
                        options.inSampleSize = 1;
                        z = false;
                        options.inScaled = false;
                    } else {
                        int i8 = (i6 == 90 || i6 == 270) ? i4 : i7;
                        if (i6 != 90 && i6 != 270) {
                            i7 = i4;
                        }
                        Size size = options2.f21661b;
                        Scale scale = options2.f21662c;
                        Extras.Key key2 = ImageRequestsKt.f21649b;
                        rect = null;
                        long jA = DecodeUtils.a(i8, i7, size, scale, (Size) ExtrasKt.b(options2, key2));
                        int i9 = (int) (jA >> 32);
                        int i10 = (int) (jA & BodyPartID.bodyIdMax);
                        int iHighestOneBit = Integer.highestOneBit(i8 / i9);
                        int iHighestOneBit2 = Integer.highestOneBit(i7 / i10);
                        int[] iArr = DecodeUtils.WhenMappings.f21357a;
                        z2 = z2;
                        int i11 = iArr[scale.ordinal()];
                        if (i11 == 1) {
                            iMin = Math.min(iHighestOneBit, iHighestOneBit2);
                        } else {
                            if (i11 != 2) {
                                v40.g();
                                return null;
                            }
                            iMin = Math.max(iHighestOneBit, iHighestOneBit2);
                        }
                        if (iMin < 1) {
                            iMin = 1;
                        }
                        options.inSampleSize = iMin;
                        double d = iMin;
                        double d2 = ((double) i8) / d;
                        double d3 = ((double) i7) / d;
                        Size size2 = (Size) ExtrasKt.b(options2, key2);
                        double d4 = ((double) i9) / d2;
                        context = context;
                        double d5 = ((double) i10) / d3;
                        int i12 = iArr[scale.ordinal()];
                        if (i12 == 1) {
                            dMax = Math.max(d4, d5);
                        } else {
                            if (i12 != 2) {
                                v40.g();
                                return null;
                            }
                            dMax = Math.min(d4, d5);
                        }
                        Dimension dimension = size2.f21690a;
                        if (dimension instanceof Dimension.Pixels) {
                            double d6 = ((double) ((Dimension.Pixels) dimension).f21684a) / d2;
                            if (dMax > d6) {
                                dMax = d6;
                            }
                        }
                        Dimension dimension2 = size2.f21691b;
                        if (dimension2 instanceof Dimension.Pixels) {
                            double d7 = ((double) ((Dimension.Pixels) dimension2).f21684a) / d3;
                            if (dMax > d7) {
                                dMax = d7;
                            }
                        }
                        if (options2.d == Precision.INEXACT && dMax > 1.0d) {
                            dMax = 1.0d;
                        }
                        boolean z3 = dMax == 1.0d;
                        options.inScaled = !z3;
                        if (!z3) {
                            if (dMax > 1.0d) {
                                options.inDensity = MathKt.b(2.147483647E9d / dMax);
                                options.inTargetDensity = Integer.MAX_VALUE;
                            } else {
                                options.inDensity = Integer.MAX_VALUE;
                                options.inTargetDensity = MathKt.b(2.147483647E9d * dMax);
                            }
                        }
                        z = false;
                    }
                    try {
                        Bitmap bitmapDecodeStream = BitmapFactory.decodeStream(new RealBufferedSource$inputStream$1(realBufferedSource), rect, options);
                        realBufferedSource.close();
                        Exception exc3 = exceptionCatchingSource.f21347h;
                        if (exc3 != null) {
                            throw exc3;
                        }
                        if (bitmapDecodeStream == null) {
                            md.k("BitmapFactory returned a null bitmap. Often this means BitmapFactory could not decode the image data read from the image source (e.g. network, disk, or memory) as it's not encoded as a valid image format.");
                            return null;
                        }
                        bitmapDecodeStream.setDensity(context.getResources().getDisplayMetrics().densityDpi);
                        if (z2 || i6 > 0) {
                            Matrix matrix = new Matrix();
                            float width = bitmapDecodeStream.getWidth() / 2.0f;
                            float height = bitmapDecodeStream.getHeight() / 2.0f;
                            if (z2) {
                                matrix.postScale(-1.0f, 1.0f, width, height);
                            }
                            if (i6 > 0) {
                                matrix.postRotate(i6, width, height);
                            }
                            RectF rectF = new RectF(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, bitmapDecodeStream.getWidth(), bitmapDecodeStream.getHeight());
                            matrix.mapRect(rectF);
                            float f2 = rectF.left;
                            if (f2 != Call.Parameters.DEFAULT_CAMERA_ZOOM || rectF.top != Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                                matrix.postTranslate(-f2, -rectF.top);
                            }
                            if (i6 == 90 || i6 == 270) {
                                int height2 = bitmapDecodeStream.getHeight();
                                int width2 = bitmapDecodeStream.getWidth();
                                Bitmap.Config config4 = bitmapDecodeStream.getConfig();
                                if (config4 == null) {
                                    config4 = Bitmap.Config.ARGB_8888;
                                }
                                bitmapCreateBitmap = Bitmap.createBitmap(height2, width2, config4);
                            } else {
                                int width3 = bitmapDecodeStream.getWidth();
                                int height3 = bitmapDecodeStream.getHeight();
                                Bitmap.Config config5 = bitmapDecodeStream.getConfig();
                                if (config5 == null) {
                                    config5 = Bitmap.Config.ARGB_8888;
                                }
                                bitmapCreateBitmap = Bitmap.createBitmap(width3, height3, config5);
                            }
                            new Canvas(bitmapCreateBitmap).drawBitmap(bitmapDecodeStream, matrix, ExifUtils.f21364a);
                            bitmapDecodeStream.recycle();
                            bitmapDecodeStream = bitmapCreateBitmap;
                        }
                        return new DecodeResult(Image_androidKt.b(new BitmapDrawable(context.getResources(), bitmapDecodeStream)), (options.inSampleSize > 1 || options.inScaled) ? true : z);
                    } catch (Throwable th3) {
                        try {
                            throw th3;
                        } catch (Throwable th4) {
                            CloseableKt.a(realBufferedSource, th3);
                            throw th4;
                        }
                    }
                }
            };
            bitmapFactoryDecoder$decode$1.f21350b = semaphore;
            bitmapFactoryDecoder$decode$1.f21352e = 2;
            Object objA = InterruptibleKt.a(function0, bitmapFactoryDecoder$decode$1);
            if (objA != coroutineSingletons) {
                Semaphore semaphore4 = semaphore;
                obj = objA;
                semaphore2 = semaphore4;
                DecodeResult decodeResult2 = (DecodeResult) obj;
                semaphore2.release();
                return decodeResult2;
            }
            return coroutineSingletons;
        } catch (Throwable th3) {
            Semaphore semaphore5 = semaphore;
            th = th3;
            semaphore2 = semaphore5;
            semaphore2.release();
            throw th;
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u001b\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcoil3/decode/BitmapFactoryDecoder$Factory;", "Lcoil3/decode/Decoder$Factory;", "Lkotlinx/coroutines/sync/Semaphore;", "parallelismLock", "Lcoil3/decode/ExifOrientationStrategy;", "exifOrientationStrategy", "<init>", "(Lkotlinx/coroutines/sync/Semaphore;Lcoil3/decode/ExifOrientationStrategy;)V", "io.coil-kt.coil3:coil-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class Factory implements Decoder.Factory {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Semaphore f21348a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final ExifOrientationStrategy f21349b;

        public /* synthetic */ Factory(Semaphore semaphore, ExifOrientationStrategy exifOrientationStrategy, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this((i2 & 1) != 0 ? SemaphoreKt.a(4) : semaphore, (i2 & 2) != 0 ? ExifOrientationStrategy.f21363a : exifOrientationStrategy);
        }

        @Override // coil3.decode.Decoder.Factory
        public final Decoder a(SourceFetchResult sourceFetchResult, Options options) {
            return new BitmapFactoryDecoder(sourceFetchResult.f21443a, options, this.f21348a, this.f21349b);
        }

        public Factory(Semaphore semaphore, ExifOrientationStrategy exifOrientationStrategy) {
            this.f21348a = semaphore;
            this.f21349b = exifOrientationStrategy;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public Factory() {
            this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
        }
    }

    public BitmapFactoryDecoder(ImageSource imageSource, Options options, Semaphore semaphore, ExifOrientationStrategy exifOrientationStrategy) {
        this.f21344a = imageSource;
        this.f21345b = options;
        this.f21346c = semaphore;
        this.d = exifOrientationStrategy;
    }
}
