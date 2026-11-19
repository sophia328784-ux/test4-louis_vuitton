package coil3.graphics;

import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.graphics.Bitmap;
import android.graphics.ColorSpace;
import android.graphics.ImageDecoder;
import android.system.ErrnoException;
import android.system.Os;
import android.system.OsConstants;
import android.util.Size;
import coil3.Extras;
import coil3.ExtrasKt;
import coil3.Image_androidKt;
import coil3.fetch.SourceFetchResult;
import coil3.request.ImageRequestsKt;
import coil3.request.ImageRequests_androidKt;
import coil3.request.Options;
import coil3.size.Precision;
import coil3.size.Scale;
import com.appsflyer.sdk_base.referrer.Payload;
import defpackage.i11;
import defpackage.md;
import defpackage.n2;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jdk7.AutoCloseableKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$BooleanRef;
import kotlin.math.MathKt;
import kotlinx.coroutines.sync.Semaphore;
import kotlinx.coroutines.sync.SemaphoreKt;
import okio.FileSystem;
import okio.Path;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u0001:\u0001\rB+\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\u0010\u0006\u001a\u00060\u0004j\u0002`\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u000b\u0010\f¨\u0006\u000e"}, d2 = {"Lcoil3/decode/StaticImageDecoder;", "Lcoil3/decode/Decoder;", "Landroid/graphics/ImageDecoder$Source;", Payload.SOURCE, "Ljava/lang/AutoCloseable;", "Lkotlin/AutoCloseable;", "closeable", "Lcoil3/request/Options;", "options", "Lkotlinx/coroutines/sync/Semaphore;", "parallelismLock", "<init>", "(Landroid/graphics/ImageDecoder$Source;Ljava/lang/AutoCloseable;Lcoil3/request/Options;Lkotlinx/coroutines/sync/Semaphore;)V", "Factory", "io.coil-kt.coil3:coil-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final class StaticImageDecoder implements Decoder {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ImageDecoder.Source f21377a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AutoCloseable f21378b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Options f21379c;
    public final Semaphore d;

    public StaticImageDecoder(ImageDecoder.Source source, AutoCloseable autoCloseable, Options options, Semaphore semaphore) {
        this.f21377a = source;
        this.f21378b = autoCloseable;
        this.f21379c = options;
        this.d = semaphore;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // coil3.graphics.Decoder
    public final Object a(ContinuationImpl continuationImpl) {
        StaticImageDecoder$decode$1 staticImageDecoder$decode$1;
        Semaphore semaphore;
        if (continuationImpl instanceof StaticImageDecoder$decode$1) {
            staticImageDecoder$decode$1 = (StaticImageDecoder$decode$1) continuationImpl;
            int i2 = staticImageDecoder$decode$1.f21383e;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                staticImageDecoder$decode$1.f21383e = i2 - Integer.MIN_VALUE;
            } else {
                staticImageDecoder$decode$1 = new StaticImageDecoder$decode$1(this, continuationImpl);
            }
        } else {
            staticImageDecoder$decode$1 = new StaticImageDecoder$decode$1(this, continuationImpl);
        }
        Object obj = staticImageDecoder$decode$1.f21382c;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = staticImageDecoder$decode$1.f21383e;
        if (i3 == 0) {
            ResultKt.b(obj);
            Semaphore semaphore2 = this.d;
            staticImageDecoder$decode$1.f21381b = semaphore2;
            staticImageDecoder$decode$1.f21383e = 1;
            if (semaphore2.a(staticImageDecoder$decode$1) == coroutineSingletons) {
                return coroutineSingletons;
            }
            semaphore = semaphore2;
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            semaphore = staticImageDecoder$decode$1.f21381b;
            ResultKt.b(obj);
        }
        try {
            AutoCloseable autoCloseable = this.f21378b;
            try {
                final Ref$BooleanRef ref$BooleanRef = new Ref$BooleanRef();
                DecodeResult decodeResult = new DecodeResult(Image_androidKt.c(ImageDecoder.decodeBitmap(this.f21377a, new ImageDecoder.OnHeaderDecodedListener() { // from class: coil3.decode.StaticImageDecoder$decode$lambda$0$0$$inlined$decodeBitmap$1
                    @Override // android.graphics.ImageDecoder.OnHeaderDecodedListener
                    public final void onHeaderDecoded(android.graphics.ImageDecoder imageDecoder, android.graphics.ImageDecoder.ImageInfo imageInfo, android.graphics.ImageDecoder.Source source) {
                        Size size = imageInfo.getSize();
                        int width = size.getWidth();
                        int height = size.getHeight();
                        StaticImageDecoder staticImageDecoder = this.f21384a;
                        Options options = staticImageDecoder.f21379c;
                        Options options2 = staticImageDecoder.f21379c;
                        coil3.size.Size size2 = options.f21661b;
                        Scale scale = options.f21662c;
                        Extras.Key key = ImageRequestsKt.f21649b;
                        long jA = DecodeUtils.a(width, height, size2, scale, (coil3.size.Size) ExtrasKt.b(options, key));
                        int i4 = (int) (jA >> 32);
                        int i5 = (int) (jA & BodyPartID.bodyIdMax);
                        if (width > 0 && height > 0 && (width != i4 || height != i5)) {
                            double dB = DecodeUtils.b(width, height, i4, i5, options2.f21662c, (coil3.size.Size) ExtrasKt.b(options2, key));
                            boolean z = dB < 1.0d;
                            ref$BooleanRef.f71917b = z;
                            if (z || options2.d == Precision.EXACT) {
                                imageDecoder.setTargetSize(MathKt.b(((double) width) * dB), MathKt.b(dB * ((double) height)));
                            }
                        }
                        imageDecoder.setOnPartialImageListener(new i11());
                        imageDecoder.setAllocator(ImageRequests_androidKt.b(options2) == Bitmap.Config.HARDWARE ? 3 : 1);
                        imageDecoder.setMemorySizePolicy(!((Boolean) ExtrasKt.b(options2, ImageRequests_androidKt.g)).booleanValue() ? 1 : 0);
                        Extras.Key key2 = ImageRequests_androidKt.f21653c;
                        if (((ColorSpace) ExtrasKt.b(options2, key2)) != null) {
                            imageDecoder.setTargetColorSpace((ColorSpace) ExtrasKt.b(options2, key2));
                        }
                        imageDecoder.setUnpremultipliedRequired(!((Boolean) ExtrasKt.b(options2, ImageRequests_androidKt.d)).booleanValue());
                    }
                })), ref$BooleanRef.f71917b);
                AutoCloseableKt.a(autoCloseable, null);
                semaphore.release();
                return decodeResult;
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    AutoCloseableKt.a(autoCloseable, th);
                    throw th2;
                }
            }
        } catch (Throwable th3) {
            semaphore.release();
            throw th3;
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0011\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcoil3/decode/StaticImageDecoder$Factory;", "Lcoil3/decode/Decoder$Factory;", "Lkotlinx/coroutines/sync/Semaphore;", "parallelismLock", "<init>", "(Lkotlinx/coroutines/sync/Semaphore;)V", "io.coil-kt.coil3:coil-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class Factory implements Decoder.Factory {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Semaphore f21380a;

        public /* synthetic */ Factory(Semaphore semaphore, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this((i2 & 1) != 0 ? SemaphoreKt.a(4) : semaphore);
        }

        /* JADX WARN: Code duplicated, block: B:23:0x007c  */
        /* JADX WARN: Code duplicated, block: B:25:0x0080  */
        /* JADX WARN: Code duplicated, block: B:26:0x0089  */
        @Override // coil3.decode.Decoder.Factory
        public final Decoder a(SourceFetchResult sourceFetchResult, Options options) {
            ImageDecoder.Source sourceCreateSource;
            Path pathE1;
            Bitmap.Config configB = ImageRequests_androidKt.b(options);
            Context context = options.f21660a;
            if (configB == Bitmap.Config.ARGB_8888 || configB == Bitmap.Config.HARDWARE) {
                ImageSource imageSource = sourceFetchResult.f21443a;
                if (imageSource.getF21373b() != FileSystem.f77414b || (pathE1 = imageSource.E1()) == null) {
                    ImageSource.Metadata f21374c = imageSource.getF21374c();
                    if (f21374c instanceof AssetMetadata) {
                        sourceCreateSource = ImageDecoder.createSource(context.getAssets(), ((AssetMetadata) f21374c).f21342a);
                    } else if (f21374c instanceof ContentMetadata) {
                        try {
                            AssetFileDescriptor assetFileDescriptor = ((ContentMetadata) f21374c).f21354a;
                            Os.lseek(assetFileDescriptor.getFileDescriptor(), assetFileDescriptor.getStartOffset(), OsConstants.SEEK_SET);
                            sourceCreateSource = ImageDecoder.createSource(new n2(assetFileDescriptor, 14));
                        } catch (ErrnoException unused) {
                            sourceCreateSource = null;
                        }
                    } else if (f21374c instanceof ResourceMetadata) {
                        ResourceMetadata resourceMetadata = (ResourceMetadata) f21374c;
                        if (Intrinsics.c(resourceMetadata.f21371a, context.getPackageName())) {
                            sourceCreateSource = ImageDecoder.createSource(context.getResources(), resourceMetadata.f21372b);
                        } else if (f21374c instanceof ByteBufferMetadata) {
                            sourceCreateSource = ImageDecoder.createSource(((ByteBufferMetadata) f21374c).f21353a);
                        } else {
                            sourceCreateSource = null;
                        }
                    } else if (f21374c instanceof ByteBufferMetadata) {
                        sourceCreateSource = ImageDecoder.createSource(((ByteBufferMetadata) f21374c).f21353a);
                    } else {
                        sourceCreateSource = null;
                    }
                } else {
                    sourceCreateSource = ImageDecoder.createSource(pathE1.toFile());
                }
                if (sourceCreateSource != null) {
                    return new StaticImageDecoder(sourceCreateSource, sourceFetchResult.f21443a, options, this.f21380a);
                }
            }
            return null;
        }

        public Factory(Semaphore semaphore) {
            this.f21380a = semaphore;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public Factory() {
            this(null, 1, 0 == true ? 1 : 0);
        }
    }
}
