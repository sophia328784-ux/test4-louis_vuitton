package com.sightcall.getmedia;

import android.content.ContentResolver;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.ImageDecoder;
import android.graphics.drawable.Drawable;
import android.media.MediaMetadataRetriever;
import android.media.ThumbnailUtils;
import android.net.Uri;
import android.os.CancellationSignal;
import android.provider.MediaStore;
import android.util.Size;
import androidx.core.content.ContextCompat;
import androidx.core.net.UriKt;
import androidx.exifinterface.media.ExifInterface;
import com.sightcall.getmedia.model.Failure;
import com.sightcall.pratik.Result;
import com.sightcall.pratik.extensions.BitmapExtensionsKt;
import com.sightcall.pratik.utils.BitmapUtilsKt;
import com.sightcall.pratik.utils.SdkUtilsKt;
import defpackage.md;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.io.ByteStreamsKt;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScope;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0012\n\u0002\u0018\u0002\n\u0000\b\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\u0016\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0096@¢\u0006\u0002\u0010\fJ\u0010\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u000bH\u0016J\u001e\u0010\u0010\u001a\u00020\t2\u0006\u0010\u0011\u001a\u00020\u000b2\u0006\u0010\u0012\u001a\u00020\u000eH\u0096@¢\u0006\u0002\u0010\u0013J\u0010\u0010\u0014\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u000bH\u0016J(\u0010\u0015\u001a\u00020\t2\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0011\u001a\u00020\u000b2\b\u0010\u0012\u001a\u0004\u0018\u00010\u000eH\u0096@¢\u0006\u0002\u0010\u0018J\"\u0010\u0019\u001a\u000e\u0012\u0004\u0012\u00020\u001b\u0012\u0004\u0012\u00020\u001c0\u001a2\u0006\u0010\u000f\u001a\u00020\u000bH\u0096@¢\u0006\u0002\u0010\fR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001d"}, d2 = {"Lcom/sightcall/getmedia/MediaRepositoryImpl;", "Lcom/sightcall/getmedia/MediaRepository;", "dispatcher", "Lkotlinx/coroutines/CoroutineDispatcher;", "contentResolver", "Landroid/content/ContentResolver;", "<init>", "(Lkotlinx/coroutines/CoroutineDispatcher;Landroid/content/ContentResolver;)V", "getBitmap", "Landroid/graphics/Bitmap;", "photo", "Landroid/net/Uri;", "(Landroid/net/Uri;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getPhotoSize", "Landroid/util/Size;", "media", "getPhotoThumbnailBitmap", "uri", "size", "(Landroid/net/Uri;Landroid/util/Size;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getVideoSize", "getVideoThumbnailBitmap", MvelScriptManager.VAR_CONTEXT, "Landroid/content/Context;", "(Landroid/content/Context;Landroid/net/Uri;Landroid/util/Size;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getRawFile", "Lcom/sightcall/pratik/Result;", "", "Lcom/sightcall/getmedia/model/Failure;", "GetMedia_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class MediaRepositoryImpl implements MediaRepository {
    private final ContentResolver contentResolver;
    private final CoroutineDispatcher dispatcher;

    /* JADX INFO: renamed from: com.sightcall.getmedia.MediaRepositoryImpl$getBitmap$1, reason: invalid class name */
    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "com.sightcall.getmedia.MediaRepositoryImpl", f = "MediaRepositoryImpl.kt", l = {36}, m = "getBitmap", v = 2)
    public static final class AnonymousClass1 extends ContinuationImpl {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        public AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return MediaRepositoryImpl.this.getBitmap(null, this);
        }
    }

    /* JADX INFO: renamed from: com.sightcall.getmedia.MediaRepositoryImpl$getBitmap$2, reason: invalid class name */
    @Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u0014 \u0003*\t\u0018\u00010\u0001¢\u0006\u0002\b\u00020\u0001¢\u0006\u0002\b\u0002*\u00020\u0004H\n"}, d2 = {"<anonymous>", "Landroid/graphics/Bitmap;", "Lkotlin/jvm/internal/EnhancedNullability;", "kotlin.jvm.PlatformType", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "com.sightcall.getmedia.MediaRepositoryImpl$getBitmap$2", f = "MediaRepositoryImpl.kt", l = {}, m = "invokeSuspend", v = 2)
    public static final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Bitmap>, Object> {
        final /* synthetic */ Uri $photo;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass2(Uri uri, Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
            this.$photo = uri;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return MediaRepositoryImpl.this.new AnonymousClass2(this.$photo, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Bitmap> continuation) {
            return ((AnonymousClass2) create(coroutineScope, continuation)).invokeSuspend(Unit.f71739a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            if (this.label != 0) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
            boolean zIsAtLeastSdk28 = SdkUtilsKt.isAtLeastSdk28();
            MediaRepositoryImpl mediaRepositoryImpl = MediaRepositoryImpl.this;
            return zIsAtLeastSdk28 ? ImageDecoder.decodeBitmap(ImageDecoder.createSource(mediaRepositoryImpl.contentResolver, this.$photo)) : MediaStore.Images.Media.getBitmap(mediaRepositoryImpl.contentResolver, this.$photo);
        }
    }

    /* JADX INFO: renamed from: com.sightcall.getmedia.MediaRepositoryImpl$getPhotoThumbnailBitmap$1, reason: invalid class name and case insensitive filesystem */
    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "com.sightcall.getmedia.MediaRepositoryImpl", f = "MediaRepositoryImpl.kt", l = {57}, m = "getPhotoThumbnailBitmap", v = 2)
    public static final class C03711 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        public C03711(Continuation<? super C03711> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return MediaRepositoryImpl.this.getPhotoThumbnailBitmap(null, null, this);
        }
    }

    /* JADX INFO: renamed from: com.sightcall.getmedia.MediaRepositoryImpl$getPhotoThumbnailBitmap$2, reason: invalid class name and case insensitive filesystem */
    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00070\u0001¢\u0006\u0002\b\u0002*\u00020\u0003H\n"}, d2 = {"<anonymous>", "Landroid/graphics/Bitmap;", "Lkotlin/jvm/internal/EnhancedNullability;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "com.sightcall.getmedia.MediaRepositoryImpl$getPhotoThumbnailBitmap$2", f = "MediaRepositoryImpl.kt", l = {}, m = "invokeSuspend", v = 2)
    public static final class C03722 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Bitmap>, Object> {
        final /* synthetic */ Size $size;
        final /* synthetic */ Uri $uri;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C03722(Uri uri, Size size, Continuation<? super C03722> continuation) {
            super(2, continuation);
            this.$uri = uri;
            this.$size = size;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C03722(this.$uri, this.$size, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Bitmap> continuation) {
            return ((C03722) create(coroutineScope, continuation)).invokeSuspend(Unit.f71739a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            if (this.label != 0) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
            File fileA = UriKt.a(this.$uri);
            if (SdkUtilsKt.isAtLeastSdk29()) {
                return ThumbnailUtils.createImageThumbnail(fileA, this.$size, new CancellationSignal());
            }
            Bitmap bitmapDecodeFile = BitmapFactory.decodeFile(this.$uri.getPath());
            String path = this.$uri.getPath();
            path.getClass();
            ExifInterface exifInterface = new ExifInterface(path);
            bitmapDecodeFile.getClass();
            return BitmapExtensionsKt.rotate(bitmapDecodeFile, exifInterface.n());
        }
    }

    /* JADX INFO: renamed from: com.sightcall.getmedia.MediaRepositoryImpl$getVideoThumbnailBitmap$1, reason: invalid class name and case insensitive filesystem */
    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "com.sightcall.getmedia.MediaRepositoryImpl", f = "MediaRepositoryImpl.kt", l = {85}, m = "getVideoThumbnailBitmap", v = 2)
    public static final class C03731 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        int label;
        /* synthetic */ Object result;

        public C03731(Continuation<? super C03731> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return MediaRepositoryImpl.this.getVideoThumbnailBitmap(null, null, null, this);
        }
    }

    /* JADX INFO: renamed from: com.sightcall.getmedia.MediaRepositoryImpl$getVideoThumbnailBitmap$2, reason: invalid class name and case insensitive filesystem */
    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00070\u0001¢\u0006\u0002\b\u0002*\u00020\u0003H\n"}, d2 = {"<anonymous>", "Landroid/graphics/Bitmap;", "Lkotlin/jvm/internal/EnhancedNullability;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "com.sightcall.getmedia.MediaRepositoryImpl$getVideoThumbnailBitmap$2", f = "MediaRepositoryImpl.kt", l = {}, m = "invokeSuspend", v = 2)
    public static final class C03742 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Bitmap>, Object> {
        final /* synthetic */ Context $context;
        final /* synthetic */ Size $size;
        final /* synthetic */ Uri $uri;
        int label;
        final /* synthetic */ MediaRepositoryImpl this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C03742(Uri uri, Size size, MediaRepositoryImpl mediaRepositoryImpl, Context context, Continuation<? super C03742> continuation) {
            super(2, continuation);
            this.$uri = uri;
            this.$size = size;
            this.this$0 = mediaRepositoryImpl;
            this.$context = context;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C03742(this.$uri, this.$size, this.this$0, this.$context, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Bitmap> continuation) {
            return ((C03742) create(coroutineScope, continuation)).invokeSuspend(Unit.f71739a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            if (this.label != 0) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
            File file = new File(this.$uri.getPath());
            try {
                if (!SdkUtilsKt.isAtLeastSdk29()) {
                    Bitmap bitmapCreateVideoThumbnail = ThumbnailUtils.createVideoThumbnail(file.getAbsolutePath(), 3);
                    bitmapCreateVideoThumbnail.getClass();
                    return bitmapCreateVideoThumbnail;
                }
                Size videoSize = this.$size;
                if (videoSize == null) {
                    videoSize = this.this$0.getVideoSize(this.$uri);
                }
                return ThumbnailUtils.createVideoThumbnail(file, videoSize, new CancellationSignal());
            } catch (Exception unused) {
                Bitmap bitmapCreateBitmap = Bitmap.createBitmap(400, 250, Bitmap.Config.ARGB_8888);
                bitmapCreateBitmap.eraseColor(-7829368);
                Canvas canvas = new Canvas(bitmapCreateBitmap);
                Drawable drawable = ContextCompat.getDrawable(this.$context, com.sightcall.pratik.R.drawable.universal_broken_image);
                if (drawable != null) {
                    int intrinsicWidth = drawable.getIntrinsicWidth();
                    int intrinsicHeight = drawable.getIntrinsicHeight();
                    int width = (canvas.getWidth() - intrinsicWidth) / 2;
                    int height = (canvas.getHeight() - intrinsicHeight) / 2;
                    drawable.setBounds(width, height, intrinsicWidth + width, intrinsicHeight + height);
                    drawable.draw(canvas);
                }
                return bitmapCreateBitmap;
            }
        }
    }

    public MediaRepositoryImpl(CoroutineDispatcher coroutineDispatcher, ContentResolver contentResolver) {
        coroutineDispatcher.getClass();
        contentResolver.getClass();
        this.dispatcher = coroutineDispatcher;
        this.contentResolver = contentResolver;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.sightcall.getmedia.MediaRepository
    public Object getBitmap(Uri uri, Continuation<? super Bitmap> continuation) throws Throwable {
        AnonymousClass1 anonymousClass1;
        if (continuation instanceof AnonymousClass1) {
            anonymousClass1 = (AnonymousClass1) continuation;
            int i2 = anonymousClass1.label;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                anonymousClass1.label = i2 - Integer.MIN_VALUE;
            } else {
                anonymousClass1 = new AnonymousClass1(continuation);
            }
        } else {
            anonymousClass1 = new AnonymousClass1(continuation);
        }
        Object objF = anonymousClass1.result;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = anonymousClass1.label;
        if (i3 == 0) {
            ResultKt.b(objF);
            CoroutineDispatcher coroutineDispatcher = this.dispatcher;
            AnonymousClass2 anonymousClass2 = new AnonymousClass2(uri, null);
            anonymousClass1.L$0 = null;
            anonymousClass1.label = 1;
            objF = BuildersKt.f(coroutineDispatcher, anonymousClass2, anonymousClass1);
            if (objF == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(objF);
        }
        objF.getClass();
        return objF;
    }

    @Override // com.sightcall.getmedia.MediaRepository
    public Size getPhotoSize(Uri media) {
        media.getClass();
        ExifInterface exifInterface = new ExifInterface(UriKt.a(media));
        return BitmapUtilsKt.getSizeFromOrientation(exifInterface.e(0, "ImageWidth"), exifInterface.e(0, "ImageLength"), exifInterface.n());
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.sightcall.getmedia.MediaRepository
    public Object getPhotoThumbnailBitmap(Uri uri, Size size, Continuation<? super Bitmap> continuation) throws Throwable {
        C03711 c03711;
        if (continuation instanceof C03711) {
            c03711 = (C03711) continuation;
            int i2 = c03711.label;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                c03711.label = i2 - Integer.MIN_VALUE;
            } else {
                c03711 = new C03711(continuation);
            }
        } else {
            c03711 = new C03711(continuation);
        }
        Object objF = c03711.result;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = c03711.label;
        if (i3 == 0) {
            ResultKt.b(objF);
            CoroutineDispatcher coroutineDispatcher = this.dispatcher;
            C03722 c03722 = new C03722(uri, size, null);
            c03711.L$0 = null;
            c03711.L$1 = null;
            c03711.label = 1;
            objF = BuildersKt.f(coroutineDispatcher, c03722, c03711);
            if (objF == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(objF);
        }
        objF.getClass();
        return objF;
    }

    @Override // com.sightcall.getmedia.MediaRepository
    public Object getRawFile(Uri uri, Continuation<? super Result<byte[], Failure>> continuation) {
        File file = new File(uri.getPath());
        return file.exists() ? new Result.Success(ByteStreamsKt.b(new FileInputStream(file))) : new Result.Error(Failure.FileNotFound.INSTANCE);
    }

    @Override // com.sightcall.getmedia.MediaRepository
    public Size getVideoSize(Uri media) throws IOException {
        media.getClass();
        MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
        mediaMetadataRetriever.setDataSource(UriKt.a(media).getAbsolutePath());
        String strExtractMetadata = mediaMetadataRetriever.extractMetadata(18);
        int i2 = strExtractMetadata != null ? Integer.parseInt(strExtractMetadata) : 1000;
        String strExtractMetadata2 = mediaMetadataRetriever.extractMetadata(19);
        Size size = new Size(i2, strExtractMetadata2 != null ? Integer.parseInt(strExtractMetadata2) : 1000);
        mediaMetadataRetriever.release();
        return size;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.sightcall.getmedia.MediaRepository
    public Object getVideoThumbnailBitmap(Context context, Uri uri, Size size, Continuation<? super Bitmap> continuation) throws Throwable {
        C03731 c03731;
        if (continuation instanceof C03731) {
            c03731 = (C03731) continuation;
            int i2 = c03731.label;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                c03731.label = i2 - Integer.MIN_VALUE;
            } else {
                c03731 = new C03731(continuation);
            }
        } else {
            c03731 = new C03731(continuation);
        }
        Object objF = c03731.result;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = c03731.label;
        if (i3 == 0) {
            ResultKt.b(objF);
            CoroutineDispatcher coroutineDispatcher = this.dispatcher;
            C03742 c03742 = new C03742(uri, size, this, context, null);
            c03731.L$0 = null;
            c03731.L$1 = null;
            c03731.L$2 = null;
            c03731.label = 1;
            objF = BuildersKt.f(coroutineDispatcher, c03742, c03731);
            if (objF == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(objF);
        }
        objF.getClass();
        return objF;
    }
}
